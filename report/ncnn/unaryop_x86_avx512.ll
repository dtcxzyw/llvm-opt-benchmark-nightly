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
  %i.x = load <16 x float>, ptr %.02743, align 1, !tbaa !41 ; 3 uses
  %i.y = bitcast <16 x float> %i.x to <16 x i32>
  %i.z = and <16 x i32> %i.y, splat (i32 -2147483648) ; 2 uses
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
  %6 = bitcast <16 x float> %i.an to <16 x i32>
  %7 = or <16 x i32> %i.z, %6
  %8 = bitcast <16 x i32> %7 to <16 x float>
  %i.ao = fsub fast <16 x float> splat (float f0x3FC90FDB), %8
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
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.bf, <16 x float> zeroinitializer) ; 3 uses
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = and <16 x i32> %i.bh, splat (i32 -2147483648) ; 2 uses
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
  %9 = bitcast <16 x float> %i.bw to <16 x i32>
  %10 = or <16 x i32> %i.bi, %9
  %11 = bitcast <16 x i32> %10 to <16 x float>
  %i.bx = fsub fast <16 x float> splat (float f0x3FC90FDB), %11
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
begin_hunk_1_@_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bp = add nsw <16 x i32> %i.bl, splat (i32 -127)
  %i.bq = sitofp fast <16 x i32> %i.bp to <16 x float> ; 2 uses
  %i.br = fadd fast <16 x float> %i.bq, splat (float 1.000000e+00)
  %i.bs = fcmp fast olt <16 x float> %i.bo, splat (float f0x3F3504F3) ; 2 uses
  %i.bt = fadd fast <16 x float> %i.bo, splat (float -1.000000e+00)
  %i.bu = select fast <16 x i1> %i.bs, <16 x float> %i.bq, <16 x float> %i.br ; 2 uses
  %i.bv = select fast <16 x i1> %i.bs, <16 x float> %i.bo, <16 x float> zeroinitializer
  %i.bw = fadd fast <16 x float> %i.bt, %i.bv     ; 12 uses
  %i.bx = fmul fast <16 x float> %i.bw, %i.bw     ; 2 uses
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3DEF251A))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0xBDFE5D4F))
  %i.cb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3E11E9BF))
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0xBE2AAE50))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3E4CCEAC))
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0xBE7FFFFC))
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3EAAAAAA))
  %i.cg = fmul fast <16 x float> %i.bx, %i.bw
  %i.ch = fmul fast <16 x float> %i.cg, %i.cf
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ch)
  %i.cj = fneg fast <16 x float> %i.bx
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cj, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ci)
  %i.cl = fadd fast <16 x float> %i.ck, %i.bw
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cl)
  %i.cn = fadd fast <16 x float> %i.cm, splat (float f0x3F317218)
  %i.co = fcmp fast ogt <16 x float> %i.x, splat (float f0x5F0AC723)
  %i.cp = select fast <16 x i1> %i.co, <16 x float> %i.cn, <16 x float> %i.bi
  store <16 x float> %i.cp, ptr %.02749, align 1, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %.02749, i64 64 ; 2 uses
  %i.cr = add nuw nsw i32 %.050, 16               ; 3 uses
  %i.cs = or disjoint i32 %i.cr, 15
  %i.ct = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cr, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.ct, %.lr.ph ] ; 2 uses
  %i.cv = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.cv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cw = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cw
  %i.cx = trunc i32 %notmask to i16
  %i.cy = xor i16 %i.cx, -1
  %i.cz = bitcast i16 %i.cy to <16 x i1>          ; 2 uses
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.cz, <16 x float> zeroinitializer) ; 5 uses
  %i.db = fadd fast <16 x float> %i.da, splat (float -1.000000e+00)
  %i.dc = fadd fast <16 x float> %i.da, splat (float 1.000000e+00)
  %i.dd = fmul fast <16 x float> %i.db, %i.dc
  %i.de = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.dd)
  %i.df = fadd fast <16 x float> %i.de, %i.da     ; 2 uses
  %i.dg = fcmp fast ole <16 x float> %i.df, zeroinitializer
  %i.dh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.df, <16 x float> splat (float f0x00800000), i32 4)
  %i.di = bitcast <16 x float> %i.dh to <16 x i32> ; 2 uses
  %i.dj = lshr <16 x i32> %i.di, splat (i32 23)
  %i.dk = and <16 x i32> %i.di, splat (i32 -2139095041)
  %i.dl = or disjoint <16 x i32> %i.dk, splat (i32 1056964608)
  %i.dm = bitcast <16 x i32> %i.dl to <16 x float> ; 3 uses
  %i.dn = add nsw <16 x i32> %i.dj, splat (i32 -127)
  %i.do = sitofp fast <16 x i32> %i.dn to <16 x float> ; 2 uses
  %i.dp = fadd fast <16 x float> %i.do, splat (float 1.000000e+00)
  %i.dq = fcmp fast olt <16 x float> %i.dm, splat (float f0x3F3504F3) ; 2 uses
  %i.dr = fadd fast <16 x float> %i.dm, splat (float -1.000000e+00)
  %i.ds = select fast <16 x i1> %i.dq, <16 x float> %i.do, <16 x float> %i.dp ; 2 uses
  %i.dt = select fast <16 x i1> %i.dq, <16 x float> %i.dm, <16 x float> zeroinitializer
  %i.du = fadd fast <16 x float> %i.dr, %i.dt     ; 12 uses
  %i.dv = fmul fast <16 x float> %i.du, %i.du     ; 2 uses
  %i.dw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.dx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3DEF251A))
  %i.dy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dx, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xBDFE5D4F))
  %i.dz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3E11E9BF))
  %i.ea = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dz, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xBE2AAE50))
  %i.eb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3E4CCEAC))
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eb, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xBE7FFFFC))
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3EAAAAAA))
  %i.ee = fmul fast <16 x float> %i.dv, %i.du
  %i.ef = fmul fast <16 x float> %i.ee, %i.ed
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ef)
  %i.eh = fneg fast <16 x float> %i.dv
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eh, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.eg)
  %i.ej = fadd fast <16 x float> %i.ei, %i.du
  %i.ek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ej)
  %i.el = select <16 x i1> %i.dg, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.ek
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x00800000), i32 4)
  %i.en = bitcast <16 x float> %i.em to <16 x i32> ; 2 uses
  %i.eo = lshr <16 x i32> %i.en, splat (i32 23)
  %i.ep = and <16 x i32> %i.en, splat (i32 -2139095041)
  %i.eq = or disjoint <16 x i32> %i.ep, splat (i32 1056964608)
  %i.er = bitcast <16 x i32> %i.eq to <16 x float> ; 3 uses
  %i.es = add nsw <16 x i32> %i.eo, splat (i32 -127)
  %i.et = sitofp fast <16 x i32> %i.es to <16 x float> ; 2 uses
  %i.eu = fadd fast <16 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = fcmp fast olt <16 x float> %i.er, splat (float f0x3F3504F3) ; 2 uses
  %i.ew = fadd fast <16 x float> %i.er, splat (float -1.000000e+00)
  %i.ex = select fast <16 x i1> %i.ev, <16 x float> %i.et, <16 x float> %i.eu ; 2 uses
  %i.ey = select fast <16 x i1> %i.ev, <16 x float> %i.er, <16 x float> zeroinitializer
  %i.ez = fadd fast <16 x float> %i.ew, %i.ey     ; 12 uses
  %i.fa = fmul fast <16 x float> %i.ez, %i.ez     ; 2 uses
  %i.fb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fb, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3DEF251A))
  %i.fd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fc, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xBDFE5D4F))
  %i.fe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fd, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3E11E9BF))
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xBE2AAE50))
  %i.fg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ff, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3E4CCEAC))
  %i.fh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xBE7FFFFC))
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fh, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3EAAAAAA))
  %i.fj = fmul fast <16 x float> %i.fa, %i.ez
  %i.fk = fmul fast <16 x float> %i.fj, %i.fi
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fk)
  %i.fm = fneg fast <16 x float> %i.fa
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fm, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fl)
  %i.fo = fadd fast <16 x float> %i.fn, %i.ez
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fo)
  %i.fq = fadd fast <16 x float> %i.fp, splat (float f0x3F317218)
  %i.fr = fcmp fast ogt <16 x float> %i.da, splat (float f0x5F0AC723)
  %i.fs = select fast <16 x i1> %i.fr, <16 x float> %i.fq, <16 x float> %i.el
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.fs, ptr align 1 %.027.lcssa, <16 x i1> %i.cz)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ft = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fu = sext i32 %i.ft to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fu
  br i1 %.not.not, label %.noexc, label %._crit_edge55

._crit_edge55:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge55, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not74 = icmp sgt i32 %i.k, %i.j
  br i1 %.not74, label %._crit_edge76, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.gf, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !166
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !166
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !166
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.071 = phi i32 [ %i.cx, %.lr.ph ], [ 0, %.noexc ]
  %.02770 = phi ptr [ %i.cw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02770, align 1, !tbaa !41 ; 8 uses
  %i.y = fmul fast <16 x float> %i.x, %i.x        ; 2 uses
  %i.z = fmul fast <16 x float> %i.x, splat (float f0x3EAAAAAB) ; 2 uses
  %i.aa = fadd fast <16 x float> %i.z, splat (float -5.000000e-01)
  %i.ab = fmul fast <16 x float> %i.y, %i.aa
  %i.ac = fadd fast <16 x float> %i.ab, %i.x
  %i.ad = fadd fast <16 x float> %i.x, splat (float 1.000000e+00) ; 2 uses
  %6 = fcmp fast ole <16 x float> %i.ad, zeroinitializer
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x00800000), i32 4)
  %i.af = bitcast <16 x float> %i.ae to <16 x i32> ; 2 uses
  %i.ag = lshr <16 x i32> %i.af, splat (i32 23)
  %i.ah = and <16 x i32> %i.af, splat (i32 -2139095041)
  %i.ai = or disjoint <16 x i32> %i.ah, splat (i32 1056964608)
  %i.aj = bitcast <16 x i32> %i.ai to <16 x float> ; 3 uses
  %i.ak = add nsw <16 x i32> %i.ag, splat (i32 -127)
  %i.al = sitofp fast <16 x i32> %i.ak to <16 x float> ; 2 uses
  %i.am = fadd fast <16 x float> %i.al, splat (float 1.000000e+00)
  %i.an = fcmp fast olt <16 x float> %i.aj, splat (float f0x3F3504F3) ; 2 uses
  %i.ao = fadd fast <16 x float> %i.aj, splat (float -1.000000e+00)
  %i.ap = select fast <16 x i1> %i.an, <16 x float> %i.al, <16 x float> %i.am ; 2 uses
  %i.aq = select fast <16 x i1> %i.an, <16 x float> %i.aj, <16 x float> zeroinitializer
  %i.ar = fadd fast <16 x float> %i.ao, %i.aq     ; 12 uses
  %i.as = fmul fast <16 x float> %i.ar, %i.ar     ; 2 uses
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3DEF251A))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBDFE5D4F))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E11E9BF))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBE2AAE50))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E4CCEAC))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBE7FFFFC))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3EAAAAAA))
  %i.bb = fmul fast <16 x float> %i.as, %i.ar
  %i.bc = fmul fast <16 x float> %i.bb, %i.ba
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bc)
  %i.be = fneg fast <16 x float> %i.as
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.be, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bd)
  %i.bg = fadd fast <16 x float> %i.bf, %i.ar
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bg)
  %7 = select <16 x i1> %6, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bh
  %i.bi = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x)
  %i.bj = fcmp fast olt <16 x float> %i.bi, splat (float f0x38D1B717) ; 2 uses
  %i.bk = select fast <16 x i1> %i.bj, <16 x float> %i.ac, <16 x float> %7
  %i.bl = fsub fast <16 x float> splat (float -5.000000e-01), %i.z
  %i.bm = fmul fast <16 x float> %i.y, %i.bl
  %i.bn = fsub fast <16 x float> %i.bm, %i.x
  %i.bo = fsub fast <16 x float> splat (float 1.000000e+00), %i.x ; 2 uses
  %8 = fcmp fast ole <16 x float> %i.bo, zeroinitializer
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x00800000), i32 4)
  %i.bq = bitcast <16 x float> %i.bp to <16 x i32> ; 2 uses
  %i.br = lshr <16 x i32> %i.bq, splat (i32 23)
  %i.bs = and <16 x i32> %i.bq, splat (i32 -2139095041)
  %i.bt = or disjoint <16 x i32> %i.bs, splat (i32 1056964608)
  %i.bu = bitcast <16 x i32> %i.bt to <16 x float> ; 3 uses
  %i.bv = add nsw <16 x i32> %i.br, splat (i32 -127)
  %i.bw = sitofp fast <16 x i32> %i.bv to <16 x float> ; 2 uses
  %i.bx = fadd fast <16 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = fcmp fast olt <16 x float> %i.bu, splat (float f0x3F3504F3) ; 2 uses
  %i.bz = fadd fast <16 x float> %i.bu, splat (float -1.000000e+00)
  %i.ca = select fast <16 x i1> %i.by, <16 x float> %i.bw, <16 x float> %i.bx ; 2 uses
  %i.cb = select fast <16 x i1> %i.by, <16 x float> %i.bu, <16 x float> zeroinitializer
  %i.cc = fadd fast <16 x float> %i.bz, %i.cb     ; 12 uses
  %i.cd = fmul fast <16 x float> %i.cc, %i.cc     ; 2 uses
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3DEF251A))
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0xBDFE5D4F))
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3E11E9BF))
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0xBE2AAE50))
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3E4CCEAC))
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0xBE7FFFFC))
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3EAAAAAA))
  %i.cm = fmul fast <16 x float> %i.cd, %i.cc
  %i.cn = fmul fast <16 x float> %i.cm, %i.cl
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cn)
  %i.cp = fneg fast <16 x float> %i.cd
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cp, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.co)
  %i.cr = fadd fast <16 x float> %i.cq, %i.cc
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cr)
  %9 = select <16 x i1> %8, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.cs
  %i.ct = select fast <16 x i1> %i.bj, <16 x float> %i.bn, <16 x float> %9
  %i.cu = fsub fast <16 x float> %i.bk, %i.ct
  %i.cv = fmul fast <16 x float> %i.cu, splat (float 5.000000e-01)
  store <16 x float> %i.cv, ptr %.02770, align 1, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %.02770, i64 64 ; 2 uses
  %i.cx = add nuw nsw i32 %.071, 16               ; 3 uses
  %i.cy = or disjoint i32 %i.cx, 15
  %i.cz = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cx, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.cz, %.lr.ph ] ; 2 uses
  %i.db = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.db, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.dc = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.dc
  %i.dd = trunc i32 %notmask to i16
  %i.de = xor i16 %i.dd, -1
  %i.df = bitcast i16 %i.de to <16 x i1>          ; 2 uses
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.df, <16 x float> zeroinitializer) ; 8 uses
  %i.dh = fmul fast <16 x float> %i.dg, %i.dg     ; 2 uses
  %i.di = fmul fast <16 x float> %i.dg, splat (float f0x3EAAAAAB) ; 2 uses
  %i.dj = fadd fast <16 x float> %i.di, splat (float -5.000000e-01)
  %i.dk = fmul fast <16 x float> %i.dh, %i.dj
  %i.dl = fadd fast <16 x float> %i.dk, %i.dg
  %i.dm = fadd fast <16 x float> %i.dg, splat (float 1.000000e+00) ; 2 uses
  %10 = fcmp fast ole <16 x float> %i.dm, zeroinitializer
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dm, <16 x float> splat (float f0x00800000), i32 4)
  %i.do = bitcast <16 x float> %i.dn to <16 x i32> ; 2 uses
  %i.dp = lshr <16 x i32> %i.do, splat (i32 23)
  %i.dq = and <16 x i32> %i.do, splat (i32 -2139095041)
  %i.dr = or disjoint <16 x i32> %i.dq, splat (i32 1056964608)
  %i.ds = bitcast <16 x i32> %i.dr to <16 x float> ; 3 uses
  %i.dt = add nsw <16 x i32> %i.dp, splat (i32 -127)
  %i.du = sitofp fast <16 x i32> %i.dt to <16 x float> ; 2 uses
  %i.dv = fadd fast <16 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = fcmp fast olt <16 x float> %i.ds, splat (float f0x3F3504F3) ; 2 uses
  %i.dx = fadd fast <16 x float> %i.ds, splat (float -1.000000e+00)
  %i.dy = select fast <16 x i1> %i.dw, <16 x float> %i.du, <16 x float> %i.dv ; 2 uses
  %i.dz = select fast <16 x i1> %i.dw, <16 x float> %i.ds, <16 x float> zeroinitializer
  %i.ea = fadd fast <16 x float> %i.dx, %i.dz     ; 12 uses
  %i.eb = fmul fast <16 x float> %i.ea, %i.ea     ; 2 uses
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3DEF251A))
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ed, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0xBDFE5D4F))
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3E11E9BF))
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ef, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0xBE2AAE50))
  %i.eh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3E4CCEAC))
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0xBE7FFFFC))
  %i.ej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3EAAAAAA))
  %i.ek = fmul fast <16 x float> %i.eb, %i.ea
  %i.el = fmul fast <16 x float> %i.ek, %i.ej
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.el)
  %i.en = fneg fast <16 x float> %i.eb
  %i.eo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.en, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.em)
  %i.ep = fadd fast <16 x float> %i.eo, %i.ea
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ep)
  %11 = select <16 x i1> %10, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.eq
  %i.er = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.dg)
  %i.es = fcmp fast olt <16 x float> %i.er, splat (float f0x38D1B717) ; 2 uses
  %i.et = select fast <16 x i1> %i.es, <16 x float> %i.dl, <16 x float> %11
  %i.eu = fsub fast <16 x float> splat (float -5.000000e-01), %i.di
  %i.ev = fmul fast <16 x float> %i.dh, %i.eu
  %i.ew = fsub fast <16 x float> %i.ev, %i.dg
  %i.ex = fsub fast <16 x float> splat (float 1.000000e+00), %i.dg ; 2 uses
  %12 = fcmp fast ole <16 x float> %i.ex, zeroinitializer
  %i.ey = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> splat (float f0x00800000), i32 4)
  %i.ez = bitcast <16 x float> %i.ey to <16 x i32> ; 2 uses
  %i.fa = lshr <16 x i32> %i.ez, splat (i32 23)
  %i.fb = and <16 x i32> %i.ez, splat (i32 -2139095041)
  %i.fc = or disjoint <16 x i32> %i.fb, splat (i32 1056964608)
  %i.fd = bitcast <16 x i32> %i.fc to <16 x float> ; 3 uses
  %i.fe = add nsw <16 x i32> %i.fa, splat (i32 -127)
  %i.ff = sitofp fast <16 x i32> %i.fe to <16 x float> ; 2 uses
  %i.fg = fadd fast <16 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = fcmp fast olt <16 x float> %i.fd, splat (float f0x3F3504F3) ; 2 uses
  %i.fi = fadd fast <16 x float> %i.fd, splat (float -1.000000e+00)
  %i.fj = select fast <16 x i1> %i.fh, <16 x float> %i.ff, <16 x float> %i.fg ; 2 uses
  %i.fk = select fast <16 x i1> %i.fh, <16 x float> %i.fd, <16 x float> zeroinitializer
  %i.fl = fadd fast <16 x float> %i.fi, %i.fk     ; 12 uses
  %i.fm = fmul fast <16 x float> %i.fl, %i.fl     ; 2 uses
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0x3DEF251A))
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0xBDFE5D4F))
  %i.fq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fp, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0x3E11E9BF))
  %i.fr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fq, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0xBE2AAE50))
  %i.fs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0x3E4CCEAC))
  %i.ft = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0xBE7FFFFC))
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> splat (float f0x3EAAAAAA))
  %i.fv = fmul fast <16 x float> %i.fm, %i.fl
  %i.fw = fmul fast <16 x float> %i.fv, %i.fu
  %i.fx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fw)
  %i.fy = fneg fast <16 x float> %i.fm
  %i.fz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fy, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fx)
  %i.ga = fadd fast <16 x float> %i.fz, %i.fl
  %i.gb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ga)
  %13 = select <16 x i1> %12, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.gb
  %i.gc = select fast <16 x i1> %i.es, <16 x float> %i.ew, <16 x float> %13
  %i.gd = fsub fast <16 x float> %i.et, %i.gc
  %i.ge = fmul fast <16 x float> %i.gd, splat (float 5.000000e-01)
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.ge, ptr align 1 %.027.lcssa, <16 x i1> %i.df)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gf = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gg = sext i32 %i.gf to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gg
  br i1 %.not.not, label %.noexc, label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not52 = icmp sgt i32 %i.k, %i.j
  br i1 %.not52, label %._crit_edge54, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.dn, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !170
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !170
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !170
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.049 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %.noexc ]
  %.02748 = phi ptr [ %i.bn, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02748, align 1, !tbaa !41 ; 6 uses
  %i.y = fmul fast <16 x float> %i.x, %i.x
  %i.z = fmul fast <16 x float> %i.x, splat (float f0x3EAAAAAB)
  %i.aa = fadd fast <16 x float> %i.z, splat (float -5.000000e-01)
  %i.ab = fmul fast <16 x float> %i.y, %i.aa
  %i.ac = fadd fast <16 x float> %i.ab, %i.x
  %i.ad = fadd fast <16 x float> %i.x, splat (float 1.000000e+00) ; 2 uses
  %i.ae = fcmp fast ole <16 x float> %i.ad, zeroinitializer
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x00800000), i32 4)
  %i.ag = bitcast <16 x float> %i.af to <16 x i32> ; 2 uses
  %i.ah = lshr <16 x i32> %i.ag, splat (i32 23)
  %i.ai = and <16 x i32> %i.ag, splat (i32 -2139095041)
  %i.aj = or disjoint <16 x i32> %i.ai, splat (i32 1056964608)
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float> ; 3 uses
  %i.al = add nsw <16 x i32> %i.ah, splat (i32 -127)
  %i.am = sitofp fast <16 x i32> %i.al to <16 x float> ; 2 uses
  %i.an = fadd fast <16 x float> %i.am, splat (float 1.000000e+00)
  %i.ao = fcmp fast olt <16 x float> %i.ak, splat (float f0x3F3504F3) ; 2 uses
  %i.ap = fadd fast <16 x float> %i.ak, splat (float -1.000000e+00)
  %i.aq = select fast <16 x i1> %i.ao, <16 x float> %i.am, <16 x float> %i.an ; 2 uses
  %i.ar = select fast <16 x i1> %i.ao, <16 x float> %i.ak, <16 x float> zeroinitializer
  %i.as = fadd fast <16 x float> %i.ap, %i.ar     ; 12 uses
  %i.at = fmul fast <16 x float> %i.as, %i.as     ; 2 uses
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3DEF251A))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0xBDFE5D4F))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3E11E9BF))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0xBE2AAE50))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3E4CCEAC))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0xBE7FFFFC))
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ba, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3EAAAAAA))
  %i.bc = fmul fast <16 x float> %i.at, %i.as
  %i.bd = fmul fast <16 x float> %i.bc, %i.bb
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bd)
  %i.bf = fneg fast <16 x float> %i.at
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bf, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.be)
  %i.bh = fadd fast <16 x float> %i.bg, %i.as
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bh)
  %i.bj = select <16 x i1> %i.ae, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bi
  %i.bk = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x)
  %i.bl = fcmp fast olt <16 x float> %i.bk, splat (float f0x38D1B717)
  %i.bm = select fast <16 x i1> %i.bl, <16 x float> %i.ac, <16 x float> %i.bj
  store <16 x float> %i.bm, ptr %.02748, align 1, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %.02748, i64 64 ; 2 uses
  %i.bo = add nuw nsw i32 %.049, 16               ; 3 uses
  %i.bp = or disjoint i32 %i.bo, 15
  %i.bq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bn, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bo, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.bq, %.lr.ph ] ; 2 uses
  %i.bs = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bt = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bt
  %i.bu = trunc i32 %notmask to i16
  %i.bv = xor i16 %i.bu, -1
  %i.bw = bitcast i16 %i.bv to <16 x i1>          ; 2 uses
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.bw, <16 x float> zeroinitializer) ; 6 uses
  %i.by = fmul fast <16 x float> %i.bx, %i.bx
  %i.bz = fmul fast <16 x float> %i.bx, splat (float f0x3EAAAAAB)
  %i.ca = fadd fast <16 x float> %i.bz, splat (float -5.000000e-01)
  %i.cb = fmul fast <16 x float> %i.by, %i.ca
  %i.cc = fadd fast <16 x float> %i.cb, %i.bx
  %i.cd = fadd fast <16 x float> %i.bx, splat (float 1.000000e+00) ; 2 uses
  %i.ce = fcmp fast ole <16 x float> %i.cd, zeroinitializer
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x00800000), i32 4)
  %i.cg = bitcast <16 x float> %i.cf to <16 x i32> ; 2 uses
  %i.ch = lshr <16 x i32> %i.cg, splat (i32 23)
  %i.ci = and <16 x i32> %i.cg, splat (i32 -2139095041)
  %i.cj = or disjoint <16 x i32> %i.ci, splat (i32 1056964608)
  %i.ck = bitcast <16 x i32> %i.cj to <16 x float> ; 3 uses
  %i.cl = add nsw <16 x i32> %i.ch, splat (i32 -127)
  %i.cm = sitofp fast <16 x i32> %i.cl to <16 x float> ; 2 uses
  %i.cn = fadd fast <16 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = fcmp fast olt <16 x float> %i.ck, splat (float f0x3F3504F3) ; 2 uses
  %i.cp = fadd fast <16 x float> %i.ck, splat (float -1.000000e+00)
  %i.cq = select fast <16 x i1> %i.co, <16 x float> %i.cm, <16 x float> %i.cn ; 2 uses
  %i.cr = select fast <16 x i1> %i.co, <16 x float> %i.ck, <16 x float> zeroinitializer
  %i.cs = fadd fast <16 x float> %i.cp, %i.cr     ; 12 uses
  %i.ct = fmul fast <16 x float> %i.cs, %i.cs     ; 2 uses
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0x3DEF251A))
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0xBDFE5D4F))
  %i.cx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cw, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0x3E11E9BF))
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cx, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0xBE2AAE50))
  %i.cz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0x3E4CCEAC))
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0xBE7FFFFC))
  %i.db = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.da, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> splat (float f0x3EAAAAAA))
  %i.dc = fmul fast <16 x float> %i.ct, %i.cs
  %i.dd = fmul fast <16 x float> %i.dc, %i.db
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dd)
  %i.df = fneg fast <16 x float> %i.ct
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.df, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.de)
  %i.dh = fadd fast <16 x float> %i.dg, %i.cs
  %i.di = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dh)
  %i.dj = select <16 x i1> %i.ce, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.di
  %i.dk = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bx)
  %i.dl = fcmp fast olt <16 x float> %i.dk, splat (float f0x38D1B717)
  %i.dm = select fast <16 x i1> %i.dl, <16 x float> %i.cc, <16 x float> %i.dj
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.dm, ptr align 1 %.027.lcssa, <16 x i1> %i.bw)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.dn = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.do = sext i32 %i.dn to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.do
  br i1 %.not.not, label %.noexc, label %._crit_edge54

._crit_edge54:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
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
  %i.az = shufflevector <16 x i16> %i.ay, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.ba = shufflevector <16 x i16> %i.ay, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
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
  %i.dd = trunc nuw <32 x i32> %i.cz to <32 x i16>
  %i.de = trunc nuw <32 x i32> %i.da to <32 x i16>
  %i.df = trunc nuw <32 x i32> %i.db to <32 x i16>
  %i.dg = trunc nuw <32 x i32> %i.dc to <32 x i16>
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
  %n.vec83 = and i64 %i.bv, 8589934576            ; 4 uses
  %i.di = trunc i64 %n.vec83 to i32
  %i.dj = add i32 %.1, %i.di
  %i.dk = shl nuw nsw i64 %n.vec83, 1
  %i.dl = getelementptr i8, ptr %.034.lcssa, i64 %i.dk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 2 uses
  %i.dm = shl i64 %index84, 1
  %next.gep85 = getelementptr i8, ptr %.034.lcssa, i64 %i.dm ; 2 uses
  %wide.load86 = load <16 x i16>, ptr %next.gep85, align 2, !tbaa !46
  %i.dn = zext <16 x i16> %wide.load86 to <16 x i32>
  %i.do = shl nuw <16 x i32> %i.dn, splat (i32 16)
  %i.dp = bitcast <16 x i32> %i.do to <16 x float> ; 2 uses
  %i.dq = fmul fast <16 x float> %i.dp, %i.dp
  %i.dr = bitcast <16 x float> %i.dq to <16 x i32>
  %i.ds = lshr <16 x i32> %i.dr, splat (i32 16)
  %i.dt = trunc nuw <16 x i32> %i.ds to <16 x i16>
  store <16 x i16> %i.dt, ptr %next.gep85, align 2, !tbaa !46
  %index.next87 = add nuw i64 %index84, 16        ; 2 uses
  %i.du = icmp eq i64 %index.next87, %n.vec83
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !203

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %i.bv, %n.vec83
  br i1 %cmp.n88, label %._crit_edge60, label %.lr.ph59.preheader

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
  %i.ec = trunc nuw i32 %i.eb to i16
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
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
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
  %i.az = shufflevector <16 x i16> %i.ay, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.ba = shufflevector <16 x i16> %i.ay, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
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
  %n.vec80 = and i64 %i.bv, 8589934588            ; 4 uses
  %i.ck = trunc i64 %n.vec80 to i32
  %i.cl = add i32 %.1, %i.ck
  %i.cm = shl nuw nsw i64 %n.vec80, 1
  %i.cn = getelementptr i8, ptr %.034.lcssa, i64 %i.cm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.257 = phi i32 [ %i.dg, %.lr.ph59 ], [ %.257.ph, %.lr.ph59.preheader ]
  %.13556 = phi ptr [ %i.df, %.lr.ph59 ], [ %.13556.ph, %.lr.ph59.preheader ] ; 3 uses
  %i.cx = load i16, ptr %.13556, align 2, !tbaa !46
  %i.cy = zext i16 %i.cx to i32
  %i.cz = shl nuw i32 %i.cy, 16
  %i.da = bitcast i32 %i.cz to float
  %i.db = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.da)
  %i.dc = bitcast float %i.db to i32
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw i32 %i.dd to i16
  store i16 %i.de, ptr %.13556, align 2, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %.13556, i64 2
  %i.dg = add nuw nsw i32 %.257, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, %i.bq
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !211

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
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not74 = icmp sgt i32 %i.k, %i.j
  br i1 %.not74, label %._crit_edge76, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge73
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.by, %._crit_edge73 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge73 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !219
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !219
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !219
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.066 = phi i32 [ %i.as, %.lr.ph ], [ 0, %.noexc ]
  %.03465 = phi ptr [ %i.ar, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03465, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 2 uses
  %i.af = shufflevector <16 x float> %i.ae, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = shufflevector <16 x float> %i.ae, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.af)
  %i.ai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.ag)
  %i.aj = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = bitcast <16 x float> %i.aj to <16 x i32>
  %i.al = lshr <16 x i32> %i.ak, splat (i32 16)   ; 2 uses
  %i.am = shufflevector <16 x i32> %i.al, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.an = shufflevector <16 x i32> %i.al, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.am, <8 x i32> %i.an)
  %i.ap = bitcast <16 x i16> %i.ao to <4 x i64>
  %i.aq = shufflevector <4 x i64> %i.ap, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aq, ptr %.03465, align 1, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %.03465, i64 32 ; 2 uses
  %i.as = add nuw nsw i32 %.066, 16               ; 3 uses
  %i.at = or disjoint i32 %i.as, 15
  %i.au = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !215

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.aw = phi i32 [ %i.o, %.noexc ], [ %i.au, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ar, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.as, %.lr.ph ] ; 3 uses
  %i.ax = icmp slt i32 %.0.lcssa, %i.aw
  br i1 %i.ax, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ay = sub nuw nsw i32 %i.aw, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.ay
  %i.az = trunc i32 %notmask to i16
  %i.ba = xor i16 %i.az, -1
  %i.bb = bitcast i16 %i.ba to <16 x i1>          ; 2 uses
  %i.bc = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bb, <16 x i16> zeroinitializer) ; 2 uses
  %i.bd = shufflevector <16 x i16> %i.bc, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.be = shufflevector <16 x i16> %i.bc, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.bf = shufflevector <16 x i16> %i.bd, <16 x i16> %i.be, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bg = shufflevector <16 x i16> %i.bd, <16 x i16> %i.be, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bh = bitcast <16 x i16> %i.bf to <8 x i32>
  %i.bi = bitcast <16 x i16> %i.bg to <8 x i32>
  %i.bj = shufflevector <8 x i32> %i.bh, <8 x i32> %i.bi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = bitcast <16 x i32> %i.bj to <16 x float> ; 2 uses
  %i.bl = shufflevector <16 x float> %i.bk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = shufflevector <16 x float> %i.bk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.bm)
  %i.bp = shufflevector <8 x float> %i.bn, <8 x float> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = bitcast <16 x float> %i.bp to <16 x i32>
  %i.br = lshr <16 x i32> %i.bq, splat (i32 16)   ; 2 uses
  %i.bs = shufflevector <16 x i32> %i.br, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = shufflevector <16 x i32> %i.br, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bs, <8 x i32> %i.bt)
  %i.bv = bitcast <16 x i16> %i.bu to <4 x i64>
  %i.bw = shufflevector <4 x i64> %i.bv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bx = bitcast <4 x i64> %i.bw to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bx, ptr align 1 %.034.lcssa, <16 x i1> %i.bb)
  %.pre81 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.by = phi i32 [ %.pre81, %bb.c ], [ %i.aw, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.aw, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.bz = icmp slt i32 %.1, %i.by
  br i1 %i.bz, label %iter.check, label %._crit_edge73

iter.check:                                       ; preds = %bb.d
  %i.ca = xor i32 %.1, -1
  %i.cb = add i32 %i.by, %i.ca                    ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cb, 3
  br i1 %min.iters.check, label %.lr.ph72.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i32 %i.cb, 31
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ce = and i64 %i.cd, 28
  %n.vec = and i64 %i.cd, 8589934560              ; 5 uses
  %i.cf = trunc i64 %n.vec to i32
  %i.cg = add i32 %.1, %i.cf
  %i.ch = shl nuw nsw i64 %n.vec, 1
  %i.ci = getelementptr i8, ptr %.034.lcssa, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.cj ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %i.ck = zext <32 x i16> %wide.load to <32 x i32>
  %i.cl = shl nuw <32 x i32> %i.ck, splat (i32 16)
  %i.cm = bitcast <32 x i32> %i.cl to <32 x float>
  %i.cn = call fast <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.cm)
  %i.co = fdiv fast <32 x float> splat (float 1.000000e+00), %i.cn
  %i.cp = bitcast <32 x float> %i.co to <32 x i32>
  %i.cq = lshr <32 x i32> %i.cp, splat (i32 16)
  %i.cr = trunc nuw <32 x i32> %i.cq to <32 x i16>
  store <32 x i16> %i.cr, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %.lr.ph72.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.cd, 8589934588            ; 4 uses
  %i.ct = trunc i64 %n.vec93 to i32
  %i.cu = add i32 %.1, %i.ct
  %i.cv = shl nuw nsw i64 %n.vec93, 1
  %i.cw = getelementptr i8, ptr %.034.lcssa, i64 %i.cv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 2 uses
  %i.cx = shl i64 %index94, 1
  %next.gep95 = getelementptr i8, ptr %.034.lcssa, i64 %i.cx ; 2 uses
  %wide.load96 = load <4 x i16>, ptr %next.gep95, align 2, !tbaa !46
  %i.cy = zext <4 x i16> %wide.load96 to <4 x i32>
  %i.cz = shl nuw <4 x i32> %i.cy, splat (i32 16)
  %i.da = bitcast <4 x i32> %i.cz to <4 x float>
  %i.db = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.da)
  %i.dc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.db
  %i.dd = bitcast <4 x float> %i.dc to <4 x i32>
  %i.de = lshr <4 x i32> %i.dd, splat (i32 16)
  %i.df = trunc nuw <4 x i32> %i.de to <4 x i16>
  store <4 x i16> %i.df, ptr %next.gep95, align 2, !tbaa !46
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !217

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.cd, %n.vec93
  br i1 %cmp.n98, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.270.ph = phi i32 [ %.1, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  %.13569.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cw, %vec.epilog.middle.block ]
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %.270 = phi i32 [ %i.dr, %.lr.ph72 ], [ %.270.ph, %.lr.ph72.preheader ]
  %.13569 = phi ptr [ %i.dq, %.lr.ph72 ], [ %.13569.ph, %.lr.ph72.preheader ] ; 3 uses
  %i.dh = load i16, ptr %.13569, align 2, !tbaa !46
  %i.di = zext i16 %i.dh to i32
  %i.dj = shl nuw i32 %i.di, 16
  %i.dk = bitcast i32 %i.dj to float
  %i.dl = call fast float @llvm.sqrt.f32(float %i.dk)
  %i.dm = fdiv fast float 1.000000e+00, %i.dl
  %i.dn = bitcast float %i.dm to i32
  %i.do = lshr i32 %i.dn, 16
  %i.dp = trunc nuw i32 %i.do to i16
  store i16 %i.dp, ptr %.13569, align 2, !tbaa !46
  %i.dq = getelementptr inbounds nuw i8, ptr %.13569, i64 2
  %i.dr = add nuw nsw i32 %.270, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, %i.by
  br i1 %exitcond.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !218

._crit_edge73:                                    ; preds = %.lr.ph72, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !37
  %i.dt = sext i32 %i.ds to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dt
  br i1 %.not.not, label %.noexc, label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge73, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge69, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge66
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.di, %._crit_edge66 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge66 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !226
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !226
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !226
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.059 = phi i32 [ %i.bk, %.lr.ph ], [ 0, %.noexc ]
  %.03458 = phi ptr [ %i.bj, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03458, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float>
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ai = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ah, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aj = fcmp fast ogt <16 x float> %i.ai, %i.ah
  %i.ak = fadd fast <16 x float> %i.ai, splat (float -1.000000e+00)
  %i.al = select fast <16 x i1> %i.aj, <16 x float> %i.ak, <16 x float> %i.ai ; 2 uses
  %i.am = fneg fast <16 x float> %i.al            ; 2 uses
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ag)
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.an) ; 8 uses
  %i.ap = fmul fast <16 x float> %i.ao, %i.ao
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3C088908))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3D2AA9C1))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3E2AAAAA))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float 5.000000e-01))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.ao)
  %i.aw = fadd fast <16 x float> %i.av, splat (float 1.000000e+00)
  %i.ax = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.al, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ay = shl <16 x i32> %i.ax, splat (i32 23)
  %i.az = add <16 x i32> %i.ay, splat (i32 1065353216)
  %i.ba = bitcast <16 x i32> %i.az to <16 x float>
  %i.bb = fmul fast <16 x float> %i.aw, %i.ba
  %i.bc = bitcast <16 x float> %i.bb to <16 x i32>
  %i.bd = lshr <16 x i32> %i.bc, splat (i32 16)   ; 2 uses
  %i.be = shufflevector <16 x i32> %i.bd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = shufflevector <16 x i32> %i.bd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.be, <8 x i32> %i.bf)
  %i.bh = bitcast <16 x i16> %i.bg to <4 x i64>
  %i.bi = shufflevector <4 x i64> %i.bh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bi, ptr %.03458, align 1, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.03458, i64 32 ; 2 uses
  %i.bk = add nuw nsw i32 %.059, 16               ; 3 uses
  %i.bl = or disjoint i32 %i.bk, 15
  %i.bm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bo = phi i32 [ %i.o, %.noexc ], [ %i.bm, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bj, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bk, %.lr.ph ] ; 3 uses
  %i.bp = icmp slt i32 %.0.lcssa, %i.bo
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bq = sub nuw nsw i32 %i.bo, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bq
  %i.br = trunc i32 %notmask to i16
  %i.bs = xor i16 %i.br, -1
  %i.bt = bitcast i16 %i.bs to <16 x i1>          ; 2 uses
  %i.bu = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bt, <16 x i16> zeroinitializer) ; 2 uses
  %i.bv = shufflevector <16 x i16> %i.bu, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.bw = shufflevector <16 x i16> %i.bu, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.bx = shufflevector <16 x i16> %i.bv, <16 x i16> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.by = shufflevector <16 x i16> %i.bv, <16 x i16> %i.bw, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bz = bitcast <16 x i16> %i.bx to <8 x i32>
  %i.ca = bitcast <16 x i16> %i.by to <8 x i32>
  %i.cb = shufflevector <8 x i32> %i.bz, <8 x i32> %i.ca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = bitcast <16 x i32> %i.cb to <16 x float>
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cg = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cf, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ch = fcmp fast ogt <16 x float> %i.cg, %i.cf
  %i.ci = fadd fast <16 x float> %i.cg, splat (float -1.000000e+00)
  %i.cj = select fast <16 x i1> %i.ch, <16 x float> %i.ci, <16 x float> %i.cg ; 2 uses
  %i.ck = fneg fast <16 x float> %i.cj            ; 2 uses
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ck, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ce)
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ck, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cl) ; 8 uses
  %i.cn = fmul fast <16 x float> %i.cm, %i.cm
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cm, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.co, <16 x float> nofpclass(nan inf) %i.cm, <16 x float> splat (float f0x3C088908))
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.cm, <16 x float> splat (float f0x3D2AA9C1))
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.cm, <16 x float> splat (float f0x3E2AAAAA))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.cm, <16 x float> splat (float 5.000000e-01))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.cm)
  %i.cu = fadd fast <16 x float> %i.ct, splat (float 1.000000e+00)
  %i.cv = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cw = shl <16 x i32> %i.cv, splat (i32 23)
  %i.cx = add <16 x i32> %i.cw, splat (i32 1065353216)
  %i.cy = bitcast <16 x i32> %i.cx to <16 x float>
  %i.cz = fmul fast <16 x float> %i.cu, %i.cy
  %i.da = bitcast <16 x float> %i.cz to <16 x i32>
  %i.db = lshr <16 x i32> %i.da, splat (i32 16)   ; 2 uses
  %i.dc = shufflevector <16 x i32> %i.db, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dd = shufflevector <16 x i32> %i.db, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.de = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dc, <8 x i32> %i.dd)
  %i.df = bitcast <16 x i16> %i.de to <4 x i64>
  %i.dg = shufflevector <4 x i64> %i.df, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dh = bitcast <4 x i64> %i.dg to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.dh, ptr align 1 %.034.lcssa, <16 x i1> %i.bt)
  %.pre74 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.di = phi i32 [ %.pre74, %bb.c ], [ %i.bo, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bo, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.dj = icmp slt i32 %.1, %i.di
  br i1 %i.dj, label %iter.check, label %._crit_edge66

iter.check:                                       ; preds = %bb.d
  %i.dk = xor i32 %.1, -1
  %i.dl = add i32 %i.di, %i.dk                    ; 3 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dl, 7
  br i1 %min.iters.check, label %.lr.ph65.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %i.dl, 31
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.do = and i64 %i.dn, 24
  %n.vec = and i64 %i.dn, 8589934560              ; 5 uses
  %i.dp = trunc i64 %n.vec to i32
  %i.dq = add i32 %.1, %i.dp
  %i.dr = shl nuw nsw i64 %n.vec, 1
  %i.ds = getelementptr i8, ptr %.034.lcssa, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.dt ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %i.du = zext <32 x i16> %wide.load to <32 x i32>
  %i.dv = shl nuw <32 x i32> %i.du, splat (i32 16)
  %i.dw = bitcast <32 x i32> %i.dv to <32 x float>
  %i.dx = call fast <32 x float> @llvm.exp.v32f32(<32 x float> %i.dw)
  %i.dy = bitcast <32 x float> %i.dx to <32 x i32>
  %i.dz = lshr <32 x i32> %i.dy, splat (i32 16)
  %i.ea = trunc nuw <32 x i32> %i.dz to <32 x i16>
  store <32 x i16> %i.ea, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check, label %.lr.ph65.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.dn, 8589934584            ; 4 uses
  %i.ec = trunc i64 %n.vec86 to i32
  %i.ed = add i32 %.1, %i.ec
  %i.ee = shl nuw nsw i64 %n.vec86, 1
  %i.ef = getelementptr i8, ptr %.034.lcssa, i64 %i.ee
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.eg = shl i64 %index87, 1
  %next.gep88 = getelementptr i8, ptr %.034.lcssa, i64 %i.eg ; 2 uses
  %wide.load89 = load <8 x i16>, ptr %next.gep88, align 2, !tbaa !46
  %i.eh = zext <8 x i16> %wide.load89 to <8 x i32>
  %i.ei = shl nuw <8 x i32> %i.eh, splat (i32 16)
  %i.ej = bitcast <8 x i32> %i.ei to <8 x float>
  %i.ek = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ej)
  %i.el = bitcast <8 x float> %i.ek to <8 x i32>
  %i.em = lshr <8 x i32> %i.el, splat (i32 16)
  %i.en = trunc nuw <8 x i32> %i.em to <8 x i16>
  store <8 x i16> %i.en, ptr %next.gep88, align 2, !tbaa !46
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.eo = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.dn, %n.vec86
  br i1 %cmp.n91, label %._crit_edge66, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.263.ph = phi i32 [ %.1, %iter.check ], [ %i.dq, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  %.13562.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %.263 = phi i32 [ %i.ey, %.lr.ph65 ], [ %.263.ph, %.lr.ph65.preheader ]
  %.13562 = phi ptr [ %i.ex, %.lr.ph65 ], [ %.13562.ph, %.lr.ph65.preheader ] ; 3 uses
  %i.ep = load i16, ptr %.13562, align 2, !tbaa !46
  %i.eq = zext i16 %i.ep to i32
  %i.er = shl nuw i32 %i.eq, 16
  %i.es = bitcast i32 %i.er to float
  %i.et = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.es)
  %i.eu = bitcast float %i.et to i32
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = trunc nuw i32 %i.ev to i16
  store i16 %i.ew, ptr %.13562, align 2, !tbaa !46
  %i.ex = getelementptr inbounds nuw i8, ptr %.13562, i64 2
  %i.ey = add nuw nsw i32 %.263, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ey, %i.di
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !225

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !37
  %i.fa = sext i32 %i.ez to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fa
  br i1 %.not.not, label %.noexc, label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge66, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge69, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not64 = icmp sgt i32 %i.k, %i.j
  br i1 %.not64, label %._crit_edge66, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge63
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ea, %._crit_edge63 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge63 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !233
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !233
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !233
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.056 = phi i32 [ %i.bt, %.lr.ph ], [ 0, %.noexc ]
  %.03455 = phi ptr [ %i.bs, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03455, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 2 uses
  %i.af = fcmp fast ole <16 x float> %i.ae, zeroinitializer
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0x00800000), i32 4)
  %i.ah = bitcast <16 x float> %i.ag to <16 x i32> ; 2 uses
  %i.ai = lshr <16 x i32> %i.ah, splat (i32 23)
  %i.aj = and <16 x i32> %i.ah, splat (i32 -2139095041)
  %i.ak = or disjoint <16 x i32> %i.aj, splat (i32 1056964608)
  %i.al = bitcast <16 x i32> %i.ak to <16 x float> ; 3 uses
  %i.am = add nsw <16 x i32> %i.ai, splat (i32 -127)
  %i.an = sitofp fast <16 x i32> %i.am to <16 x float> ; 2 uses
  %i.ao = fadd fast <16 x float> %i.an, splat (float 1.000000e+00)
  %i.ap = fcmp fast olt <16 x float> %i.al, splat (float f0x3F3504F3) ; 2 uses
  %i.aq = fadd fast <16 x float> %i.al, splat (float -1.000000e+00)
  %i.ar = select fast <16 x i1> %i.ap, <16 x float> %i.an, <16 x float> %i.ao ; 2 uses
  %i.as = select fast <16 x i1> %i.ap, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.at = fadd fast <16 x float> %i.aq, %i.as     ; 12 uses
  %i.au = fmul fast <16 x float> %i.at, %i.at     ; 2 uses
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0x3DEF251A))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0xBDFE5D4F))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0x3E11E9BF))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0xBE2AAE50))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0x3E4CCEAC))
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ba, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0xBE7FFFFC))
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bb, <16 x float> nofpclass(nan inf) %i.at, <16 x float> splat (float f0x3EAAAAAA))
  %i.bd = fmul fast <16 x float> %i.au, %i.at
  %i.be = fmul fast <16 x float> %i.bd, %i.bc
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.be)
  %i.bg = fneg fast <16 x float> %i.au
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bg, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bf)
  %i.bi = fadd fast <16 x float> %i.bh, %i.at
  %i.bj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bi)
  %i.bk = bitcast <16 x float> %i.bj to <16 x i32>
  %i.bl = lshr <16 x i32> %i.bk, splat (i32 16)
  %i.bm = select <16 x i1> %i.af, <16 x i32> splat (i32 65535), <16 x i32> %i.bl ; 2 uses
  %i.bn = shufflevector <16 x i32> %i.bm, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = shufflevector <16 x i32> %i.bm, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bp = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bn, <8 x i32> %i.bo)
  %i.bq = bitcast <16 x i16> %i.bp to <4 x i64>
  %i.br = shufflevector <4 x i64> %i.bq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.br, ptr %.03455, align 1, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.03455, i64 32 ; 2 uses
  %i.bt = add nuw nsw i32 %.056, 16               ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 15
  %i.bv = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !229

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bx = phi i32 [ %i.o, %.noexc ], [ %i.bv, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bs, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bt, %.lr.ph ] ; 3 uses
  %i.by = icmp slt i32 %.0.lcssa, %i.bx
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bz = sub nuw nsw i32 %i.bx, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bz
  %i.ca = trunc i32 %notmask to i16
  %i.cb = xor i16 %i.ca, -1
  %i.cc = bitcast i16 %i.cb to <16 x i1>          ; 2 uses
  %i.cd = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.cc, <16 x i16> zeroinitializer) ; 2 uses
  %i.ce = shufflevector <16 x i16> %i.cd, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.cf = shufflevector <16 x i16> %i.cd, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.cg = shufflevector <16 x i16> %i.ce, <16 x i16> %i.cf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ch = shufflevector <16 x i16> %i.ce, <16 x i16> %i.cf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ci = bitcast <16 x i16> %i.cg to <8 x i32>
  %i.cj = bitcast <16 x i16> %i.ch to <8 x i32>
  %i.ck = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cl = bitcast <16 x i32> %i.ck to <16 x float> ; 2 uses
  %i.cm = fcmp fast ole <16 x float> %i.cl, zeroinitializer
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cl, <16 x float> splat (float f0x00800000), i32 4)
  %i.co = bitcast <16 x float> %i.cn to <16 x i32> ; 2 uses
  %i.cp = lshr <16 x i32> %i.co, splat (i32 23)
  %i.cq = and <16 x i32> %i.co, splat (i32 -2139095041)
  %i.cr = or disjoint <16 x i32> %i.cq, splat (i32 1056964608)
  %i.cs = bitcast <16 x i32> %i.cr to <16 x float> ; 3 uses
  %i.ct = add nsw <16 x i32> %i.cp, splat (i32 -127)
  %i.cu = sitofp fast <16 x i32> %i.ct to <16 x float> ; 2 uses
  %i.cv = fadd fast <16 x float> %i.cu, splat (float 1.000000e+00)
  %i.cw = fcmp fast olt <16 x float> %i.cs, splat (float f0x3F3504F3) ; 2 uses
  %i.cx = fadd fast <16 x float> %i.cs, splat (float -1.000000e+00)
  %i.cy = select fast <16 x i1> %i.cw, <16 x float> %i.cu, <16 x float> %i.cv ; 2 uses
  %i.cz = select fast <16 x i1> %i.cw, <16 x float> %i.cs, <16 x float> zeroinitializer
  %i.da = fadd fast <16 x float> %i.cx, %i.cz     ; 12 uses
  %i.db = fmul fast <16 x float> %i.da, %i.da     ; 2 uses
  %i.dc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dc, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x3DEF251A))
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0xBDFE5D4F))
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.de, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x3E11E9BF))
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.df, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0xBE2AAE50))
  %i.dh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dg, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x3E4CCEAC))
  %i.di = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dh, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0xBE7FFFFC))
  %i.dj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.di, <16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x3EAAAAAA))
  %i.dk = fmul fast <16 x float> %i.db, %i.da
  %i.dl = fmul fast <16 x float> %i.dk, %i.dj
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dl)
  %i.dn = fneg fast <16 x float> %i.db
  %i.do = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dn, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.dm)
  %i.dp = fadd fast <16 x float> %i.do, %i.da
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dp)
  %i.dr = bitcast <16 x float> %i.dq to <16 x i32>
  %i.ds = lshr <16 x i32> %i.dr, splat (i32 16)
  %i.dt = select <16 x i1> %i.cm, <16 x i32> splat (i32 65535), <16 x i32> %i.ds ; 2 uses
  %i.du = shufflevector <16 x i32> %i.dt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dv = shufflevector <16 x i32> %i.dt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dw = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.du, <8 x i32> %i.dv)
  %i.dx = bitcast <16 x i16> %i.dw to <4 x i64>
  %i.dy = shufflevector <4 x i64> %i.dx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dz = bitcast <4 x i64> %i.dy to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.dz, ptr align 1 %.034.lcssa, <16 x i1> %i.cc)
  %.pre71 = load i32, ptr %4, align 4, !tbaa !37
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
  %.not66 = icmp sgt i32 %i.k, %i.j
  br i1 %.not66, label %._crit_edge68, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge65
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dq, %._crit_edge65 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge65 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !268
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !268
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !268
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.058 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %.noexc ]
  %.03457 = phi ptr [ %i.bn, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03457, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float>
  %i.af = and <16 x i32> %i.ad, splat (i32 -2147483648) ; 2 uses
  %i.ag = and <16 x i32> %i.ad, splat (i32 2147418112)
  %i.ah = bitcast <16 x i32> %i.ag to <16 x float> ; 3 uses
  %i.ai = fcmp fast ole <16 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = fmul fast <16 x float> %i.ah, splat (float 5.000000e-01)
  %i.ak = fsub fast <16 x float> splat (float 5.000000e-01), %i.aj
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ak)
  %i.am = select fast <16 x i1> %i.ai, <16 x float> %i.ah, <16 x float> %i.al ; 3 uses
  %i.an = fmul fast <16 x float> %i.am, %i.am     ; 3 uses
  %i.ao = fmul fast <16 x float> %i.an, %i.an     ; 4 uses
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3E2AAAF8))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float 1.000000e+00))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.as)
  %i.au = fmul fast <16 x float> %i.at, %i.am     ; 2 uses
  %i.av = bitcast <16 x float> %i.au to <16 x i32>
  %i.aw = or <16 x i32> %i.af, %i.av
  %i.ax = bitcast <16 x i32> %i.aw to <16 x float>
  %i.ay = fsub fast <16 x float> splat (float f0x3FC90FDB), %i.ax
  %i.az = fcmp fast olt <16 x float> %i.ae, zeroinitializer
  %i.ba = select fast <16 x i1> %i.az, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %factor56 = fmul fast <16 x float> %i.au, splat (float 2.000000e+00)
  %i.bb = bitcast <16 x float> %factor56 to <16 x i32>
  %i.bc = or <16 x i32> %i.af, %i.bb
  %i.bd = bitcast <16 x i32> %i.bc to <16 x float>
  %i.be = fadd fast <16 x float> %i.ba, %i.bd
  %i.bf = select fast <16 x i1> %i.ai, <16 x float> %i.ay, <16 x float> %i.be
  %i.bg = bitcast <16 x float> %i.bf to <16 x i32>
  %i.bh = lshr <16 x i32> %i.bg, splat (i32 16)   ; 2 uses
  %i.bi = shufflevector <16 x i32> %i.bh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = shufflevector <16 x i32> %i.bh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bi, <8 x i32> %i.bj)
  %i.bl = bitcast <16 x i16> %i.bk to <4 x i64>
  %i.bm = shufflevector <4 x i64> %i.bl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bm, ptr %.03457, align 1, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %.03457, i64 32 ; 2 uses
  %i.bo = add nuw nsw i32 %.058, 16               ; 3 uses
  %i.bp = or disjoint i32 %i.bo, 15
  %i.bq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !264

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bs = phi i32 [ %i.o, %.noexc ], [ %i.bq, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bn, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bo, %.lr.ph ] ; 3 uses
  %i.bt = icmp slt i32 %.0.lcssa, %i.bs
  br i1 %i.bt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bu = sub nuw nsw i32 %i.bs, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bu
  %i.bv = trunc i32 %notmask to i16
  %i.bw = xor i16 %i.bv, -1
  %i.bx = bitcast i16 %i.bw to <16 x i1>          ; 2 uses
  %i.by = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bx, <16 x i16> zeroinitializer) ; 2 uses
  %i.bz = shufflevector <16 x i16> %i.by, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.ca = shufflevector <16 x i16> %i.by, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.cb = shufflevector <16 x i16> %i.bz, <16 x i16> %i.ca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cc = shufflevector <16 x i16> %i.bz, <16 x i16> %i.ca, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cd = bitcast <16 x i16> %i.cb to <8 x i32>
  %i.ce = bitcast <16 x i16> %i.cc to <8 x i32>
  %i.cf = shufflevector <8 x i32> %i.cd, <8 x i32> %i.ce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.cg = bitcast <16 x i32> %i.cf to <16 x float>
  %i.ch = and <16 x i32> %i.cf, splat (i32 -2147483648) ; 2 uses
  %i.ci = and <16 x i32> %i.cf, splat (i32 2147418112)
  %i.cj = bitcast <16 x i32> %i.ci to <16 x float> ; 3 uses
  %i.ck = fcmp fast ole <16 x float> %i.cj, splat (float 5.000000e-01) ; 2 uses
  %i.cl = fmul fast <16 x float> %i.cj, splat (float 5.000000e-01)
  %i.cm = fsub fast <16 x float> splat (float 5.000000e-01), %i.cl
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.cm)
  %i.co = select fast <16 x i1> %i.ck, <16 x float> %i.cj, <16 x float> %i.cn ; 3 uses
  %i.cp = fmul fast <16 x float> %i.co, %i.co     ; 3 uses
  %i.cq = fmul fast <16 x float> %i.cp, %i.cp     ; 4 uses
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float f0x3E2AAAF8))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float 1.000000e+00))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.cu)
  %i.cw = fmul fast <16 x float> %i.cv, %i.co     ; 2 uses
  %i.cx = bitcast <16 x float> %i.cw to <16 x i32>
  %i.cy = or <16 x i32> %i.ch, %i.cx
  %i.cz = bitcast <16 x i32> %i.cy to <16 x float>
  %i.da = fsub fast <16 x float> splat (float f0x3FC90FDB), %i.cz
  %i.db = fcmp fast olt <16 x float> %i.cg, zeroinitializer
  %i.dc = select fast <16 x i1> %i.db, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %factor = fmul fast <16 x float> %i.cw, splat (float 2.000000e+00)
  %i.dd = bitcast <16 x float> %factor to <16 x i32>
  %i.de = or <16 x i32> %i.ch, %i.dd
  %i.df = bitcast <16 x i32> %i.de to <16 x float>
  %i.dg = fadd fast <16 x float> %i.dc, %i.df
  %i.dh = select fast <16 x i1> %i.ck, <16 x float> %i.da, <16 x float> %i.dg
  %i.di = bitcast <16 x float> %i.dh to <16 x i32>
  %i.dj = lshr <16 x i32> %i.di, splat (i32 16)   ; 2 uses
  %i.dk = shufflevector <16 x i32> %i.dj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <16 x i32> %i.dj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dk, <8 x i32> %i.dl)
  %i.dn = bitcast <16 x i16> %i.dm to <4 x i64>
  %i.do = shufflevector <4 x i64> %i.dn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dp = bitcast <4 x i64> %i.do to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.dp, ptr align 1 %.034.lcssa, <16 x i1> %i.bx)
  %.pre73 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.dq = phi i32 [ %.pre73, %bb.c ], [ %i.bs, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bs, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.dr = icmp slt i32 %.1, %i.dq
  br i1 %i.dr, label %iter.check, label %._crit_edge65

iter.check:                                       ; preds = %bb.d
  %i.ds = xor i32 %.1, -1
  %i.dt = add i32 %i.dq, %i.ds                    ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %i.du, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dt, 7
  br i1 %min.iters.check, label %.lr.ph64.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check84 = icmp ult i32 %i.dt, 31
  br i1 %min.iters.check84, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.dv, 24
  %n.vec = and i64 %i.dv, 8589934560              ; 5 uses
  %i.dx = trunc i64 %n.vec to i32
  %i.dy = add i32 %.1, %i.dx
  %i.dz = shl nuw nsw i64 %n.vec, 1
  %i.ea = getelementptr i8, ptr %.034.lcssa, i64 %i.dz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.eb ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %i.ec = zext <32 x i16> %wide.load to <32 x i32>
  %i.ed = shl nuw <32 x i32> %i.ec, splat (i32 16)
  %i.ee = bitcast <32 x i32> %i.ed to <32 x float>
  %i.ef = call fast <32 x float> @llvm.acos.v32f32(<32 x float> %i.ee)
  %i.eg = bitcast <32 x float> %i.ef to <32 x i32>
  %i.eh = lshr <32 x i32> %i.eg, splat (i32 16)
  %i.ei = trunc nuw <32 x i32> %i.eh to <32 x i16>
  store <32 x i16> %i.ei, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %._crit_edge65, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph64.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.dv, 8589934584            ; 4 uses
  %i.ek = trunc i64 %n.vec85 to i32
  %i.el = add i32 %.1, %i.ek
  %i.em = shl nuw nsw i64 %n.vec85, 1
  %i.en = getelementptr i8, ptr %.034.lcssa, i64 %i.em
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.eo = shl i64 %index86, 1
  %next.gep87 = getelementptr i8, ptr %.034.lcssa, i64 %i.eo ; 2 uses
  %wide.load88 = load <8 x i16>, ptr %next.gep87, align 2, !tbaa !46
  %i.ep = zext <8 x i16> %wide.load88 to <8 x i32>
  %i.eq = shl nuw <8 x i32> %i.ep, splat (i32 16)
  %i.er = bitcast <8 x i32> %i.eq to <8 x float>
  %i.es = call fast <8 x float> @llvm.acos.v8f32(<8 x float> %i.er)
  %i.et = bitcast <8 x float> %i.es to <8 x i32>
  %i.eu = lshr <8 x i32> %i.et, splat (i32 16)
  %i.ev = trunc nuw <8 x i32> %i.eu to <8 x i16>
  store <8 x i16> %i.ev, ptr %next.gep87, align 2, !tbaa !46
  %index.next89 = add nuw i64 %index86, 8         ; 2 uses
  %i.ew = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.dv, %n.vec85
  br i1 %cmp.n90, label %._crit_edge65, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.262.ph = phi i32 [ %.1, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  %.13561.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ea, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.lr.ph64
  %.262 = phi i32 [ %i.fg, %.lr.ph64 ], [ %.262.ph, %.lr.ph64.preheader ]
  %.13561 = phi ptr [ %i.ff, %.lr.ph64 ], [ %.13561.ph, %.lr.ph64.preheader ] ; 3 uses
  %i.ex = load i16, ptr %.13561, align 2, !tbaa !46
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = bitcast i32 %i.ez to float
  %i.fb = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.fa)
  %i.fc = bitcast float %i.fb to i32
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = trunc nuw i32 %i.fd to i16
  store i16 %i.fe, ptr %.13561, align 2, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %.13561, i64 2
  %i.fg = add nuw nsw i32 %.262, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fg, %i.dq
  br i1 %exitcond.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !267

._crit_edge65:                                    ; preds = %.lr.ph64, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fh = load i32, ptr %i.b, align 4, !tbaa !37
  %i.fi = sext i32 %i.fh to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fi
  br i1 %.not.not, label %.noexc, label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge65, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge68, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not63 = icmp sgt i32 %i.k, %i.j
  br i1 %.not63, label %._crit_edge65, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge62
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dc, %._crit_edge62 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge62 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !275
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !275
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !275
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.055 = phi i32 [ %i.bh, %.lr.ph ], [ 0, %.noexc ]
  %.03454 = phi ptr [ %i.bg, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03454, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = and <16 x i32> %i.ad, splat (i32 -2147483648)
  %i.af = and <16 x i32> %i.ad, splat (i32 2147418112)
  %i.ag = bitcast <16 x i32> %i.af to <16 x float> ; 3 uses
  %i.ah = fcmp fast ogt <16 x float> %i.ag, splat (float 1.000000e+00) ; 2 uses
  %i.ai = select fast <16 x i1> %i.ah, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ag
  %i.aj = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ag, <16 x float> splat (float 1.000000e+00))
  %i.ak = fdiv fast <16 x float> %i.ai, %i.aj     ; 3 uses
  %i.al = fmul fast <16 x float> %i.ak, %i.ak     ; 3 uses
  %i.am = fmul fast <16 x float> %i.al, %i.al     ; 7 uses
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.an, <16 x float> splat (float f0xBE117200))
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0xBEAAAA53))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3DD9ED24))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E4CB974))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float 1.000000e+00))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.at)
  %i.av = fmul fast <16 x float> %i.au, %i.ak
  %i.aw = select fast <16 x i1> %i.ah, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ax = fadd fast <16 x float> %i.av, %i.aw
  %i.ay = bitcast <16 x float> %i.ax to <16 x i32>
  %i.az = or <16 x i32> %i.ae, %i.ay
  %i.ba = lshr <16 x i32> %i.az, splat (i32 16)   ; 2 uses
  %i.bb = shufflevector <16 x i32> %i.ba, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bc = shufflevector <16 x i32> %i.ba, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bb, <8 x i32> %i.bc)
  %i.be = bitcast <16 x i16> %i.bd to <4 x i64>
  %i.bf = shufflevector <4 x i64> %i.be, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bf, ptr %.03454, align 1, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %.03454, i64 32 ; 2 uses
  %i.bh = add nuw nsw i32 %.055, 16               ; 3 uses
  %i.bi = or disjoint i32 %i.bh, 15
  %i.bj = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !271

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bl = phi i32 [ %i.o, %.noexc ], [ %i.bj, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bg, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bh, %.lr.ph ] ; 3 uses
  %i.bm = icmp slt i32 %.0.lcssa, %i.bl
  br i1 %i.bm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bn = sub nuw nsw i32 %i.bl, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bn
  %i.bo = trunc i32 %notmask to i16
  %i.bp = xor i16 %i.bo, -1
  %i.bq = bitcast i16 %i.bp to <16 x i1>          ; 2 uses
  %i.br = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bq, <16 x i16> zeroinitializer) ; 2 uses
  %i.bs = shufflevector <16 x i16> %i.br, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.bt = shufflevector <16 x i16> %i.br, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.bu = shufflevector <16 x i16> %i.bs, <16 x i16> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bv = shufflevector <16 x i16> %i.bs, <16 x i16> %i.bt, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bw = bitcast <16 x i16> %i.bu to <8 x i32>
  %i.bx = bitcast <16 x i16> %i.bv to <8 x i32>
  %i.by = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bz = and <16 x i32> %i.by, splat (i32 -2147483648)
  %i.ca = and <16 x i32> %i.by, splat (i32 2147418112)
  %i.cb = bitcast <16 x i32> %i.ca to <16 x float> ; 3 uses
  %i.cc = fcmp fast ogt <16 x float> %i.cb, splat (float 1.000000e+00) ; 2 uses
  %i.cd = select fast <16 x i1> %i.cc, <16 x float> splat (float -1.000000e+00), <16 x float> %i.cb
  %i.ce = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.cb, <16 x float> splat (float 1.000000e+00))
  %i.cf = fdiv fast <16 x float> %i.cd, %i.ce     ; 3 uses
  %i.cg = fmul fast <16 x float> %i.cf, %i.cf     ; 3 uses
  %i.ch = fmul fast <16 x float> %i.cg, %i.cg     ; 7 uses
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.ci, <16 x float> splat (float f0xBE117200))
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cj, <16 x float> splat (float f0xBEAAAA53))
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cl, <16 x float> splat (float f0x3DD9ED24))
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cm, <16 x float> splat (float f0x3E4CB974))
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cn, <16 x float> splat (float 1.000000e+00))
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> nofpclass(nan inf) %i.co)
  %i.cq = fmul fast <16 x float> %i.cp, %i.cf
  %i.cr = select fast <16 x i1> %i.cc, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.cs = fadd fast <16 x float> %i.cq, %i.cr
  %i.ct = bitcast <16 x float> %i.cs to <16 x i32>
  %i.cu = or <16 x i32> %i.bz, %i.ct
  %i.cv = lshr <16 x i32> %i.cu, splat (i32 16)   ; 2 uses
  %i.cw = shufflevector <16 x i32> %i.cv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <16 x i32> %i.cv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cy = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cw, <8 x i32> %i.cx)
  %i.cz = bitcast <16 x i16> %i.cy to <4 x i64>
  %i.da = shufflevector <4 x i64> %i.cz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.db = bitcast <4 x i64> %i.da to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.db, ptr align 1 %.034.lcssa, <16 x i1> %i.bq)
  %.pre70 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.dc = phi i32 [ %.pre70, %bb.c ], [ %i.bl, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bl, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.dd = icmp slt i32 %.1, %i.dc
  br i1 %i.dd, label %iter.check, label %._crit_edge62

iter.check:                                       ; preds = %bb.d
  %i.de = xor i32 %.1, -1
  %i.df = add i32 %i.dc, %i.de                    ; 3 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.df, 7
  br i1 %min.iters.check, label %.lr.ph61.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check81 = icmp ult i32 %i.df, 31
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.di = and i64 %i.dh, 24
  %n.vec = and i64 %i.dh, 8589934560              ; 5 uses
  %i.dj = trunc i64 %n.vec to i32
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.060 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.noexc ]
  %.03459 = phi ptr [ %i.cj, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03459, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ai = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ah, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aj = fcmp fast ogt <16 x float> %i.ai, %i.ah
  %i.ak = fadd fast <16 x float> %i.ai, splat (float -1.000000e+00)
  %i.al = select fast <16 x i1> %i.aj, <16 x float> %i.ak, <16 x float> %i.ai ; 2 uses
  %i.am = fneg fast <16 x float> %i.al            ; 2 uses
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ag)
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.an) ; 8 uses
  %i.ap = fmul fast <16 x float> %i.ao, %i.ao
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3C088908))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3D2AA9C1))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3E2AAAAA))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float 5.000000e-01))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.ao)
  %i.aw = fadd fast <16 x float> %i.av, splat (float 1.000000e+00)
  %i.ax = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.al, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ay = shl <16 x i32> %i.ax, splat (i32 23)
  %i.az = add <16 x i32> %i.ay, splat (i32 1065353216)
  %i.ba = bitcast <16 x i32> %i.az to <16 x float>
  %i.bb = fmul fast <16 x float> %i.aw, %i.ba
  %i.bc = fneg fast <16 x float> %i.ae
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.be, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bg = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bf, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bh = fcmp fast ogt <16 x float> %i.bg, %i.bf
  %i.bi = fadd fast <16 x float> %i.bg, splat (float -1.000000e+00)
  %i.bj = select fast <16 x i1> %i.bh, <16 x float> %i.bi, <16 x float> %i.bg ; 2 uses
  %i.bk = fneg fast <16 x float> %i.bj            ; 2 uses
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.be)
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bl) ; 8 uses
  %i.bn = fmul fast <16 x float> %i.bm, %i.bm
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3C088908))
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3D2AA9C1))
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3E2AAAAA))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float 5.000000e-01))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.bm)
  %i.bu = fadd fast <16 x float> %i.bt, splat (float 1.000000e+00)
  %i.bv = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bw = shl <16 x i32> %i.bv, splat (i32 23)
  %i.bx = add <16 x i32> %i.bw, splat (i32 1065353216)
  %i.by = bitcast <16 x i32> %i.bx to <16 x float>
  %i.bz = fmul fast <16 x float> %i.bu, %i.by
  %i.ca = fadd fast <16 x float> %i.bz, %i.bb
  %i.cb = fmul fast <16 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = bitcast <16 x float> %i.cb to <16 x i32>
  %i.cd = lshr <16 x i32> %i.cc, splat (i32 16)   ; 2 uses
  %i.ce = shufflevector <16 x i32> %i.cd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = shufflevector <16 x i32> %i.cd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ce, <8 x i32> %i.cf)
  %i.ch = bitcast <16 x i16> %i.cg to <4 x i64>
  %i.ci = shufflevector <4 x i64> %i.ch, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ci, ptr %.03459, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.03459, i64 32 ; 2 uses
  %i.ck = add nuw nsw i32 %.060, 16               ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 15
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !337

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.co = phi i32 [ %i.o, %.noexc ], [ %i.cm, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cj, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ck, %.lr.ph ] ; 3 uses
  %i.cp = icmp slt i32 %.0.lcssa, %i.co
  br i1 %i.cp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cq = sub nuw nsw i32 %i.co, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cq
  %i.cr = trunc i32 %notmask to i16
  %i.cs = xor i16 %i.cr, -1
  %i.ct = bitcast i16 %i.cs to <16 x i1>          ; 2 uses
  %i.cu = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ct, <16 x i16> zeroinitializer) ; 2 uses
  %i.cv = shufflevector <16 x i16> %i.cu, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.cw = shufflevector <16 x i16> %i.cu, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.cx = shufflevector <16 x i16> %i.cv, <16 x i16> %i.cw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cy = shufflevector <16 x i16> %i.cv, <16 x i16> %i.cw, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cz = bitcast <16 x i16> %i.cx to <8 x i32>
  %i.da = bitcast <16 x i16> %i.cy to <8 x i32>
  %i.db = shufflevector <8 x i32> %i.cz, <8 x i32> %i.da, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dc = bitcast <16 x i32> %i.db to <16 x float> ; 2 uses
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.dc, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.de, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dg = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.df, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dh = fcmp fast ogt <16 x float> %i.dg, %i.df
  %i.di = fadd fast <16 x float> %i.dg, splat (float -1.000000e+00)
  %i.dj = select fast <16 x i1> %i.dh, <16 x float> %i.di, <16 x float> %i.dg ; 2 uses
  %i.dk = fneg fast <16 x float> %i.dj            ; 2 uses
  %i.dl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.de)
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dl) ; 8 uses
  %i.dn = fmul fast <16 x float> %i.dm, %i.dm
  %i.do = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dm, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> splat (float f0x3C088908))
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> splat (float f0x3D2AA9C1))
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> splat (float f0x3E2AAAAA))
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> splat (float 5.000000e-01))
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> nofpclass(nan inf) %i.dm)
  %i.du = fadd fast <16 x float> %i.dt, splat (float 1.000000e+00)
  %i.dv = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dw = shl <16 x i32> %i.dv, splat (i32 23)
  %i.dx = add <16 x i32> %i.dw, splat (i32 1065353216)
  %i.dy = bitcast <16 x i32> %i.dx to <16 x float>
  %i.dz = fmul fast <16 x float> %i.du, %i.dy
  %i.ea = fneg fast <16 x float> %i.dc
  %i.eb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ee = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ed, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ef = fcmp fast ogt <16 x float> %i.ee, %i.ed
  %i.eg = fadd fast <16 x float> %i.ee, splat (float -1.000000e+00)
  %i.eh = select fast <16 x i1> %i.ef, <16 x float> %i.eg, <16 x float> %i.ee ; 2 uses
  %i.ei = fneg fast <16 x float> %i.eh            ; 2 uses
  %i.ej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ei, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ec)
  %i.ek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ei, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ej) ; 8 uses
  %i.el = fmul fast <16 x float> %i.ek, %i.ek
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x3C088908))
  %i.eo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.en, <16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x3D2AA9C1))
  %i.ep = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eo, <16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x3E2AAAAA))
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ep, <16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float 5.000000e-01))
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.el, <16 x float> nofpclass(nan inf) %i.ek)
  %i.es = fadd fast <16 x float> %i.er, splat (float 1.000000e+00)
  %i.et = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.eh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eu = shl <16 x i32> %i.et, splat (i32 23)
  %i.ev = add <16 x i32> %i.eu, splat (i32 1065353216)
  %i.ew = bitcast <16 x i32> %i.ev to <16 x float>
  %i.ex = fmul fast <16 x float> %i.es, %i.ew
  %i.ey = fadd fast <16 x float> %i.ex, %i.dz
  %i.ez = fmul fast <16 x float> %i.ey, splat (float 5.000000e-01)
  %i.fa = bitcast <16 x float> %i.ez to <16 x i32>
  %i.fb = lshr <16 x i32> %i.fa, splat (i32 16)   ; 2 uses
  %i.fc = shufflevector <16 x i32> %i.fb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = shufflevector <16 x i32> %i.fb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.fc, <8 x i32> %i.fd)
  %i.ff = bitcast <16 x i16> %i.fe to <4 x i64>
  %i.fg = shufflevector <4 x i64> %i.ff, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.fh = bitcast <4 x i64> %i.fg to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.fh, ptr align 1 %.034.lcssa, <16 x i1> %i.ct)
  %.pre75 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.fi = phi i32 [ %.pre75, %bb.c ], [ %i.co, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.co, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.fj = icmp slt i32 %.1, %i.fi
  br i1 %i.fj, label %iter.check, label %._crit_edge67

iter.check:                                       ; preds = %bb.d
  %i.fk = xor i32 %.1, -1
  %i.fl = add i32 %i.fi, %i.fk                    ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fl, 7
  br i1 %min.iters.check, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %i.fl, 31
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %i.fn, 24
  %n.vec = and i64 %i.fn, 8589934560              ; 5 uses
  %i.fp = trunc i64 %n.vec to i32
  %i.fq = add i32 %.1, %i.fp
  %i.fr = shl nuw nsw i64 %n.vec, 1
  %i.fs = getelementptr i8, ptr %.034.lcssa, i64 %i.fr
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ft = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.ft ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %i.fu = zext <32 x i16> %wide.load to <32 x i32>
  %i.fv = shl nuw <32 x i32> %i.fu, splat (i32 16)
  %i.fw = bitcast <32 x i32> %i.fv to <32 x float>
  %i.fx = call fast <32 x float> @llvm.cosh.v32f32(<32 x float> %i.fw)
  %i.fy = bitcast <32 x float> %i.fx to <32 x i32>
  %i.fz = lshr <32 x i32> %i.fy, splat (i32 16)
  %i.ga = trunc nuw <32 x i32> %i.fz to <32 x i16>
  store <32 x i16> %i.ga, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fn, %n.vec
  br i1 %cmp.n, label %._crit_edge67, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.fn, 8589934584            ; 4 uses
  %i.gc = trunc i64 %n.vec87 to i32
  %i.gd = add i32 %.1, %i.gc
  %i.ge = shl nuw nsw i64 %n.vec87, 1
  %i.gf = getelementptr i8, ptr %.034.lcssa, i64 %i.ge
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.gg = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.034.lcssa, i64 %i.gg ; 2 uses
  %wide.load90 = load <8 x i16>, ptr %next.gep89, align 2, !tbaa !46
  %i.gh = zext <8 x i16> %wide.load90 to <8 x i32>
  %i.gi = shl nuw <8 x i32> %i.gh, splat (i32 16)
  %i.gj = bitcast <8 x i32> %i.gi to <8 x float>
  %i.gk = call fast <8 x float> @llvm.cosh.v8f32(<8 x float> %i.gj)
  %i.gl = bitcast <8 x float> %i.gk to <8 x i32>
  %i.gm = lshr <8 x i32> %i.gl, splat (i32 16)
  %i.gn = trunc nuw <8 x i32> %i.gm to <8 x i16>
  store <8 x i16> %i.gn, ptr %next.gep89, align 2, !tbaa !46
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.go = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.go, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !339

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.fn, %n.vec87
  br i1 %cmp.n92, label %._crit_edge67, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.264.ph = phi i32 [ %.1, %iter.check ], [ %i.fq, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ]
  %.13563.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.fs, %vec.epilog.iter.check ], [ %i.gf, %vec.epilog.middle.block ]
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.lr.ph66
  %.264 = phi i32 [ %i.gy, %.lr.ph66 ], [ %.264.ph, %.lr.ph66.preheader ]
  %.13563 = phi ptr [ %i.gx, %.lr.ph66 ], [ %.13563.ph, %.lr.ph66.preheader ] ; 3 uses
  %i.gp = load i16, ptr %.13563, align 2, !tbaa !46
  %i.gq = zext i16 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 16
  %i.gs = bitcast i32 %i.gr to float
  %i.gt = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.gs)
  %i.gu = bitcast float %i.gt to i32
  %i.gv = lshr i32 %i.gu, 16
  %i.gw = trunc nuw i32 %i.gv to i16
  store i16 %i.gw, ptr %.13563, align 2, !tbaa !46
  %i.gx = getelementptr inbounds nuw i8, ptr %.13563, i64 2
  %i.gy = add nuw nsw i32 %.264, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %i.fi
  br i1 %exitcond.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !340

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gz = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ha = sext i32 %i.gz to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ha
  br i1 %.not.not, label %.noexc, label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge67, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge70, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cosh.f32(float) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge74, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge71
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.gy, %._crit_edge71 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge71 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !346
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !346
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !346
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.064 = phi i32 [ %i.df, %.lr.ph ], [ 0, %.noexc ]
  %.03463 = phi ptr [ %i.de, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03463, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 5 uses
  %i.af = fadd fast <16 x float> %i.ae, splat (float -1.000000e+00)
  %i.ag = fadd fast <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = fmul fast <16 x float> %i.af, %i.ag
  %i.ai = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.ah)
  %i.aj = fadd fast <16 x float> %i.ai, %i.ae     ; 2 uses
  %i.ak = fcmp fast ole <16 x float> %i.aj, zeroinitializer
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> splat (float f0x00800000), i32 4)
  %i.am = bitcast <16 x float> %i.al to <16 x i32> ; 2 uses
  %i.an = lshr <16 x i32> %i.am, splat (i32 23)
  %i.ao = and <16 x i32> %i.am, splat (i32 -2139095041)
  %i.ap = or disjoint <16 x i32> %i.ao, splat (i32 1056964608)
  %i.aq = bitcast <16 x i32> %i.ap to <16 x float> ; 3 uses
  %i.ar = add nsw <16 x i32> %i.an, splat (i32 -127)
  %i.as = sitofp fast <16 x i32> %i.ar to <16 x float> ; 2 uses
  %i.at = fadd fast <16 x float> %i.as, splat (float 1.000000e+00)
  %i.au = fcmp fast olt <16 x float> %i.aq, splat (float f0x3F3504F3) ; 2 uses
  %i.av = fadd fast <16 x float> %i.aq, splat (float -1.000000e+00)
  %i.aw = select fast <16 x i1> %i.au, <16 x float> %i.as, <16 x float> %i.at ; 2 uses
  %i.ax = select fast <16 x i1> %i.au, <16 x float> %i.aq, <16 x float> zeroinitializer
  %i.ay = fadd fast <16 x float> %i.av, %i.ax     ; 12 uses
  %i.az = fmul fast <16 x float> %i.ay, %i.ay     ; 2 uses
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ba, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3DEF251A))
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bb, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0xBDFE5D4F))
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3E11E9BF))
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0xBE2AAE50))
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3E4CCEAC))
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0xBE7FFFFC))
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3EAAAAAA))
  %i.bi = fmul fast <16 x float> %i.az, %i.ay
  %i.bj = fmul fast <16 x float> %i.bi, %i.bh
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bj)
  %i.bl = fneg fast <16 x float> %i.az
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bk)
  %i.bn = fadd fast <16 x float> %i.bm, %i.ay
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bn)
  %i.bp = select <16 x i1> %i.ak, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bo
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0x00800000), i32 4)
  %i.br = bitcast <16 x float> %i.bq to <16 x i32> ; 2 uses
  %i.bs = lshr <16 x i32> %i.br, splat (i32 23)
  %i.bt = and <16 x i32> %i.br, splat (i32 -2139095041)
  %i.bu = or disjoint <16 x i32> %i.bt, splat (i32 1056964608)
  %i.bv = bitcast <16 x i32> %i.bu to <16 x float> ; 3 uses
  %i.bw = add nsw <16 x i32> %i.bs, splat (i32 -127)
  %i.bx = sitofp fast <16 x i32> %i.bw to <16 x float> ; 2 uses
  %i.by = fadd fast <16 x float> %i.bx, splat (float 1.000000e+00)
  %i.bz = fcmp fast olt <16 x float> %i.bv, splat (float f0x3F3504F3) ; 2 uses
  %i.ca = fadd fast <16 x float> %i.bv, splat (float -1.000000e+00)
  %i.cb = select fast <16 x i1> %i.bz, <16 x float> %i.bx, <16 x float> %i.by ; 2 uses
  %i.cc = select fast <16 x i1> %i.bz, <16 x float> %i.bv, <16 x float> zeroinitializer
  %i.cd = fadd fast <16 x float> %i.ca, %i.cc     ; 12 uses
  %i.ce = fmul fast <16 x float> %i.cd, %i.cd     ; 2 uses
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3DEF251A))
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0xBDFE5D4F))
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3E11E9BF))
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0xBE2AAE50))
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3E4CCEAC))
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0xBE7FFFFC))
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cl, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3EAAAAAA))
  %i.cn = fmul fast <16 x float> %i.ce, %i.cd
  %i.co = fmul fast <16 x float> %i.cn, %i.cm
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.co)
  %i.cq = fneg fast <16 x float> %i.ce
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cq, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.cp)
  %i.cs = fadd fast <16 x float> %i.cr, %i.cd
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cs)
  %i.cu = fadd fast <16 x float> %i.ct, splat (float f0x3F317218)
  %i.cv = fcmp fast ogt <16 x float> %i.ae, splat (float f0x5F0AC723)
  %i.cw = select fast <16 x i1> %i.cv, <16 x float> %i.cu, <16 x float> %i.bp
  %i.cx = bitcast <16 x float> %i.cw to <16 x i32>
  %i.cy = lshr <16 x i32> %i.cx, splat (i32 16)   ; 2 uses
  %i.cz = shufflevector <16 x i32> %i.cy, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = shufflevector <16 x i32> %i.cy, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.db = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cz, <8 x i32> %i.da)
  %i.dc = bitcast <16 x i16> %i.db to <4 x i64>
  %i.dd = shufflevector <4 x i64> %i.dc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.dd, ptr %.03463, align 1, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %.03463, i64 32 ; 2 uses
  %i.df = add nuw nsw i32 %.064, 16               ; 3 uses
  %i.dg = or disjoint i32 %i.df, 15
  %i.dh = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge, !llvm.loop !344

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.dj = phi i32 [ %i.o, %.noexc ], [ %i.dh, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.de, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.df, %.lr.ph ] ; 3 uses
  %i.dk = icmp slt i32 %.0.lcssa, %i.dj
  br i1 %i.dk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.dl = sub nuw nsw i32 %i.dj, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.dl
  %i.dm = trunc i32 %notmask to i16
  %i.dn = xor i16 %i.dm, -1
  %i.do = bitcast i16 %i.dn to <16 x i1>          ; 2 uses
  %i.dp = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.do, <16 x i16> zeroinitializer) ; 2 uses
  %i.dq = shufflevector <16 x i16> %i.dp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.dr = shufflevector <16 x i16> %i.dp, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ds = shufflevector <16 x i16> %i.dq, <16 x i16> %i.dr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dt = shufflevector <16 x i16> %i.dq, <16 x i16> %i.dr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.du = bitcast <16 x i16> %i.ds to <8 x i32>
  %i.dv = bitcast <16 x i16> %i.dt to <8 x i32>
  %i.dw = shufflevector <8 x i32> %i.du, <8 x i32> %i.dv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dx = bitcast <16 x i32> %i.dw to <16 x float> ; 5 uses
  %i.dy = fadd fast <16 x float> %i.dx, splat (float -1.000000e+00)
  %i.dz = fadd fast <16 x float> %i.dx, splat (float 1.000000e+00)
  %i.ea = fmul fast <16 x float> %i.dy, %i.dz
  %i.eb = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.ea)
  %i.ec = fadd fast <16 x float> %i.eb, %i.dx     ; 2 uses
  %i.ed = fcmp fast ole <16 x float> %i.ec, zeroinitializer
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x00800000), i32 4)
  %i.ef = bitcast <16 x float> %i.ee to <16 x i32> ; 2 uses
  %i.eg = lshr <16 x i32> %i.ef, splat (i32 23)
  %i.eh = and <16 x i32> %i.ef, splat (i32 -2139095041)
  %i.ei = or disjoint <16 x i32> %i.eh, splat (i32 1056964608)
  %i.ej = bitcast <16 x i32> %i.ei to <16 x float> ; 3 uses
  %i.ek = add nsw <16 x i32> %i.eg, splat (i32 -127)
  %i.el = sitofp fast <16 x i32> %i.ek to <16 x float> ; 2 uses
  %i.em = fadd fast <16 x float> %i.el, splat (float 1.000000e+00)
  %i.en = fcmp fast olt <16 x float> %i.ej, splat (float f0x3F3504F3) ; 2 uses
  %i.eo = fadd fast <16 x float> %i.ej, splat (float -1.000000e+00)
  %i.ep = select fast <16 x i1> %i.en, <16 x float> %i.el, <16 x float> %i.em ; 2 uses
  %i.eq = select fast <16 x i1> %i.en, <16 x float> %i.ej, <16 x float> zeroinitializer
  %i.er = fadd fast <16 x float> %i.eo, %i.eq     ; 12 uses
  %i.es = fmul fast <16 x float> %i.er, %i.er     ; 2 uses
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.et, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0x3DEF251A))
  %i.ev = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0xBDFE5D4F))
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0x3E11E9BF))
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0xBE2AAE50))
  %i.ey = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0x3E4CCEAC))
  %i.ez = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0xBE7FFFFC))
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0x3EAAAAAA))
  %i.fb = fmul fast <16 x float> %i.es, %i.er
  %i.fc = fmul fast <16 x float> %i.fb, %i.fa
  %i.fd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ep, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fc)
  %i.fe = fneg fast <16 x float> %i.es
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fe, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fd)
  %i.fg = fadd fast <16 x float> %i.ff, %i.er
  %i.fh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ep, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fg)
  %i.fi = select <16 x i1> %i.ed, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fh
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dx, <16 x float> splat (float f0x00800000), i32 4)
  %i.fk = bitcast <16 x float> %i.fj to <16 x i32> ; 2 uses
  %i.fl = lshr <16 x i32> %i.fk, splat (i32 23)
  %i.fm = and <16 x i32> %i.fk, splat (i32 -2139095041)
  %i.fn = or disjoint <16 x i32> %i.fm, splat (i32 1056964608)
  %i.fo = bitcast <16 x i32> %i.fn to <16 x float> ; 3 uses
  %i.fp = add nsw <16 x i32> %i.fl, splat (i32 -127)
  %i.fq = sitofp fast <16 x i32> %i.fp to <16 x float> ; 2 uses
  %i.fr = fadd fast <16 x float> %i.fq, splat (float 1.000000e+00)
  %i.fs = fcmp fast olt <16 x float> %i.fo, splat (float f0x3F3504F3) ; 2 uses
  %i.ft = fadd fast <16 x float> %i.fo, splat (float -1.000000e+00)
  %i.fu = select fast <16 x i1> %i.fs, <16 x float> %i.fq, <16 x float> %i.fr ; 2 uses
  %i.fv = select fast <16 x i1> %i.fs, <16 x float> %i.fo, <16 x float> zeroinitializer
  %i.fw = fadd fast <16 x float> %i.ft, %i.fv     ; 12 uses
  %i.fx = fmul fast <16 x float> %i.fw, %i.fw     ; 2 uses
  %i.fy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fy, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3DEF251A))
  %i.ga = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fz, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0xBDFE5D4F))
  %i.gb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ga, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3E11E9BF))
  %i.gc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gb, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0xBE2AAE50))
  %i.gd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gc, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3E4CCEAC))
  %i.ge = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gd, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0xBE7FFFFC))
  %i.gf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ge, <16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3EAAAAAA))
  %i.gg = fmul fast <16 x float> %i.fx, %i.fw
  %i.gh = fmul fast <16 x float> %i.gg, %i.gf
  %i.gi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gh)
  %i.gj = fneg fast <16 x float> %i.fx
  %i.gk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gj, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.gi)
  %i.gl = fadd fast <16 x float> %i.gk, %i.fw
  %i.gm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.gl)
  %i.gn = fadd fast <16 x float> %i.gm, splat (float f0x3F317218)
  %i.go = fcmp fast ogt <16 x float> %i.dx, splat (float f0x5F0AC723)
  %i.gp = select fast <16 x i1> %i.go, <16 x float> %i.gn, <16 x float> %i.fi
  %i.gq = bitcast <16 x float> %i.gp to <16 x i32>
  %i.gr = lshr <16 x i32> %i.gq, splat (i32 16)   ; 2 uses
  %i.gs = shufflevector <16 x i32> %i.gr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gt = shufflevector <16 x i32> %i.gr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gu = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gs, <8 x i32> %i.gt)
  %i.gv = bitcast <16 x i16> %i.gu to <4 x i64>
  %i.gw = shufflevector <4 x i64> %i.gv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gx = bitcast <4 x i64> %i.gw to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gx, ptr align 1 %.034.lcssa, <16 x i1> %i.do)
  %.pre79 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gy = phi i32 [ %.pre79, %bb.c ], [ %i.dj, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.dj, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.gz = icmp slt i32 %.1, %i.gy
  br i1 %i.gz, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %bb.d, %.lr.ph70
  %.268 = phi i32 [ %i.hj, %.lr.ph70 ], [ %.1, %bb.d ]
  %.13567 = phi ptr [ %i.hi, %.lr.ph70 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.ha = load i16, ptr %.13567, align 2, !tbaa !46
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw i32 %i.hb, 16
  %i.hd = bitcast i32 %i.hc to float
  %i.he = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.hd) #22
  %i.hf = bitcast float %i.he to i32
  %i.hg = lshr i32 %i.hf, 16
  %i.hh = trunc nuw i32 %i.hg to i16
  store i16 %i.hh, ptr %.13567, align 2, !tbaa !46
  %i.hi = getelementptr inbounds nuw i8, ptr %.13567, i64 2
  %i.hj = add nuw nsw i32 %.268, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hj, %i.gy
  br i1 %exitcond.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !345

._crit_edge71:                                    ; preds = %.lr.ph70, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hk = load i32, ptr %i.b, align 4, !tbaa !37
  %i.hl = sext i32 %i.hk to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hl
  br i1 %.not.not, label %.noexc, label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge71, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge74, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf)) local_unnamed_addr #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not93 = icmp sgt i32 %i.k, %i.j
  br i1 %.not93, label %._crit_edge95, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge92
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.hq, %._crit_edge92 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge92 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !351
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !351
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !351
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.085 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.03484 = phi ptr [ %i.dn, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03484, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 8 uses
  %i.af = fmul fast <16 x float> %i.ae, %i.ae     ; 2 uses
  %i.ag = fmul fast <16 x float> %i.ae, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ah = fadd fast <16 x float> %i.ag, splat (float -5.000000e-01)
  %i.ai = fmul fast <16 x float> %i.af, %i.ah
  %i.aj = fadd fast <16 x float> %i.ai, %i.ae
  %i.ak = fadd fast <16 x float> %i.ae, splat (float 1.000000e+00) ; 2 uses
  %6 = fcmp fast ole <16 x float> %i.ak, zeroinitializer
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0x00800000), i32 4)
  %i.am = bitcast <16 x float> %i.al to <16 x i32> ; 2 uses
  %i.an = lshr <16 x i32> %i.am, splat (i32 23)
  %i.ao = and <16 x i32> %i.am, splat (i32 -2139095041)
  %i.ap = or disjoint <16 x i32> %i.ao, splat (i32 1056964608)
  %i.aq = bitcast <16 x i32> %i.ap to <16 x float> ; 3 uses
  %i.ar = add nsw <16 x i32> %i.an, splat (i32 -127)
  %i.as = sitofp fast <16 x i32> %i.ar to <16 x float> ; 2 uses
  %i.at = fadd fast <16 x float> %i.as, splat (float 1.000000e+00)
  %i.au = fcmp fast olt <16 x float> %i.aq, splat (float f0x3F3504F3) ; 2 uses
  %i.av = fadd fast <16 x float> %i.aq, splat (float -1.000000e+00)
  %i.aw = select fast <16 x i1> %i.au, <16 x float> %i.as, <16 x float> %i.at ; 2 uses
  %i.ax = select fast <16 x i1> %i.au, <16 x float> %i.aq, <16 x float> zeroinitializer
  %i.ay = fadd fast <16 x float> %i.av, %i.ax     ; 12 uses
  %i.az = fmul fast <16 x float> %i.ay, %i.ay     ; 2 uses
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ba, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3DEF251A))
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bb, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0xBDFE5D4F))
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3E11E9BF))
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0xBE2AAE50))
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3E4CCEAC))
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0xBE7FFFFC))
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.ay, <16 x float> splat (float f0x3EAAAAAA))
  %i.bi = fmul fast <16 x float> %i.az, %i.ay
  %i.bj = fmul fast <16 x float> %i.bi, %i.bh
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bj)
  %i.bl = fneg fast <16 x float> %i.az
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bk)
  %i.bn = fadd fast <16 x float> %i.bm, %i.ay
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bn)
  %7 = select <16 x i1> %6, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bo
  %i.bp = and <16 x i32> %i.ad, splat (i32 2147418112)
  %i.bq = bitcast <16 x i32> %i.bp to <16 x float>
  %i.br = fcmp fast olt <16 x float> %i.bq, splat (float f0x38D1B717)
  %i.bs = select fast <16 x i1> %i.br, <16 x float> %i.aj, <16 x float> %7
  %i.bt = fsub fast <16 x float> splat (float -5.000000e-01), %i.ag
  %i.bu = fmul fast <16 x float> %i.af, %i.bt
  %i.bv = fsub fast <16 x float> %i.bu, %i.ae
  %i.bw = fsub fast <16 x float> splat (float 1.000000e+00), %i.ae ; 2 uses
  %8 = fcmp fast ole <16 x float> %i.bw, zeroinitializer
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x00800000), i32 4)
  %i.by = bitcast <16 x float> %i.bx to <16 x i32> ; 2 uses
  %i.bz = lshr <16 x i32> %i.by, splat (i32 23)
  %i.ca = and <16 x i32> %i.by, splat (i32 -2139095041)
  %i.cb = or disjoint <16 x i32> %i.ca, splat (i32 1056964608)
  %i.cc = bitcast <16 x i32> %i.cb to <16 x float> ; 3 uses
  %i.cd = add nsw <16 x i32> %i.bz, splat (i32 -127)
  %i.ce = sitofp fast <16 x i32> %i.cd to <16 x float> ; 2 uses
  %i.cf = fadd fast <16 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = fcmp fast olt <16 x float> %i.cc, splat (float f0x3F3504F3) ; 2 uses
  %i.ch = fadd fast <16 x float> %i.cc, splat (float -1.000000e+00)
  %i.ci = select fast <16 x i1> %i.cg, <16 x float> %i.ce, <16 x float> %i.cf ; 2 uses
  %i.cj = select fast <16 x i1> %i.cg, <16 x float> %i.cc, <16 x float> zeroinitializer
  %i.ck = fadd fast <16 x float> %i.ch, %i.cj     ; 12 uses
  %i.cl = fmul fast <16 x float> %i.ck, %i.ck     ; 2 uses
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cm, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0x3DEF251A))
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0xBDFE5D4F))
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.co, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0x3E11E9BF))
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0xBE2AAE50))
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0x3E4CCEAC))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0xBE7FFFFC))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0x3EAAAAAA))
  %i.cu = fmul fast <16 x float> %i.cl, %i.ck
  %i.cv = fmul fast <16 x float> %i.cu, %i.ct
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cv)
  %i.cx = fneg fast <16 x float> %i.cl
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cx, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.cw)
  %i.cz = fadd fast <16 x float> %i.cy, %i.ck
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cz)
  %9 = select <16 x i1> %8, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.da
  %i.db = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.ae)
  %i.dc = fcmp fast olt <16 x float> %i.db, splat (float f0x38D1B717)
  %i.dd = select fast <16 x i1> %i.dc, <16 x float> %i.bv, <16 x float> %9
  %i.de = fsub fast <16 x float> %i.bs, %i.dd
  %i.df = fmul fast <16 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = bitcast <16 x float> %i.df to <16 x i32>
  %i.dh = lshr <16 x i32> %i.dg, splat (i32 16)   ; 2 uses
  %i.di = shufflevector <16 x i32> %i.dh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = shufflevector <16 x i32> %i.dh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dk = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.di, <8 x i32> %i.dj)
  %i.dl = bitcast <16 x i16> %i.dk to <4 x i64>
  %i.dm = shufflevector <4 x i64> %i.dl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.dm, ptr %.03484, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.03484, i64 32 ; 2 uses
  %i.do = add nuw nsw i32 %.085, 16               ; 3 uses
  %i.dp = or disjoint i32 %i.do, 15
  %i.dq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %._crit_edge, !llvm.loop !349

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.ds = phi i32 [ %i.o, %.noexc ], [ %i.dq, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 3 uses
  %i.dt = icmp slt i32 %.0.lcssa, %i.ds
  br i1 %i.dt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.du = sub nuw nsw i32 %i.ds, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.du
  %i.dv = trunc i32 %notmask to i16
  %i.dw = xor i16 %i.dv, -1
  %i.dx = bitcast i16 %i.dw to <16 x i1>          ; 2 uses
  %i.dy = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.dx, <16 x i16> zeroinitializer) ; 2 uses
  %i.dz = shufflevector <16 x i16> %i.dy, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.ea = shufflevector <16 x i16> %i.dy, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.eb = shufflevector <16 x i16> %i.dz, <16 x i16> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ec = shufflevector <16 x i16> %i.dz, <16 x i16> %i.ea, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ed = bitcast <16 x i16> %i.eb to <8 x i32>
  %i.ee = bitcast <16 x i16> %i.ec to <8 x i32>
  %i.ef = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eg = bitcast <16 x i32> %i.ef to <16 x float> ; 8 uses
  %i.eh = fmul fast <16 x float> %i.eg, %i.eg     ; 2 uses
  %i.ei = fmul fast <16 x float> %i.eg, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ej = fadd fast <16 x float> %i.ei, splat (float -5.000000e-01)
  %i.ek = fmul fast <16 x float> %i.eh, %i.ej
  %i.el = fadd fast <16 x float> %i.ek, %i.eg
  %i.em = fadd fast <16 x float> %i.eg, splat (float 1.000000e+00) ; 2 uses
  %10 = fcmp fast ole <16 x float> %i.em, zeroinitializer
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x00800000), i32 4)
  %i.eo = bitcast <16 x float> %i.en to <16 x i32> ; 2 uses
  %i.ep = lshr <16 x i32> %i.eo, splat (i32 23)
  %i.eq = and <16 x i32> %i.eo, splat (i32 -2139095041)
  %i.er = or disjoint <16 x i32> %i.eq, splat (i32 1056964608)
  %i.es = bitcast <16 x i32> %i.er to <16 x float> ; 3 uses
  %i.et = add nsw <16 x i32> %i.ep, splat (i32 -127)
  %i.eu = sitofp fast <16 x i32> %i.et to <16 x float> ; 2 uses
  %i.ev = fadd fast <16 x float> %i.eu, splat (float 1.000000e+00)
  %i.ew = fcmp fast olt <16 x float> %i.es, splat (float f0x3F3504F3) ; 2 uses
  %i.ex = fadd fast <16 x float> %i.es, splat (float -1.000000e+00)
  %i.ey = select fast <16 x i1> %i.ew, <16 x float> %i.eu, <16 x float> %i.ev ; 2 uses
  %i.ez = select fast <16 x i1> %i.ew, <16 x float> %i.es, <16 x float> zeroinitializer
  %i.fa = fadd fast <16 x float> %i.ex, %i.ez     ; 12 uses
  %i.fb = fmul fast <16 x float> %i.fa, %i.fa     ; 2 uses
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fc, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0x3DEF251A))
  %i.fe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fd, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0xBDFE5D4F))
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0x3E11E9BF))
  %i.fg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ff, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0xBE2AAE50))
  %i.fh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0x3E4CCEAC))
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fh, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0xBE7FFFFC))
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fi, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> splat (float f0x3EAAAAAA))
  %i.fk = fmul fast <16 x float> %i.fb, %i.fa
  %i.fl = fmul fast <16 x float> %i.fk, %i.fj
  %i.fm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fl)
  %i.fn = fneg fast <16 x float> %i.fb
  %i.fo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fn, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fm)
  %i.fp = fadd fast <16 x float> %i.fo, %i.fa
  %i.fq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fp)
  %11 = select <16 x i1> %10, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fq
  %i.fr = and <16 x i32> %i.ef, splat (i32 2147418112)
  %i.fs = bitcast <16 x i32> %i.fr to <16 x float>
  %i.ft = fcmp fast olt <16 x float> %i.fs, splat (float f0x38D1B717)
  %i.fu = select fast <16 x i1> %i.ft, <16 x float> %i.el, <16 x float> %11
  %i.fv = fsub fast <16 x float> splat (float -5.000000e-01), %i.ei
  %i.fw = fmul fast <16 x float> %i.eh, %i.fv
  %i.fx = fsub fast <16 x float> %i.fw, %i.eg
  %i.fy = fsub fast <16 x float> splat (float 1.000000e+00), %i.eg ; 2 uses
  %12 = fcmp fast ole <16 x float> %i.fy, zeroinitializer
  %i.fz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fy, <16 x float> splat (float f0x00800000), i32 4)
  %i.ga = bitcast <16 x float> %i.fz to <16 x i32> ; 2 uses
  %i.gb = lshr <16 x i32> %i.ga, splat (i32 23)
  %i.gc = and <16 x i32> %i.ga, splat (i32 -2139095041)
  %i.gd = or disjoint <16 x i32> %i.gc, splat (i32 1056964608)
  %i.ge = bitcast <16 x i32> %i.gd to <16 x float> ; 3 uses
  %i.gf = add nsw <16 x i32> %i.gb, splat (i32 -127)
  %i.gg = sitofp fast <16 x i32> %i.gf to <16 x float> ; 2 uses
  %i.gh = fadd fast <16 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fcmp fast olt <16 x float> %i.ge, splat (float f0x3F3504F3) ; 2 uses
  %i.gj = fadd fast <16 x float> %i.ge, splat (float -1.000000e+00)
  %i.gk = select fast <16 x i1> %i.gi, <16 x float> %i.gg, <16 x float> %i.gh ; 2 uses
  %i.gl = select fast <16 x i1> %i.gi, <16 x float> %i.ge, <16 x float> zeroinitializer
  %i.gm = fadd fast <16 x float> %i.gj, %i.gl     ; 12 uses
  %i.gn = fmul fast <16 x float> %i.gm, %i.gm     ; 2 uses
  %i.go = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.gp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.go, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0x3DEF251A))
  %i.gq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gp, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0xBDFE5D4F))
  %i.gr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gq, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0x3E11E9BF))
  %i.gs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gr, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0xBE2AAE50))
  %i.gt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gs, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0x3E4CCEAC))
  %i.gu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gt, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0xBE7FFFFC))
  %i.gv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gu, <16 x float> nofpclass(nan inf) %i.gm, <16 x float> splat (float f0x3EAAAAAA))
  %i.gw = fmul fast <16 x float> %i.gn, %i.gm
  %i.gx = fmul fast <16 x float> %i.gw, %i.gv
  %i.gy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gx)
  %i.gz = fneg fast <16 x float> %i.gn
  %i.ha = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gz, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.gy)
  %i.hb = fadd fast <16 x float> %i.ha, %i.gm
  %i.hc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hb)
  %13 = select <16 x i1> %12, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.hc
  %i.hd = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.eg)
  %i.he = fcmp fast olt <16 x float> %i.hd, splat (float f0x38D1B717)
  %i.hf = select fast <16 x i1> %i.he, <16 x float> %i.fx, <16 x float> %13
  %i.hg = fsub fast <16 x float> %i.fu, %i.hf
  %i.hh = fmul fast <16 x float> %i.hg, splat (float 5.000000e-01)
  %i.hi = bitcast <16 x float> %i.hh to <16 x i32>
  %i.hj = lshr <16 x i32> %i.hi, splat (i32 16)   ; 2 uses
  %i.hk = shufflevector <16 x i32> %i.hj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hl = shufflevector <16 x i32> %i.hj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.hk, <8 x i32> %i.hl)
  %i.hn = bitcast <16 x i16> %i.hm to <4 x i64>
  %i.ho = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = bitcast <4 x i64> %i.ho to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.hp, ptr align 1 %.034.lcssa, <16 x i1> %i.dx)
  %.pre100 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.hq = phi i32 [ %.pre100, %bb.c ], [ %i.ds, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.ds, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.hr = icmp slt i32 %.1, %i.hq
  br i1 %i.hr, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.d, %.lr.ph91
  %.289 = phi i32 [ %i.ib, %.lr.ph91 ], [ %.1, %bb.d ]
  %.13588 = phi ptr [ %i.ia, %.lr.ph91 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.hs = load i16, ptr %.13588, align 2, !tbaa !46
  %i.ht = zext i16 %i.hs to i32
  %i.hu = shl nuw i32 %i.ht, 16
  %i.hv = bitcast i32 %i.hu to float
  %i.hw = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.hv) #22
  %i.hx = bitcast float %i.hw to i32
  %i.hy = lshr i32 %i.hx, 16
  %i.hz = trunc nuw i32 %i.hy to i16
  store i16 %i.hz, ptr %.13588, align 2, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %.13588, i64 2
  %i.ib = add nuw nsw i32 %.289, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ib, %i.hq
  br i1 %exitcond.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !350

._crit_edge92:                                    ; preds = %.lr.ph91, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ic = load i32, ptr %i.b, align 4, !tbaa !37
  %i.id = sext i32 %i.ic to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.id
  br i1 %.not.not, label %.noexc, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge92, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge95, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf)) local_unnamed_addr #17

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not71 = icmp sgt i32 %i.k, %i.j
  br i1 %.not71, label %._crit_edge73, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge70
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.eu, %._crit_edge70 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge70 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !356
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !356
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !356
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.063 = phi i32 [ %i.cd, %.lr.ph ], [ 0, %.noexc ]
  %.03462 = phi ptr [ %i.cc, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03462, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
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
  %i.co = shufflevector <16 x i16> %i.cn, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.cp = shufflevector <16 x i16> %i.cn, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
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
!59 = distinct !{!59, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!60 = distinct !{!60, !59, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!61 = distinct !{!61, !42}
!62 = !{!60}
!63 = distinct !{!63, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!64 = distinct !{!64, !63, !"_ZN4ncnn3Mat7channelEi: argument 0"}
end_hunk_5
