Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.w, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.af, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ad, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph48, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.044 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.noexc ]
  %.03043 = phi ptr [ %i.ac, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.03043, align 1, !tbaa !41
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.aa)
  store <8 x float> %i.ab, ptr %.03043, align 1, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.03043, i64 32 ; 2 uses
  %i.ad = add nuw nsw i32 %.044, 8                ; 3 uses
  %i.ae = or disjoint i32 %i.ad, 7
  %i.af = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph, label %.preheader42, !llvm.loop !109

.preheader:                                       ; preds = %.lr.ph48, %.preheader42
  %i.ah = phi i32 [ %i.x, %.preheader42 ], [ %i.ba, %.lr.ph48 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader42 ], [ %i.ax, %.lr.ph48 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader42 ], [ %i.ay, %.lr.ph48 ] ; 4 uses
  %i.ai = icmp slt i32 %.1.lcssa, %i.ah
  br i1 %i.ai, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.aj = xor i32 %.1.lcssa, -1
  %i.ak = add i32 %i.ah, %i.aj                    ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 7
  br i1 %min.iters.check, label %.lr.ph54.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph54.preheader
  %n.vec = and i64 %i.am, 8589934584              ; 4 uses
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.1.lcssa, %i.an
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %.131.lcssa, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ar ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.as = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %wide.load)
  %i.at = fdiv fast <8 x float> splat (float 1.000000e+00), %i.as
  store <8 x float> %i.at, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph54.preheader83

.lr.ph54.preheader83:                             ; preds = %.lr.ph54.preheader, %middle.block
  %.253.ph = phi i32 [ %.1.lcssa, %.lr.ph54.preheader ], [ %i.ao, %middle.block ]
  %.23252.ph = phi ptr [ %.131.lcssa, %.lr.ph54.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph54

.lr.ph48:                                         ; preds = %.preheader42, %.lr.ph48
  %.147 = phi i32 [ %i.ay, %.lr.ph48 ], [ %.0.lcssa, %.preheader42 ]
  %.13146 = phi ptr [ %i.ax, %.lr.ph48 ], [ %.030.lcssa, %.preheader42 ] ; 3 uses
  %i.av = load <4 x float>, ptr %.13146, align 16, !tbaa !41
  %i.aw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.av)
  store <4 x float> %i.aw, ptr %.13146, align 16, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.13146, i64 16 ; 2 uses
  %i.ay = add nuw nsw i32 %.147, 4                ; 3 uses
  %i.az = or disjoint i32 %i.ay, 3
  %i.ba = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph48, label %.preheader, !llvm.loop !111

.lr.ph54:                                         ; preds = %.lr.ph54.preheader83, %.lr.ph54
  %.253 = phi i32 [ %i.bg, %.lr.ph54 ], [ %.253.ph, %.lr.ph54.preheader83 ]
  %.23252 = phi ptr [ %i.bf, %.lr.ph54 ], [ %.23252.ph, %.lr.ph54.preheader83 ] ; 3 uses
  %i.bc = load float, ptr %.23252, align 4, !tbaa !44
  %i.bd = call fast float @llvm.sqrt.f32(float %i.bc)
  %i.be = fdiv fast float 1.000000e+00, %i.bd
  store float %i.be, ptr %.23252, align 4, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %.23252, i64 4
  %i.bg = add nuw nsw i32 %.253, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph54, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph54, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond64.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond64.not, label %._crit_edge57, label %.noexc

._crit_edge57:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge57, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not115 = icmp sgt i32 %i.k, %i.j
  br i1 %.not115, label %._crit_edge117, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bj, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !120
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !120
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !120
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader102

.preheader102:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bh, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.be, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bf, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph108, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0104 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %.noexc ]
  %.030103 = phi ptr [ %i.be, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030103, align 1, !tbaa !41
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ad = fmul fast <8 x float> %i.ac, splat (float f0x3FB8AA3B)
  %i.ae = fadd fast <8 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ae, i32 1) ; 2 uses
  %i.ag = fcmp fast ogt <8 x float> %i.af, %i.ae
  %i.ah = select <8 x i1> %i.ag, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ai = fsub fast <8 x float> %i.af, %i.ah      ; 2 uses
  %i.aj = fmul fast <8 x float> %i.ai, splat (float f0x3F317218)
  %i.ak = fsub fast <8 x float> %i.ac, %i.aj      ; 8 uses
  %i.al = fmul fast <8 x float> %i.ak, %i.ak
  %i.am = fmul fast <8 x float> %i.ak, splat (float f0x39506967)
  %i.an = fadd fast <8 x float> %i.am, splat (float f0x3AB743CE)
  %i.ao = fmul fast <8 x float> %i.an, %i.ak
  %i.ap = fadd fast <8 x float> %i.ao, splat (float f0x3C088908)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ak
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3D2AA9C1)
  %i.as = fmul fast <8 x float> %i.ar, %i.ak
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3E2AAAAA)
  %i.au = fmul fast <8 x float> %i.at, %i.ak
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <8 x float> %i.al, %i.av
  %i.ax = fadd fast <8 x float> %i.ak, %i.aw
  %i.ay = fadd fast <8 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ba = shl <8 x i32> %i.az, splat (i32 23)
  %i.bb = add <8 x i32> %i.ba, splat (i32 1065353216)
  %i.bc = bitcast <8 x i32> %i.bb to <8 x float>
  %i.bd = fmul fast <8 x float> %i.ay, %i.bc
  store <8 x float> %i.bd, ptr %.030103, align 1, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %.030103, i64 32 ; 2 uses
  %i.bf = add nuw nsw i32 %.0104, 8               ; 3 uses
  %i.bg = or disjoint i32 %i.bf, 7
  %i.bh = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.preheader102, !llvm.loop !116

.preheader:                                       ; preds = %.lr.ph108, %.preheader102
  %i.bj = phi i32 [ %i.x, %.preheader102 ], [ %i.de, %.lr.ph108 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader102 ], [ %i.db, %.lr.ph108 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader102 ], [ %i.dc, %.lr.ph108 ] ; 4 uses
  %i.bk = icmp slt i32 %.1.lcssa, %i.bj
  br i1 %i.bk, label %.lr.ph114.preheader, label %._crit_edge

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.bl = xor i32 %.1.lcssa, -1
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bm, 7
  br i1 %min.iters.check, label %.lr.ph114.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph114.preheader
  %n.vec = and i64 %i.bo, 8589934584              ; 4 uses
  %i.bp = trunc i64 %n.vec to i32
  %i.bq = add i32 %.1.lcssa, %i.bp
  %i.br = shl nuw nsw i64 %n.vec, 2
  %i.bs = getelementptr i8, ptr %.131.lcssa, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bt ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.bu = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.bu, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph114.preheader143

.lr.ph114.preheader143:                           ; preds = %.lr.ph114.preheader, %middle.block
  %.2113.ph = phi i32 [ %.1.lcssa, %.lr.ph114.preheader ], [ %i.bq, %middle.block ]
  %.232112.ph = phi ptr [ %.131.lcssa, %.lr.ph114.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph114

.lr.ph108:                                        ; preds = %.preheader102, %.lr.ph108
  %.1107 = phi i32 [ %i.dc, %.lr.ph108 ], [ %.0.lcssa, %.preheader102 ]
  %.131106 = phi ptr [ %i.db, %.lr.ph108 ], [ %.030.lcssa, %.preheader102 ] ; 3 uses
  %i.bw = load <4 x float>, ptr %.131106, align 16, !tbaa !41
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bw, <4 x float> splat (float f0x42B0C0A5))
  %i.by = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bz = fmul fast <4 x float> %i.by, splat (float f0x3FB8AA3B)
  %i.ca = fadd fast <4 x float> %i.bz, splat (float 5.000000e-01) ; 2 uses
  %i.cb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ca)
  %i.cc = sitofp fast <4 x i32> %i.cb to <4 x float> ; 2 uses
  %i.cd = fcmp fast olt <4 x float> %i.ca, %i.cc
  %i.ce = select <4 x i1> %i.cd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cf = fsub fast <4 x float> %i.cc, %i.ce      ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3F317218)
  %i.ch = fsub fast <4 x float> %i.by, %i.cg      ; 8 uses
  %i.ci = fmul fast <4 x float> %i.ch, %i.ch
  %i.cj = fmul fast <4 x float> %i.ch, splat (float f0x39506967)
  %i.ck = fadd fast <4 x float> %i.cj, splat (float f0x3AB743CE)
  %i.cl = fmul fast <4 x float> %i.ck, %i.ch
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0x3C088908)
  %i.cn = fmul fast <4 x float> %i.cm, %i.ch
  %i.co = fadd fast <4 x float> %i.cn, splat (float f0x3D2AA9C1)
  %i.cp = fmul fast <4 x float> %i.co, %i.ch
  %i.cq = fadd fast <4 x float> %i.cp, splat (float f0x3E2AAAAA)
  %i.cr = fmul fast <4 x float> %i.cq, %i.ch
  %i.cs = fadd fast <4 x float> %i.cr, splat (float 5.000000e-01)
  %i.ct = fmul fast <4 x float> %i.ci, %i.cs
  %i.cu = fadd fast <4 x float> %i.ch, %i.ct
  %i.cv = fadd fast <4 x float> %i.cu, splat (float 1.000000e+00)
  %i.cw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cf)
  %i.cx = shl <4 x i32> %i.cw, splat (i32 23)
  %i.cy = add <4 x i32> %i.cx, splat (i32 1065353216)
  %i.cz = bitcast <4 x i32> %i.cy to <4 x float>
  %i.da = fmul fast <4 x float> %i.cv, %i.cz
  store <4 x float> %i.da, ptr %.131106, align 16, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %.131106, i64 16 ; 2 uses
  %i.dc = add nuw nsw i32 %.1107, 4               ; 3 uses
  %i.dd = or disjoint i32 %i.dc, 3
  %i.de = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph108, label %.preheader, !llvm.loop !118

.lr.ph114:                                        ; preds = %.lr.ph114.preheader143, %.lr.ph114
  %.2113 = phi i32 [ %i.dj, %.lr.ph114 ], [ %.2113.ph, %.lr.ph114.preheader143 ]
  %.232112 = phi ptr [ %i.di, %.lr.ph114 ], [ %.232112.ph, %.lr.ph114.preheader143 ] ; 3 uses
  %i.dg = load float, ptr %.232112, align 4, !tbaa !44
  %i.dh = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.dg)
  store float %i.dh, ptr %.232112, align 4, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %.232112, i64 4
  %i.dj = add nuw nsw i32 %.2113, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dj, %i.bj
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph114, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph114, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond124.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond124.not, label %._crit_edge117, label %.noexc

._crit_edge117:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge117, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge134, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.br, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !127
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !127
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !127
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader119

.preheader119:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bp, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bm, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bn, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph125, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0121 = phi i32 [ %i.bn, %.lr.ph ], [ 0, %.noexc ]
  %.030120 = phi ptr [ %i.bm, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030120, align 1, !tbaa !41 ; 2 uses
  %i.ab = fcmp fast ole <8 x float> %i.aa, zeroinitializer
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ad = bitcast <8 x float> %i.ac to <8 x i32>
  %i.ae = bitcast <8 x float> %i.ac to <8 x i32>
  %i.af = and <8 x i32> %i.ae, splat (i32 -2139095041)
  %i.ag = or disjoint <8 x i32> %i.af, splat (i32 1056964608)
  %i.ah = bitcast <8 x i32> %i.ag to <8 x float>  ; 3 uses
  %i.ai = lshr <8 x i32> %i.ad, splat (i32 23)
  %i.aj = add nsw <8 x i32> %i.ai, splat (i32 -127)
  %i.ak = sitofp fast <8 x i32> %i.aj to <8 x float> ; 2 uses
  %i.al = fadd fast <8 x float> %i.ak, splat (float 1.000000e+00)
  %i.am = fcmp fast olt <8 x float> %i.ah, splat (float f0x3F3504F3) ; 2 uses
  %i.an = select <8 x i1> %i.am, <8 x float> %i.ah, <8 x float> zeroinitializer
  %i.ao = fadd fast <8 x float> %i.ah, splat (float -1.000000e+00)
  %i.ap = select fast <8 x i1> %i.am, <8 x float> %i.ak, <8 x float> %i.al
  %i.aq = fadd fast <8 x float> %i.ao, %i.an      ; 12 uses
  %i.ar = fmul fast <8 x float> %i.aq, %i.aq
  %i.as = fmul fast <8 x float> %i.aq, splat (float f0x3D9021BB)
  %i.at = fadd fast <8 x float> %i.as, splat (float f0xBDEBD1B8)
  %i.au = fmul fast <8 x float> %i.at, %i.aq
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3DEF251A)
  %i.aw = fmul fast <8 x float> %i.av, %i.aq
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0xBDFE5D4F)
  %i.ay = fmul fast <8 x float> %i.ax, %i.aq
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3E11E9BF)
  %i.ba = fmul fast <8 x float> %i.az, %i.aq
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0xBE2AAE50)
  %i.bc = fmul fast <8 x float> %i.bb, %i.aq
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0x3E4CCEAC)
  %i.be = fmul fast <8 x float> %i.bd, %i.aq
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0xBE7FFFFC)
  %i.bg = fmul fast <8 x float> %i.bf, %i.aq
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0x3EAAAAAA)
  %i.bi = fmul fast <8 x float> %i.bh, %i.aq
  %reass.mul116 = fmul fast <8 x float> %i.ap, splat (float f0x3F317218)
  %reass.add117 = fadd fast <8 x float> %i.bi, splat (float -5.000000e-01)
  %reass.mul118 = fmul fast <8 x float> %i.ar, %reass.add117
  %i.bj = fadd fast <8 x float> %reass.mul116, %i.aq
  %i.bk = fadd fast <8 x float> %i.bj, %reass.mul118
  %i.bl = select <8 x i1> %i.ab, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bk
  store <8 x float> %i.bl, ptr %.030120, align 1, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.030120, i64 32 ; 2 uses
  %i.bn = add nuw nsw i32 %.0121, 8               ; 3 uses
  %i.bo = or disjoint i32 %i.bn, 7
  %i.bp = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.preheader119, !llvm.loop !123

.preheader:                                       ; preds = %.lr.ph125, %.preheader119
  %i.br = phi i32 [ %i.x, %.preheader119 ], [ %i.ds, %.lr.ph125 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader119 ], [ %i.dp, %.lr.ph125 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader119 ], [ %i.dq, %.lr.ph125 ] ; 4 uses
  %i.bs = icmp slt i32 %.1.lcssa, %i.br
  br i1 %i.bs, label %.lr.ph131.preheader, label %._crit_edge

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.bt = xor i32 %.1.lcssa, -1
  %i.bu = add i32 %i.br, %i.bt                    ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bu, 7
  br i1 %min.iters.check, label %.lr.ph131.preheader160, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph131.preheader
  %n.vec = and i64 %i.bw, 8589934584              ; 4 uses
  %i.bx = trunc i64 %n.vec to i32
  %i.by = add i32 %.1.lcssa, %i.bx
  %i.bz = shl nuw nsw i64 %n.vec, 2
  %i.ca = getelementptr i8, ptr %.131.lcssa, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cb ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor19unary_op_reciprocalEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !176
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !176
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !176
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.af, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ad, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph48, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.044 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.noexc ]
  %.03043 = phi ptr [ %i.ac, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.03043, align 1, !tbaa !41
  %i.ab = fdiv fast <8 x float> splat (float 1.000000e+00), %i.aa
  store <8 x float> %i.ab, ptr %.03043, align 1, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.03043, i64 32 ; 2 uses
  %i.ad = add nuw nsw i32 %.044, 8                ; 3 uses
  %i.ae = or disjoint i32 %i.ad, 7
  %i.af = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph, label %.preheader42, !llvm.loop !172

.preheader:                                       ; preds = %.lr.ph48, %.preheader42
  %i.ah = phi i32 [ %i.x, %.preheader42 ], [ %i.az, %.lr.ph48 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader42 ], [ %i.aw, %.lr.ph48 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader42 ], [ %i.ax, %.lr.ph48 ] ; 4 uses
  %i.ai = icmp slt i32 %.1.lcssa, %i.ah
  br i1 %i.ai, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.aj = xor i32 %.1.lcssa, -1
  %i.ak = add i32 %i.ah, %i.aj                    ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 7
  br i1 %min.iters.check, label %.lr.ph54.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph54.preheader
  %n.vec = and i64 %i.am, 8589934584              ; 4 uses
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.1.lcssa, %i.an
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %.131.lcssa, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ar ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.as = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load
  store <8 x float> %i.as, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph54.preheader83

.lr.ph54.preheader83:                             ; preds = %.lr.ph54.preheader, %middle.block
  %.253.ph = phi i32 [ %.1.lcssa, %.lr.ph54.preheader ], [ %i.ao, %middle.block ]
  %.23252.ph = phi ptr [ %.131.lcssa, %.lr.ph54.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph54

.lr.ph48:                                         ; preds = %.preheader42, %.lr.ph48
  %.147 = phi i32 [ %i.ax, %.lr.ph48 ], [ %.0.lcssa, %.preheader42 ]
  %.13146 = phi ptr [ %i.aw, %.lr.ph48 ], [ %.030.lcssa, %.preheader42 ] ; 3 uses
  %i.au = load <4 x float>, ptr %.13146, align 16, !tbaa !41
  %i.av = fdiv fast <4 x float> splat (float 1.000000e+00), %i.au
  store <4 x float> %i.av, ptr %.13146, align 16, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.13146, i64 16 ; 2 uses
  %i.ax = add nuw nsw i32 %.147, 4                ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 3
  %i.az = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph48, label %.preheader, !llvm.loop !174

.lr.ph54:                                         ; preds = %.lr.ph54.preheader83, %.lr.ph54
  %.253 = phi i32 [ %i.be, %.lr.ph54 ], [ %.253.ph, %.lr.ph54.preheader83 ]
  %.23252 = phi ptr [ %i.bd, %.lr.ph54 ], [ %.23252.ph, %.lr.ph54.preheader83 ] ; 3 uses
  %i.bb = load float, ptr %.23252, align 4, !tbaa !44
  %i.bc = fdiv fast float 1.000000e+00, %i.bb
  store float %i.bc, ptr %.23252, align 4, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %.23252, i64 4
  %i.be = add nuw nsw i32 %.253, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph54, !llvm.loop !175

._crit_edge:                                      ; preds = %.lr.ph54, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond64.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond64.not, label %._crit_edge57, label %.noexc

._crit_edge57:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge57, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor13unary_op_tanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not107 = icmp sgt i32 %i.k, %i.j
  br i1 %.not107, label %._crit_edge109, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bn, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !183
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !183
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !183
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader94

.preheader94:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bl, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bj, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph100, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.096 = phi i32 [ %i.bj, %.lr.ph ], [ 0, %.noexc ]
  %.03095 = phi ptr [ %i.bi, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.03095, align 1, !tbaa !41
  %i.ab = fmul fast <8 x float> %i.aa, splat (float -2.000000e+00)
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> splat (float f0x42B0C0A5))
  %i.ad = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ac, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ae = fmul fast <8 x float> %i.ad, splat (float f0x3FB8AA3B)
  %i.af = fadd fast <8 x float> %i.ae, splat (float 5.000000e-01) ; 2 uses
  %i.ag = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.af, i32 1) ; 2 uses
  %i.ah = fcmp fast ogt <8 x float> %i.ag, %i.af
  %i.ai = select <8 x i1> %i.ah, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aj = fsub fast <8 x float> %i.ag, %i.ai      ; 2 uses
  %i.ak = fmul fast <8 x float> %i.aj, splat (float f0x3F317218)
  %i.al = fsub fast <8 x float> %i.ad, %i.ak      ; 8 uses
  %i.am = fmul fast <8 x float> %i.al, %i.al
  %i.an = fmul fast <8 x float> %i.al, splat (float f0x39506967)
  %i.ao = fadd fast <8 x float> %i.an, splat (float f0x3AB743CE)
  %i.ap = fmul fast <8 x float> %i.ao, %i.al
  %i.aq = fadd fast <8 x float> %i.ap, splat (float f0x3C088908)
  %i.ar = fmul fast <8 x float> %i.aq, %i.al
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0x3D2AA9C1)
  %i.at = fmul fast <8 x float> %i.as, %i.al
  %i.au = fadd fast <8 x float> %i.at, splat (float f0x3E2AAAAA)
  %i.av = fmul fast <8 x float> %i.au, %i.al
  %i.aw = fadd fast <8 x float> %i.av, splat (float 5.000000e-01)
  %i.ax = fmul fast <8 x float> %i.am, %i.aw
  %i.ay = fadd fast <8 x float> %i.al, %i.ax
  %i.az = fadd fast <8 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aj)
  %i.bb = shl <8 x i32> %i.ba, splat (i32 23)
  %i.bc = add <8 x i32> %i.bb, splat (i32 1065353216)
  %i.bd = bitcast <8 x i32> %i.bc to <8 x float>
  %i.be = fmul fast <8 x float> %i.az, %i.bd
  %i.bf = fadd fast <8 x float> %i.be, splat (float 1.000000e+00)
  %i.bg = fdiv fast <8 x float> splat (float 2.000000e+00), %i.bf
  %i.bh = fadd fast <8 x float> %i.bg, splat (float -1.000000e+00)
  store <8 x float> %i.bh, ptr %.03095, align 1, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.03095, i64 32 ; 2 uses
  %i.bj = add nuw nsw i32 %.096, 8                ; 3 uses
  %i.bk = or disjoint i32 %i.bj, 7
  %i.bl = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph, label %.preheader94, !llvm.loop !179

.preheader:                                       ; preds = %.lr.ph100, %.preheader94
  %i.bn = phi i32 [ %i.x, %.preheader94 ], [ %i.dm, %.lr.ph100 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader94 ], [ %i.dj, %.lr.ph100 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader94 ], [ %i.dk, %.lr.ph100 ] ; 4 uses
  %i.bo = icmp slt i32 %.1.lcssa, %i.bn
  br i1 %i.bo, label %.lr.ph106.preheader, label %._crit_edge

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.bp = xor i32 %.1.lcssa, -1
  %i.bq = add i32 %i.bn, %i.bp                    ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bq, 7
  br i1 %min.iters.check, label %.lr.ph106.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.preheader
  %n.vec = and i64 %i.bs, 8589934584              ; 4 uses
  %i.bt = trunc i64 %n.vec to i32
  %i.bu = add i32 %.1.lcssa, %i.bt
  %i.bv = shl nuw nsw i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %.131.lcssa, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bx ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.by = call fast <8 x float> @llvm.tanh.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.by, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph106.preheader135

.lr.ph106.preheader135:                           ; preds = %.lr.ph106.preheader, %middle.block
  %.2105.ph = phi i32 [ %.1.lcssa, %.lr.ph106.preheader ], [ %i.bu, %middle.block ]
  %.232104.ph = phi ptr [ %.131.lcssa, %.lr.ph106.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph106

.lr.ph100:                                        ; preds = %.preheader94, %.lr.ph100
  %.199 = phi i32 [ %i.dk, %.lr.ph100 ], [ %.0.lcssa, %.preheader94 ]
  %.13198 = phi ptr [ %i.dj, %.lr.ph100 ], [ %.030.lcssa, %.preheader94 ] ; 3 uses
  %i.ca = load <4 x float>, ptr %.13198, align 16, !tbaa !41
  %i.cb = fmul fast <4 x float> %i.ca, splat (float -2.000000e+00)
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cb, <4 x float> splat (float f0x42B0C0A5))
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ce = fmul fast <4 x float> %i.cd, splat (float f0x3FB8AA3B)
  %i.cf = fadd fast <4 x float> %i.ce, splat (float 5.000000e-01) ; 2 uses
  %i.cg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cf)
  %i.ch = sitofp fast <4 x i32> %i.cg to <4 x float> ; 2 uses
  %i.ci = fcmp fast olt <4 x float> %i.cf, %i.ch
  %i.cj = select <4 x i1> %i.ci, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ck = fsub fast <4 x float> %i.ch, %i.cj      ; 2 uses
  %i.cl = fmul fast <4 x float> %i.ck, splat (float f0x3F317218)
  %i.cm = fsub fast <4 x float> %i.cd, %i.cl      ; 8 uses
  %i.cn = fmul fast <4 x float> %i.cm, %i.cm
  %i.co = fmul fast <4 x float> %i.cm, splat (float f0x39506967)
  %i.cp = fadd fast <4 x float> %i.co, splat (float f0x3AB743CE)
  %i.cq = fmul fast <4 x float> %i.cp, %i.cm
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3C088908)
  %i.cs = fmul fast <4 x float> %i.cr, %i.cm
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3D2AA9C1)
  %i.cu = fmul fast <4 x float> %i.ct, %i.cm
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3E2AAAAA)
  %i.cw = fmul fast <4 x float> %i.cv, %i.cm
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = fmul fast <4 x float> %i.cn, %i.cx
  %i.cz = fadd fast <4 x float> %i.cm, %i.cy
  %i.da = fadd fast <4 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ck)
  %i.dc = shl <4 x i32> %i.db, splat (i32 23)
  %i.dd = add <4 x i32> %i.dc, splat (i32 1065353216)
  %i.de = bitcast <4 x i32> %i.dd to <4 x float>
  %i.df = fmul fast <4 x float> %i.da, %i.de
  %i.dg = fadd fast <4 x float> %i.df, splat (float 1.000000e+00)
  %i.dh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.dg
  %i.di = fadd fast <4 x float> %i.dh, splat (float -1.000000e+00)
  store <4 x float> %i.di, ptr %.13198, align 16, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.13198, i64 16 ; 2 uses
  %i.dk = add nuw nsw i32 %.199, 4                ; 3 uses
  %i.dl = or disjoint i32 %i.dk, 3
  %i.dm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph100, label %.preheader, !llvm.loop !181

.lr.ph106:                                        ; preds = %.lr.ph106.preheader135, %.lr.ph106
  %.2105 = phi i32 [ %i.dr, %.lr.ph106 ], [ %.2105.ph, %.lr.ph106.preheader135 ]
  %.232104 = phi ptr [ %i.dq, %.lr.ph106 ], [ %.232104.ph, %.lr.ph106.preheader135 ] ; 3 uses
  %i.do = load float, ptr %.232104, align 4, !tbaa !44
  %i.dp = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.do)
  store float %i.dp, ptr %.232104, align 4, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %.232104, i64 4
  %i.dr = add nuw nsw i32 %.2105, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, %i.bn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph106, !llvm.loop !182

._crit_edge:                                      ; preds = %.lr.ph106, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond116.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond116.not, label %._crit_edge109, label %.noexc

._crit_edge109:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge109, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_log10EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge127, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bs, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !190
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !190
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !190
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader112

.preheader112:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bn, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bo, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph118, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0114 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %.noexc ]
  %.030113 = phi ptr [ %i.bn, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030113, align 1, !tbaa !41 ; 2 uses
  %i.ab = fcmp fast ole <8 x float> %i.aa, zeroinitializer
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ad = bitcast <8 x float> %i.ac to <8 x i32>
  %i.ae = bitcast <8 x float> %i.ac to <8 x i32>
  %i.af = and <8 x i32> %i.ae, splat (i32 -2139095041)
  %i.ag = or disjoint <8 x i32> %i.af, splat (i32 1056964608)
  %i.ah = bitcast <8 x i32> %i.ag to <8 x float>  ; 3 uses
  %i.ai = lshr <8 x i32> %i.ad, splat (i32 23)
  %i.aj = add nsw <8 x i32> %i.ai, splat (i32 -127)
  %i.ak = sitofp fast <8 x i32> %i.aj to <8 x float> ; 2 uses
  %i.al = fadd fast <8 x float> %i.ak, splat (float 1.000000e+00)
  %i.am = fcmp fast olt <8 x float> %i.ah, splat (float f0x3F3504F3) ; 2 uses
  %i.an = select <8 x i1> %i.am, <8 x float> %i.ah, <8 x float> zeroinitializer
  %i.ao = fadd fast <8 x float> %i.ah, splat (float -1.000000e+00)
  %i.ap = select fast <8 x i1> %i.am, <8 x float> %i.ak, <8 x float> %i.al
  %i.aq = fadd fast <8 x float> %i.ao, %i.an      ; 12 uses
  %i.ar = fmul fast <8 x float> %i.aq, %i.aq
  %i.as = fmul fast <8 x float> %i.aq, splat (float f0x3D9021BB)
  %i.at = fadd fast <8 x float> %i.as, splat (float f0xBDEBD1B8)
  %i.au = fmul fast <8 x float> %i.at, %i.aq
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3DEF251A)
  %i.aw = fmul fast <8 x float> %i.av, %i.aq
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0xBDFE5D4F)
  %i.ay = fmul fast <8 x float> %i.ax, %i.aq
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3E11E9BF)
  %i.ba = fmul fast <8 x float> %i.az, %i.aq
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0xBE2AAE50)
  %i.bc = fmul fast <8 x float> %i.bb, %i.aq
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0x3E4CCEAC)
  %i.be = fmul fast <8 x float> %i.bd, %i.aq
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0xBE7FFFFC)
  %i.bg = fmul fast <8 x float> %i.bf, %i.aq
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0x3EAAAAAA)
  %i.bi = fmul fast <8 x float> %i.bh, %i.aq
  %reass.mul109 = fmul fast <8 x float> %i.ap, splat (float f0x3F317218)
  %reass.add110 = fadd fast <8 x float> %i.bi, splat (float -5.000000e-01)
  %reass.mul111 = fmul fast <8 x float> %i.ar, %reass.add110
  %i.bj = fadd fast <8 x float> %reass.mul109, %i.aq
  %i.bk = fadd fast <8 x float> %i.bj, %reass.mul111
  %i.bl = fmul fast <8 x float> %i.bk, splat (float f0x3EDE5BD9)
  %i.bm = select <8 x i1> %i.ab, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bl
  store <8 x float> %i.bm, ptr %.030113, align 1, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %.030113, i64 32 ; 2 uses
  %i.bo = add nuw nsw i32 %.0114, 8               ; 3 uses
  %i.bp = or disjoint i32 %i.bo, 7
  %i.bq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %.preheader112, !llvm.loop !186

.preheader:                                       ; preds = %.lr.ph118, %.preheader112
  %i.bs = phi i32 [ %i.x, %.preheader112 ], [ %i.du, %.lr.ph118 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader112 ], [ %i.dr, %.lr.ph118 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader112 ], [ %i.ds, %.lr.ph118 ] ; 4 uses
  %i.bt = icmp slt i32 %.1.lcssa, %i.bs
  br i1 %i.bt, label %.lr.ph124.preheader, label %._crit_edge

.lr.ph124.preheader:                              ; preds = %.preheader
  %i.bu = xor i32 %.1.lcssa, -1
  %i.bv = add i32 %i.bs, %i.bu                    ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bv, 7
  br i1 %min.iters.check, label %.lr.ph124.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph124.preheader
  %n.vec = and i64 %i.bx, 8589934584              ; 4 uses
  %i.by = trunc i64 %n.vec to i32
  %i.bz = add i32 %.1.lcssa, %i.by
  %i.ca = shl nuw nsw i64 %n.vec, 2
  %i.cb = getelementptr i8, ptr %.131.lcssa, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cc ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.cd = call fast <8 x float> @llvm.log10.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.cd, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph124.preheader153

.lr.ph124.preheader153:                           ; preds = %.lr.ph124.preheader, %middle.block
  %.2123.ph = phi i32 [ %.1.lcssa, %.lr.ph124.preheader ], [ %i.bz, %middle.block ]
  %.232122.ph = phi ptr [ %.131.lcssa, %.lr.ph124.preheader ], [ %i.cb, %middle.block ]
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bc = fcmp fast ogt <8 x float> %wide.load86, zeroinitializer
  %i.bd = fcmp fast ogt <8 x float> %wide.load87, zeroinitializer
  %i.be = fcmp fast olt <8 x float> %wide.load, zeroinitializer
  %i.bf = fcmp fast olt <8 x float> %wide.load85, zeroinitializer
  %i.bg = fcmp fast olt <8 x float> %wide.load86, zeroinitializer
  %i.bh = fcmp fast olt <8 x float> %wide.load87, zeroinitializer
  %i.bi = select fast <8 x i1> %i.be, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bj = select fast <8 x i1> %i.bf, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bk = select fast <8 x i1> %i.bg, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bl = select fast <8 x i1> %i.bh, <8 x float> splat (float -1.000000e+00), <8 x float> zeroinitializer
  %i.bm = select fast <8 x i1> %i.ba, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bi
  %i.bn = select fast <8 x i1> %i.bb, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bj
  %i.bo = select fast <8 x i1> %i.bc, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bk
  %i.bp = select fast <8 x i1> %i.bd, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bl
  store <8 x float> %i.bm, ptr %next.gep, align 4, !tbaa !44
  store <8 x float> %i.bn, ptr %i.ax, align 4, !tbaa !44
  store <8 x float> %i.bo, ptr %i.ay, align 4, !tbaa !44
  store <8 x float> %i.bp, ptr %i.az, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.preheader, label %vec.epilog.ph, !prof !215

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.aq, 8589934588            ; 4 uses
  %i.br = trunc i64 %n.vec89 to i32
  %i.bs = add i32 %.1.lcssa, %i.br
  %i.bt = shl nuw nsw i64 %n.vec89, 2
  %i.bu = getelementptr i8, ptr %.131.lcssa, i64 %i.bt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = shl i64 %index90, 2
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bv ; 2 uses
  %wide.load92 = load <4 x float>, ptr %next.gep91, align 4, !tbaa !44 ; 2 uses
  %i.bw = fcmp fast ogt <4 x float> %wide.load92, zeroinitializer
  %i.bx = fcmp fast olt <4 x float> %wide.load92, zeroinitializer
  %i.by = select fast <4 x i1> %i.bx, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.bz = select fast <4 x i1> %i.bw, <4 x float> splat (float 1.000000e+00), <4 x float> %i.by
  store <4 x float> %i.bz, ptr %next.gep91, align 4, !tbaa !44
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aq, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.255.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.23254.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph56

.lr.ph50:                                         ; preds = %.preheader44, %.lr.ph50
  %.149 = phi i32 [ %i.ci, %.lr.ph50 ], [ %.0.lcssa, %.preheader44 ]
  %.13148 = phi ptr [ %i.ch, %.lr.ph50 ], [ %.030.lcssa, %.preheader44 ] ; 3 uses
  %i.cb = load <4 x float>, ptr %.13148, align 16, !tbaa !41 ; 2 uses
  %i.cc = fcmp fast ogt <4 x float> %i.cb, zeroinitializer
  %i.cd = select <4 x i1> %i.cc, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ce = fcmp fast olt <4 x float> %i.cb, zeroinitializer
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cg = fsub fast <4 x float> %i.cd, %i.cf
  store <4 x float> %i.cg, ptr %.13148, align 16, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %.13148, i64 16 ; 2 uses
  %i.ci = add nuw nsw i32 %.149, 4                ; 3 uses
  %i.cj = or disjoint i32 %i.ci, 3
  %i.ck = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph50, label %.preheader, !llvm.loop !212

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %.255 = phi i32 [ %i.cs, %.lr.ph56 ], [ %.255.ph, %.lr.ph56.preheader ]
  %.23254 = phi ptr [ %i.cr, %.lr.ph56 ], [ %.23254.ph, %.lr.ph56.preheader ] ; 3 uses
  %i.cm = load float, ptr %.23254, align 4, !tbaa !44 ; 2 uses
  %i.cn = fcmp fast ogt float %i.cm, 0.000000e+00
  %i.co = fcmp fast olt float %i.cm, 0.000000e+00
  %i.cp = select fast i1 %i.co, float -1.000000e+00, float 0.000000e+00
  %i.cq = select fast i1 %i.cn, float 1.000000e+00, float %i.cp
  store float %i.cq, ptr %.23254, align 4, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %.23254, i64 4
  %i.cs = add nuw nsw i32 %.255, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph56, !llvm.loop !213

._crit_edge:                                      ; preds = %.lr.ph56, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond66.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond66.not, label %._crit_edge59, label %.noexc

._crit_edge59:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge59, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not112 = icmp sgt i32 %i.k, %i.j
  br i1 %.not112, label %._crit_edge114, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.br, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !221
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !221
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !221
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader99

.preheader99:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bp, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bm, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bn, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph105, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0101 = phi i32 [ %i.bn, %.lr.ph ], [ 0, %.noexc ]
  %.030100 = phi ptr [ %i.bm, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030100, align 1, !tbaa !41 ; 6 uses
  %i.ab = fmul fast <8 x float> %i.aa, %i.aa
  %i.ac = fmul fast <8 x float> %i.aa, splat (float f0x3E2AAAAB)
  %i.ad = fadd fast <8 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = fmul fast <8 x float> %i.ab, %i.ad
  %i.af = fadd fast <8 x float> %i.ae, %i.aa
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, splat (float f0x3FB8AA3B)
  %i.aj = fadd fast <8 x float> %i.ai, splat (float 5.000000e-01) ; 2 uses
  %i.ak = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aj, i32 1) ; 2 uses
  %i.al = fcmp fast ogt <8 x float> %i.ak, %i.aj
  %i.am = select <8 x i1> %i.al, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.an = fsub fast <8 x float> %i.ak, %i.am      ; 2 uses
  %i.ao = fmul fast <8 x float> %i.an, splat (float f0x3F317218)
  %i.ap = fsub fast <8 x float> %i.ah, %i.ao      ; 8 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ap
  %i.ar = fmul fast <8 x float> %i.ap, splat (float f0x39506967)
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0x3AB743CE)
  %i.at = fmul fast <8 x float> %i.as, %i.ap
  %i.au = fadd fast <8 x float> %i.at, splat (float f0x3C088908)
  %i.av = fmul fast <8 x float> %i.au, %i.ap
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3D2AA9C1)
  %i.ax = fmul fast <8 x float> %i.aw, %i.ap
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0x3E2AAAAA)
  %i.az = fmul fast <8 x float> %i.ay, %i.ap
  %i.ba = fadd fast <8 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = fmul fast <8 x float> %i.aq, %i.ba
  %i.bc = fadd fast <8 x float> %i.ap, %i.bb
  %i.bd = fadd fast <8 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.an)
  %i.bf = shl <8 x i32> %i.be, splat (i32 23)
  %i.bg = add <8 x i32> %i.bf, splat (i32 1065353216)
  %i.bh = bitcast <8 x i32> %i.bg to <8 x float>
  %i.bi = fmul fast <8 x float> %i.bd, %i.bh
  %i.bj = fadd fast <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.bl = fcmp fast uge <8 x float> %i.bk, splat (float f0x38D1B717)
  %.v98 = select <8 x i1> %i.bl, <8 x float> %i.bj, <8 x float> %i.af
  store <8 x float> %.v98, ptr %.030100, align 1, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.030100, i64 32 ; 2 uses
  %i.bn = add nuw nsw i32 %.0101, 8               ; 3 uses
  %i.bo = or disjoint i32 %i.bn, 7
  %i.bp = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.preheader99, !llvm.loop !218

.preheader:                                       ; preds = %.lr.ph105, %.preheader99
  %i.br = phi i32 [ %i.x, %.preheader99 ], [ %i.dj, %.lr.ph105 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader99 ], [ %i.dg, %.lr.ph105 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader99 ], [ %i.dh, %.lr.ph105 ] ; 2 uses
  %i.bs = icmp slt i32 %.1.lcssa, %i.br
  br i1 %i.bs, label %.lr.ph111, label %._crit_edge

.lr.ph105:                                        ; preds = %.preheader99, %.lr.ph105
  %.1104 = phi i32 [ %i.dh, %.lr.ph105 ], [ %.0.lcssa, %.preheader99 ]
  %.131103 = phi ptr [ %i.dg, %.lr.ph105 ], [ %.030.lcssa, %.preheader99 ] ; 3 uses
  %i.bt = load <4 x float>, ptr %.131103, align 16, !tbaa !41 ; 6 uses
  %i.bu = fmul fast <4 x float> %i.bt, %i.bt
  %i.bv = fmul fast <4 x float> %i.bt, splat (float f0x3E2AAAAB)
  %i.bw = fadd fast <4 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fmul fast <4 x float> %i.bu, %i.bw
  %i.by = fadd fast <4 x float> %i.bx, %i.bt
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x42B0C0A5))
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cb = fmul fast <4 x float> %i.ca, splat (float f0x3FB8AA3B)
  %i.cc = fadd fast <4 x float> %i.cb, splat (float 5.000000e-01) ; 2 uses
  %i.cd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cc)
  %i.ce = sitofp fast <4 x i32> %i.cd to <4 x float> ; 2 uses
  %i.cf = fcmp fast olt <4 x float> %i.cc, %i.ce
  %i.cg = select <4 x i1> %i.cf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ch = fsub fast <4 x float> %i.ce, %i.cg      ; 2 uses
  %i.ci = fmul fast <4 x float> %i.ch, splat (float f0x3F317218)
  %i.cj = fsub fast <4 x float> %i.ca, %i.ci      ; 8 uses
  %i.ck = fmul fast <4 x float> %i.cj, %i.cj
  %i.cl = fmul fast <4 x float> %i.cj, splat (float f0x39506967)
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0x3AB743CE)
  %i.cn = fmul fast <4 x float> %i.cm, %i.cj
  %i.co = fadd fast <4 x float> %i.cn, splat (float f0x3C088908)
  %i.cp = fmul fast <4 x float> %i.co, %i.cj
  %i.cq = fadd fast <4 x float> %i.cp, splat (float f0x3D2AA9C1)
  %i.cr = fmul fast <4 x float> %i.cq, %i.cj
  %i.cs = fadd fast <4 x float> %i.cr, splat (float f0x3E2AAAAA)
  %i.ct = fmul fast <4 x float> %i.cs, %i.cj
  %i.cu = fadd fast <4 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = fmul fast <4 x float> %i.ck, %i.cu
  %i.cw = fadd fast <4 x float> %i.cj, %i.cv
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cz = shl <4 x i32> %i.cy, splat (i32 23)
  %i.da = add <4 x i32> %i.cz, splat (i32 1065353216)
  %i.db = bitcast <4 x i32> %i.da to <4 x float>
  %i.dc = fmul fast <4 x float> %i.cx, %i.db
  %i.dd = fadd fast <4 x float> %i.dc, splat (float -1.000000e+00)
  %i.de = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bt)
  %i.df = fcmp fast uge <4 x float> %i.de, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.df, <4 x float> %i.dd, <4 x float> %i.by
  store <4 x float> %.v, ptr %.131103, align 16, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.131103, i64 16 ; 2 uses
  %i.dh = add nuw nsw i32 %.1104, 4               ; 3 uses
  %i.di = or disjoint i32 %i.dh, 3
  %i.dj = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph105, label %.preheader, !llvm.loop !219

.lr.ph111:                                        ; preds = %.preheader, %.lr.ph111
  %.2110 = phi i32 [ %i.do, %.lr.ph111 ], [ %.1.lcssa, %.preheader ]
  %.232109 = phi ptr [ %i.dn, %.lr.ph111 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.dl = load float, ptr %.232109, align 4, !tbaa !44
  %i.dm = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.dl) #20
  store float %i.dm, ptr %.232109, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %.232109, i64 4
  %i.do = add nuw nsw i32 %.2110, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %i.br
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph111, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph111, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond121.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond121.not, label %._crit_edge114, label %.noexc

._crit_edge114:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge114, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf)) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not172 = icmp sgt i32 %i.k, %i.j
  br i1 %.not172, label %._crit_edge174, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.db, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !228
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !228
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !228
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader159

.preheader159:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cz, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.cw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cx, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph165, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0161 = phi i32 [ %i.cx, %.lr.ph ], [ 0, %.noexc ]
  %.030160 = phi ptr [ %i.cw, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030160, align 1, !tbaa !41 ; 8 uses
  %i.ab = fmul fast <8 x float> %i.aa, %i.aa      ; 2 uses
  %i.ac = fmul fast <8 x float> %i.aa, splat (float f0x3E2AAAAB) ; 2 uses
  %i.ad = fadd fast <8 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = fmul fast <8 x float> %i.ab, %i.ad
  %i.af = fadd fast <8 x float> %i.ae, %i.aa
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, splat (float f0x3FB8AA3B)
  %i.aj = fadd fast <8 x float> %i.ai, splat (float 5.000000e-01) ; 2 uses
  %i.ak = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aj, i32 1) ; 2 uses
  %i.al = fcmp fast ogt <8 x float> %i.ak, %i.aj
  %i.am = select <8 x i1> %i.al, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.an = fsub fast <8 x float> %i.ak, %i.am      ; 2 uses
  %i.ao = fmul fast <8 x float> %i.an, splat (float f0x3F317218)
  %i.ap = fsub fast <8 x float> %i.ah, %i.ao      ; 8 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ap
  %i.ar = fmul fast <8 x float> %i.ap, splat (float f0x39506967)
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0x3AB743CE)
  %i.at = fmul fast <8 x float> %i.as, %i.ap
  %i.au = fadd fast <8 x float> %i.at, splat (float f0x3C088908)
  %i.av = fmul fast <8 x float> %i.au, %i.ap
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3D2AA9C1)
  %i.ax = fmul fast <8 x float> %i.aw, %i.ap
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0x3E2AAAAA)
  %i.az = fmul fast <8 x float> %i.ay, %i.ap
  %i.ba = fadd fast <8 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = fmul fast <8 x float> %i.aq, %i.ba
  %i.bc = fadd fast <8 x float> %i.ap, %i.bb
  %i.bd = fadd fast <8 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.an)
  %i.bf = shl <8 x i32> %i.be, splat (i32 23)
  %i.bg = add <8 x i32> %i.bf, splat (i32 1065353216)
  %i.bh = bitcast <8 x i32> %i.bg to <8 x float>
  %i.bi = fmul fast <8 x float> %i.bd, %i.bh
  %i.bj = fadd fast <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.bl = fcmp fast uge <8 x float> %i.bk, splat (float f0x38D1B717) ; 2 uses
  %.v157 = select <8 x i1> %i.bl, <8 x float> %i.bj, <8 x float> %i.af
  %i.bm = fneg fast <8 x float> %i.aa
  %i.bn = fsub fast <8 x float> splat (float 5.000000e-01), %i.ac
  %i.bo = fmul fast <8 x float> %i.ab, %i.bn
  %i.bp = fsub fast <8 x float> %i.bo, %i.aa
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> splat (float f0x42B0C0A5))
  %i.br = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bs = fmul fast <8 x float> %i.br, splat (float f0x3FB8AA3B)
  %i.bt = fadd fast <8 x float> %i.bs, splat (float 5.000000e-01) ; 2 uses
  %i.bu = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bt, i32 1) ; 2 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bu, %i.bt
  %i.bw = select <8 x i1> %i.bv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bx = fsub fast <8 x float> %i.bu, %i.bw      ; 2 uses
  %i.by = fmul fast <8 x float> %i.bx, splat (float f0x3F317218)
  %i.bz = fsub fast <8 x float> %i.br, %i.by      ; 8 uses
  %i.ca = fmul fast <8 x float> %i.bz, %i.bz
  %i.cb = fmul fast <8 x float> %i.bz, splat (float f0x39506967)
  %i.cc = fadd fast <8 x float> %i.cb, splat (float f0x3AB743CE)
  %i.cd = fmul fast <8 x float> %i.cc, %i.bz
  %i.ce = fadd fast <8 x float> %i.cd, splat (float f0x3C088908)
  %i.cf = fmul fast <8 x float> %i.ce, %i.bz
  %i.cg = fadd fast <8 x float> %i.cf, splat (float f0x3D2AA9C1)
  %i.ch = fmul fast <8 x float> %i.cg, %i.bz
  %i.ci = fadd fast <8 x float> %i.ch, splat (float f0x3E2AAAAA)
  %i.cj = fmul fast <8 x float> %i.ci, %i.bz
  %i.ck = fadd fast <8 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = fmul fast <8 x float> %i.ca, %i.ck
  %i.cm = fadd fast <8 x float> %i.bz, %i.cl
  %i.cn = fadd fast <8 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx)
  %i.cp = shl <8 x i32> %i.co, splat (i32 23)
  %i.cq = add <8 x i32> %i.cp, splat (i32 1065353216)
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = fmul fast <8 x float> %i.cn, %i.cr
  %i.ct = fadd fast <8 x float> %i.cs, splat (float -1.000000e+00)
  %.v158 = select <8 x i1> %i.bl, <8 x float> %i.ct, <8 x float> %i.bp
  %i.cu = fsub fast <8 x float> %.v157, %.v158
  %i.cv = fmul fast <8 x float> %i.cu, splat (float 5.000000e-01)
  store <8 x float> %i.cv, ptr %.030160, align 1, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %.030160, i64 32 ; 2 uses
  %i.cx = add nuw nsw i32 %.0161, 8               ; 3 uses
  %i.cy = or disjoint i32 %i.cx, 7
  %i.cz = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph, label %.preheader159, !llvm.loop !224

.preheader:                                       ; preds = %.lr.ph165, %.preheader159
  %i.db = phi i32 [ %i.x, %.preheader159 ], [ %i.gp, %.lr.ph165 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader159 ], [ %i.gm, %.lr.ph165 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader159 ], [ %i.gn, %.lr.ph165 ] ; 4 uses
  %i.dc = icmp slt i32 %.1.lcssa, %i.db
  br i1 %i.dc, label %.lr.ph171.preheader, label %._crit_edge

.lr.ph171.preheader:                              ; preds = %.preheader
  %i.dd = xor i32 %.1.lcssa, -1
  %i.de = add i32 %i.db, %i.dd                    ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.de, 7
  br i1 %min.iters.check, label %.lr.ph171.preheader200, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph171.preheader
  %n.vec = and i64 %i.dg, 8589934584              ; 4 uses
  %i.dh = trunc i64 %n.vec to i32
  %i.di = add i32 %.1.lcssa, %i.dh
  %i.dj = shl nuw nsw i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.131.lcssa, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.dl ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.dm = call fast <8 x float> @llvm.sinh.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.dm, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph171.preheader200

.lr.ph171.preheader200:                           ; preds = %.lr.ph171.preheader, %middle.block
  %.2170.ph = phi i32 [ %.1.lcssa, %.lr.ph171.preheader ], [ %i.di, %middle.block ]
  %.232169.ph = phi ptr [ %.131.lcssa, %.lr.ph171.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph171

.lr.ph165:                                        ; preds = %.preheader159, %.lr.ph165
  %.1164 = phi i32 [ %i.gn, %.lr.ph165 ], [ %.0.lcssa, %.preheader159 ]
  %.131163 = phi ptr [ %i.gm, %.lr.ph165 ], [ %.030.lcssa, %.preheader159 ] ; 3 uses
  %i.do = load <4 x float>, ptr %.131163, align 16, !tbaa !41 ; 8 uses
  %i.dp = fmul fast <4 x float> %i.do, %i.do      ; 2 uses
  %i.dq = fmul fast <4 x float> %i.do, splat (float f0x3E2AAAAB) ; 2 uses
  %i.dr = fadd fast <4 x float> %i.dq, splat (float 5.000000e-01)
  %i.ds = fmul fast <4 x float> %i.dp, %i.dr
  %i.dt = fadd fast <4 x float> %i.ds, %i.do
  %i.du = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.do, <4 x float> splat (float f0x42B0C0A5))
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.du, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dw = fmul fast <4 x float> %i.dv, splat (float f0x3FB8AA3B)
  %i.dx = fadd fast <4 x float> %i.dw, splat (float 5.000000e-01) ; 2 uses
  %i.dy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dx)
  %i.dz = sitofp fast <4 x i32> %i.dy to <4 x float> ; 2 uses
  %i.ea = fcmp fast olt <4 x float> %i.dx, %i.dz
  %i.eb = select <4 x i1> %i.ea, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ec = fsub fast <4 x float> %i.dz, %i.eb      ; 2 uses
  %i.ed = fmul fast <4 x float> %i.ec, splat (float f0x3F317218)
  %i.ee = fsub fast <4 x float> %i.dv, %i.ed      ; 8 uses
  %i.ef = fmul fast <4 x float> %i.ee, %i.ee
  %i.eg = fmul fast <4 x float> %i.ee, splat (float f0x39506967)
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3AB743CE)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ee
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3C088908)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ee
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0x3D2AA9C1)
  %i.em = fmul fast <4 x float> %i.el, %i.ee
  %i.en = fadd fast <4 x float> %i.em, splat (float f0x3E2AAAAA)
  %i.eo = fmul fast <4 x float> %i.en, %i.ee
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 5.000000e-01)
  %i.eq = fmul fast <4 x float> %i.ef, %i.ep
  %i.er = fadd fast <4 x float> %i.ee, %i.eq
  %i.es = fadd fast <4 x float> %i.er, splat (float 1.000000e+00)
  %i.et = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ec)
  %i.eu = shl <4 x i32> %i.et, splat (i32 23)
  %i.ev = add <4 x i32> %i.eu, splat (i32 1065353216)
  %i.ew = bitcast <4 x i32> %i.ev to <4 x float>
  %i.ex = fmul fast <4 x float> %i.es, %i.ew
  %i.ey = fadd fast <4 x float> %i.ex, splat (float -1.000000e+00)
  %i.ez = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.do)
  %i.fa = fcmp fast uge <4 x float> %i.ez, splat (float f0x38D1B717) ; 2 uses
  %.v = select <4 x i1> %i.fa, <4 x float> %i.ey, <4 x float> %i.dt
  %i.fb = fneg fast <4 x float> %i.do
  %i.fc = fsub fast <4 x float> splat (float 5.000000e-01), %i.dq
  %i.fd = fmul fast <4 x float> %i.dp, %i.fc
  %i.fe = fsub fast <4 x float> %i.fd, %i.do
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> splat (float f0x42B0C0A5))
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fh = fmul fast <4 x float> %i.fg, splat (float f0x3FB8AA3B)
  %i.fi = fadd fast <4 x float> %i.fh, splat (float 5.000000e-01) ; 2 uses
  %i.fj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fi)
  %i.fk = sitofp fast <4 x i32> %i.fj to <4 x float> ; 2 uses
  %i.fl = fcmp fast olt <4 x float> %i.fi, %i.fk
  %i.fm = select <4 x i1> %i.fl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fn = fsub fast <4 x float> %i.fk, %i.fm      ; 2 uses
  %i.fo = fmul fast <4 x float> %i.fn, splat (float f0x3F317218)
  %i.fp = fsub fast <4 x float> %i.fg, %i.fo      ; 8 uses
  %i.fq = fmul fast <4 x float> %i.fp, %i.fp
  %i.fr = fmul fast <4 x float> %i.fp, splat (float f0x39506967)
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0x3AB743CE)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fp
  %i.fu = fadd fast <4 x float> %i.ft, splat (float f0x3C088908)
  %i.fv = fmul fast <4 x float> %i.fu, %i.fp
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0x3D2AA9C1)
  %i.fx = fmul fast <4 x float> %i.fw, %i.fp
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3E2AAAAA)
  %i.fz = fmul fast <4 x float> %i.fy, %i.fp
  %i.ga = fadd fast <4 x float> %i.fz, splat (float 5.000000e-01)
  %i.gb = fmul fast <4 x float> %i.fq, %i.ga
  %i.gc = fadd fast <4 x float> %i.fp, %i.gb
  %i.gd = fadd fast <4 x float> %i.gc, splat (float 1.000000e+00)
  %i.ge = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fn)
  %i.gf = shl <4 x i32> %i.ge, splat (i32 23)
  %i.gg = add <4 x i32> %i.gf, splat (i32 1065353216)
  %i.gh = bitcast <4 x i32> %i.gg to <4 x float>
  %i.gi = fmul fast <4 x float> %i.gd, %i.gh
  %i.gj = fadd fast <4 x float> %i.gi, splat (float -1.000000e+00)
  %.v156 = select <4 x i1> %i.fa, <4 x float> %i.gj, <4 x float> %i.fe
  %i.gk = fsub fast <4 x float> %.v, %.v156
  %i.gl = fmul fast <4 x float> %i.gk, splat (float 5.000000e-01)
  store <4 x float> %i.gl, ptr %.131163, align 16, !tbaa !41
  %i.gm = getelementptr inbounds nuw i8, ptr %.131163, i64 16 ; 2 uses
  %i.gn = add nuw nsw i32 %.1164, 4               ; 3 uses
  %i.go = or disjoint i32 %i.gn, 3
  %i.gp = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gq = icmp slt i32 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph165, label %.preheader, !llvm.loop !226

.lr.ph171:                                        ; preds = %.lr.ph171.preheader200, %.lr.ph171
  %.2170 = phi i32 [ %i.gu, %.lr.ph171 ], [ %.2170.ph, %.lr.ph171.preheader200 ]
  %.232169 = phi ptr [ %i.gt, %.lr.ph171 ], [ %.232169.ph, %.lr.ph171.preheader200 ] ; 3 uses
  %i.gr = load float, ptr %.232169, align 4, !tbaa !44
  %i.gs = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.gr)
  store float %i.gs, ptr %.232169, align 4, !tbaa !44
  %i.gt = getelementptr inbounds nuw i8, ptr %.232169, i64 4
  %i.gu = add nuw nsw i32 %.2170, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gu, %i.db
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph171, !llvm.loop !227

._crit_edge:                                      ; preds = %.lr.ph171, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond181.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond181.not, label %._crit_edge174, label %.noexc

._crit_edge174:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge174, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sinh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not212 = icmp sgt i32 %i.k, %i.j
  br i1 %.not212, label %._crit_edge214, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dn, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !234
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !234
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !234
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader199

.preheader199:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dl, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.di, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dj, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph205, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0201 = phi i32 [ %i.dj, %.lr.ph ], [ 0, %.noexc ]
  %.030200 = phi ptr [ %i.di, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i32>, ptr %.030200, align 1, !tbaa !41 ; 2 uses
  %i.ab = and <8 x i32> %i.aa, splat (i32 2147483647)
  %i.ac = bitcast <8 x i32> %i.ab to <8 x float>  ; 5 uses
  %i.ad = fmul fast <8 x float> %i.ac, %i.ac
  %i.ae = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ae)
  %i.ag = fadd fast <8 x float> %i.af, %i.ac      ; 2 uses
  %i.ah = fcmp fast ole <8 x float> %i.ag, zeroinitializer
  %i.ai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aj = bitcast <8 x float> %i.ai to <8 x i32>
  %i.ak = bitcast <8 x float> %i.ai to <8 x i32>
  %i.al = and <8 x i32> %i.ak, splat (i32 -2139095041)
  %i.am = or disjoint <8 x i32> %i.al, splat (i32 1056964608)
  %i.an = bitcast <8 x i32> %i.am to <8 x float>  ; 3 uses
  %i.ao = lshr <8 x i32> %i.aj, splat (i32 23)
  %i.ap = add nsw <8 x i32> %i.ao, splat (i32 -127)
  %i.aq = sitofp fast <8 x i32> %i.ap to <8 x float> ; 2 uses
  %i.ar = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = fcmp fast olt <8 x float> %i.an, splat (float f0x3F3504F3) ; 2 uses
  %i.at = select <8 x i1> %i.as, <8 x float> %i.an, <8 x float> zeroinitializer
  %i.au = fadd fast <8 x float> %i.an, splat (float -1.000000e+00)
  %i.av = select fast <8 x i1> %i.as, <8 x float> %i.aq, <8 x float> %i.ar
  %i.aw = fadd fast <8 x float> %i.au, %i.at      ; 12 uses
  %i.ax = fmul fast <8 x float> %i.aw, %i.aw
  %i.ay = fmul fast <8 x float> %i.aw, splat (float f0x3D9021BB)
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0xBDEBD1B8)
  %i.ba = fmul fast <8 x float> %i.az, %i.aw
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0x3DEF251A)
  %i.bc = fmul fast <8 x float> %i.bb, %i.aw
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0xBDFE5D4F)
  %i.be = fmul fast <8 x float> %i.bd, %i.aw
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0x3E11E9BF)
  %i.bg = fmul fast <8 x float> %i.bf, %i.aw
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0xBE2AAE50)
  %i.bi = fmul fast <8 x float> %i.bh, %i.aw
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0x3E4CCEAC)
  %i.bk = fmul fast <8 x float> %i.bj, %i.aw
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0xBE7FFFFC)
  %i.bm = fmul fast <8 x float> %i.bl, %i.aw
  %i.bn = fadd fast <8 x float> %i.bm, splat (float f0x3EAAAAAA)
  %i.bo = fmul fast <8 x float> %i.bn, %i.aw
  %reass.mul191 = fmul fast <8 x float> %i.av, splat (float f0x3F317218)
  %reass.add195 = fadd fast <8 x float> %i.bo, splat (float -5.000000e-01)
  %reass.mul196 = fmul fast <8 x float> %i.ax, %reass.add195
  %i.bp = fadd fast <8 x float> %reass.mul191, %i.aw
  %i.bq = fadd fast <8 x float> %i.bp, %reass.mul196
  %i.br = bitcast <8 x float> %i.bq to <8 x i32>
  %i.bs = select <8 x i1> %i.ah, <8 x i32> splat (i32 -1), <8 x i32> %i.br
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ac, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bu = bitcast <8 x float> %i.bt to <8 x i32>
  %i.bv = bitcast <8 x float> %i.bt to <8 x i32>
  %i.bw = and <8 x i32> %i.bv, splat (i32 -2139095041)
  %i.bx = or disjoint <8 x i32> %i.bw, splat (i32 1056964608)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>  ; 3 uses
  %i.bz = lshr <8 x i32> %i.bu, splat (i32 23)
  %i.ca = add nsw <8 x i32> %i.bz, splat (i32 -127)
  %i.cb = sitofp fast <8 x i32> %i.ca to <8 x float> ; 2 uses
  %i.cc = fadd fast <8 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = fcmp fast olt <8 x float> %i.by, splat (float f0x3F3504F3) ; 2 uses
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.by, <8 x float> zeroinitializer
  %i.cf = fadd fast <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cg = select fast <8 x i1> %i.cd, <8 x float> %i.cb, <8 x float> %i.cc
  %i.ch = fadd fast <8 x float> %i.cf, %i.ce      ; 12 uses
  %i.ci = fmul fast <8 x float> %i.ch, %i.ch
  %i.cj = fmul fast <8 x float> %i.ch, splat (float f0x3D9021BB)
  %i.ck = fadd fast <8 x float> %i.cj, splat (float f0xBDEBD1B8)
  %i.cl = fmul fast <8 x float> %i.ck, %i.ch
  %i.cm = fadd fast <8 x float> %i.cl, splat (float f0x3DEF251A)
  %i.cn = fmul fast <8 x float> %i.cm, %i.ch
  %i.co = fadd fast <8 x float> %i.cn, splat (float f0xBDFE5D4F)
  %i.cp = fmul fast <8 x float> %i.co, %i.ch
  %i.cq = fadd fast <8 x float> %i.cp, splat (float f0x3E11E9BF)
  %i.cr = fmul fast <8 x float> %i.cq, %i.ch
  %i.cs = fadd fast <8 x float> %i.cr, splat (float f0xBE2AAE50)
  %i.ct = fmul fast <8 x float> %i.cs, %i.ch
  %i.cu = fadd fast <8 x float> %i.ct, splat (float f0x3E4CCEAC)
  %i.cv = fmul fast <8 x float> %i.cu, %i.ch
  %i.cw = fadd fast <8 x float> %i.cv, splat (float f0xBE7FFFFC)
  %i.cx = fmul fast <8 x float> %i.cw, %i.ch
  %i.cy = fadd fast <8 x float> %i.cx, splat (float f0x3EAAAAAA)
  %i.cz = fmul fast <8 x float> %i.cy, %i.ch
  %reass.mul194 = fmul fast <8 x float> %i.cg, splat (float f0x3F317218)
  %reass.add197 = fadd fast <8 x float> %i.cz, splat (float -5.000000e-01)
  %reass.mul198 = fmul fast <8 x float> %i.ci, %reass.add197
  %i.da = fadd fast <8 x float> %i.ch, splat (float f0x3F317218)
  %i.db = fadd fast <8 x float> %i.da, %reass.mul194
  %i.dc = fadd fast <8 x float> %i.db, %reass.mul198
  %i.dd = fcmp fast ule <8 x float> %i.ac, splat (float f0x5F0AC723)
  %i.de = bitcast <8 x float> %i.dc to <8 x i32>
  %i.df = select <8 x i1> %i.dd, <8 x i32> %i.bs, <8 x i32> %i.de
end_hunk_2
begin_hunk_3_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ed = add nsw <4 x i32> %i.dz, splat (i32 -127)
  %i.ee = sitofp fast <4 x i32> %i.ed to <4 x float> ; 2 uses
  %i.ef = fadd fast <4 x float> %i.ee, splat (float 1.000000e+00)
  %i.eg = fcmp fast olt <4 x float> %i.ec, splat (float f0x3F3504F3) ; 2 uses
  %i.eh = select <4 x i1> %i.eg, <4 x float> %i.ec, <4 x float> zeroinitializer
  %i.ei = fadd fast <4 x float> %i.ec, splat (float -1.000000e+00)
  %i.ej = select fast <4 x i1> %i.eg, <4 x float> %i.ee, <4 x float> %i.ef
  %i.ek = fadd fast <4 x float> %i.ei, %i.eh      ; 12 uses
  %i.el = fmul fast <4 x float> %i.ek, %i.ek
  %i.em = fmul fast <4 x float> %i.ek, splat (float f0x3D9021BB)
  %i.en = fadd fast <4 x float> %i.em, splat (float f0xBDEBD1B8)
  %i.eo = fmul fast <4 x float> %i.en, %i.ek
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0x3DEF251A)
  %i.eq = fmul fast <4 x float> %i.ep, %i.ek
  %i.er = fadd fast <4 x float> %i.eq, splat (float f0xBDFE5D4F)
  %i.es = fmul fast <4 x float> %i.er, %i.ek
  %i.et = fadd fast <4 x float> %i.es, splat (float f0x3E11E9BF)
  %i.eu = fmul fast <4 x float> %i.et, %i.ek
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0xBE2AAE50)
  %i.ew = fmul fast <4 x float> %i.ev, %i.ek
  %i.ex = fadd fast <4 x float> %i.ew, splat (float f0x3E4CCEAC)
  %i.ey = fmul fast <4 x float> %i.ex, %i.ek
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0xBE7FFFFC)
  %i.fa = fmul fast <4 x float> %i.ez, %i.ek
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3EAAAAAA)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ek
  %reass.mul = fmul fast <4 x float> %i.ej, splat (float f0x3F317218)
  %reass.add187 = fadd fast <4 x float> %i.fc, splat (float -5.000000e-01)
  %reass.mul188 = fmul fast <4 x float> %i.el, %reass.add187
  %i.fd = fadd fast <4 x float> %reass.mul, %i.ek
  %i.fe = fadd fast <4 x float> %i.fd, %reass.mul188
  %i.ff = bitcast <4 x float> %i.fe to <4 x i32>
  %i.fg = select <4 x i1> %i.dw, <4 x i32> splat (i32 -1), <4 x i32> %i.ff
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> splat (float f0x00800000))
  %i.fi = bitcast <4 x float> %i.fh to <4 x i32>  ; 2 uses
  %i.fj = lshr <4 x i32> %i.fi, splat (i32 23)
  %i.fk = and <4 x i32> %i.fi, splat (i32 -2139095041)
  %i.fl = or disjoint <4 x i32> %i.fk, splat (i32 1056964608)
  %i.fm = bitcast <4 x i32> %i.fl to <4 x float>  ; 3 uses
  %i.fn = add nsw <4 x i32> %i.fj, splat (i32 -127)
  %i.fo = sitofp fast <4 x i32> %i.fn to <4 x float> ; 2 uses
  %i.fp = fadd fast <4 x float> %i.fo, splat (float 1.000000e+00)
  %i.fq = fcmp fast olt <4 x float> %i.fm, splat (float f0x3F3504F3) ; 2 uses
  %i.fr = select <4 x i1> %i.fq, <4 x float> %i.fm, <4 x float> zeroinitializer
  %i.fs = fadd fast <4 x float> %i.fm, splat (float -1.000000e+00)
  %i.ft = select fast <4 x i1> %i.fq, <4 x float> %i.fo, <4 x float> %i.fp
  %i.fu = fadd fast <4 x float> %i.fs, %i.fr      ; 12 uses
  %i.fv = fmul fast <4 x float> %i.fu, %i.fu
  %i.fw = fmul fast <4 x float> %i.fu, splat (float f0x3D9021BB)
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0xBDEBD1B8)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fu
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0x3DEF251A)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fu
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0xBDFE5D4F)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fu
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3E11E9BF)
  %i.ge = fmul fast <4 x float> %i.gd, %i.fu
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0xBE2AAE50)
  %i.gg = fmul fast <4 x float> %i.gf, %i.fu
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3E4CCEAC)
  %i.gi = fmul fast <4 x float> %i.gh, %i.fu
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0xBE7FFFFC)
  %i.gk = fmul fast <4 x float> %i.gj, %i.fu
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0x3EAAAAAA)
  %i.gm = fmul fast <4 x float> %i.gl, %i.fu
  %reass.mul186 = fmul fast <4 x float> %i.ft, splat (float f0x3F317218)
  %reass.add189 = fadd fast <4 x float> %i.gm, splat (float -5.000000e-01)
  %reass.mul190 = fmul fast <4 x float> %i.fv, %reass.add189
  %i.gn = fadd fast <4 x float> %i.fu, splat (float f0x3F317218)
  %i.go = fadd fast <4 x float> %i.gn, %reass.mul186
  %i.gp = fadd fast <4 x float> %i.go, %reass.mul190
  %i.gq = fcmp fast ule <4 x float> %i.dr, splat (float f0x5F0AC723)
  %i.gr = bitcast <4 x float> %i.gp to <4 x i32>
  %i.gs = select <4 x i1> %i.gq, <4 x i32> %i.fg, <4 x i32> %i.gr
  %i.gt = and <4 x i32> %i.dp, splat (i32 -2147483648)
  %i.gu = or <4 x i32> %i.gs, %i.gt
  store <4 x i32> %i.gu, ptr %.131203, align 16, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %.131203, i64 16 ; 2 uses
  %i.gw = add nuw nsw i32 %.1204, 4               ; 3 uses
  %i.gx = or disjoint i32 %i.gw, 3
  %i.gy = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gz = icmp slt i32 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph205, label %.preheader, !llvm.loop !232

.lr.ph211:                                        ; preds = %.preheader, %.lr.ph211
  %.2210 = phi i32 [ %i.hd, %.lr.ph211 ], [ %.1.lcssa, %.preheader ]
  %.232209 = phi ptr [ %i.hc, %.lr.ph211 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.ha = load float, ptr %.232209, align 4, !tbaa !44
  %i.hb = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.ha) #20
  store float %i.hb, ptr %.232209, align 4, !tbaa !44
  %i.hc = getelementptr inbounds nuw i8, ptr %.232209, i64 4
  %i.hd = add nuw nsw i32 %.2210, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hd, %i.dn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph211, !llvm.loop !233

._crit_edge:                                      ; preds = %.lr.ph211, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond221.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond221.not, label %._crit_edge214, label %.noexc

._crit_edge214:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge214, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf)) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not153 = icmp sgt i32 %i.k, %i.j
  br i1 %.not153, label %._crit_edge155, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cp, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !241
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !241
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !241
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader140

.preheader140:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ck, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cl, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph146, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0142 = phi i32 [ %i.cl, %.lr.ph ], [ 0, %.noexc ]
  %.030141 = phi ptr [ %i.ck, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030141, align 1, !tbaa !41 ; 2 uses
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ad = fmul fast <8 x float> %i.ac, splat (float f0x3FB8AA3B)
  %i.ae = fadd fast <8 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ae, i32 1) ; 2 uses
  %i.ag = fcmp fast ogt <8 x float> %i.af, %i.ae
  %i.ah = select <8 x i1> %i.ag, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ai = fsub fast <8 x float> %i.af, %i.ah      ; 2 uses
  %i.aj = fmul fast <8 x float> %i.ai, splat (float f0x3F317218)
  %i.ak = fsub fast <8 x float> %i.ac, %i.aj      ; 8 uses
  %i.al = fmul fast <8 x float> %i.ak, %i.ak
  %i.am = fmul fast <8 x float> %i.ak, splat (float f0x39506967)
  %i.an = fadd fast <8 x float> %i.am, splat (float f0x3AB743CE)
  %i.ao = fmul fast <8 x float> %i.an, %i.ak
  %i.ap = fadd fast <8 x float> %i.ao, splat (float f0x3C088908)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ak
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3D2AA9C1)
  %i.as = fmul fast <8 x float> %i.ar, %i.ak
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3E2AAAAA)
  %i.au = fmul fast <8 x float> %i.at, %i.ak
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <8 x float> %i.al, %i.av
  %i.ax = fadd fast <8 x float> %i.ak, %i.aw
  %i.ay = fadd fast <8 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ba = shl <8 x i32> %i.az, splat (i32 23)
  %i.bb = add <8 x i32> %i.ba, splat (i32 1065353216)
  %i.bc = bitcast <8 x i32> %i.bb to <8 x float>
  %i.bd = fmul fast <8 x float> %i.ay, %i.bc
  %i.be = fneg fast <8 x float> %i.aa
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> splat (float f0x42B0C0A5))
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bh = fmul fast <8 x float> %i.bg, splat (float f0x3FB8AA3B)
  %i.bi = fadd fast <8 x float> %i.bh, splat (float 5.000000e-01) ; 2 uses
  %i.bj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bi, i32 1) ; 2 uses
  %i.bk = fcmp fast ogt <8 x float> %i.bj, %i.bi
  %i.bl = select <8 x i1> %i.bk, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bm = fsub fast <8 x float> %i.bj, %i.bl      ; 2 uses
  %i.bn = fmul fast <8 x float> %i.bm, splat (float f0x3F317218)
  %i.bo = fsub fast <8 x float> %i.bg, %i.bn      ; 8 uses
  %i.bp = fmul fast <8 x float> %i.bo, %i.bo
  %i.bq = fmul fast <8 x float> %i.bo, splat (float f0x39506967)
  %i.br = fadd fast <8 x float> %i.bq, splat (float f0x3AB743CE)
  %i.bs = fmul fast <8 x float> %i.br, %i.bo
  %i.bt = fadd fast <8 x float> %i.bs, splat (float f0x3C088908)
  %i.bu = fmul fast <8 x float> %i.bt, %i.bo
  %i.bv = fadd fast <8 x float> %i.bu, splat (float f0x3D2AA9C1)
  %i.bw = fmul fast <8 x float> %i.bv, %i.bo
  %i.bx = fadd fast <8 x float> %i.bw, splat (float f0x3E2AAAAA)
  %i.by = fmul fast <8 x float> %i.bx, %i.bo
  %i.bz = fadd fast <8 x float> %i.by, splat (float 5.000000e-01)
  %i.ca = fmul fast <8 x float> %i.bp, %i.bz
  %i.cb = fadd fast <8 x float> %i.bo, %i.ca
  %i.cc = fadd fast <8 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bm)
  %i.ce = shl <8 x i32> %i.cd, splat (i32 23)
  %i.cf = add <8 x i32> %i.ce, splat (i32 1065353216)
  %i.cg = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ch = fmul fast <8 x float> %i.cc, %i.cg
  %i.ci = fadd fast <8 x float> %i.ch, %i.bd
  %i.cj = fmul fast <8 x float> %i.ci, splat (float 5.000000e-01)
  store <8 x float> %i.cj, ptr %.030141, align 1, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %.030141, i64 32 ; 2 uses
  %i.cl = add nuw nsw i32 %.0142, 8               ; 3 uses
  %i.cm = or disjoint i32 %i.cl, 7
  %i.cn = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader140, !llvm.loop !237

.preheader:                                       ; preds = %.lr.ph146, %.preheader140
  %i.cp = phi i32 [ %i.x, %.preheader140 ], [ %i.fr, %.lr.ph146 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader140 ], [ %i.fo, %.lr.ph146 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader140 ], [ %i.fp, %.lr.ph146 ] ; 4 uses
  %i.cq = icmp slt i32 %.1.lcssa, %i.cp
  br i1 %i.cq, label %.lr.ph152.preheader, label %._crit_edge

.lr.ph152.preheader:                              ; preds = %.preheader
  %i.cr = xor i32 %.1.lcssa, -1
  %i.cs = add i32 %i.cp, %i.cr                    ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cs, 7
  br i1 %min.iters.check, label %.lr.ph152.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph152.preheader
  %n.vec = and i64 %i.cu, 8589934584              ; 4 uses
  %i.cv = trunc i64 %n.vec to i32
  %i.cw = add i32 %.1.lcssa, %i.cv
  %i.cx = shl nuw nsw i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %.131.lcssa, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cz ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.da = call fast <8 x float> @llvm.cosh.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.da, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph152.preheader181

.lr.ph152.preheader181:                           ; preds = %.lr.ph152.preheader, %middle.block
  %.2151.ph = phi i32 [ %.1.lcssa, %.lr.ph152.preheader ], [ %i.cw, %middle.block ]
  %.232150.ph = phi ptr [ %.131.lcssa, %.lr.ph152.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph152

.lr.ph146:                                        ; preds = %.preheader140, %.lr.ph146
  %.1145 = phi i32 [ %i.fp, %.lr.ph146 ], [ %.0.lcssa, %.preheader140 ]
  %.131144 = phi ptr [ %i.fo, %.lr.ph146 ], [ %.030.lcssa, %.preheader140 ] ; 3 uses
  %i.dc = load <4 x float>, ptr %.131144, align 16, !tbaa !41 ; 2 uses
  %i.dd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float f0x42B0C0A5))
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.df = fmul fast <4 x float> %i.de, splat (float f0x3FB8AA3B)
  %i.dg = fadd fast <4 x float> %i.df, splat (float 5.000000e-01) ; 2 uses
  %i.dh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dg)
  %i.di = sitofp fast <4 x i32> %i.dh to <4 x float> ; 2 uses
  %i.dj = fcmp fast olt <4 x float> %i.dg, %i.di
  %i.dk = select <4 x i1> %i.dj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dl = fsub fast <4 x float> %i.di, %i.dk      ; 2 uses
  %i.dm = fmul fast <4 x float> %i.dl, splat (float f0x3F317218)
  %i.dn = fsub fast <4 x float> %i.de, %i.dm      ; 8 uses
  %i.do = fmul fast <4 x float> %i.dn, %i.dn
  %i.dp = fmul fast <4 x float> %i.dn, splat (float f0x39506967)
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0x3AB743CE)
  %i.dr = fmul fast <4 x float> %i.dq, %i.dn
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3C088908)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dn
  %i.du = fadd fast <4 x float> %i.dt, splat (float f0x3D2AA9C1)
  %i.dv = fmul fast <4 x float> %i.du, %i.dn
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3E2AAAAA)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dn
  %i.dy = fadd fast <4 x float> %i.dx, splat (float 5.000000e-01)
  %i.dz = fmul fast <4 x float> %i.do, %i.dy
  %i.ea = fadd fast <4 x float> %i.dn, %i.dz
  %i.eb = fadd fast <4 x float> %i.ea, splat (float 1.000000e+00)
  %i.ec = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dl)
  %i.ed = shl <4 x i32> %i.ec, splat (i32 23)
  %i.ee = add <4 x i32> %i.ed, splat (i32 1065353216)
  %i.ef = bitcast <4 x i32> %i.ee to <4 x float>
  %i.eg = fmul fast <4 x float> %i.eb, %i.ef
  %i.eh = fneg fast <4 x float> %i.dc
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eh, <4 x float> splat (float f0x42B0C0A5))
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ej, splat (float f0x3FB8AA3B)
  %i.el = fadd fast <4 x float> %i.ek, splat (float 5.000000e-01) ; 2 uses
  %i.em = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.el)
  %i.en = sitofp fast <4 x i32> %i.em to <4 x float> ; 2 uses
  %i.eo = fcmp fast olt <4 x float> %i.el, %i.en
  %i.ep = select <4 x i1> %i.eo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eq = fsub fast <4 x float> %i.en, %i.ep      ; 2 uses
  %i.er = fmul fast <4 x float> %i.eq, splat (float f0x3F317218)
  %i.es = fsub fast <4 x float> %i.ej, %i.er      ; 8 uses
  %i.et = fmul fast <4 x float> %i.es, %i.es
  %i.eu = fmul fast <4 x float> %i.es, splat (float f0x39506967)
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0x3AB743CE)
  %i.ew = fmul fast <4 x float> %i.ev, %i.es
  %i.ex = fadd fast <4 x float> %i.ew, splat (float f0x3C088908)
  %i.ey = fmul fast <4 x float> %i.ex, %i.es
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0x3D2AA9C1)
  %i.fa = fmul fast <4 x float> %i.ez, %i.es
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3E2AAAAA)
  %i.fc = fmul fast <4 x float> %i.fb, %i.es
  %i.fd = fadd fast <4 x float> %i.fc, splat (float 5.000000e-01)
  %i.fe = fmul fast <4 x float> %i.et, %i.fd
  %i.ff = fadd fast <4 x float> %i.es, %i.fe
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eq)
  %i.fi = shl <4 x i32> %i.fh, splat (i32 23)
  %i.fj = add <4 x i32> %i.fi, splat (i32 1065353216)
  %i.fk = bitcast <4 x i32> %i.fj to <4 x float>
  %i.fl = fmul fast <4 x float> %i.fg, %i.fk
  %i.fm = fadd fast <4 x float> %i.fl, %i.eg
  %i.fn = fmul fast <4 x float> %i.fm, splat (float 5.000000e-01)
  store <4 x float> %i.fn, ptr %.131144, align 16, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %.131144, i64 16 ; 2 uses
  %i.fp = add nuw nsw i32 %.1145, 4               ; 3 uses
  %i.fq = or disjoint i32 %i.fp, 3
  %i.fr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.fs = icmp slt i32 %i.fq, %i.fr
  br i1 %i.fs, label %.lr.ph146, label %.preheader, !llvm.loop !239

.lr.ph152:                                        ; preds = %.lr.ph152.preheader181, %.lr.ph152
  %.2151 = phi i32 [ %i.fw, %.lr.ph152 ], [ %.2151.ph, %.lr.ph152.preheader181 ]
  %.232150 = phi ptr [ %i.fv, %.lr.ph152 ], [ %.232150.ph, %.lr.ph152.preheader181 ] ; 3 uses
  %i.ft = load float, ptr %.232150, align 4, !tbaa !44
  %i.fu = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ft)
  store float %i.fu, ptr %.232150, align 4, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %.232150, i64 4
  %i.fw = add nuw nsw i32 %.2151, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fw, %i.cp
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !240

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond162.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond162.not, label %._crit_edge155, label %.noexc

._crit_edge155:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge155, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cosh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not210 = icmp sgt i32 %i.k, %i.j
  br i1 %.not210, label %._crit_edge212, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.di, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !247
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !247
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !247
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader197

.preheader197:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dg, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dd, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.de, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph203, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0199 = phi i32 [ %i.de, %.lr.ph ], [ 0, %.noexc ]
  %.030198 = phi ptr [ %i.dd, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030198, align 1, !tbaa !41 ; 5 uses
  %i.ab = fadd fast <8 x float> %i.aa, splat (float -1.000000e+00)
  %i.ac = fadd fast <8 x float> %i.aa, splat (float 1.000000e+00)
  %i.ad = fmul fast <8 x float> %i.ab, %i.ac
  %i.ae = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ad)
  %i.af = fadd fast <8 x float> %i.ae, %i.aa      ; 2 uses
  %i.ag = fcmp fast ole <8 x float> %i.af, zeroinitializer
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ai = bitcast <8 x float> %i.ah to <8 x i32>
  %i.aj = bitcast <8 x float> %i.ah to <8 x i32>
  %i.ak = and <8 x i32> %i.aj, splat (i32 -2139095041)
  %i.al = or disjoint <8 x i32> %i.ak, splat (i32 1056964608)
  %i.am = bitcast <8 x i32> %i.al to <8 x float>  ; 3 uses
  %i.an = lshr <8 x i32> %i.ai, splat (i32 23)
  %i.ao = add nsw <8 x i32> %i.an, splat (i32 -127)
  %i.ap = sitofp fast <8 x i32> %i.ao to <8 x float> ; 2 uses
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ar = fcmp fast olt <8 x float> %i.am, splat (float f0x3F3504F3) ; 2 uses
  %i.as = select <8 x i1> %i.ar, <8 x float> %i.am, <8 x float> zeroinitializer
  %i.at = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.au = select fast <8 x i1> %i.ar, <8 x float> %i.ap, <8 x float> %i.aq
  %i.av = fadd fast <8 x float> %i.at, %i.as      ; 12 uses
  %i.aw = fmul fast <8 x float> %i.av, %i.av
  %i.ax = fmul fast <8 x float> %i.av, splat (float f0x3D9021BB)
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0xBDEBD1B8)
  %i.az = fmul fast <8 x float> %i.ay, %i.av
  %i.ba = fadd fast <8 x float> %i.az, splat (float f0x3DEF251A)
  %i.bb = fmul fast <8 x float> %i.ba, %i.av
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0xBDFE5D4F)
  %i.bd = fmul fast <8 x float> %i.bc, %i.av
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3E11E9BF)
  %i.bf = fmul fast <8 x float> %i.be, %i.av
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0xBE2AAE50)
  %i.bh = fmul fast <8 x float> %i.bg, %i.av
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3E4CCEAC)
  %i.bj = fmul fast <8 x float> %i.bi, %i.av
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0xBE7FFFFC)
  %i.bl = fmul fast <8 x float> %i.bk, %i.av
  %i.bm = fadd fast <8 x float> %i.bl, splat (float f0x3EAAAAAA)
  %i.bn = fmul fast <8 x float> %i.bm, %i.av
  %reass.mul189 = fmul fast <8 x float> %i.au, splat (float f0x3F317218)
  %reass.add193 = fadd fast <8 x float> %i.bn, splat (float -5.000000e-01)
  %reass.mul194 = fmul fast <8 x float> %i.aw, %reass.add193
  %i.bo = fadd fast <8 x float> %reass.mul189, %i.av
  %i.bp = fadd fast <8 x float> %i.bo, %reass.mul194
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.br = bitcast <8 x float> %i.bq to <8 x i32>
  %i.bs = bitcast <8 x float> %i.bq to <8 x i32>
  %i.bt = and <8 x i32> %i.bs, splat (i32 -2139095041)
  %i.bu = or disjoint <8 x i32> %i.bt, splat (i32 1056964608)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>  ; 3 uses
  %i.bw = lshr <8 x i32> %i.br, splat (i32 23)
  %i.bx = add nsw <8 x i32> %i.bw, splat (i32 -127)
  %i.by = sitofp fast <8 x i32> %i.bx to <8 x float> ; 2 uses
  %i.bz = fadd fast <8 x float> %i.by, splat (float 1.000000e+00)
  %i.ca = fcmp fast olt <8 x float> %i.bv, splat (float f0x3F3504F3) ; 2 uses
  %i.cb = select <8 x i1> %i.ca, <8 x float> %i.bv, <8 x float> zeroinitializer
  %i.cc = fadd fast <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.cd = select fast <8 x i1> %i.ca, <8 x float> %i.by, <8 x float> %i.bz
  %i.ce = fadd fast <8 x float> %i.cc, %i.cb      ; 12 uses
  %i.cf = fmul fast <8 x float> %i.ce, %i.ce
  %i.cg = fmul fast <8 x float> %i.ce, splat (float f0x3D9021BB)
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0xBDEBD1B8)
  %i.ci = fmul fast <8 x float> %i.ch, %i.ce
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0x3DEF251A)
  %i.ck = fmul fast <8 x float> %i.cj, %i.ce
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0xBDFE5D4F)
  %i.cm = fmul fast <8 x float> %i.cl, %i.ce
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0x3E11E9BF)
  %i.co = fmul fast <8 x float> %i.cn, %i.ce
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0xBE2AAE50)
  %i.cq = fmul fast <8 x float> %i.cp, %i.ce
  %i.cr = fadd fast <8 x float> %i.cq, splat (float f0x3E4CCEAC)
  %i.cs = fmul fast <8 x float> %i.cr, %i.ce
  %i.ct = fadd fast <8 x float> %i.cs, splat (float f0xBE7FFFFC)
  %i.cu = fmul fast <8 x float> %i.ct, %i.ce
  %i.cv = fadd fast <8 x float> %i.cu, splat (float f0x3EAAAAAA)
  %i.cw = fmul fast <8 x float> %i.cv, %i.ce
  %reass.mul192 = fmul fast <8 x float> %i.cd, splat (float f0x3F317218)
  %reass.add195 = fadd fast <8 x float> %i.cw, splat (float -5.000000e-01)
  %reass.mul196 = fmul fast <8 x float> %i.cf, %reass.add195
  %i.cx = fadd fast <8 x float> %i.ce, splat (float f0x3F317218)
  %i.cy = fadd fast <8 x float> %i.cx, %reass.mul192
  %i.cz = fadd fast <8 x float> %i.cy, %reass.mul196
  %i.da = fcmp fast ule <8 x float> %i.aa, splat (float f0x5F0AC723)
  %i.db = select <8 x i1> %i.ag, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bp
  %i.dc = select <8 x i1> %i.da, <8 x float> %i.db, <8 x float> %i.cz
  store <8 x float> %i.dc, ptr %.030198, align 1, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %.030198, i64 32 ; 2 uses
  %i.de = add nuw nsw i32 %.0199, 8               ; 3 uses
  %i.df = or disjoint i32 %i.de, 7
  %i.dg = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bg = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.bf)
  %i.bh = fdiv fast <16 x float> splat (float 1.000000e+00), %i.bg
  %i.bi = bitcast <16 x float> %i.bh to <16 x i32>
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 16)
  %i.bk = trunc nuw <16 x i32> %i.bj to <16 x i16>
  store <16 x i16> %i.bk, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bm = trunc i64 %n.vec90 to i32
  %i.bn = add i32 %.1.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec90, 1
  %i.bp = getelementptr i8, ptr %.131.lcssa, i64 %i.bo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = shl i64 %index91, 1
  %next.gep92 = getelementptr i8, ptr %.131.lcssa, i64 %i.bq ; 2 uses
  %wide.load93 = load <4 x i16>, ptr %next.gep92, align 2, !tbaa !51
  %i.br = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.bs = shl nuw <4 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <4 x i32> %i.bs to <4 x float>
  %i.bu = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bt)
  %i.bv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bu
  %i.bw = bitcast <4 x float> %i.bv to <4 x i32>
  %i.bx = lshr <4 x i32> %i.bw, splat (i32 16)
  %i.by = trunc nuw <4 x i32> %i.bx to <4 x i16>
  store <4 x i16> %i.by, ptr %next.gep92, align 2, !tbaa !51
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %i.aw, %n.vec90
  br i1 %cmp.n95, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.cm, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cl, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.ca = load i64, ptr %.13152, align 1, !tbaa !41
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %i.cd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ce = bitcast <8 x i16> %i.cd to <4 x float>
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.ce)
  %i.cg = bitcast <4 x float> %i.cf to <4 x i32>
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ch, <4 x i32> poison)
  %i.cj = bitcast <8 x i16> %i.ci to <2 x i64>
  %i.ck = extractelement <2 x i64> %i.cj, i64 0
  store i64 %i.ck, ptr %.13152, align 1, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.cm = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cn = or disjoint i32 %i.cm, 3
  %i.co = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph54, label %.preheader, !llvm.loop !313

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.da, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cz, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.cq = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cr = zext i16 %i.cq to i32
  %i.cs = shl nuw i32 %i.cr, 16
  %i.ct = bitcast i32 %i.cs to float
  %i.cu = call fast float @llvm.sqrt.f32(float %i.ct)
  %i.cv = fdiv fast float 1.000000e+00, %i.cu
  %i.cw = bitcast float %i.cv to i32
  %i.cx = lshr i32 %i.cw, 16
  %i.cy = trunc nuw i32 %i.cx to i16
  store i16 %i.cy, ptr %.23258, align 2, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.da = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !314

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not121 = icmp sgt i32 %i.k, %i.j
  br i1 %.not121, label %._crit_edge123, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bt, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !323
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !323
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !323
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader108

.preheader108:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.br, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bo, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bp, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph114, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0110 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.noexc ]
  %.030109 = phi ptr [ %i.bo, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030109, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = fmul fast <8 x float> %i.ag, splat (float f0x3FB8AA3B)
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fmul fast <8 x float> %i.am, splat (float f0x3F317218)
  %i.ao = fsub fast <8 x float> %i.ag, %i.an      ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = fmul fast <8 x float> %i.ao, splat (float f0x39506967)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3AB743CE)
  %i.as = fmul fast <8 x float> %i.ar, %i.ao
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3C088908)
  %i.au = fmul fast <8 x float> %i.at, %i.ao
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3D2AA9C1)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3E2AAAAA)
  %i.ay = fmul fast <8 x float> %i.ax, %i.ao
  %i.az = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <8 x float> %i.ap, %i.az
  %i.bb = fadd fast <8 x float> %i.ao, %i.ba
  %i.bc = fadd fast <8 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.be = shl <8 x i32> %i.bd, splat (i32 23)
  %i.bf = add <8 x i32> %i.be, splat (i32 1065353216)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bc, %i.bg
  %i.bi = bitcast <8 x float> %i.bh to <8 x i32>  ; 2 uses
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bl = lshr <4 x i32> %i.bj, splat (i32 16)
  %i.bm = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bn = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bl, <4 x i32> %i.bm)
  store <8 x i16> %i.bn, ptr %.030109, align 1, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %.030109, i64 16 ; 2 uses
  %i.bp = add nuw nsw i32 %.0110, 8               ; 3 uses
  %i.bq = or disjoint i32 %i.bp, 7
  %i.br = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph, label %.preheader108, !llvm.loop !318

.preheader:                                       ; preds = %.lr.ph114, %.preheader108
  %i.bt = phi i32 [ %i.x, %.preheader108 ], [ %i.er, %.lr.ph114 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader108 ], [ %i.eo, %.lr.ph114 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader108 ], [ %i.ep, %.lr.ph114 ] ; 5 uses
  %i.bu = icmp slt i32 %.1.lcssa, %i.bt
  br i1 %i.bu, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bv = xor i32 %.1.lcssa, -1
  %i.bw = add i32 %i.bt, %i.bv                    ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bw, 3
  br i1 %min.iters.check, label %.lr.ph120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check148 = icmp ult i32 %i.bw, 15
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 12
  %n.vec = and i64 %i.by, 8589934576              ; 5 uses
  %i.ca = trunc i64 %n.vec to i32
  %i.cb = add i32 %.1.lcssa, %i.ca
  %i.cc = shl nuw nsw i64 %n.vec, 1
  %i.cd = getelementptr i8, ptr %.131.lcssa, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ce ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cf = zext <16 x i16> %wide.load to <16 x i32>
  %i.cg = shl nuw <16 x i32> %i.cf, splat (i32 16)
  %i.ch = bitcast <16 x i32> %i.cg to <16 x float>
  %i.ci = call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ch)
  %i.cj = bitcast <16 x float> %i.ci to <16 x i32>
  %i.ck = lshr <16 x i32> %i.cj, splat (i32 16)
  %i.cl = trunc nuw nsw <16 x i32> %i.ck to <16 x i16>
  store <16 x i16> %i.cl, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph120.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec150 = and i64 %i.by, 8589934588           ; 4 uses
  %i.cn = trunc i64 %n.vec150 to i32
  %i.co = add i32 %.1.lcssa, %i.cn
  %i.cp = shl nuw nsw i64 %n.vec150, 1
  %i.cq = getelementptr i8, ptr %.131.lcssa, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = shl i64 %index151, 1
  %next.gep152 = getelementptr i8, ptr %.131.lcssa, i64 %i.cr ; 2 uses
  %wide.load153 = load <4 x i16>, ptr %next.gep152, align 2, !tbaa !51
  %i.cs = zext <4 x i16> %wide.load153 to <4 x i32>
  %i.ct = shl nuw <4 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <4 x i32> %i.ct to <4 x float>
  %i.cv = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cu)
  %i.cw = bitcast <4 x float> %i.cv to <4 x i32>
  %i.cx = lshr <4 x i32> %i.cw, splat (i32 16)
  %i.cy = trunc nuw nsw <4 x i32> %i.cx to <4 x i16>
  store <4 x i16> %i.cy, ptr %next.gep152, align 2, !tbaa !51
  %index.next154 = add nuw i64 %index151, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next154, %n.vec150
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n155 = icmp eq i64 %i.by, %n.vec150
  br i1 %cmp.n155, label %._crit_edge, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2119.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.232118.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph120

.lr.ph114:                                        ; preds = %.preheader108, %.lr.ph114
  %.1113 = phi i32 [ %i.ep, %.lr.ph114 ], [ %.0.lcssa, %.preheader108 ]
  %.131112 = phi ptr [ %i.eo, %.lr.ph114 ], [ %.030.lcssa, %.preheader108 ] ; 3 uses
  %i.da = load i64, ptr %.131112, align 1, !tbaa !41
  %i.db = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %i.dc = bitcast <2 x i64> %i.db to <8 x i16>
  %i.dd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = bitcast <8 x i16> %i.dd to <4 x float>
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.de, <4 x float> splat (float f0x42B0C0A5))
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dh = fmul fast <4 x float> %i.dg, splat (float f0x3FB8AA3B)
  %i.di = fadd fast <4 x float> %i.dh, splat (float 5.000000e-01) ; 2 uses
  %i.dj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.di)
  %i.dk = sitofp fast <4 x i32> %i.dj to <4 x float> ; 2 uses
  %i.dl = fcmp fast olt <4 x float> %i.di, %i.dk
  %i.dm = select <4 x i1> %i.dl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dn = fsub fast <4 x float> %i.dk, %i.dm      ; 2 uses
  %i.do = fmul fast <4 x float> %i.dn, splat (float f0x3F317218)
  %i.dp = fsub fast <4 x float> %i.dg, %i.do      ; 8 uses
  %i.dq = fmul fast <4 x float> %i.dp, %i.dp
  %i.dr = fmul fast <4 x float> %i.dp, splat (float f0x39506967)
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3AB743CE)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dp
  %i.du = fadd fast <4 x float> %i.dt, splat (float f0x3C088908)
  %i.dv = fmul fast <4 x float> %i.du, %i.dp
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3D2AA9C1)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dp
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3E2AAAAA)
  %i.dz = fmul fast <4 x float> %i.dy, %i.dp
  %i.ea = fadd fast <4 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fmul fast <4 x float> %i.dq, %i.ea
  %i.ec = fadd fast <4 x float> %i.dp, %i.eb
  %i.ed = fadd fast <4 x float> %i.ec, splat (float 1.000000e+00)
  %i.ee = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dn)
  %i.ef = shl <4 x i32> %i.ee, splat (i32 23)
  %i.eg = add <4 x i32> %i.ef, splat (i32 1065353216)
  %i.eh = bitcast <4 x i32> %i.eg to <4 x float>
  %i.ei = fmul fast <4 x float> %i.ed, %i.eh
  %i.ej = bitcast <4 x float> %i.ei to <4 x i32>
  %i.ek = lshr <4 x i32> %i.ej, splat (i32 16)
  %i.el = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ek, <4 x i32> poison)
  %i.em = bitcast <8 x i16> %i.el to <2 x i64>
  %i.en = extractelement <2 x i64> %i.em, i64 0
  store i64 %i.en, ptr %.131112, align 1, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %.131112, i64 8 ; 2 uses
  %i.ep = add nuw nsw i32 %.1113, 4               ; 3 uses
  %i.eq = or disjoint i32 %i.ep, 3
  %i.er = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.es = icmp slt i32 %i.eq, %i.er
  br i1 %i.es, label %.lr.ph114, label %.preheader, !llvm.loop !321

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %.2119 = phi i32 [ %i.fc, %.lr.ph120 ], [ %.2119.ph, %.lr.ph120.preheader ]
  %.232118 = phi ptr [ %i.fb, %.lr.ph120 ], [ %.232118.ph, %.lr.ph120.preheader ] ; 3 uses
  %i.et = load i16, ptr %.232118, align 2, !tbaa !51
  %i.eu = zext i16 %i.et to i32
  %i.ev = shl nuw i32 %i.eu, 16
  %i.ew = bitcast i32 %i.ev to float
  %i.ex = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ew)
  %i.ey = bitcast float %i.ex to i32
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc nuw nsw i32 %i.ez to i16
  store i16 %i.fa, ptr %.232118, align 2, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %.232118, i64 2
  %i.fc = add nuw nsw i32 %.2119, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fc, %i.bt
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !322

._crit_edge:                                      ; preds = %.lr.ph120, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond130.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond130.not, label %._crit_edge123, label %.noexc

._crit_edge123:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge123, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge140, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cb, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !331
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !331
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !331
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader125

.preheader125:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bz, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bx, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph131, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0127 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.noexc ]
  %.030126 = phi ptr [ %i.bw, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030126, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = fcmp fast ole <8 x float> %i.ae, zeroinitializer
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ah = bitcast <8 x float> %i.ag to <8 x i32>
  %i.ai = bitcast <8 x float> %i.ag to <8 x i32>
  %i.aj = and <8 x i32> %i.ai, splat (i32 -2139095041)
  %i.ak = or disjoint <8 x i32> %i.aj, splat (i32 1056964608)
  %i.al = bitcast <8 x i32> %i.ak to <8 x float>  ; 3 uses
  %i.am = lshr <8 x i32> %i.ah, splat (i32 23)
  %i.an = add nsw <8 x i32> %i.am, splat (i32 -127)
  %i.ao = sitofp fast <8 x i32> %i.an to <8 x float> ; 2 uses
  %i.ap = fadd fast <8 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = fcmp fast olt <8 x float> %i.al, splat (float f0x3F3504F3) ; 2 uses
  %i.ar = select <8 x i1> %i.aq, <8 x float> %i.al, <8 x float> zeroinitializer
  %i.as = fadd fast <8 x float> %i.al, splat (float -1.000000e+00)
  %i.at = select fast <8 x i1> %i.aq, <8 x float> %i.ao, <8 x float> %i.ap
  %i.au = fadd fast <8 x float> %i.as, %i.ar      ; 12 uses
  %i.av = fmul fast <8 x float> %i.au, %i.au
  %i.aw = fmul fast <8 x float> %i.au, splat (float f0x3D9021BB)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0xBDEBD1B8)
  %i.ay = fmul fast <8 x float> %i.ax, %i.au
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3DEF251A)
  %i.ba = fmul fast <8 x float> %i.az, %i.au
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0xBDFE5D4F)
  %i.bc = fmul fast <8 x float> %i.bb, %i.au
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0x3E11E9BF)
  %i.be = fmul fast <8 x float> %i.bd, %i.au
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0xBE2AAE50)
  %i.bg = fmul fast <8 x float> %i.bf, %i.au
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0x3E4CCEAC)
  %i.bi = fmul fast <8 x float> %i.bh, %i.au
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0xBE7FFFFC)
  %i.bk = fmul fast <8 x float> %i.bj, %i.au
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0x3EAAAAAA)
  %i.bm = fmul fast <8 x float> %i.bl, %i.au
  %reass.mul122 = fmul fast <8 x float> %i.at, splat (float f0x3F317218)
  %reass.add123 = fadd fast <8 x float> %i.bm, splat (float -5.000000e-01)
  %reass.mul124 = fmul fast <8 x float> %i.av, %reass.add123
  %i.bn = fadd fast <8 x float> %reass.mul122, %i.au
  %i.bo = fadd fast <8 x float> %i.bn, %reass.mul124
  %i.bp = bitcast <8 x float> %i.bo to <8 x i32>
  %i.bq = select <8 x i1> %i.af, <8 x i32> splat (i32 -1), <8 x i32> %i.bp ; 2 uses
  %i.br = shufflevector <8 x i32> %i.bq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <8 x i32> %i.bq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bt = lshr <4 x i32> %i.br, splat (i32 16)
  %i.bu = lshr <4 x i32> %i.bs, splat (i32 16)
  %i.bv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bt, <4 x i32> %i.bu)
  store <8 x i16> %i.bv, ptr %.030126, align 1, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.030126, i64 16 ; 2 uses
  %i.bx = add nuw nsw i32 %.0127, 8               ; 3 uses
  %i.by = or disjoint i32 %i.bx, 7
  %i.bz = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %.preheader125, !llvm.loop !326

.preheader:                                       ; preds = %.lr.ph131, %.preheader125
  %i.cb = phi i32 [ %i.x, %.preheader125 ], [ %i.ff, %.lr.ph131 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader125 ], [ %i.fc, %.lr.ph131 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader125 ], [ %i.fd, %.lr.ph131 ] ; 5 uses
  %i.cc = icmp slt i32 %.1.lcssa, %i.cb
  br i1 %i.cc, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.cd = xor i32 %.1.lcssa, -1
  %i.ce = add i32 %i.cb, %i.cd                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ce, 3
  br i1 %min.iters.check, label %.lr.ph137.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i32 %i.ce, 15
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 8589934576              ; 5 uses
  %i.ci = trunc i64 %n.vec to i32
  %i.cj = add i32 %.1.lcssa, %i.ci
  %i.ck = shl nuw nsw i64 %n.vec, 1
  %i.cl = getelementptr i8, ptr %.131.lcssa, i64 %i.ck
  br label %vector.body
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor19unary_op_reciprocalEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float>
  %i.bg = fdiv fast <16 x float> splat (float 1.000000e+00), %i.bf
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <16 x i32> %i.bi to <16 x i16>
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec90 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec90, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index91, 1
  %next.gep92 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load93 = load <4 x i16>, ptr %next.gep92, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bs
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep92, align 2, !tbaa !51
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !384

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %i.aw, %n.vec90
  br i1 %cmp.n95, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>
  %i.cd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cc
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !385

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = fdiv fast float 1.000000e+00, %i.cr
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !386

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_tanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not113 = icmp sgt i32 %i.k, %i.j
  br i1 %.not113, label %._crit_edge115, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bx, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !395
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !395
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !395
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader100

.preheader100:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bt, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph106, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0102 = phi i32 [ %i.bt, %.lr.ph ], [ 0, %.noexc ]
  %.030101 = phi ptr [ %i.bs, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030101, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = fmul fast <8 x float> %i.ae, splat (float -2.000000e+00)
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0x42B0C0A5))
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, splat (float f0x3FB8AA3B)
  %i.aj = fadd fast <8 x float> %i.ai, splat (float 5.000000e-01) ; 2 uses
  %i.ak = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aj, i32 1) ; 2 uses
  %i.al = fcmp fast ogt <8 x float> %i.ak, %i.aj
  %i.am = select <8 x i1> %i.al, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.an = fsub fast <8 x float> %i.ak, %i.am      ; 2 uses
  %i.ao = fmul fast <8 x float> %i.an, splat (float f0x3F317218)
  %i.ap = fsub fast <8 x float> %i.ah, %i.ao      ; 8 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ap
  %i.ar = fmul fast <8 x float> %i.ap, splat (float f0x39506967)
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0x3AB743CE)
  %i.at = fmul fast <8 x float> %i.as, %i.ap
  %i.au = fadd fast <8 x float> %i.at, splat (float f0x3C088908)
  %i.av = fmul fast <8 x float> %i.au, %i.ap
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3D2AA9C1)
  %i.ax = fmul fast <8 x float> %i.aw, %i.ap
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0x3E2AAAAA)
  %i.az = fmul fast <8 x float> %i.ay, %i.ap
  %i.ba = fadd fast <8 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = fmul fast <8 x float> %i.aq, %i.ba
  %i.bc = fadd fast <8 x float> %i.ap, %i.bb
  %i.bd = fadd fast <8 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.an)
  %i.bf = shl <8 x i32> %i.be, splat (i32 23)
  %i.bg = add <8 x i32> %i.bf, splat (i32 1065353216)
  %i.bh = bitcast <8 x i32> %i.bg to <8 x float>
  %i.bi = fmul fast <8 x float> %i.bd, %i.bh
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 1.000000e+00)
  %i.bk = fdiv fast <8 x float> splat (float 2.000000e+00), %i.bj
  %i.bl = fadd fast <8 x float> %i.bk, splat (float -1.000000e+00)
  %i.bm = bitcast <8 x float> %i.bl to <8 x i32>  ; 2 uses
  %i.bn = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bp = lshr <4 x i32> %i.bn, splat (i32 16)
  %i.bq = lshr <4 x i32> %i.bo, splat (i32 16)
  %i.br = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bp, <4 x i32> %i.bq)
  store <8 x i16> %i.br, ptr %.030101, align 1, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.030101, i64 16 ; 2 uses
  %i.bt = add nuw nsw i32 %.0102, 8               ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 7
  %i.bv = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.preheader100, !llvm.loop !390

.preheader:                                       ; preds = %.lr.ph106, %.preheader100
  %i.bx = phi i32 [ %i.x, %.preheader100 ], [ %i.ez, %.lr.ph106 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader100 ], [ %i.ew, %.lr.ph106 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader100 ], [ %i.ex, %.lr.ph106 ] ; 5 uses
  %i.by = icmp slt i32 %.1.lcssa, %i.bx
  br i1 %i.by, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bz = xor i32 %.1.lcssa, -1
  %i.ca = add i32 %i.bx, %i.bz                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ca, 3
  br i1 %min.iters.check, label %.lr.ph112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check140 = icmp ult i32 %i.ca, 15
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %i.cc, 12
  %n.vec = and i64 %i.cc, 8589934576              ; 5 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = add i32 %.1.lcssa, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 1
  %i.ch = getelementptr i8, ptr %.131.lcssa, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ci ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cj = zext <16 x i16> %wide.load to <16 x i32>
  %i.ck = shl nuw <16 x i32> %i.cj, splat (i32 16)
  %i.cl = bitcast <16 x i32> %i.ck to <16 x float>
  %i.cm = call fast <16 x float> @llvm.tanh.v16f32(<16 x float> %i.cl)
  %i.cn = bitcast <16 x float> %i.cm to <16 x i32>
  %i.co = lshr <16 x i32> %i.cn, splat (i32 16)
  %i.cp = trunc nuw <16 x i32> %i.co to <16 x i16>
  store <16 x i16> %i.cp, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph112.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.cc, 8589934588           ; 4 uses
  %i.cr = trunc i64 %n.vec142 to i32
  %i.cs = add i32 %.1.lcssa, %i.cr
  %i.ct = shl nuw nsw i64 %n.vec142, 1
  %i.cu = getelementptr i8, ptr %.131.lcssa, i64 %i.ct
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.cv = shl i64 %index143, 1
  %next.gep144 = getelementptr i8, ptr %.131.lcssa, i64 %i.cv ; 2 uses
  %wide.load145 = load <4 x i16>, ptr %next.gep144, align 2, !tbaa !51
  %i.cw = zext <4 x i16> %wide.load145 to <4 x i32>
  %i.cx = shl nuw <4 x i32> %i.cw, splat (i32 16)
  %i.cy = bitcast <4 x i32> %i.cx to <4 x float>
  %i.cz = call fast <4 x float> @llvm.tanh.v4f32(<4 x float> %i.cy)
  %i.da = bitcast <4 x float> %i.cz to <4 x i32>
  %i.db = lshr <4 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <4 x i32> %i.db to <4 x i16>
  store <4 x i16> %i.dc, ptr %next.gep144, align 2, !tbaa !51
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %i.cc, %n.vec142
  br i1 %cmp.n147, label %._crit_edge, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2111.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  %.232110.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %.lr.ph112

.lr.ph106:                                        ; preds = %.preheader100, %.lr.ph106
  %.1105 = phi i32 [ %i.ex, %.lr.ph106 ], [ %.0.lcssa, %.preheader100 ]
  %.131104 = phi ptr [ %i.ew, %.lr.ph106 ], [ %.030.lcssa, %.preheader100 ] ; 3 uses
  %i.de = load i64, ptr %.131104, align 1, !tbaa !41
  %i.df = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %i.dg = bitcast <2 x i64> %i.df to <8 x i16>
  %i.dh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.di = bitcast <8 x i16> %i.dh to <4 x float>
  %i.dj = fmul fast <4 x float> %i.di, splat (float -2.000000e+00)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0x42B0C0A5))
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dm = fmul fast <4 x float> %i.dl, splat (float f0x3FB8AA3B)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float 5.000000e-01) ; 2 uses
  %i.do = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dn)
  %i.dp = sitofp fast <4 x i32> %i.do to <4 x float> ; 2 uses
  %i.dq = fcmp fast olt <4 x float> %i.dn, %i.dp
  %i.dr = select <4 x i1> %i.dq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ds = fsub fast <4 x float> %i.dp, %i.dr      ; 2 uses
  %i.dt = fmul fast <4 x float> %i.ds, splat (float f0x3F317218)
  %i.du = fsub fast <4 x float> %i.dl, %i.dt      ; 8 uses
  %i.dv = fmul fast <4 x float> %i.du, %i.du
  %i.dw = fmul fast <4 x float> %i.du, splat (float f0x39506967)
  %i.dx = fadd fast <4 x float> %i.dw, splat (float f0x3AB743CE)
  %i.dy = fmul fast <4 x float> %i.dx, %i.du
  %i.dz = fadd fast <4 x float> %i.dy, splat (float f0x3C088908)
  %i.ea = fmul fast <4 x float> %i.dz, %i.du
  %i.eb = fadd fast <4 x float> %i.ea, splat (float f0x3D2AA9C1)
  %i.ec = fmul fast <4 x float> %i.eb, %i.du
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3E2AAAAA)
  %i.ee = fmul fast <4 x float> %i.ed, %i.du
  %i.ef = fadd fast <4 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = fmul fast <4 x float> %i.dv, %i.ef
  %i.eh = fadd fast <4 x float> %i.du, %i.eg
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ds)
  %i.ek = shl <4 x i32> %i.ej, splat (i32 23)
  %i.el = add <4 x i32> %i.ek, splat (i32 1065353216)
  %i.em = bitcast <4 x i32> %i.el to <4 x float>
  %i.en = fmul fast <4 x float> %i.ei, %i.em
  %i.eo = fadd fast <4 x float> %i.en, splat (float 1.000000e+00)
  %i.ep = fdiv fast <4 x float> splat (float 2.000000e+00), %i.eo
  %i.eq = fadd fast <4 x float> %i.ep, splat (float -1.000000e+00)
  %i.er = bitcast <4 x float> %i.eq to <4 x i32>
  %i.es = lshr <4 x i32> %i.er, splat (i32 16)
  %i.et = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.es, <4 x i32> poison)
  %i.eu = bitcast <8 x i16> %i.et to <2 x i64>
  %i.ev = extractelement <2 x i64> %i.eu, i64 0
  store i64 %i.ev, ptr %.131104, align 1, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %.131104, i64 8 ; 2 uses
  %i.ex = add nuw nsw i32 %.1105, 4               ; 3 uses
  %i.ey = or disjoint i32 %i.ex, 3
  %i.ez = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph106, label %.preheader, !llvm.loop !393

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %.2111 = phi i32 [ %i.fk, %.lr.ph112 ], [ %.2111.ph, %.lr.ph112.preheader ]
  %.232110 = phi ptr [ %i.fj, %.lr.ph112 ], [ %.232110.ph, %.lr.ph112.preheader ] ; 3 uses
  %i.fb = load i16, ptr %.232110, align 2, !tbaa !51
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = bitcast i32 %i.fd to float
  %i.ff = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.fe)
  %i.fg = bitcast float %i.ff to i32
  %i.fh = lshr i32 %i.fg, 16
  %i.fi = trunc nuw i32 %i.fh to i16
  store i16 %i.fi, ptr %.232110, align 2, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %.232110, i64 2
  %i.fk = add nuw nsw i32 %.2111, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph112, !llvm.loop !394

._crit_edge:                                      ; preds = %.lr.ph112, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond122.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond122.not, label %._crit_edge115, label %.noexc

._crit_edge115:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge115, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_log10EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not131 = icmp sgt i32 %i.k, %i.j
  br i1 %.not131, label %._crit_edge133, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cc, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !403
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !403
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !403
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader118

.preheader118:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ca, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bx, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.by, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph124, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0120 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.noexc ]
  %.030119 = phi ptr [ %i.bx, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030119, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = fcmp fast ole <8 x float> %i.ae, zeroinitializer
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ah = bitcast <8 x float> %i.ag to <8 x i32>
  %i.ai = bitcast <8 x float> %i.ag to <8 x i32>
  %i.aj = and <8 x i32> %i.ai, splat (i32 -2139095041)
  %i.ak = or disjoint <8 x i32> %i.aj, splat (i32 1056964608)
  %i.al = bitcast <8 x i32> %i.ak to <8 x float>  ; 3 uses
  %i.am = lshr <8 x i32> %i.ah, splat (i32 23)
  %i.an = add nsw <8 x i32> %i.am, splat (i32 -127)
  %i.ao = sitofp fast <8 x i32> %i.an to <8 x float> ; 2 uses
  %i.ap = fadd fast <8 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = fcmp fast olt <8 x float> %i.al, splat (float f0x3F3504F3) ; 2 uses
  %i.ar = select <8 x i1> %i.aq, <8 x float> %i.al, <8 x float> zeroinitializer
  %i.as = fadd fast <8 x float> %i.al, splat (float -1.000000e+00)
  %i.at = select fast <8 x i1> %i.aq, <8 x float> %i.ao, <8 x float> %i.ap
  %i.au = fadd fast <8 x float> %i.as, %i.ar      ; 12 uses
  %i.av = fmul fast <8 x float> %i.au, %i.au
  %i.aw = fmul fast <8 x float> %i.au, splat (float f0x3D9021BB)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0xBDEBD1B8)
  %i.ay = fmul fast <8 x float> %i.ax, %i.au
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3DEF251A)
  %i.ba = fmul fast <8 x float> %i.az, %i.au
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0xBDFE5D4F)
  %i.bc = fmul fast <8 x float> %i.bb, %i.au
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0x3E11E9BF)
  %i.be = fmul fast <8 x float> %i.bd, %i.au
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0xBE2AAE50)
  %i.bg = fmul fast <8 x float> %i.bf, %i.au
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0x3E4CCEAC)
  %i.bi = fmul fast <8 x float> %i.bh, %i.au
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0xBE7FFFFC)
  %i.bk = fmul fast <8 x float> %i.bj, %i.au
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0x3EAAAAAA)
  %i.bm = fmul fast <8 x float> %i.bl, %i.au
  %reass.mul115 = fmul fast <8 x float> %i.at, splat (float f0x3F317218)
  %reass.add116 = fadd fast <8 x float> %i.bm, splat (float -5.000000e-01)
  %reass.mul117 = fmul fast <8 x float> %i.av, %reass.add116
  %i.bn = fadd fast <8 x float> %reass.mul115, %i.au
  %i.bo = fadd fast <8 x float> %i.bn, %reass.mul117
  %i.bp = fmul fast <8 x float> %i.bo, splat (float f0x3EDE5BD9)
  %i.bq = bitcast <8 x float> %i.bp to <8 x i32>
  %i.br = select <8 x i1> %i.af, <8 x i32> splat (i32 -1), <8 x i32> %i.bq ; 2 uses
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = shufflevector <8 x i32> %i.br, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bu = lshr <4 x i32> %i.bs, splat (i32 16)
  %i.bv = lshr <4 x i32> %i.bt, splat (i32 16)
  %i.bw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bu, <4 x i32> %i.bv)
  store <8 x i16> %i.bw, ptr %.030119, align 1, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %.030119, i64 16 ; 2 uses
  %i.by = add nuw nsw i32 %.0120, 8               ; 3 uses
  %i.bz = or disjoint i32 %i.by, 7
  %i.ca = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph, label %.preheader118, !llvm.loop !398

.preheader:                                       ; preds = %.lr.ph124, %.preheader118
  %i.cc = phi i32 [ %i.x, %.preheader118 ], [ %i.fh, %.lr.ph124 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader118 ], [ %i.fe, %.lr.ph124 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader118 ], [ %i.ff, %.lr.ph124 ] ; 5 uses
  %i.cd = icmp slt i32 %.1.lcssa, %i.cc
  br i1 %i.cd, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ce = xor i32 %.1.lcssa, -1
  %i.cf = add i32 %i.cc, %i.ce                    ; 3 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cf, 3
  br i1 %min.iters.check, label %.lr.ph130.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check158 = icmp ult i32 %i.cf, 15
  br i1 %min.iters.check158, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %i.ch, 12
  %n.vec = and i64 %i.ch, 8589934576              ; 5 uses
  %i.cj = trunc i64 %n.vec to i32
end_hunk_5
begin_hunk_6_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !423

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph62.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.ba, 8589934588            ; 4 uses
  %i.bp = trunc i64 %n.vec92 to i32
  %i.bq = add i32 %.1.lcssa, %i.bp
  %i.br = shl nuw nsw i64 %n.vec92, 1
  %i.bs = getelementptr i8, ptr %.131.lcssa, i64 %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = shl i64 %index93, 1
  %next.gep94 = getelementptr i8, ptr %.131.lcssa, i64 %i.bt ; 2 uses
  %wide.load95 = load <4 x i16>, ptr %next.gep94, align 2, !tbaa !51
  %i.bu = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.bv = shl nuw <4 x i32> %i.bu, splat (i32 16)
  %i.bw = bitcast <4 x i32> %i.bv to <4 x float>  ; 2 uses
  %i.bx = fcmp fast ogt <4 x float> %i.bw, zeroinitializer
  %i.by = fcmp fast olt <4 x float> %i.bw, zeroinitializer
  %i.bz = select <4 x i1> %i.by, <4 x i16> splat (i16 -16512), <4 x i16> zeroinitializer
  %i.ca = select <4 x i1> %i.bx, <4 x i16> splat (i16 16256), <4 x i16> %i.bz
  store <4 x i16> %i.ca, ptr %next.gep94, align 2, !tbaa !51
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !424

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.ba, %n.vec92
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.261.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.23260.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph62

.lr.ph56:                                         ; preds = %.preheader50, %.lr.ph56
  %.155 = phi i32 [ %i.cs, %.lr.ph56 ], [ %.0.lcssa, %.preheader50 ]
  %.13154 = phi ptr [ %i.cr, %.lr.ph56 ], [ %.030.lcssa, %.preheader50 ] ; 3 uses
  %i.cc = load i64, ptr %.13154, align 1, !tbaa !41
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = bitcast <2 x i64> %i.cd to <8 x i16>
  %i.cf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = bitcast <8 x i16> %i.cf to <4 x float>  ; 2 uses
  %i.ch = fcmp fast ogt <4 x float> %i.cg, zeroinitializer
  %i.ci = select <4 x i1> %i.ch, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cj = fcmp fast olt <4 x float> %i.cg, zeroinitializer
  %i.ck = select <4 x i1> %i.cj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cl = fsub fast <4 x float> %i.ci, %i.ck
  %i.cm = bitcast <4 x float> %i.cl to <4 x i32>
  %i.cn = lshr <4 x i32> %i.cm, splat (i32 16)
  %i.co = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cn, <4 x i32> poison)
  %i.cp = bitcast <8 x i16> %i.co to <2 x i64>
  %i.cq = extractelement <2 x i64> %i.cp, i64 0
  store i64 %i.cq, ptr %.13154, align 1, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %.13154, i64 8 ; 2 uses
  %i.cs = add nuw nsw i32 %.155, 4                ; 3 uses
  %i.ct = or disjoint i32 %i.cs, 3
  %i.cu = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph56, label %.preheader, !llvm.loop !425

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %.261 = phi i32 [ %i.df, %.lr.ph62 ], [ %.261.ph, %.lr.ph62.preheader ]
  %.23260 = phi ptr [ %i.de, %.lr.ph62 ], [ %.23260.ph, %.lr.ph62.preheader ] ; 3 uses
  %i.cw = load i16, ptr %.23260, align 2, !tbaa !51
  %i.cx = zext i16 %i.cw to i32
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = bitcast i32 %i.cy to float              ; 2 uses
  %i.da = fcmp fast ogt float %i.cz, 0.000000e+00
  %i.db = fcmp fast olt float %i.cz, 0.000000e+00
  %i.dc = select i1 %i.db, i16 -16512, i16 0
  %i.dd = select i1 %i.da, i16 16256, i16 %i.dc
  store i16 %i.dd, ptr %.23260, align 2, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %.23260, i64 2
  %i.df = add nuw nsw i32 %.261, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.av
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !426

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond72.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond72.not, label %._crit_edge65, label %.noexc

._crit_edge65:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge65, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not118 = icmp sgt i32 %i.k, %i.j
  br i1 %.not118, label %._crit_edge120, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cd, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !433
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !433
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !433
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader105

.preheader105:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cb, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.by, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bz, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph111, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0107 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %.noexc ]
  %.030106 = phi ptr [ %i.by, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030106, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 5 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae
  %i.ag = fmul fast <8 x float> %i.ae, splat (float f0x3E2AAAAB)
  %i.ah = fadd fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fmul fast <8 x float> %i.af, %i.ah
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.am = fmul fast <8 x float> %i.al, splat (float f0x3FB8AA3B)
  %i.an = fadd fast <8 x float> %i.am, splat (float 5.000000e-01) ; 2 uses
  %i.ao = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.an, i32 1) ; 2 uses
  %i.ap = fcmp fast ogt <8 x float> %i.ao, %i.an
  %i.aq = select <8 x i1> %i.ap, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ar = fsub fast <8 x float> %i.ao, %i.aq      ; 2 uses
  %i.as = fmul fast <8 x float> %i.ar, splat (float f0x3F317218)
  %i.at = fsub fast <8 x float> %i.al, %i.as      ; 8 uses
  %i.au = fmul fast <8 x float> %i.at, %i.at
  %i.av = fmul fast <8 x float> %i.at, splat (float f0x39506967)
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3AB743CE)
  %i.ax = fmul fast <8 x float> %i.aw, %i.at
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0x3C088908)
  %i.az = fmul fast <8 x float> %i.ay, %i.at
  %i.ba = fadd fast <8 x float> %i.az, splat (float f0x3D2AA9C1)
  %i.bb = fmul fast <8 x float> %i.ba, %i.at
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0x3E2AAAAA)
  %i.bd = fmul fast <8 x float> %i.bc, %i.at
  %i.be = fadd fast <8 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul fast <8 x float> %i.au, %i.be
  %i.bg = fadd fast <8 x float> %i.at, %i.bf
  %i.bh = fadd fast <8 x float> %i.bg, splat (float 1.000000e+00)
  %i.bi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ar)
  %i.bj = shl <8 x i32> %i.bi, splat (i32 23)
  %i.bk = add <8 x i32> %i.bj, splat (i32 1065353216)
  %i.bl = bitcast <8 x i32> %i.bk to <8 x float>
  %i.bm = fmul fast <8 x float> %i.bh, %i.bl
  %i.bn = fadd fast <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bo = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.bp = and <8 x i32> %i.bo, splat (i32 2147418112)
  %i.bq = bitcast <8 x i32> %i.bp to <8 x float>
  %i.br = fcmp fast uge <8 x float> %i.bq, splat (float f0x38D1B717)
  %.v104 = select <8 x i1> %i.br, <8 x float> %i.bn, <8 x float> %i.aj
  %i.bs = bitcast <8 x float> %.v104 to <8 x i32> ; 2 uses
  %i.bt = shufflevector <8 x i32> %i.bs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bu = shufflevector <8 x i32> %i.bs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bv = lshr <4 x i32> %i.bt, splat (i32 16)
  %i.bw = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bv, <4 x i32> %i.bw)
  store <8 x i16> %i.bx, ptr %.030106, align 1, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %.030106, i64 16 ; 2 uses
  %i.bz = add nuw nsw i32 %.0107, 8               ; 3 uses
  %i.ca = or disjoint i32 %i.bz, 7
  %i.cb = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.preheader105, !llvm.loop !430

.preheader:                                       ; preds = %.lr.ph111, %.preheader105
  %i.cd = phi i32 [ %i.x, %.preheader105 ], [ %i.eg, %.lr.ph111 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader105 ], [ %i.ed, %.lr.ph111 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader105 ], [ %i.ee, %.lr.ph111 ] ; 2 uses
  %i.ce = icmp slt i32 %.1.lcssa, %i.cd
  br i1 %i.ce, label %.lr.ph117, label %._crit_edge

.lr.ph111:                                        ; preds = %.preheader105, %.lr.ph111
  %.1110 = phi i32 [ %i.ee, %.lr.ph111 ], [ %.0.lcssa, %.preheader105 ]
  %.131109 = phi ptr [ %i.ed, %.lr.ph111 ], [ %.030.lcssa, %.preheader105 ] ; 3 uses
  %i.cf = load i64, ptr %.131109, align 1, !tbaa !41
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cj = bitcast <8 x i16> %i.ci to <4 x float>  ; 5 uses
  %i.ck = fmul fast <4 x float> %i.cj, %i.cj
  %i.cl = fmul fast <4 x float> %i.cj, splat (float f0x3E2AAAAB)
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 5.000000e-01)
  %i.cn = fmul fast <4 x float> %i.ck, %i.cm
  %i.co = fadd fast <4 x float> %i.cn, %i.cj
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> splat (float f0x42B0C0A5))
  %i.cq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cr = fmul fast <4 x float> %i.cq, splat (float f0x3FB8AA3B)
  %i.cs = fadd fast <4 x float> %i.cr, splat (float 5.000000e-01) ; 2 uses
  %i.ct = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cs)
  %i.cu = sitofp fast <4 x i32> %i.ct to <4 x float> ; 2 uses
  %i.cv = fcmp fast olt <4 x float> %i.cs, %i.cu
  %i.cw = select <4 x i1> %i.cv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cx = fsub fast <4 x float> %i.cu, %i.cw      ; 2 uses
  %i.cy = fmul fast <4 x float> %i.cx, splat (float f0x3F317218)
  %i.cz = fsub fast <4 x float> %i.cq, %i.cy      ; 8 uses
  %i.da = fmul fast <4 x float> %i.cz, %i.cz
  %i.db = fmul fast <4 x float> %i.cz, splat (float f0x39506967)
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0x3AB743CE)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cz
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3C088908)
  %i.df = fmul fast <4 x float> %i.de, %i.cz
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3D2AA9C1)
  %i.dh = fmul fast <4 x float> %i.dg, %i.cz
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3E2AAAAA)
  %i.dj = fmul fast <4 x float> %i.di, %i.cz
  %i.dk = fadd fast <4 x float> %i.dj, splat (float 5.000000e-01)
  %i.dl = fmul fast <4 x float> %i.da, %i.dk
  %i.dm = fadd fast <4 x float> %i.cz, %i.dl
  %i.dn = fadd fast <4 x float> %i.dm, splat (float 1.000000e+00)
  %i.do = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cx)
  %i.dp = shl <4 x i32> %i.do, splat (i32 23)
  %i.dq = add <4 x i32> %i.dp, splat (i32 1065353216)
  %i.dr = bitcast <4 x i32> %i.dq to <4 x float>
  %i.ds = fmul fast <4 x float> %i.dn, %i.dr
  %i.dt = fadd fast <4 x float> %i.ds, splat (float -1.000000e+00)
  %i.du = bitcast <8 x i16> %i.ci to <4 x i32>
  %i.dv = and <4 x i32> %i.du, splat (i32 2147418112)
  %i.dw = bitcast <4 x i32> %i.dv to <4 x float>
  %i.dx = fcmp fast uge <4 x float> %i.dw, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.dx, <4 x float> %i.dt, <4 x float> %i.co
  %i.dy = bitcast <4 x float> %.v to <4 x i32>
  %i.dz = lshr <4 x i32> %i.dy, splat (i32 16)
  %i.ea = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dz, <4 x i32> poison)
  %i.eb = bitcast <8 x i16> %i.ea to <2 x i64>
  %i.ec = extractelement <2 x i64> %i.eb, i64 0
  store i64 %i.ec, ptr %.131109, align 1, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %.131109, i64 8 ; 2 uses
  %i.ee = add nuw nsw i32 %.1110, 4               ; 3 uses
  %i.ef = or disjoint i32 %i.ee, 3
  %i.eg = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph111, label %.preheader, !llvm.loop !431

.lr.ph117:                                        ; preds = %.preheader, %.lr.ph117
  %.2116 = phi i32 [ %i.er, %.lr.ph117 ], [ %.1.lcssa, %.preheader ]
  %.232115 = phi ptr [ %i.eq, %.lr.ph117 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.ei = load i16, ptr %.232115, align 2, !tbaa !51
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 16
  %i.el = bitcast i32 %i.ek to float
  %i.em = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.el) #20
  %i.en = bitcast float %i.em to i32
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  store i16 %i.ep, ptr %.232115, align 2, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %.232115, i64 2
  %i.er = add nuw nsw i32 %.2116, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.er, %i.cd
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !432

._crit_edge:                                      ; preds = %.lr.ph117, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond127.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond127.not, label %._crit_edge120, label %.noexc

._crit_edge120:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge120, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not178 = icmp sgt i32 %i.k, %i.j
  br i1 %.not178, label %._crit_edge180, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dp, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !441
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !441
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !441
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader165

.preheader165:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dn, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dk, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dl, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph171, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0167 = phi i32 [ %i.dl, %.lr.ph ], [ 0, %.noexc ]
  %.030166 = phi ptr [ %i.dk, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030166, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 8 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae      ; 2 uses
  %i.ag = fmul fast <8 x float> %i.ae, splat (float f0x3E2AAAAB) ; 2 uses
  %i.ah = fadd fast <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fmul fast <8 x float> %i.af, %i.ah
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.am = fmul fast <8 x float> %i.al, splat (float f0x3FB8AA3B)
  %i.an = fadd fast <8 x float> %i.am, splat (float 5.000000e-01) ; 2 uses
  %i.ao = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.an, i32 1) ; 2 uses
  %i.ap = fcmp fast ogt <8 x float> %i.ao, %i.an
  %i.aq = select <8 x i1> %i.ap, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ar = fsub fast <8 x float> %i.ao, %i.aq      ; 2 uses
  %i.as = fmul fast <8 x float> %i.ar, splat (float f0x3F317218)
  %i.at = fsub fast <8 x float> %i.al, %i.as      ; 8 uses
  %i.au = fmul fast <8 x float> %i.at, %i.at
  %i.av = fmul fast <8 x float> %i.at, splat (float f0x39506967)
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3AB743CE)
  %i.ax = fmul fast <8 x float> %i.aw, %i.at
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0x3C088908)
  %i.az = fmul fast <8 x float> %i.ay, %i.at
  %i.ba = fadd fast <8 x float> %i.az, splat (float f0x3D2AA9C1)
  %i.bb = fmul fast <8 x float> %i.ba, %i.at
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0x3E2AAAAA)
  %i.bd = fmul fast <8 x float> %i.bc, %i.at
  %i.be = fadd fast <8 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul fast <8 x float> %i.au, %i.be
  %i.bg = fadd fast <8 x float> %i.at, %i.bf
  %i.bh = fadd fast <8 x float> %i.bg, splat (float 1.000000e+00)
  %i.bi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ar)
  %i.bj = shl <8 x i32> %i.bi, splat (i32 23)
  %i.bk = add <8 x i32> %i.bj, splat (i32 1065353216)
  %i.bl = bitcast <8 x i32> %i.bk to <8 x float>
  %i.bm = fmul fast <8 x float> %i.bh, %i.bl
  %i.bn = fadd fast <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bo = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.bp = and <8 x i32> %i.bo, splat (i32 2147418112)
  %i.bq = bitcast <8 x i32> %i.bp to <8 x float>
  %i.br = fcmp fast uge <8 x float> %i.bq, splat (float f0x38D1B717)
  %.v163 = select <8 x i1> %i.br, <8 x float> %i.bn, <8 x float> %i.aj
  %i.bs = fneg fast <8 x float> %i.ae
  %i.bt = fsub fast <8 x float> splat (float 5.000000e-01), %i.ag
  %i.bu = fmul fast <8 x float> %i.af, %i.bt
  %i.bv = fsub fast <8 x float> %i.bu, %i.ae
  %i.bw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> splat (float f0x42B0C0A5))
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.by = fmul fast <8 x float> %i.bx, splat (float f0x3FB8AA3B)
  %i.bz = fadd fast <8 x float> %i.by, splat (float 5.000000e-01) ; 2 uses
  %i.ca = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bz, i32 1) ; 2 uses
  %i.cb = fcmp fast ogt <8 x float> %i.ca, %i.bz
  %i.cc = select <8 x i1> %i.cb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cd = fsub fast <8 x float> %i.ca, %i.cc      ; 2 uses
  %i.ce = fmul fast <8 x float> %i.cd, splat (float f0x3F317218)
  %i.cf = fsub fast <8 x float> %i.bx, %i.ce      ; 8 uses
  %i.cg = fmul fast <8 x float> %i.cf, %i.cf
  %i.ch = fmul fast <8 x float> %i.cf, splat (float f0x39506967)
  %i.ci = fadd fast <8 x float> %i.ch, splat (float f0x3AB743CE)
  %i.cj = fmul fast <8 x float> %i.ci, %i.cf
  %i.ck = fadd fast <8 x float> %i.cj, splat (float f0x3C088908)
  %i.cl = fmul fast <8 x float> %i.ck, %i.cf
  %i.cm = fadd fast <8 x float> %i.cl, splat (float f0x3D2AA9C1)
  %i.cn = fmul fast <8 x float> %i.cm, %i.cf
  %i.co = fadd fast <8 x float> %i.cn, splat (float f0x3E2AAAAA)
  %i.cp = fmul fast <8 x float> %i.co, %i.cf
  %i.cq = fadd fast <8 x float> %i.cp, splat (float 5.000000e-01)
  %i.cr = fmul fast <8 x float> %i.cg, %i.cq
  %i.cs = fadd fast <8 x float> %i.cf, %i.cr
  %i.ct = fadd fast <8 x float> %i.cs, splat (float 1.000000e+00)
  %i.cu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cd)
  %i.cv = shl <8 x i32> %i.cu, splat (i32 23)
  %i.cw = add <8 x i32> %i.cv, splat (i32 1065353216)
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>
  %i.cy = fmul fast <8 x float> %i.ct, %i.cx
  %i.cz = fadd fast <8 x float> %i.cy, splat (float -1.000000e+00)
  %i.da = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ae)
  %i.db = fcmp fast uge <8 x float> %i.da, splat (float f0x38D1B717)
  %.v164 = select <8 x i1> %i.db, <8 x float> %i.cz, <8 x float> %i.bv
  %i.dc = fsub fast <8 x float> %.v163, %.v164
  %i.dd = fmul fast <8 x float> %i.dc, splat (float 5.000000e-01)
  %i.de = bitcast <8 x float> %i.dd to <8 x i32>  ; 2 uses
  %i.df = shufflevector <8 x i32> %i.de, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dg = shufflevector <8 x i32> %i.de, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dh = lshr <4 x i32> %i.df, splat (i32 16)
  %i.di = lshr <4 x i32> %i.dg, splat (i32 16)
  %i.dj = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dh, <4 x i32> %i.di)
  store <8 x i16> %i.dj, ptr %.030166, align 1, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %.030166, i64 16 ; 2 uses
  %i.dl = add nuw nsw i32 %.0167, 8               ; 3 uses
  %i.dm = or disjoint i32 %i.dl, 7
  %i.dn = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph, label %.preheader165, !llvm.loop !436

.preheader:                                       ; preds = %.lr.ph171, %.preheader165
  %i.dp = phi i32 [ %i.x, %.preheader165 ], [ %i.ik, %.lr.ph171 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader165 ], [ %i.ih, %.lr.ph171 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader165 ], [ %i.ii, %.lr.ph171 ] ; 5 uses
  %i.dq = icmp slt i32 %.1.lcssa, %i.dp
  br i1 %i.dq, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.dr = xor i32 %.1.lcssa, -1
  %i.ds = add i32 %i.dp, %i.dr                    ; 3 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ds, 3
  br i1 %min.iters.check, label %.lr.ph177.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check205 = icmp ult i32 %i.ds, 15
  br i1 %min.iters.check205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %i.du, 12
  %n.vec = and i64 %i.du, 8589934576              ; 5 uses
  %i.dw = trunc i64 %n.vec to i32
  %i.dx = add i32 %.1.lcssa, %i.dw
  %i.dy = shl nuw nsw i64 %n.vec, 1
  %i.dz = getelementptr i8, ptr %.131.lcssa, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ea ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.eb = zext <16 x i16> %wide.load to <16 x i32>
  %i.ec = shl nuw <16 x i32> %i.eb, splat (i32 16)
  %i.ed = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ee = call fast <16 x float> @llvm.sinh.v16f32(<16 x float> %i.ed)
  %i.ef = bitcast <16 x float> %i.ee to <16 x i32>
  %i.eg = lshr <16 x i32> %i.ef, splat (i32 16)
  %i.eh = trunc nuw <16 x i32> %i.eg to <16 x i16>
  store <16 x i16> %i.eh, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph177.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %i.du, 8589934588           ; 4 uses
  %i.ej = trunc i64 %n.vec207 to i32
  %i.ek = add i32 %.1.lcssa, %i.ej
  %i.el = shl nuw nsw i64 %n.vec207, 1
  %i.em = getelementptr i8, ptr %.131.lcssa, i64 %i.el
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 2 uses
  %i.en = shl i64 %index208, 1
  %next.gep209 = getelementptr i8, ptr %.131.lcssa, i64 %i.en ; 2 uses
  %wide.load210 = load <4 x i16>, ptr %next.gep209, align 2, !tbaa !51
  %i.eo = zext <4 x i16> %wide.load210 to <4 x i32>
  %i.ep = shl nuw <4 x i32> %i.eo, splat (i32 16)
  %i.eq = bitcast <4 x i32> %i.ep to <4 x float>
  %i.er = call fast <4 x float> @llvm.sinh.v4f32(<4 x float> %i.eq)
  %i.es = bitcast <4 x float> %i.er to <4 x i32>
  %i.et = lshr <4 x i32> %i.es, splat (i32 16)
  %i.eu = trunc nuw <4 x i32> %i.et to <4 x i16>
  store <4 x i16> %i.eu, ptr %next.gep209, align 2, !tbaa !51
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next211, %n.vec207
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !438

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n212 = icmp eq i64 %i.du, %n.vec207
  br i1 %cmp.n212, label %._crit_edge, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2176.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  %.232175.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  br label %.lr.ph177

.lr.ph171:                                        ; preds = %.preheader165, %.lr.ph171
  %.1170 = phi i32 [ %i.ii, %.lr.ph171 ], [ %.0.lcssa, %.preheader165 ]
  %.131169 = phi ptr [ %i.ih, %.lr.ph171 ], [ %.030.lcssa, %.preheader165 ] ; 3 uses
  %i.ew = load i64, ptr %.131169, align 1, !tbaa !41
  %i.ex = insertelement <2 x i64> poison, i64 %i.ew, i64 0
  %i.ey = bitcast <2 x i64> %i.ex to <8 x i16>
  %i.ez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fa = bitcast <8 x i16> %i.ez to <4 x float>  ; 8 uses
  %i.fb = fmul fast <4 x float> %i.fa, %i.fa      ; 2 uses
  %i.fc = fmul fast <4 x float> %i.fa, splat (float f0x3E2AAAAB) ; 2 uses
  %i.fd = fadd fast <4 x float> %i.fc, splat (float 5.000000e-01)
  %i.fe = fmul fast <4 x float> %i.fb, %i.fd
  %i.ff = fadd fast <4 x float> %i.fe, %i.fa
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0x42B0C0A5))
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fi = fmul fast <4 x float> %i.fh, splat (float f0x3FB8AA3B)
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 5.000000e-01) ; 2 uses
  %i.fk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fj)
  %i.fl = sitofp fast <4 x i32> %i.fk to <4 x float> ; 2 uses
  %i.fm = fcmp fast olt <4 x float> %i.fj, %i.fl
  %i.fn = select <4 x i1> %i.fm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fo = fsub fast <4 x float> %i.fl, %i.fn      ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fo, splat (float f0x3F317218)
  %i.fq = fsub fast <4 x float> %i.fh, %i.fp      ; 8 uses
  %i.fr = fmul fast <4 x float> %i.fq, %i.fq
  %i.fs = fmul fast <4 x float> %i.fq, splat (float f0x39506967)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0x3AB743CE)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fq
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0x3C088908)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fq
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0x3D2AA9C1)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fq
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0x3E2AAAAA)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fq
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 5.000000e-01)
  %i.gc = fmul fast <4 x float> %i.fr, %i.gb
  %i.gd = fadd fast <4 x float> %i.fq, %i.gc
  %i.ge = fadd fast <4 x float> %i.gd, splat (float 1.000000e+00)
  %i.gf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fo)
  %i.gg = shl <4 x i32> %i.gf, splat (i32 23)
  %i.gh = add <4 x i32> %i.gg, splat (i32 1065353216)
  %i.gi = bitcast <4 x i32> %i.gh to <4 x float>
  %i.gj = fmul fast <4 x float> %i.ge, %i.gi
  %i.gk = fadd fast <4 x float> %i.gj, splat (float -1.000000e+00)
  %i.gl = bitcast <8 x i16> %i.ez to <4 x i32>
  %i.gm = and <4 x i32> %i.gl, splat (i32 2147418112)
  %i.gn = bitcast <4 x i32> %i.gm to <4 x float>
  %i.go = fcmp fast uge <4 x float> %i.gn, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.go, <4 x float> %i.gk, <4 x float> %i.ff
  %i.gp = fneg fast <4 x float> %i.fa
  %i.gq = fsub fast <4 x float> splat (float 5.000000e-01), %i.fc
  %i.gr = fmul fast <4 x float> %i.fb, %i.gq
  %i.gs = fsub fast <4 x float> %i.gr, %i.fa
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> splat (float f0x42B0C0A5))
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gv = fmul fast <4 x float> %i.gu, splat (float f0x3FB8AA3B)
  %i.gw = fadd fast <4 x float> %i.gv, splat (float 5.000000e-01) ; 2 uses
  %i.gx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gw)
  %i.gy = sitofp fast <4 x i32> %i.gx to <4 x float> ; 2 uses
  %i.gz = fcmp fast olt <4 x float> %i.gw, %i.gy
  %i.ha = select <4 x i1> %i.gz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hb = fsub fast <4 x float> %i.gy, %i.ha      ; 2 uses
  %i.hc = fmul fast <4 x float> %i.hb, splat (float f0x3F317218)
  %i.hd = fsub fast <4 x float> %i.gu, %i.hc      ; 8 uses
  %i.he = fmul fast <4 x float> %i.hd, %i.hd
  %i.hf = fmul fast <4 x float> %i.hd, splat (float f0x39506967)
  %i.hg = fadd fast <4 x float> %i.hf, splat (float f0x3AB743CE)
  %i.hh = fmul fast <4 x float> %i.hg, %i.hd
  %i.hi = fadd fast <4 x float> %i.hh, splat (float f0x3C088908)
  %i.hj = fmul fast <4 x float> %i.hi, %i.hd
  %i.hk = fadd fast <4 x float> %i.hj, splat (float f0x3D2AA9C1)
  %i.hl = fmul fast <4 x float> %i.hk, %i.hd
  %i.hm = fadd fast <4 x float> %i.hl, splat (float f0x3E2AAAAA)
  %i.hn = fmul fast <4 x float> %i.hm, %i.hd
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hp = fmul fast <4 x float> %i.he, %i.ho
  %i.hq = fadd fast <4 x float> %i.hd, %i.hp
  %i.hr = fadd fast <4 x float> %i.hq, splat (float 1.000000e+00)
  %i.hs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hb)
  %i.ht = shl <4 x i32> %i.hs, splat (i32 23)
  %i.hu = add <4 x i32> %i.ht, splat (i32 1065353216)
  %i.hv = bitcast <4 x i32> %i.hu to <4 x float>
  %i.hw = fmul fast <4 x float> %i.hr, %i.hv
  %i.hx = fadd fast <4 x float> %i.hw, splat (float -1.000000e+00)
  %i.hy = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fa)
  %i.hz = fcmp fast uge <4 x float> %i.hy, splat (float f0x38D1B717)
  %.v162 = select <4 x i1> %i.hz, <4 x float> %i.hx, <4 x float> %i.gs
  %i.ia = fsub fast <4 x float> %.v, %.v162
  %i.ib = fmul fast <4 x float> %i.ia, splat (float 5.000000e-01)
  %i.ic = bitcast <4 x float> %i.ib to <4 x i32>
  %i.id = lshr <4 x i32> %i.ic, splat (i32 16)
  %i.ie = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.id, <4 x i32> poison)
  %i.if = bitcast <8 x i16> %i.ie to <2 x i64>
  %i.ig = extractelement <2 x i64> %i.if, i64 0
  store i64 %i.ig, ptr %.131169, align 1, !tbaa !41
  %i.ih = getelementptr inbounds nuw i8, ptr %.131169, i64 8 ; 2 uses
  %i.ii = add nuw nsw i32 %.1170, 4               ; 3 uses
  %i.ij = or disjoint i32 %i.ii, 3
  %i.ik = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.il = icmp slt i32 %i.ij, %i.ik
  br i1 %i.il, label %.lr.ph171, label %.preheader, !llvm.loop !439

.lr.ph177:                                        ; preds = %.lr.ph177.preheader, %.lr.ph177
  %.2176 = phi i32 [ %i.iv, %.lr.ph177 ], [ %.2176.ph, %.lr.ph177.preheader ]
  %.232175 = phi ptr [ %i.iu, %.lr.ph177 ], [ %.232175.ph, %.lr.ph177.preheader ] ; 3 uses
  %i.im = load i16, ptr %.232175, align 2, !tbaa !51
  %i.in = zext i16 %i.im to i32
  %i.io = shl nuw i32 %i.in, 16
  %i.ip = bitcast i32 %i.io to float
  %i.iq = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ip)
  %i.ir = bitcast float %i.iq to i32
  %i.is = lshr i32 %i.ir, 16
  %i.it = trunc nuw i32 %i.is to i16
  store i16 %i.it, ptr %.232175, align 2, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %.232175, i64 2
  %i.iv = add nuw nsw i32 %.2176, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.iv, %i.dp
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph177, !llvm.loop !440

._crit_edge:                                      ; preds = %.lr.ph177, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond187.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond187.not, label %._crit_edge180, label %.noexc

._crit_edge180:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge180, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not218 = icmp sgt i32 %i.k, %i.j
  br i1 %.not218, label %._crit_edge220, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dx, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !447
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !447
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !447
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader205

.preheader205:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ds, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dt, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph211, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0207 = phi i32 [ %i.dt, %.lr.ph ], [ 0, %.noexc ]
  %.030206 = phi ptr [ %i.ds, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030206, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.af = and <8 x i32> %i.ae, splat (i32 2147418112)
  %i.ag = bitcast <8 x i32> %i.af to <8 x float>  ; 5 uses
  %i.ah = fmul fast <8 x float> %i.ag, %i.ag
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 1.000000e+00)
  %i.aj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ak = fadd fast <8 x float> %i.aj, %i.ag      ; 2 uses
  %i.al = fcmp fast ole <8 x float> %i.ak, zeroinitializer
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.an = bitcast <8 x float> %i.am to <8 x i32>
  %i.ao = bitcast <8 x float> %i.am to <8 x i32>
  %i.ap = and <8 x i32> %i.ao, splat (i32 -2139095041)
  %i.aq = or disjoint <8 x i32> %i.ap, splat (i32 1056964608)
  %i.ar = bitcast <8 x i32> %i.aq to <8 x float>  ; 3 uses
  %i.as = lshr <8 x i32> %i.an, splat (i32 23)
  %i.at = add nsw <8 x i32> %i.as, splat (i32 -127)
  %i.au = sitofp fast <8 x i32> %i.at to <8 x float> ; 2 uses
  %i.av = fadd fast <8 x float> %i.au, splat (float 1.000000e+00)
  %i.aw = fcmp fast olt <8 x float> %i.ar, splat (float f0x3F3504F3) ; 2 uses
  %i.ax = select <8 x i1> %i.aw, <8 x float> %i.ar, <8 x float> zeroinitializer
  %i.ay = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.az = select fast <8 x i1> %i.aw, <8 x float> %i.au, <8 x float> %i.av
  %i.ba = fadd fast <8 x float> %i.ay, %i.ax      ; 12 uses
  %i.bb = fmul fast <8 x float> %i.ba, %i.ba
  %i.bc = fmul fast <8 x float> %i.ba, splat (float f0x3D9021BB)
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0xBDEBD1B8)
  %i.be = fmul fast <8 x float> %i.bd, %i.ba
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0x3DEF251A)
  %i.bg = fmul fast <8 x float> %i.bf, %i.ba
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0xBDFE5D4F)
  %i.bi = fmul fast <8 x float> %i.bh, %i.ba
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0x3E11E9BF)
  %i.bk = fmul fast <8 x float> %i.bj, %i.ba
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0xBE2AAE50)
  %i.bm = fmul fast <8 x float> %i.bl, %i.ba
  %i.bn = fadd fast <8 x float> %i.bm, splat (float f0x3E4CCEAC)
  %i.bo = fmul fast <8 x float> %i.bn, %i.ba
  %i.bp = fadd fast <8 x float> %i.bo, splat (float f0xBE7FFFFC)
  %i.bq = fmul fast <8 x float> %i.bp, %i.ba
  %i.br = fadd fast <8 x float> %i.bq, splat (float f0x3EAAAAAA)
  %i.bs = fmul fast <8 x float> %i.br, %i.ba
  %reass.mul197 = fmul fast <8 x float> %i.az, splat (float f0x3F317218)
  %reass.add201 = fadd fast <8 x float> %i.bs, splat (float -5.000000e-01)
  %reass.mul202 = fmul fast <8 x float> %i.bb, %reass.add201
  %i.bt = fadd fast <8 x float> %reass.mul197, %i.ba
  %i.bu = fadd fast <8 x float> %i.bt, %reass.mul202
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = select <8 x i1> %i.al, <8 x i32> splat (i32 -1), <8 x i32> %i.bv
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.by = bitcast <8 x float> %i.bx to <8 x i32>
  %i.bz = bitcast <8 x float> %i.bx to <8 x i32>
  %i.ca = and <8 x i32> %i.bz, splat (i32 -2139095041)
  %i.cb = or disjoint <8 x i32> %i.ca, splat (i32 1056964608)
  %i.cc = bitcast <8 x i32> %i.cb to <8 x float>  ; 3 uses
  %i.cd = lshr <8 x i32> %i.by, splat (i32 23)
  %i.ce = add nsw <8 x i32> %i.cd, splat (i32 -127)
  %i.cf = sitofp fast <8 x i32> %i.ce to <8 x float> ; 2 uses
  %i.cg = fadd fast <8 x float> %i.cf, splat (float 1.000000e+00)
  %i.ch = fcmp fast olt <8 x float> %i.cc, splat (float f0x3F3504F3) ; 2 uses
  %i.ci = select <8 x i1> %i.ch, <8 x float> %i.cc, <8 x float> zeroinitializer
  %i.cj = fadd fast <8 x float> %i.cc, splat (float -1.000000e+00)
  %i.ck = select fast <8 x i1> %i.ch, <8 x float> %i.cf, <8 x float> %i.cg
  %i.cl = fadd fast <8 x float> %i.cj, %i.ci      ; 12 uses
  %i.cm = fmul fast <8 x float> %i.cl, %i.cl
  %i.cn = fmul fast <8 x float> %i.cl, splat (float f0x3D9021BB)
  %i.co = fadd fast <8 x float> %i.cn, splat (float f0xBDEBD1B8)
  %i.cp = fmul fast <8 x float> %i.co, %i.cl
  %i.cq = fadd fast <8 x float> %i.cp, splat (float f0x3DEF251A)
  %i.cr = fmul fast <8 x float> %i.cq, %i.cl
  %i.cs = fadd fast <8 x float> %i.cr, splat (float f0xBDFE5D4F)
  %i.ct = fmul fast <8 x float> %i.cs, %i.cl
  %i.cu = fadd fast <8 x float> %i.ct, splat (float f0x3E11E9BF)
  %i.cv = fmul fast <8 x float> %i.cu, %i.cl
  %i.cw = fadd fast <8 x float> %i.cv, splat (float f0xBE2AAE50)
  %i.cx = fmul fast <8 x float> %i.cw, %i.cl
  %i.cy = fadd fast <8 x float> %i.cx, splat (float f0x3E4CCEAC)
end_hunk_6
begin_hunk_7_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3DEF251A)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ey
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0xBDFE5D4F)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ey
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0x3E11E9BF)
  %i.fi = fmul fast <4 x float> %i.fh, %i.ey
  %i.fj = fadd fast <4 x float> %i.fi, splat (float f0xBE2AAE50)
  %i.fk = fmul fast <4 x float> %i.fj, %i.ey
  %i.fl = fadd fast <4 x float> %i.fk, splat (float f0x3E4CCEAC)
  %i.fm = fmul fast <4 x float> %i.fl, %i.ey
  %i.fn = fadd fast <4 x float> %i.fm, splat (float f0xBE7FFFFC)
  %i.fo = fmul fast <4 x float> %i.fn, %i.ey
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0x3EAAAAAA)
  %i.fq = fmul fast <4 x float> %i.fp, %i.ey
  %reass.mul = fmul fast <4 x float> %i.ex, splat (float f0x3F317218)
  %reass.add193 = fadd fast <4 x float> %i.fq, splat (float -5.000000e-01)
  %reass.mul194 = fmul fast <4 x float> %i.ez, %reass.add193
  %i.fr = fadd fast <4 x float> %reass.mul, %i.ey
  %i.fs = fadd fast <4 x float> %i.fr, %reass.mul194
  %i.ft = bitcast <4 x float> %i.fs to <4 x i32>
  %i.fu = select <4 x i1> %i.ek, <4 x i32> splat (i32 -65536), <4 x i32> %i.ft
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> splat (float f0x00800000))
  %i.fw = bitcast <4 x float> %i.fv to <4 x i32>  ; 2 uses
  %i.fx = lshr <4 x i32> %i.fw, splat (i32 23)
  %i.fy = and <4 x i32> %i.fw, splat (i32 -2139095041)
  %i.fz = or disjoint <4 x i32> %i.fy, splat (i32 1056964608)
  %i.ga = bitcast <4 x i32> %i.fz to <4 x float>  ; 3 uses
  %i.gb = add nsw <4 x i32> %i.fx, splat (i32 -127)
  %i.gc = sitofp fast <4 x i32> %i.gb to <4 x float> ; 2 uses
  %i.gd = fadd fast <4 x float> %i.gc, splat (float 1.000000e+00)
  %i.ge = fcmp fast olt <4 x float> %i.ga, splat (float f0x3F3504F3) ; 2 uses
  %i.gf = select <4 x i1> %i.ge, <4 x float> %i.ga, <4 x float> zeroinitializer
  %i.gg = fadd fast <4 x float> %i.ga, splat (float -1.000000e+00)
  %i.gh = select fast <4 x i1> %i.ge, <4 x float> %i.gc, <4 x float> %i.gd
  %i.gi = fadd fast <4 x float> %i.gg, %i.gf      ; 12 uses
  %i.gj = fmul fast <4 x float> %i.gi, %i.gi
  %i.gk = fmul fast <4 x float> %i.gi, splat (float f0x3D9021BB)
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0xBDEBD1B8)
  %i.gm = fmul fast <4 x float> %i.gl, %i.gi
  %i.gn = fadd fast <4 x float> %i.gm, splat (float f0x3DEF251A)
  %i.go = fmul fast <4 x float> %i.gn, %i.gi
  %i.gp = fadd fast <4 x float> %i.go, splat (float f0xBDFE5D4F)
  %i.gq = fmul fast <4 x float> %i.gp, %i.gi
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3E11E9BF)
  %i.gs = fmul fast <4 x float> %i.gr, %i.gi
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0xBE2AAE50)
  %i.gu = fmul fast <4 x float> %i.gt, %i.gi
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3E4CCEAC)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gi
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0xBE7FFFFC)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gi
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3EAAAAAA)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gi
  %reass.mul192 = fmul fast <4 x float> %i.gh, splat (float f0x3F317218)
  %reass.add195 = fadd fast <4 x float> %i.ha, splat (float -5.000000e-01)
  %reass.mul196 = fmul fast <4 x float> %i.gj, %reass.add195
  %i.hb = fadd fast <4 x float> %i.gi, splat (float f0x3F317218)
  %i.hc = fadd fast <4 x float> %i.hb, %reass.mul192
  %i.hd = fadd fast <4 x float> %i.hc, %reass.mul196
  %i.he = fcmp fast ule <4 x float> %i.ef, splat (float f0x5F0AC723)
  %i.hf = bitcast <4 x float> %i.hd to <4 x i32>
  %i.hg = select <4 x i1> %i.he, <4 x i32> %i.fu, <4 x i32> %i.hf
  %i.hh = bitcast <8 x i16> %i.ec to <4 x i32>
  %i.hi = and <4 x i32> %i.hh, splat (i32 -2147483648)
  %i.hj = or <4 x i32> %i.hg, %i.hi
  %i.hk = lshr <4 x i32> %i.hj, splat (i32 16)
  %i.hl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hk, <4 x i32> poison)
  %i.hm = bitcast <8 x i16> %i.hl to <2 x i64>
  %i.hn = extractelement <2 x i64> %i.hm, i64 0
  store i64 %i.hn, ptr %.131209, align 1, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %.131209, i64 8 ; 2 uses
  %i.hp = add nuw nsw i32 %.1210, 4               ; 3 uses
  %i.hq = or disjoint i32 %i.hp, 3
  %i.hr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hs = icmp slt i32 %i.hq, %i.hr
  br i1 %i.hs, label %.lr.ph211, label %.preheader, !llvm.loop !445

.lr.ph217:                                        ; preds = %.preheader, %.lr.ph217
  %.2216 = phi i32 [ %i.ic, %.lr.ph217 ], [ %.1.lcssa, %.preheader ]
  %.232215 = phi ptr [ %i.ib, %.lr.ph217 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.ht = load i16, ptr %.232215, align 2, !tbaa !51
  %i.hu = zext i16 %i.ht to i32
  %i.hv = shl nuw i32 %i.hu, 16
  %i.hw = bitcast i32 %i.hv to float
  %i.hx = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.hw) #20
  %i.hy = bitcast float %i.hx to i32
  %i.hz = lshr i32 %i.hy, 16
  %i.ia = trunc nuw i32 %i.hz to i16
  store i16 %i.ia, ptr %.232215, align 2, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %.232215, i64 2
  %i.ic = add nuw nsw i32 %.2216, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ic, %i.dx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph217, !llvm.loop !446

._crit_edge:                                      ; preds = %.lr.ph217, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond227.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond227.not, label %._crit_edge220, label %.noexc

._crit_edge220:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge220, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not159 = icmp sgt i32 %i.k, %i.j
  br i1 %.not159, label %._crit_edge161, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cz, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !455
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !455
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !455
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader146

.preheader146:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cx, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.cu, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cv, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph152, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0148 = phi i32 [ %i.cv, %.lr.ph ], [ 0, %.noexc ]
  %.030147 = phi ptr [ %i.cu, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030147, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = fmul fast <8 x float> %i.ag, splat (float f0x3FB8AA3B)
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fmul fast <8 x float> %i.am, splat (float f0x3F317218)
  %i.ao = fsub fast <8 x float> %i.ag, %i.an      ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = fmul fast <8 x float> %i.ao, splat (float f0x39506967)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3AB743CE)
  %i.as = fmul fast <8 x float> %i.ar, %i.ao
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3C088908)
  %i.au = fmul fast <8 x float> %i.at, %i.ao
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3D2AA9C1)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3E2AAAAA)
  %i.ay = fmul fast <8 x float> %i.ax, %i.ao
  %i.az = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <8 x float> %i.ap, %i.az
  %i.bb = fadd fast <8 x float> %i.ao, %i.ba
  %i.bc = fadd fast <8 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.be = shl <8 x i32> %i.bd, splat (i32 23)
  %i.bf = add <8 x i32> %i.be, splat (i32 1065353216)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bc, %i.bg
  %i.bi = fneg fast <8 x float> %i.ae
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x42B0C0A5))
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bl = fmul fast <8 x float> %i.bk, splat (float f0x3FB8AA3B)
  %i.bm = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01) ; 2 uses
  %i.bn = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bm, i32 1) ; 2 uses
  %i.bo = fcmp fast ogt <8 x float> %i.bn, %i.bm
  %i.bp = select <8 x i1> %i.bo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bq = fsub fast <8 x float> %i.bn, %i.bp      ; 2 uses
  %i.br = fmul fast <8 x float> %i.bq, splat (float f0x3F317218)
  %i.bs = fsub fast <8 x float> %i.bk, %i.br      ; 8 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.bs
  %i.bu = fmul fast <8 x float> %i.bs, splat (float f0x39506967)
  %i.bv = fadd fast <8 x float> %i.bu, splat (float f0x3AB743CE)
  %i.bw = fmul fast <8 x float> %i.bv, %i.bs
  %i.bx = fadd fast <8 x float> %i.bw, splat (float f0x3C088908)
  %i.by = fmul fast <8 x float> %i.bx, %i.bs
  %i.bz = fadd fast <8 x float> %i.by, splat (float f0x3D2AA9C1)
  %i.ca = fmul fast <8 x float> %i.bz, %i.bs
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0x3E2AAAAA)
  %i.cc = fmul fast <8 x float> %i.cb, %i.bs
  %i.cd = fadd fast <8 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = fmul fast <8 x float> %i.bt, %i.cd
  %i.cf = fadd fast <8 x float> %i.bs, %i.ce
  %i.cg = fadd fast <8 x float> %i.cf, splat (float 1.000000e+00)
  %i.ch = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bq)
  %i.ci = shl <8 x i32> %i.ch, splat (i32 23)
  %i.cj = add <8 x i32> %i.ci, splat (i32 1065353216)
  %i.ck = bitcast <8 x i32> %i.cj to <8 x float>
  %i.cl = fmul fast <8 x float> %i.cg, %i.ck
  %i.cm = fadd fast <8 x float> %i.cl, %i.bh
  %i.cn = fmul fast <8 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = bitcast <8 x float> %i.cn to <8 x i32>  ; 2 uses
  %i.cp = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cq = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cr = lshr <4 x i32> %i.cp, splat (i32 16)
  %i.cs = lshr <4 x i32> %i.cq, splat (i32 16)
  %i.ct = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cr, <4 x i32> %i.cs)
  store <8 x i16> %i.ct, ptr %.030147, align 1, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %.030147, i64 16 ; 2 uses
  %i.cv = add nuw nsw i32 %.0148, 8               ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 7
  %i.cx = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph, label %.preheader146, !llvm.loop !450

.preheader:                                       ; preds = %.lr.ph152, %.preheader146
  %i.cz = phi i32 [ %i.x, %.preheader146 ], [ %i.he, %.lr.ph152 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader146 ], [ %i.hb, %.lr.ph152 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader146 ], [ %i.hc, %.lr.ph152 ] ; 5 uses
  %i.da = icmp slt i32 %.1.lcssa, %i.cz
  br i1 %i.da, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.db = xor i32 %.1.lcssa, -1
  %i.dc = add i32 %i.cz, %i.db                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dc, 3
  br i1 %min.iters.check, label %.lr.ph158.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i32 %i.dc, 15
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %i.de, 12
  %n.vec = and i64 %i.de, 8589934576              ; 5 uses
  %i.dg = trunc i64 %n.vec to i32
  %i.dh = add i32 %.1.lcssa, %i.dg
  %i.di = shl nuw nsw i64 %n.vec, 1
  %i.dj = getelementptr i8, ptr %.131.lcssa, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.dk ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.dl = zext <16 x i16> %wide.load to <16 x i32>
  %i.dm = shl nuw <16 x i32> %i.dl, splat (i32 16)
  %i.dn = bitcast <16 x i32> %i.dm to <16 x float>
  %i.do = call fast <16 x float> @llvm.cosh.v16f32(<16 x float> %i.dn)
  %i.dp = bitcast <16 x float> %i.do to <16 x i32>
  %i.dq = lshr <16 x i32> %i.dp, splat (i32 16)
  %i.dr = trunc nuw nsw <16 x i32> %i.dq to <16 x i16>
  store <16 x i16> %i.dr, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check, label %.lr.ph158.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %i.de, 8589934588           ; 4 uses
  %i.dt = trunc i64 %n.vec188 to i32
  %i.du = add i32 %.1.lcssa, %i.dt
  %i.dv = shl nuw nsw i64 %n.vec188, 1
  %i.dw = getelementptr i8, ptr %.131.lcssa, i64 %i.dv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 2 uses
  %i.dx = shl i64 %index189, 1
  %next.gep190 = getelementptr i8, ptr %.131.lcssa, i64 %i.dx ; 2 uses
  %wide.load191 = load <4 x i16>, ptr %next.gep190, align 2, !tbaa !51
  %i.dy = zext <4 x i16> %wide.load191 to <4 x i32>
  %i.dz = shl nuw <4 x i32> %i.dy, splat (i32 16)
  %i.ea = bitcast <4 x i32> %i.dz to <4 x float>
  %i.eb = call fast <4 x float> @llvm.cosh.v4f32(<4 x float> %i.ea)
  %i.ec = bitcast <4 x float> %i.eb to <4 x i32>
  %i.ed = lshr <4 x i32> %i.ec, splat (i32 16)
  %i.ee = trunc nuw nsw <4 x i32> %i.ed to <4 x i16>
  store <4 x i16> %i.ee, ptr %next.gep190, align 2, !tbaa !51
  %index.next192 = add nuw i64 %index189, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next192, %n.vec188
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !452

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n193 = icmp eq i64 %i.de, %n.vec188
  br i1 %cmp.n193, label %._crit_edge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2157.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.dh, %vec.epilog.iter.check ], [ %i.du, %vec.epilog.middle.block ]
  %.232156.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  br label %.lr.ph158

.lr.ph152:                                        ; preds = %.preheader146, %.lr.ph152
  %.1151 = phi i32 [ %i.hc, %.lr.ph152 ], [ %.0.lcssa, %.preheader146 ]
  %.131150 = phi ptr [ %i.hb, %.lr.ph152 ], [ %.030.lcssa, %.preheader146 ] ; 3 uses
  %i.eg = load i64, ptr %.131150, align 1, !tbaa !41
  %i.eh = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ei = bitcast <2 x i64> %i.eh to <8 x i16>
  %i.ej = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ek = bitcast <8 x i16> %i.ej to <4 x float>  ; 2 uses
  %i.el = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x42B0C0A5))
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.el, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.en = fmul fast <4 x float> %i.em, splat (float f0x3FB8AA3B)
  %i.eo = fadd fast <4 x float> %i.en, splat (float 5.000000e-01) ; 2 uses
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eo)
  %i.eq = sitofp fast <4 x i32> %i.ep to <4 x float> ; 2 uses
  %i.er = fcmp fast olt <4 x float> %i.eo, %i.eq
  %i.es = select <4 x i1> %i.er, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.et = fsub fast <4 x float> %i.eq, %i.es      ; 2 uses
  %i.eu = fmul fast <4 x float> %i.et, splat (float f0x3F317218)
  %i.ev = fsub fast <4 x float> %i.em, %i.eu      ; 8 uses
  %i.ew = fmul fast <4 x float> %i.ev, %i.ev
  %i.ex = fmul fast <4 x float> %i.ev, splat (float f0x39506967)
  %i.ey = fadd fast <4 x float> %i.ex, splat (float f0x3AB743CE)
  %i.ez = fmul fast <4 x float> %i.ey, %i.ev
  %i.fa = fadd fast <4 x float> %i.ez, splat (float f0x3C088908)
  %i.fb = fmul fast <4 x float> %i.fa, %i.ev
  %i.fc = fadd fast <4 x float> %i.fb, splat (float f0x3D2AA9C1)
  %i.fd = fmul fast <4 x float> %i.fc, %i.ev
  %i.fe = fadd fast <4 x float> %i.fd, splat (float f0x3E2AAAAA)
  %i.ff = fmul fast <4 x float> %i.fe, %i.ev
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = fmul fast <4 x float> %i.ew, %i.fg
  %i.fi = fadd fast <4 x float> %i.ev, %i.fh
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 1.000000e+00)
  %i.fk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.et)
  %i.fl = shl <4 x i32> %i.fk, splat (i32 23)
  %i.fm = add <4 x i32> %i.fl, splat (i32 1065353216)
  %i.fn = bitcast <4 x i32> %i.fm to <4 x float>
  %i.fo = fmul fast <4 x float> %i.fj, %i.fn
  %i.fp = fneg fast <4 x float> %i.ek
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> splat (float f0x42B0C0A5))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float f0x3FB8AA3B)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float 5.000000e-01) ; 2 uses
  %i.fu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ft)
  %i.fv = sitofp fast <4 x i32> %i.fu to <4 x float> ; 2 uses
  %i.fw = fcmp fast olt <4 x float> %i.ft, %i.fv
  %i.fx = select <4 x i1> %i.fw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fy = fsub fast <4 x float> %i.fv, %i.fx      ; 2 uses
  %i.fz = fmul fast <4 x float> %i.fy, splat (float f0x3F317218)
  %i.ga = fsub fast <4 x float> %i.fr, %i.fz      ; 8 uses
  %i.gb = fmul fast <4 x float> %i.ga, %i.ga
  %i.gc = fmul fast <4 x float> %i.ga, splat (float f0x39506967)
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3AB743CE)
  %i.ge = fmul fast <4 x float> %i.gd, %i.ga
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3C088908)
  %i.gg = fmul fast <4 x float> %i.gf, %i.ga
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3D2AA9C1)
  %i.gi = fmul fast <4 x float> %i.gh, %i.ga
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3E2AAAAA)
  %i.gk = fmul fast <4 x float> %i.gj, %i.ga
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 5.000000e-01)
  %i.gm = fmul fast <4 x float> %i.gb, %i.gl
  %i.gn = fadd fast <4 x float> %i.ga, %i.gm
  %i.go = fadd fast <4 x float> %i.gn, splat (float 1.000000e+00)
  %i.gp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fy)
  %i.gq = shl <4 x i32> %i.gp, splat (i32 23)
  %i.gr = add <4 x i32> %i.gq, splat (i32 1065353216)
  %i.gs = bitcast <4 x i32> %i.gr to <4 x float>
  %i.gt = fmul fast <4 x float> %i.go, %i.gs
  %i.gu = fadd fast <4 x float> %i.gt, %i.fo
  %i.gv = fmul fast <4 x float> %i.gu, splat (float 5.000000e-01)
  %i.gw = bitcast <4 x float> %i.gv to <4 x i32>
  %i.gx = lshr <4 x i32> %i.gw, splat (i32 16)
  %i.gy = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gx, <4 x i32> poison)
  %i.gz = bitcast <8 x i16> %i.gy to <2 x i64>
  %i.ha = extractelement <2 x i64> %i.gz, i64 0
  store i64 %i.ha, ptr %.131150, align 1, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %.131150, i64 8 ; 2 uses
  %i.hc = add nuw nsw i32 %.1151, 4               ; 3 uses
  %i.hd = or disjoint i32 %i.hc, 3
  %i.he = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hf = icmp slt i32 %i.hd, %i.he
  br i1 %i.hf, label %.lr.ph152, label %.preheader, !llvm.loop !453

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.2157 = phi i32 [ %i.hp, %.lr.ph158 ], [ %.2157.ph, %.lr.ph158.preheader ]
  %.232156 = phi ptr [ %i.ho, %.lr.ph158 ], [ %.232156.ph, %.lr.ph158.preheader ] ; 3 uses
  %i.hg = load i16, ptr %.232156, align 2, !tbaa !51
  %i.hh = zext i16 %i.hg to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = bitcast i32 %i.hi to float
  %i.hk = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.hj)
  %i.hl = bitcast float %i.hk to i32
  %i.hm = lshr i32 %i.hl, 16
  %i.hn = trunc nuw nsw i32 %i.hm to i16
  store i16 %i.hn, ptr %.232156, align 2, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.232156, i64 2
  %i.hp = add nuw nsw i32 %.2157, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hp, %i.cz
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !454

._crit_edge:                                      ; preds = %.lr.ph158, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond168.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond168.not, label %._crit_edge161, label %.noexc

._crit_edge161:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge161, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ds, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !461
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !461
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !461
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader203

.preheader203:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dq, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dn, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph209, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0205 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.030204 = phi ptr [ %i.dn, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030204, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 5 uses
  %i.af = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ag = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = fmul fast <8 x float> %i.af, %i.ag
  %i.ai = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ah)
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae      ; 2 uses
  %i.ak = fcmp fast ole <8 x float> %i.aj, zeroinitializer
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.am = bitcast <8 x float> %i.al to <8 x i32>
  %i.an = bitcast <8 x float> %i.al to <8 x i32>
  %i.ao = and <8 x i32> %i.an, splat (i32 -2139095041)
  %i.ap = or disjoint <8 x i32> %i.ao, splat (i32 1056964608)
  %i.aq = bitcast <8 x i32> %i.ap to <8 x float>  ; 3 uses
  %i.ar = lshr <8 x i32> %i.am, splat (i32 23)
  %i.as = add nsw <8 x i32> %i.ar, splat (i32 -127)
  %i.at = sitofp fast <8 x i32> %i.as to <8 x float> ; 2 uses
  %i.au = fadd fast <8 x float> %i.at, splat (float 1.000000e+00)
  %i.av = fcmp fast olt <8 x float> %i.aq, splat (float f0x3F3504F3) ; 2 uses
  %i.aw = select <8 x i1> %i.av, <8 x float> %i.aq, <8 x float> zeroinitializer
  %i.ax = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.ay = select fast <8 x i1> %i.av, <8 x float> %i.at, <8 x float> %i.au
  %i.az = fadd fast <8 x float> %i.ax, %i.aw      ; 12 uses
  %i.ba = fmul fast <8 x float> %i.az, %i.az
  %i.bb = fmul fast <8 x float> %i.az, splat (float f0x3D9021BB)
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0xBDEBD1B8)
  %i.bd = fmul fast <8 x float> %i.bc, %i.az
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3DEF251A)
  %i.bf = fmul fast <8 x float> %i.be, %i.az
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0xBDFE5D4F)
  %i.bh = fmul fast <8 x float> %i.bg, %i.az
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3E11E9BF)
  %i.bj = fmul fast <8 x float> %i.bi, %i.az
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0xBE2AAE50)
  %i.bl = fmul fast <8 x float> %i.bk, %i.az
  %i.bm = fadd fast <8 x float> %i.bl, splat (float f0x3E4CCEAC)
  %i.bn = fmul fast <8 x float> %i.bm, %i.az
  %i.bo = fadd fast <8 x float> %i.bn, splat (float f0xBE7FFFFC)
  %i.bp = fmul fast <8 x float> %i.bo, %i.az
  %i.bq = fadd fast <8 x float> %i.bp, splat (float f0x3EAAAAAA)
  %i.br = fmul fast <8 x float> %i.bq, %i.az
  %reass.mul195 = fmul fast <8 x float> %i.ay, splat (float f0x3F317218)
  %reass.add199 = fadd fast <8 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul200 = fmul fast <8 x float> %i.ba, %reass.add199
  %i.bs = fadd fast <8 x float> %reass.mul195, %i.az
  %i.bt = fadd fast <8 x float> %i.bs, %reass.mul200
  %i.bu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bx = and <8 x i32> %i.bw, splat (i32 -2139095041)
  %i.by = or disjoint <8 x i32> %i.bx, splat (i32 1056964608)
  %i.bz = bitcast <8 x i32> %i.by to <8 x float>  ; 3 uses
  %i.ca = lshr <8 x i32> %i.bv, splat (i32 23)
  %i.cb = add nsw <8 x i32> %i.ca, splat (i32 -127)
  %i.cc = sitofp fast <8 x i32> %i.cb to <8 x float> ; 2 uses
  %i.cd = fadd fast <8 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = fcmp fast olt <8 x float> %i.bz, splat (float f0x3F3504F3) ; 2 uses
  %i.cf = select <8 x i1> %i.ce, <8 x float> %i.bz, <8 x float> zeroinitializer
  %i.cg = fadd fast <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.ch = select fast <8 x i1> %i.ce, <8 x float> %i.cc, <8 x float> %i.cd
  %i.ci = fadd fast <8 x float> %i.cg, %i.cf      ; 12 uses
  %i.cj = fmul fast <8 x float> %i.ci, %i.ci
  %i.ck = fmul fast <8 x float> %i.ci, splat (float f0x3D9021BB)
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0xBDEBD1B8)
  %i.cm = fmul fast <8 x float> %i.cl, %i.ci
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0x3DEF251A)
  %i.co = fmul fast <8 x float> %i.cn, %i.ci
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0xBDFE5D4F)
  %i.cq = fmul fast <8 x float> %i.cp, %i.ci
  %i.cr = fadd fast <8 x float> %i.cq, splat (float f0x3E11E9BF)
  %i.cs = fmul fast <8 x float> %i.cr, %i.ci
  %i.ct = fadd fast <8 x float> %i.cs, splat (float f0xBE2AAE50)
  %i.cu = fmul fast <8 x float> %i.ct, %i.ci
  %i.cv = fadd fast <8 x float> %i.cu, splat (float f0x3E4CCEAC)
  %i.cw = fmul fast <8 x float> %i.cv, %i.ci
  %i.cx = fadd fast <8 x float> %i.cw, splat (float f0xBE7FFFFC)
  %i.cy = fmul fast <8 x float> %i.cx, %i.ci
  %i.cz = fadd fast <8 x float> %i.cy, splat (float f0x3EAAAAAA)
  %i.da = fmul fast <8 x float> %i.cz, %i.ci
  %reass.mul198 = fmul fast <8 x float> %i.ch, splat (float f0x3F317218)
  %reass.add201 = fadd fast <8 x float> %i.da, splat (float -5.000000e-01)
end_hunk_7
