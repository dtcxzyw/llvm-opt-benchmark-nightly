Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 29
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not47 = icmp sgt i32 %i.k, %i.j
  br i1 %.not47, label %._crit_edge49, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.ci, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !110
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !110
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !110
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.044 = phi i32 [ %i.ay, %.lr.ph ], [ 0, %.noexc ]
  %.02743 = phi ptr [ %i.ax, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x i32>, ptr %.02743, align 1, !tbaa !41 ; 2 uses
  %i.y = and <16 x i32> %i.x, splat (i32 -2147483648)
  %i.z = and <16 x i32> %i.x, splat (i32 2147483647)
  %i.aa = bitcast <16 x i32> %i.z to <16 x float> ; 3 uses
  %i.ab = fcmp fast ole <16 x float> %i.aa, splat (float 5.000000e-01) ; 2 uses
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = xor i16 %i.ac, -1
  %i.ae = bitcast i16 %i.ad to <16 x i1>
  %i.af = select fast <16 x i1> %i.ae, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer ; 2 uses
  %i.ag = fmul fast <16 x float> %i.aa, splat (float 5.000000e-01)
  %i.ah = fsub fast <16 x float> splat (float 5.000000e-01), %i.ag
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ah)
  %i.aj = select fast <16 x i1> %i.ab, <16 x float> %i.aa, <16 x float> %i.ai ; 3 uses
  %i.ak = fmul fast <16 x float> %i.aj, %i.aj     ; 3 uses
  %i.al = fmul fast <16 x float> %i.ak, %i.ak     ; 4 uses
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3E2AAAF8))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float 1.000000e+00))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.ap)
  %i.ar = fmul fast <16 x float> %i.aq, %i.aj
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float -3.000000e+00), <16 x float> splat (float 1.000000e+00))
  %i.at = fmul fast <16 x float> %i.af, splat (float f0x3FC90FDB)
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.at)
  %i.av = bitcast <16 x float> %i.au to <16 x i32>
  %i.aw = or <16 x i32> %i.y, %i.av
  store <16 x i32> %i.aw, ptr %.02743, align 1, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.02743, i64 64 ; 2 uses
  %i.ay = add nuw nsw i32 %.044, 16               ; 3 uses
  %i.az = or disjoint i32 %i.ay, 15
  %i.ba = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.ba, %.lr.ph ] ; 2 uses
  %i.bc = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bd = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bd
  %i.be = trunc i32 %notmask to i16
  %i.bf = xor i16 %i.be, -1
  %i.bg = bitcast i16 %i.bf to <16 x i1>          ; 2 uses
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.bg, <16 x float> zeroinitializer) ; 2 uses
  %i.bi = bitcast <16 x float> %i.bh to <16 x i32>
  %i.bj = and <16 x i32> %i.bi, splat (i32 -2147483648)
  %i.bk = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bh) ; 3 uses
  %i.bl = fcmp fast ole <16 x float> %i.bk, splat (float 5.000000e-01) ; 2 uses
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = xor i16 %i.bm, -1
  %i.bo = bitcast i16 %i.bn to <16 x i1>
  %i.bp = select fast <16 x i1> %i.bo, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer ; 2 uses
  %i.bq = fmul fast <16 x float> %i.bk, splat (float 5.000000e-01)
  %i.br = fsub fast <16 x float> splat (float 5.000000e-01), %i.bq
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.br)
  %i.bt = select fast <16 x i1> %i.bl, <16 x float> %i.bk, <16 x float> %i.bs ; 3 uses
  %i.bu = fmul fast <16 x float> %i.bt, %i.bt     ; 3 uses
  %i.bv = fmul fast <16 x float> %i.bu, %i.bu     ; 4 uses
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3E2AAAF8))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.by, <16 x float> splat (float 1.000000e+00))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bz)
  %i.cb = fmul fast <16 x float> %i.ca, %i.bt
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float -3.000000e+00), <16 x float> splat (float 1.000000e+00))
  %i.cd = fmul fast <16 x float> %i.bp, splat (float f0x3FC90FDB)
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.cd)
  %i.cf = bitcast <16 x float> %i.ce to <16 x i32>
  %i.cg = or <16 x i32> %i.bj, %i.cf
  %i.ch = bitcast <16 x i32> %i.cg to <16 x float>
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.ch, ptr align 1 %.027.lcssa, <16 x i1> %i.bg)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ci = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cj = sext i32 %i.ci to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cj
  br i1 %.not.not, label %.noexc, label %._crit_edge49

._crit_edge49:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge49, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not47 = icmp sgt i32 %i.k, %i.j
  br i1 %.not47, label %._crit_edge49, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.cf, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !114
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !114
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !114
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.044 = phi i32 [ %i.ax, %.lr.ph ], [ 0, %.noexc ]
  %.02743 = phi ptr [ %i.aw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02743, align 1, !tbaa !41 ; 4 uses
  %i.y = bitcast <16 x float> %i.x to <16 x i32>
  %i.z = and <16 x i32> %i.y, splat (i32 -2147483648)
  %i.aa = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x) ; 3 uses
  %i.ab = fcmp fast ole <16 x float> %i.aa, splat (float 5.000000e-01) ; 2 uses
  %i.ac = fmul fast <16 x float> %i.aa, splat (float 5.000000e-01)
  %i.ad = fsub fast <16 x float> splat (float 5.000000e-01), %i.ac
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ad)
  %i.af = select fast <16 x i1> %i.ab, <16 x float> %i.aa, <16 x float> %i.ae ; 3 uses
  %i.ag = fmul fast <16 x float> %i.af, %i.af     ; 3 uses
  %i.ah = fmul fast <16 x float> %i.ag, %i.ag     ; 4 uses
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0x3E2AAAF8))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float 1.000000e+00))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.al)
  %i.an = fmul fast <16 x float> %i.am, %i.af     ; 2 uses
  %6 = call <16 x float> @llvm.copysign.v16f32(<16 x float> %i.an, <16 x float> %i.x)
  %i.ao = fsub fast <16 x float> splat (float f0x3FC90FDB), %6
  %i.ap = fcmp fast olt <16 x float> %i.x, zeroinitializer
  %i.aq = select fast <16 x i1> %i.ap, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %factor42 = fmul fast <16 x float> %i.an, splat (float 2.000000e+00)
  %i.ar = bitcast <16 x float> %factor42 to <16 x i32>
  %i.as = or <16 x i32> %i.z, %i.ar
  %i.at = bitcast <16 x i32> %i.as to <16 x float>
  %i.au = fadd fast <16 x float> %i.aq, %i.at
  %i.av = select fast <16 x i1> %i.ab, <16 x float> %i.ao, <16 x float> %i.au
  store <16 x float> %i.av, ptr %.02743, align 1, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.02743, i64 64 ; 2 uses
  %i.ax = add nuw nsw i32 %.044, 16               ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 15
  %i.az = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.aw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.az, %.lr.ph ] ; 2 uses
  %i.bb = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bc = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bc
  %i.bd = trunc i32 %notmask to i16
  %i.be = xor i16 %i.bd, -1
  %i.bf = bitcast i16 %i.be to <16 x i1>          ; 2 uses
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.bf, <16 x float> zeroinitializer) ; 4 uses
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = and <16 x i32> %i.bh, splat (i32 -2147483648)
  %i.bj = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bg) ; 3 uses
  %i.bk = fcmp fast ole <16 x float> %i.bj, splat (float 5.000000e-01) ; 2 uses
  %i.bl = fmul fast <16 x float> %i.bj, splat (float 5.000000e-01)
  %i.bm = fsub fast <16 x float> splat (float 5.000000e-01), %i.bl
  %i.bn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.bm)
  %i.bo = select fast <16 x i1> %i.bk, <16 x float> %i.bj, <16 x float> %i.bn ; 3 uses
  %i.bp = fmul fast <16 x float> %i.bo, %i.bo     ; 3 uses
  %i.bq = fmul fast <16 x float> %i.bp, %i.bp     ; 4 uses
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3E2AAAF8))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float 1.000000e+00))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bu)
  %i.bw = fmul fast <16 x float> %i.bv, %i.bo     ; 2 uses
  %7 = call <16 x float> @llvm.copysign.v16f32(<16 x float> %i.bw, <16 x float> %i.bg)
  %i.bx = fsub fast <16 x float> splat (float f0x3FC90FDB), %7
  %i.by = fcmp fast olt <16 x float> %i.bg, zeroinitializer
  %i.bz = select fast <16 x i1> %i.by, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %factor = fmul fast <16 x float> %i.bw, splat (float 2.000000e+00)
  %i.ca = bitcast <16 x float> %factor to <16 x i32>
  %i.cb = or <16 x i32> %i.bi, %i.ca
  %i.cc = bitcast <16 x i32> %i.cb to <16 x float>
  %i.cd = fadd fast <16 x float> %i.bz, %i.cc
  %i.ce = select fast <16 x i1> %i.bk, <16 x float> %i.bx, <16 x float> %i.cd
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.ce, ptr align 1 %.027.lcssa, <16 x i1> %i.bf)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cf = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cg = sext i32 %i.cf to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cg
  br i1 %.not.not, label %.noexc, label %._crit_edge49

._crit_edge49:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge49, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge46, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.cc, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !118
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !118
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !118
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.041 = phi i32 [ %i.av, %.lr.ph ], [ 0, %.noexc ]
  %.02740 = phi ptr [ %i.au, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x i32>, ptr %.02740, align 1, !tbaa !41 ; 2 uses
  %i.y = and <16 x i32> %i.x, splat (i32 -2147483648)
  %i.z = and <16 x i32> %i.x, splat (i32 2147483647)
  %i.aa = bitcast <16 x i32> %i.z to <16 x float> ; 3 uses
  %i.ab = fcmp fast ogt <16 x float> %i.aa, splat (float 1.000000e+00) ; 2 uses
  %i.ac = select fast <16 x i1> %i.ab, <16 x float> splat (float -1.000000e+00), <16 x float> %i.aa
  %i.ad = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.aa, <16 x float> splat (float 1.000000e+00))
  %i.ae = fdiv fast <16 x float> %i.ac, %i.ad     ; 3 uses
  %i.af = fmul fast <16 x float> %i.ae, %i.ae     ; 3 uses
  %i.ag = fmul fast <16 x float> %i.af, %i.af     ; 7 uses
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0xBE117200))
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0xBEAAAA53))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0x3DD9ED24))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3E4CB974))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float 1.000000e+00))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.af, <16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.an)
  %i.ap = fmul fast <16 x float> %i.ao, %i.ae
  %i.aq = select fast <16 x i1> %i.ab, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ar = fadd fast <16 x float> %i.ap, %i.aq
  %i.as = bitcast <16 x float> %i.ar to <16 x i32>
  %i.at = or <16 x i32> %i.y, %i.as
  store <16 x i32> %i.at, ptr %.02740, align 1, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %.02740, i64 64 ; 2 uses
  %i.av = add nuw nsw i32 %.041, 16               ; 3 uses
  %i.aw = or disjoint i32 %i.av, 15
  %i.ax = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.au, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.av, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.ax, %.lr.ph ] ; 2 uses
  %i.az = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ba = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.ba
  %i.bb = trunc i32 %notmask to i16
  %i.bc = xor i16 %i.bb, -1
  %i.bd = bitcast i16 %i.bc to <16 x i1>          ; 2 uses
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.bd, <16 x float> zeroinitializer) ; 2 uses
  %i.bf = bitcast <16 x float> %i.be to <16 x i32>
  %i.bg = and <16 x i32> %i.bf, splat (i32 -2147483648)
  %i.bh = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.be) ; 3 uses
  %i.bi = fcmp fast ogt <16 x float> %i.bh, splat (float 1.000000e+00) ; 2 uses
  %i.bj = select fast <16 x i1> %i.bi, <16 x float> splat (float -1.000000e+00), <16 x float> %i.bh
  %i.bk = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bh, <16 x float> splat (float 1.000000e+00))
  %i.bl = fdiv fast <16 x float> %i.bj, %i.bk     ; 3 uses
  %i.bm = fmul fast <16 x float> %i.bl, %i.bl     ; 3 uses
  %i.bn = fmul fast <16 x float> %i.bm, %i.bm     ; 7 uses
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0xBE117200))
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0xBEAAAA53))
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3DD9ED24))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.bs, <16 x float> splat (float f0x3E4CB974))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float 1.000000e+00))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bm, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bu)
  %i.bw = fmul fast <16 x float> %i.bv, %i.bl
  %i.bx = select fast <16 x i1> %i.bi, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.by = fadd fast <16 x float> %i.bw, %i.bx
  %i.bz = bitcast <16 x float> %i.by to <16 x i32>
  %i.ca = or <16 x i32> %i.bg, %i.bz
  %i.cb = bitcast <16 x i32> %i.ca to <16 x float>
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.cb, ptr align 1 %.027.lcssa, <16 x i1> %i.bd)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cc = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cd = sext i32 %i.cc to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cd
  br i1 %.not.not, label %.noexc, label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge46, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor19unary_op_reciprocalEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.dg = add nuw nsw i32 %.257, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, %i.bq
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !197

._crit_edge60:                                    ; preds = %.lr.ph59, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !37
  %i.di = sext i32 %i.dh to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.di
  br i1 %.not.not, label %.noexc, label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge60, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor15unary_op_squareEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge60
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bq, %._crit_edge60 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge60 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !205
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !205
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !205
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.053 = phi i32 [ %i.ao, %.lr.ph ], [ 0, %.noexc ]
  %.03452 = phi ptr [ %i.an, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03452, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 2 uses
  %i.af = fmul fast <16 x float> %i.ae, %i.ae
  %i.ag = bitcast <16 x float> %i.af to <16 x i32>
  %i.ah = lshr <16 x i32> %i.ag, splat (i32 16)   ; 2 uses
  %i.ai = shufflevector <16 x i32> %i.ah, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aj = shufflevector <16 x i32> %i.ah, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ai, <8 x i32> %i.aj)
  %i.al = bitcast <16 x i16> %i.ak to <4 x i64>
  %i.am = shufflevector <4 x i64> %i.al, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.am, ptr %.03452, align 1, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %.03452, i64 32 ; 2 uses
  %i.ao = add nuw nsw i32 %.053, 16               ; 3 uses
  %i.ap = or disjoint i32 %i.ao, 15
  %i.aq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.as = phi i32 [ %i.o, %.noexc ], [ %i.aq, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.an, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.at = icmp slt i32 %.0.lcssa, %i.as
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.au = sub nuw nsw i32 %i.as, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.au
  %i.av = trunc i32 %notmask to i16
  %i.aw = xor i16 %i.av, -1
  %i.ax = bitcast i16 %i.aw to <16 x i1>          ; 2 uses
  %i.ay = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ax, <16 x i16> zeroinitializer) ; 2 uses
  %i.az = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ay, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ba = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ay, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bb = shufflevector <16 x i16> %i.az, <16 x i16> %i.ba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bc = shufflevector <16 x i16> %i.az, <16 x i16> %i.ba, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = bitcast <16 x i16> %i.bb to <8 x i32>
  %i.be = bitcast <16 x i16> %i.bc to <8 x i32>
  %i.bf = shufflevector <8 x i32> %i.bd, <8 x i32> %i.be, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float> ; 2 uses
  %i.bh = fmul fast <16 x float> %i.bg, %i.bg
  %i.bi = bitcast <16 x float> %i.bh to <16 x i32>
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 16)   ; 2 uses
  %i.bk = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bk, <8 x i32> %i.bl)
  %i.bn = bitcast <16 x i16> %i.bm to <4 x i64>
  %i.bo = shufflevector <4 x i64> %i.bn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bp = bitcast <4 x i64> %i.bo to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bp, ptr align 1 %.034.lcssa, <16 x i1> %i.ax)
  %.pre68 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bq = phi i32 [ %.pre68, %bb.c ], [ %i.as, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.as, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.br = icmp slt i32 %.1, %i.bq
  br i1 %i.br, label %iter.check, label %._crit_edge60

iter.check:                                       ; preds = %bb.d
  %i.bs = xor i32 %.1, -1
  %i.bt = add i32 %i.bq, %i.bs                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bt, 15
  br i1 %min.iters.check, label %.lr.ph59.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check79 = icmp ult i32 %i.bt, 127
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bv, 112
  %n.vec = and i64 %i.bv, 8589934464              ; 5 uses
  %i.bx = trunc i64 %n.vec to i32
  %i.by = add i32 %.1, %i.bx
  %i.bz = shl nuw nsw i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %.034.lcssa, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.cb ; 5 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %wide.load80 = load <32 x i16>, ptr %i.cc, align 2, !tbaa !46
  %wide.load81 = load <32 x i16>, ptr %i.cd, align 2, !tbaa !46
  %wide.load82 = load <32 x i16>, ptr %i.ce, align 2, !tbaa !46
  %i.cf = zext <32 x i16> %wide.load to <32 x i32>
  %i.cg = zext <32 x i16> %wide.load80 to <32 x i32>
  %i.ch = zext <32 x i16> %wide.load81 to <32 x i32>
  %i.ci = zext <32 x i16> %wide.load82 to <32 x i32>
  %i.cj = shl nuw <32 x i32> %i.cf, splat (i32 16)
  %i.ck = shl nuw <32 x i32> %i.cg, splat (i32 16)
  %i.cl = shl nuw <32 x i32> %i.ch, splat (i32 16)
  %i.cm = shl nuw <32 x i32> %i.ci, splat (i32 16)
  %i.cn = bitcast <32 x i32> %i.cj to <32 x float> ; 2 uses
  %i.co = bitcast <32 x i32> %i.ck to <32 x float> ; 2 uses
  %i.cp = bitcast <32 x i32> %i.cl to <32 x float> ; 2 uses
  %i.cq = bitcast <32 x i32> %i.cm to <32 x float> ; 2 uses
  %i.cr = fmul fast <32 x float> %i.cn, %i.cn
  %i.cs = fmul fast <32 x float> %i.co, %i.co
  %i.ct = fmul fast <32 x float> %i.cp, %i.cp
  %i.cu = fmul fast <32 x float> %i.cq, %i.cq
  %i.cv = bitcast <32 x float> %i.cr to <32 x i32>
  %i.cw = bitcast <32 x float> %i.cs to <32 x i32>
  %i.cx = bitcast <32 x float> %i.ct to <32 x i32>
  %i.cy = bitcast <32 x float> %i.cu to <32 x i32>
  %i.cz = lshr <32 x i32> %i.cv, splat (i32 16)
  %i.da = lshr <32 x i32> %i.cw, splat (i32 16)
  %i.db = lshr <32 x i32> %i.cx, splat (i32 16)
  %i.dc = lshr <32 x i32> %i.cy, splat (i32 16)
  %i.dd = trunc nuw nsw <32 x i32> %i.cz to <32 x i16>
  %i.de = trunc nuw nsw <32 x i32> %i.da to <32 x i16>
  %i.df = trunc nuw nsw <32 x i32> %i.db to <32 x i16>
  %i.dg = trunc nuw nsw <32 x i32> %i.dc to <32 x i16>
  store <32 x i16> %i.dd, ptr %next.gep, align 2, !tbaa !46
  store <32 x i16> %i.de, ptr %i.cc, align 2, !tbaa !46
  store <32 x i16> %i.df, ptr %i.cd, align 2, !tbaa !46
  store <32 x i16> %i.dg, ptr %i.ce, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge60, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph59.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.bv, 8589934576            ; 4 uses
  %i.di = trunc i64 %n.vec84 to i32
  %i.dj = add i32 %.1, %i.di
  %i.dk = shl nuw nsw i64 %n.vec84, 1
  %i.dl = getelementptr i8, ptr %.034.lcssa, i64 %i.dk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %i.dm = shl i64 %index85, 1
  %next.gep86 = getelementptr i8, ptr %.034.lcssa, i64 %i.dm ; 2 uses
  %wide.load87 = load <16 x i16>, ptr %next.gep86, align 2, !tbaa !46
  %i.dn = zext <16 x i16> %wide.load87 to <16 x i32>
  %i.do = shl nuw <16 x i32> %i.dn, splat (i32 16)
  %i.dp = bitcast <16 x i32> %i.do to <16 x float> ; 2 uses
  %i.dq = fmul fast <16 x float> %i.dp, %i.dp
  %i.dr = bitcast <16 x float> %i.dq to <16 x i32>
  %i.ds = lshr <16 x i32> %i.dr, splat (i32 16)
  %i.dt = trunc nuw nsw <16 x i32> %i.ds to <16 x i16>
  store <16 x i16> %i.dt, ptr %next.gep86, align 2, !tbaa !46
  %index.next88 = add nuw i64 %index85, 16        ; 2 uses
  %i.du = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !203

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.bv, %n.vec84
  br i1 %cmp.n89, label %._crit_edge60, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.257.ph = phi i32 [ %.1, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %.13556.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.257 = phi i32 [ %i.ee, %.lr.ph59 ], [ %.257.ph, %.lr.ph59.preheader ]
  %.13556 = phi ptr [ %i.ed, %.lr.ph59 ], [ %.13556.ph, %.lr.ph59.preheader ] ; 3 uses
  %i.dv = load i16, ptr %.13556, align 2, !tbaa !46
  %i.dw = zext i16 %i.dv to i32
  %i.dx = shl nuw i32 %i.dw, 16
  %i.dy = bitcast i32 %i.dx to float              ; 2 uses
  %i.dz = fmul fast float %i.dy, %i.dy
  %i.ea = bitcast float %i.dz to i32
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc nuw nsw i32 %i.eb to i16
  store i16 %i.ec, ptr %.13556, align 2, !tbaa !46
  %i.ed = getelementptr inbounds nuw i8, ptr %.13556, i64 2
  %i.ee = add nuw nsw i32 %.257, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, %i.bq
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !204

._crit_edge60:                                    ; preds = %.lr.ph59, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !37
  %i.eg = sext i32 %i.ef to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.eg
  br i1 %.not.not, label %.noexc, label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge60, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge60
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bq, %._crit_edge60 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge60 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !212
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !212
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !212
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.053 = phi i32 [ %i.ao, %.lr.ph ], [ 0, %.noexc ]
  %.03452 = phi ptr [ %i.an, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03452, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float>
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ae)
  %i.ag = bitcast <16 x float> %i.af to <16 x i32>
  %i.ah = lshr <16 x i32> %i.ag, splat (i32 16)   ; 2 uses
  %i.ai = shufflevector <16 x i32> %i.ah, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aj = shufflevector <16 x i32> %i.ah, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ai, <8 x i32> %i.aj)
  %i.al = bitcast <16 x i16> %i.ak to <4 x i64>
  %i.am = shufflevector <4 x i64> %i.al, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.am, ptr %.03452, align 1, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %.03452, i64 32 ; 2 uses
  %i.ao = add nuw nsw i32 %.053, 16               ; 3 uses
  %i.ap = or disjoint i32 %i.ao, 15
  %i.aq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !208

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.as = phi i32 [ %i.o, %.noexc ], [ %i.aq, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.an, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.at = icmp slt i32 %.0.lcssa, %i.as
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.au = sub nuw nsw i32 %i.as, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.au
  %i.av = trunc i32 %notmask to i16
  %i.aw = xor i16 %i.av, -1
  %i.ax = bitcast i16 %i.aw to <16 x i1>          ; 2 uses
  %i.ay = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ax, <16 x i16> zeroinitializer) ; 2 uses
  %i.az = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ay, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ba = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ay, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bb = shufflevector <16 x i16> %i.az, <16 x i16> %i.ba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bc = shufflevector <16 x i16> %i.az, <16 x i16> %i.ba, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = bitcast <16 x i16> %i.bb to <8 x i32>
  %i.be = bitcast <16 x i16> %i.bc to <8 x i32>
  %i.bf = shufflevector <8 x i32> %i.bd, <8 x i32> %i.be, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float>
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.bg)
  %i.bi = bitcast <16 x float> %i.bh to <16 x i32>
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 16)   ; 2 uses
  %i.bk = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bk, <8 x i32> %i.bl)
  %i.bn = bitcast <16 x i16> %i.bm to <4 x i64>
  %i.bo = shufflevector <4 x i64> %i.bn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bp = bitcast <4 x i64> %i.bo to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bp, ptr align 1 %.034.lcssa, <16 x i1> %i.ax)
  %.pre68 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bq = phi i32 [ %.pre68, %bb.c ], [ %i.as, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.as, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.br = icmp slt i32 %.1, %i.bq
  br i1 %i.br, label %iter.check, label %._crit_edge60

iter.check:                                       ; preds = %bb.d
  %i.bs = xor i32 %.1, -1
  %i.bt = add i32 %i.bq, %i.bs                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bt, 3
  br i1 %min.iters.check, label %.lr.ph59.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check79 = icmp ult i32 %i.bt, 31
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bv, 28
  %n.vec = and i64 %i.bv, 8589934560              ; 5 uses
  %i.bx = trunc i64 %n.vec to i32
  %i.by = add i32 %.1, %i.bx
  %i.bz = shl nuw nsw i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %.034.lcssa, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.cb ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %i.cc = zext <32 x i16> %wide.load to <32 x i32>
  %i.cd = shl nuw <32 x i32> %i.cc, splat (i32 16)
  %i.ce = bitcast <32 x i32> %i.cd to <32 x float>
  %i.cf = call fast <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.ce)
  %i.cg = bitcast <32 x float> %i.cf to <32 x i32>
  %i.ch = lshr <32 x i32> %i.cg, splat (i32 16)
  %i.ci = trunc nuw <32 x i32> %i.ch to <32 x i16>
  store <32 x i16> %i.ci, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge60, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph59.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.bv, 8589934588            ; 4 uses
  %i.ck = trunc i64 %n.vec81 to i32
  %i.cl = add i32 %.1, %i.ck
  %i.cm = shl nuw nsw i64 %n.vec81, 1
  %i.cn = getelementptr i8, ptr %.034.lcssa, i64 %i.cm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.w = load <16 x i16>, ptr %.03462, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 5 uses
  %i.af = fmul fast <16 x float> %i.ae, %i.ae
  %i.ag = fmul fast <16 x float> %i.ae, splat (float f0x3EAAAAAB)
  %i.ah = fadd fast <16 x float> %i.ag, splat (float -5.000000e-01)
  %i.ai = fmul fast <16 x float> %i.af, %i.ah
  %i.aj = fadd fast <16 x float> %i.ai, %i.ae
  %i.ak = fadd fast <16 x float> %i.ae, splat (float 1.000000e+00) ; 2 uses
  %i.al = fcmp fast ole <16 x float> %i.ak, zeroinitializer
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0x00800000), i32 4)
  %i.an = bitcast <16 x float> %i.am to <16 x i32> ; 2 uses
  %i.ao = lshr <16 x i32> %i.an, splat (i32 23)
  %i.ap = and <16 x i32> %i.an, splat (i32 -2139095041)
  %i.aq = or disjoint <16 x i32> %i.ap, splat (i32 1056964608)
  %i.ar = bitcast <16 x i32> %i.aq to <16 x float> ; 3 uses
  %i.as = add nsw <16 x i32> %i.ao, splat (i32 -127)
  %i.at = sitofp fast <16 x i32> %i.as to <16 x float> ; 2 uses
  %i.au = fadd fast <16 x float> %i.at, splat (float 1.000000e+00)
  %i.av = fcmp fast olt <16 x float> %i.ar, splat (float f0x3F3504F3) ; 2 uses
  %i.aw = fadd fast <16 x float> %i.ar, splat (float -1.000000e+00)
  %i.ax = select fast <16 x i1> %i.av, <16 x float> %i.at, <16 x float> %i.au ; 2 uses
  %i.ay = select fast <16 x i1> %i.av, <16 x float> %i.ar, <16 x float> zeroinitializer
  %i.az = fadd fast <16 x float> %i.aw, %i.ay     ; 12 uses
  %i.ba = fmul fast <16 x float> %i.az, %i.az     ; 2 uses
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bb, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0x3DEF251A))
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0xBDFE5D4F))
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0x3E11E9BF))
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0xBE2AAE50))
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0x3E4CCEAC))
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0xBE7FFFFC))
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0x3EAAAAAA))
  %i.bj = fmul fast <16 x float> %i.ba, %i.az
  %i.bk = fmul fast <16 x float> %i.bj, %i.bi
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bk)
  %i.bm = fneg fast <16 x float> %i.ba
  %i.bn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bl)
  %i.bo = fadd fast <16 x float> %i.bn, %i.az
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bo)
  %i.bq = select <16 x i1> %i.al, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bp
  %i.br = and <16 x i32> %i.ad, splat (i32 2147418112)
  %i.bs = bitcast <16 x i32> %i.br to <16 x float>
  %i.bt = fcmp fast olt <16 x float> %i.bs, splat (float f0x38D1B717)
  %i.bu = select fast <16 x i1> %i.bt, <16 x float> %i.aj, <16 x float> %i.bq
  %i.bv = bitcast <16 x float> %i.bu to <16 x i32>
  %i.bw = lshr <16 x i32> %i.bv, splat (i32 16)   ; 2 uses
  %i.bx = shufflevector <16 x i32> %i.bw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = shufflevector <16 x i32> %i.bw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bz = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bx, <8 x i32> %i.by)
  %i.ca = bitcast <16 x i16> %i.bz to <4 x i64>
  %i.cb = shufflevector <4 x i64> %i.ca, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cb, ptr %.03462, align 1, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %.03462, i64 32 ; 2 uses
  %i.cd = add nuw nsw i32 %.063, 16               ; 3 uses
  %i.ce = or disjoint i32 %i.cd, 15
  %i.cf = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !354

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.ch = phi i32 [ %i.o, %.noexc ], [ %i.cf, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cc, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cd, %.lr.ph ] ; 3 uses
  %i.ci = icmp slt i32 %.0.lcssa, %i.ch
  br i1 %i.ci, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cj = sub nuw nsw i32 %i.ch, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cj
  %i.ck = trunc i32 %notmask to i16
  %i.cl = xor i16 %i.ck, -1
  %i.cm = bitcast i16 %i.cl to <16 x i1>          ; 2 uses
  %i.cn = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.cm, <16 x i16> zeroinitializer) ; 2 uses
  %i.co = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cp = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cn, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cq = shufflevector <16 x i16> %i.co, <16 x i16> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cr = shufflevector <16 x i16> %i.co, <16 x i16> %i.cp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cs = bitcast <16 x i16> %i.cq to <8 x i32>
  %i.ct = bitcast <16 x i16> %i.cr to <8 x i32>
  %i.cu = shufflevector <8 x i32> %i.cs, <8 x i32> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cv = bitcast <16 x i32> %i.cu to <16 x float> ; 5 uses
  %i.cw = fmul fast <16 x float> %i.cv, %i.cv
  %i.cx = fmul fast <16 x float> %i.cv, splat (float f0x3EAAAAAB)
  %i.cy = fadd fast <16 x float> %i.cx, splat (float -5.000000e-01)
  %i.cz = fmul fast <16 x float> %i.cw, %i.cy
  %i.da = fadd fast <16 x float> %i.cz, %i.cv
  %i.db = fadd fast <16 x float> %i.cv, splat (float 1.000000e+00) ; 2 uses
  %i.dc = fcmp fast ole <16 x float> %i.db, zeroinitializer
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.db, <16 x float> splat (float f0x00800000), i32 4)
  %i.de = bitcast <16 x float> %i.dd to <16 x i32> ; 2 uses
  %i.df = lshr <16 x i32> %i.de, splat (i32 23)
  %i.dg = and <16 x i32> %i.de, splat (i32 -2139095041)
  %i.dh = or disjoint <16 x i32> %i.dg, splat (i32 1056964608)
  %i.di = bitcast <16 x i32> %i.dh to <16 x float> ; 3 uses
  %i.dj = add nsw <16 x i32> %i.df, splat (i32 -127)
  %i.dk = sitofp fast <16 x i32> %i.dj to <16 x float> ; 2 uses
  %i.dl = fadd fast <16 x float> %i.dk, splat (float 1.000000e+00)
  %i.dm = fcmp fast olt <16 x float> %i.di, splat (float f0x3F3504F3) ; 2 uses
  %i.dn = fadd fast <16 x float> %i.di, splat (float -1.000000e+00)
  %i.do = select fast <16 x i1> %i.dm, <16 x float> %i.dk, <16 x float> %i.dl ; 2 uses
  %i.dp = select fast <16 x i1> %i.dm, <16 x float> %i.di, <16 x float> zeroinitializer
  %i.dq = fadd fast <16 x float> %i.dn, %i.dp     ; 12 uses
  %i.dr = fmul fast <16 x float> %i.dq, %i.dq     ; 2 uses
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x3DEF251A))
  %i.du = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0xBDFE5D4F))
  %i.dv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.du, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x3E11E9BF))
  %i.dw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dv, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0xBE2AAE50))
  %i.dx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x3E4CCEAC))
  %i.dy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dx, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0xBE7FFFFC))
  %i.dz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x3EAAAAAA))
  %i.ea = fmul fast <16 x float> %i.dr, %i.dq
  %i.eb = fmul fast <16 x float> %i.ea, %i.dz
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.do, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.eb)
  %i.ed = fneg fast <16 x float> %i.dr
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ed, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ec)
  %i.ef = fadd fast <16 x float> %i.ee, %i.dq
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.do, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ef)
  %i.eh = select <16 x i1> %i.dc, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.eg
  %i.ei = and <16 x i32> %i.cu, splat (i32 2147418112)
  %i.ej = bitcast <16 x i32> %i.ei to <16 x float>
  %i.ek = fcmp fast olt <16 x float> %i.ej, splat (float f0x38D1B717)
  %i.el = select fast <16 x i1> %i.ek, <16 x float> %i.da, <16 x float> %i.eh
  %i.em = bitcast <16 x float> %i.el to <16 x i32>
  %i.en = lshr <16 x i32> %i.em, splat (i32 16)   ; 2 uses
  %i.eo = shufflevector <16 x i32> %i.en, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ep = shufflevector <16 x i32> %i.en, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.eo, <8 x i32> %i.ep)
  %i.er = bitcast <16 x i16> %i.eq to <4 x i64>
  %i.es = shufflevector <4 x i64> %i.er, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.et = bitcast <4 x i64> %i.es to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.et, ptr align 1 %.034.lcssa, <16 x i1> %i.cm)
  %.pre78 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.eu = phi i32 [ %.pre78, %bb.c ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.ch, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ev = icmp slt i32 %.1, %i.eu
  br i1 %i.ev, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.d, %.lr.ph69
  %.267 = phi i32 [ %i.ff, %.lr.ph69 ], [ %.1, %bb.d ]
  %.13566 = phi ptr [ %i.fe, %.lr.ph69 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.ew = load i16, ptr %.13566, align 2, !tbaa !46
  %i.ex = zext i16 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 16
  %i.ez = bitcast i32 %i.ey to float
  %i.fa = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.ez) #22
  %i.fb = bitcast float %i.fa to i32
  %i.fc = lshr i32 %i.fb, 16
  %i.fd = trunc nuw i32 %i.fc to i16
  store i16 %i.fd, ptr %.13566, align 2, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %.13566, i64 2
  %i.ff = add nuw nsw i32 %.267, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, %i.eu
  br i1 %exitcond.not, label %._crit_edge70, label %.lr.ph69, !llvm.loop !355

._crit_edge70:                                    ; preds = %.lr.ph69, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fg = load i32, ptr %i.b, align 4, !tbaa !37
  %i.fh = sext i32 %i.fg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fh
  br i1 %.not.not, label %.noexc, label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge70, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge73, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf)) local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.copysign.v16f32(<16 x float>, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.fabs.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.floor.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.ceil.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.ceil.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sqrt.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.exp.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.log.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sin.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sin.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.cos.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cos.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.tan.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tan.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.asin.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.asin.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.acos.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.acos.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.atan.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.atan.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.tanh.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.log10.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log10.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.nearbyint.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.nearbyint.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.trunc.v32f32(<32 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.trunc.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sinh.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sinh.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.cosh.v32f32(<32 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cosh.v8f32(<8 x float>) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_expm1f" "_ZGVcN8v_expm1f" "_ZGVdN8v_expm1f" "_ZGVeN16v_expm1f" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_asinhf" "_ZGVcN8v_asinhf" "_ZGVdN8v_asinhf" "_ZGVeN16v_asinhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_acoshf" "_ZGVcN8v_acoshf" "_ZGVdN8v_acoshf" "_ZGVeN16v_acoshf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_atanhf" "_ZGVcN8v_atanhf" "_ZGVdN8v_atanhf" "_ZGVeN16v_atanhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_log1pf" "_ZGVcN8v_log1pf" "_ZGVdN8v_log1pf" "_ZGVeN16v_log1pf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!12 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !11, i64 8, !11, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!16 = !{!15, !6, i64 24}
!17 = !{!15, !14, i64 16}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !14, i64 8, !5, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIiSaIiEE", !23, i64 0}
!25 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !28, i64 0}
!30 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !20, i64 48, !20, i64 80, !24, i64 112, !24, i64 136, !29, i64 160, !29, i64 184}
!31 = !{!"_ZTSN4ncnn7UnaryOpE", !30, i64 0, !6, i64 208}
!32 = !{!31, !6, i64 208}
!33 = !{!15, !6, i64 44}
!34 = !{!15, !6, i64 48}
!35 = !{!15, !6, i64 52}
!36 = !{!15, !6, i64 56}
!37 = !{!6, !6, i64 0}
!38 = !{!12, !6, i64 4}
!39 = !{!15, !10, i64 0}
!40 = !{!15, !14, i64 64}
!41 = !{!5, !5, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!43}
!45 = !{!"short", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 8, i32 24}
!50 = !{!"branch_weights", i32 16, i32 112}
!51 = !{!"branch_weights", i32 4, i32 28}
!52 = !{!12, !9, i64 32}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!"vtable pointer", !4, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!30, !9, i64 11}
!58 = !{!30, !9, i64 12}
!59 = distinct !{!59, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!60 = distinct !{!60, !59, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!61 = distinct !{!61, !42}
!62 = !{!60}
!63 = distinct !{!63, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!64 = distinct !{!64, !63, !"_ZN4ncnn3Mat7channelEi: argument 0"}
end_hunk_2
