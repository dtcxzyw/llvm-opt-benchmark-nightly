Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 29
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_roundEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.aa = add nuw nsw i32 %.039, 16               ; 3 uses
  %i.ab = or disjoint i32 %i.aa, 15
  %i.ac = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.ae = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.af = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.af
  %i.ag = trunc i32 %notmask to i16
  %i.ah = xor i16 %i.ag, -1
  %i.ai = bitcast i16 %i.ah to <16 x i1>          ; 2 uses
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.ai, <16 x float> zeroinitializer)
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aj, i32 8, <16 x float> zeroinitializer, i16 -1, i32 4)
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.ak, ptr align 1 %.027.lcssa, <16 x i1> %i.ai)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.al = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.am = sext i32 %i.al to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.am
  br i1 %.not.not, label %.noexc, label %._crit_edge44

._crit_edge44:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge44, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.al, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !138
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !138
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !138
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.aa, %.lr.ph ], [ 0, %.noexc ]
  %.02738 = phi ptr [ %i.z, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02738, align 1, !tbaa !41
  %i.y = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.x, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  store <16 x float> %i.y, ptr %.02738, align 1, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %.02738, i64 64 ; 2 uses
  %i.aa = add nuw nsw i32 %.039, 16               ; 3 uses
  %i.ab = or disjoint i32 %i.aa, 15
  %i.ac = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.ae = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.af = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.af
  %i.ag = trunc i32 %notmask to i16
  %i.ah = xor i16 %i.ag, -1
  %i.ai = bitcast i16 %i.ah to <16 x i1>          ; 2 uses
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.ai, <16 x float> zeroinitializer)
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aj, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.ak, ptr align 1 %.027.lcssa, <16 x i1> %i.ai)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.al = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.am = sext i32 %i.al to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.am
  br i1 %.not.not, label %.noexc, label %._crit_edge44

._crit_edge44:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge44, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.ar, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !142
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !142
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !142
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.noexc ]
  %.02738 = phi ptr [ %i.ac, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02738, align 1, !tbaa !41 ; 2 uses
  %i.y = fcmp fast ogt <16 x float> %i.x, zeroinitializer
  %i.z = fcmp fast olt <16 x float> %i.x, zeroinitializer
  %i.aa = select fast <16 x i1> %i.y, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %i.ab = select fast <16 x i1> %i.z, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %6 = fsub fast <16 x float> %i.aa, %i.ab
  store <16 x float> %6, ptr %.02738, align 1, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.02738, i64 64 ; 2 uses
  %i.ad = add nuw nsw i32 %.039, 16               ; 3 uses
  %i.ae = or disjoint i32 %i.ad, 15
  %i.af = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ac, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.ah = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ai = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.ai
  %i.aj = trunc i32 %notmask to i16
  %i.ak = xor i16 %i.aj, -1
  %i.al = bitcast i16 %i.ak to <16 x i1>          ; 2 uses
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.al, <16 x float> zeroinitializer) ; 2 uses
  %i.an = fcmp fast ogt <16 x float> %i.am, zeroinitializer
  %i.ao = fcmp fast olt <16 x float> %i.am, zeroinitializer
  %i.ap = select fast <16 x i1> %i.an, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %i.aq = select fast <16 x i1> %i.ao, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %7 = fsub fast <16 x float> %i.ap, %i.aq
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %7, ptr align 1 %.027.lcssa, <16 x i1> %i.al)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ar = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.as = sext i32 %i.ar to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.as
  br i1 %.not.not, label %.noexc, label %._crit_edge44

._crit_edge44:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not53 = icmp sgt i32 %i.k, %i.j
  br i1 %.not53, label %._crit_edge55, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.cv, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !146
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !146
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !146
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.050 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %.noexc ]
  %.02749 = phi ptr [ %i.be, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02749, align 1, !tbaa !41 ; 6 uses
  %i.y = fmul fast <16 x float> %i.x, %i.x
  %i.z = fmul fast <16 x float> %i.x, splat (float f0x3E2AAAAB)
  %i.aa = fadd fast <16 x float> %i.z, splat (float 5.000000e-01)
  %i.ab = fmul fast <16 x float> %i.y, %i.aa
  %i.ac = fadd fast <16 x float> %i.ab, %i.x
  %i.ad = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ag = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.af, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ah = fcmp fast ogt <16 x float> %i.ag, %i.af
  %i.ai = fadd fast <16 x float> %i.ag, splat (float -1.000000e+00)
  %i.aj = select fast <16 x i1> %i.ah, <16 x float> %i.ai, <16 x float> %i.ag ; 2 uses
  %i.ak = fneg fast <16 x float> %i.aj            ; 2 uses
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ak, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ae)
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ak, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.al) ; 8 uses
  %i.an = fmul fast <16 x float> %i.am, %i.am
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3C088908))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3D2AA9C1))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3E2AAAAA))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float 5.000000e-01))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.am)
  %i.au = fadd fast <16 x float> %i.at, splat (float 1.000000e+00)
  %i.av = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = shl <16 x i32> %i.av, splat (i32 23)
  %i.ax = add <16 x i32> %i.aw, splat (i32 1065353216)
  %i.ay = bitcast <16 x i32> %i.ax to <16 x float>
  %i.az = fmul fast <16 x float> %i.au, %i.ay
  %i.ba = fadd fast <16 x float> %i.az, splat (float -1.000000e+00)
  %i.bb = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x)
  %i.bc = fcmp fast olt <16 x float> %i.bb, splat (float f0x38D1B717)
  %i.bd = select fast <16 x i1> %i.bc, <16 x float> %i.ac, <16 x float> %i.ba
  store <16 x float> %i.bd, ptr %.02749, align 1, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %.02749, i64 64 ; 2 uses
  %i.bf = add nuw nsw i32 %.050, 16               ; 3 uses
  %i.bg = or disjoint i32 %i.bf, 15
  %i.bh = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.be, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bf, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bj = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bk = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bk
  %i.bl = trunc i32 %notmask to i16
  %i.bm = xor i16 %i.bl, -1
  %i.bn = bitcast i16 %i.bm to <16 x i1>          ; 2 uses
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.bn, <16 x float> zeroinitializer) ; 6 uses
  %i.bp = fmul fast <16 x float> %i.bo, %i.bo
  %i.bq = fmul fast <16 x float> %i.bo, splat (float f0x3E2AAAAB)
  %i.br = fadd fast <16 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = fmul fast <16 x float> %i.bp, %i.br
  %i.bt = fadd fast <16 x float> %i.bs, %i.bo
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bx = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bw, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.by = fcmp fast ogt <16 x float> %i.bx, %i.bw
  %i.bz = fadd fast <16 x float> %i.bx, splat (float -1.000000e+00)
  %i.ca = select fast <16 x i1> %i.by, <16 x float> %i.bz, <16 x float> %i.bx ; 2 uses
  %i.cb = fneg fast <16 x float> %i.ca            ; 2 uses
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cb, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bv)
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cb, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cc) ; 8 uses
  %i.ce = fmul fast <16 x float> %i.cd, %i.cd
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3C088908))
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3D2AA9C1))
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float f0x3E2AAAAA))
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float 5.000000e-01))
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.ce, <16 x float> nofpclass(nan inf) %i.cd)
  %i.cl = fadd fast <16 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ca, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cn = shl <16 x i32> %i.cm, splat (i32 23)
  %i.co = add <16 x i32> %i.cn, splat (i32 1065353216)
  %i.cp = bitcast <16 x i32> %i.co to <16 x float>
  %i.cq = fmul fast <16 x float> %i.cl, %i.cp
  %i.cr = fadd fast <16 x float> %i.cq, splat (float -1.000000e+00)
  %i.cs = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bo)
  %i.ct = fcmp fast olt <16 x float> %i.cs, splat (float f0x38D1B717)
  %i.cu = select fast <16 x i1> %i.ct, <16 x float> %i.bt, <16 x float> %i.cr
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.cu, ptr align 1 %.027.lcssa, <16 x i1> %i.bn)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cv = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cw = sext i32 %i.cv to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cw
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
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
  %min.iters.check = icmp ult i32 %i.bt, 7
  br i1 %min.iters.check, label %.lr.ph59.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check79 = icmp ult i32 %i.bt, 31
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bv, 24
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
  %i.cf = call fast <32 x float> @llvm.trunc.v32f32(<32 x float> %i.ce)
  %i.cg = bitcast <32 x float> %i.cf to <32 x i32>
  %i.ch = lshr <32 x i32> %i.cg, splat (i32 16)
  %i.ci = trunc nuw <32 x i32> %i.ch to <32 x i16>
  store <32 x i16> %i.ci, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge60, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph59.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.bv, 8589934584            ; 4 uses
  %i.ck = trunc i64 %n.vec81 to i32
  %i.cl = add i32 %.1, %i.ck
  %i.cm = shl nuw nsw i64 %n.vec81, 1
  %i.cn = getelementptr i8, ptr %.034.lcssa, i64 %i.cm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
  %i.co = shl i64 %index82, 1
  %next.gep83 = getelementptr i8, ptr %.034.lcssa, i64 %i.co ; 2 uses
  %wide.load84 = load <8 x i16>, ptr %next.gep83, align 2, !tbaa !46
  %i.cp = zext <8 x i16> %wide.load84 to <8 x i32>
  %i.cq = shl nuw <8 x i32> %i.cp, splat (i32 16)
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %i.cr)
  %i.ct = bitcast <8 x float> %i.cs to <8 x i32>
  %i.cu = lshr <8 x i32> %i.ct, splat (i32 16)
  %i.cv = trunc nuw <8 x i32> %i.cu to <8 x i16>
  store <8 x i16> %i.cv, ptr %next.gep83, align 2, !tbaa !46
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.bv, %n.vec81
  br i1 %cmp.n86, label %._crit_edge60, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.257.ph = phi i32 [ %.1, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  %.13556.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.257 = phi i32 [ %i.dg, %.lr.ph59 ], [ %.257.ph, %.lr.ph59.preheader ]
  %.13556 = phi ptr [ %i.df, %.lr.ph59 ], [ %.13556.ph, %.lr.ph59.preheader ] ; 3 uses
  %i.cx = load i16, ptr %.13556, align 2, !tbaa !46
  %i.cy = zext i16 %i.cx to i32
  %i.cz = shl nuw i32 %i.cy, 16
  %i.da = bitcast i32 %i.cz to float
  %i.db = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.da)
  %i.dc = bitcast float %i.db to i32
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw i32 %i.dd to i16
  store i16 %i.de, ptr %.13556, align 2, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %.13556, i64 2
  %i.dg = add nuw nsw i32 %.257, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, %i.bq
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !309

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
declare float @llvm.trunc.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bo, %._crit_edge60 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge60 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !317
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !317
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !317
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.053 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03452 = phi ptr [ %i.am, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03452, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 2 uses
  %i.af = fcmp fast ogt <16 x float> %i.ae, zeroinitializer
  %i.ag = fcmp fast olt <16 x float> %i.ae, zeroinitializer
  %6 = select fast <16 x i1> %i.af, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %7 = select fast <16 x i1> %i.ag, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %8 = fsub fast <16 x float> %6, %7
  %9 = bitcast <16 x float> %8 to <16 x i32>
  %10 = lshr <16 x i32> %9, splat (i32 16)        ; 2 uses
  %i.ah = shufflevector <16 x i32> %10, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ai = shufflevector <16 x i32> %10, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ah, <8 x i32> %i.ai)
  %i.ak = bitcast <16 x i16> %i.aj to <4 x i64>
  %i.al = shufflevector <4 x i64> %i.ak, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.al, ptr %.03452, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03452, i64 32 ; 2 uses
  %i.an = add nuw nsw i32 %.053, 16               ; 3 uses
  %i.ao = or disjoint i32 %i.an, 15
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.ar = phi i32 [ %i.o, %.noexc ], [ %i.ap, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.am, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.as = icmp slt i32 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.at = sub nuw nsw i32 %i.ar, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.at
  %i.au = trunc i32 %notmask to i16
  %i.av = xor i16 %i.au, -1
  %i.aw = bitcast i16 %i.av to <16 x i1>          ; 2 uses
  %i.ax = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.aw, <16 x i16> zeroinitializer) ; 2 uses
  %i.ay = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ax, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.az = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ax, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i16> %i.ay, <16 x i16> %i.az, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bb = shufflevector <16 x i16> %i.ay, <16 x i16> %i.az, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bc = bitcast <16 x i16> %i.ba to <8 x i32>
  %i.bd = bitcast <16 x i16> %i.bb to <8 x i32>
  %i.be = shufflevector <8 x i32> %i.bc, <8 x i32> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <16 x i32> %i.be to <16 x float> ; 2 uses
  %i.bg = fcmp fast ogt <16 x float> %i.bf, zeroinitializer
  %i.bh = fcmp fast olt <16 x float> %i.bf, zeroinitializer
  %11 = select fast <16 x i1> %i.bg, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %12 = select fast <16 x i1> %i.bh, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %13 = fsub fast <16 x float> %11, %12
  %14 = bitcast <16 x float> %13 to <16 x i32>
  %15 = lshr <16 x i32> %14, splat (i32 16)       ; 2 uses
  %i.bi = shufflevector <16 x i32> %15, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = shufflevector <16 x i32> %15, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bi, <8 x i32> %i.bj)
  %i.bl = bitcast <16 x i16> %i.bk to <4 x i64>
  %i.bm = shufflevector <4 x i64> %i.bl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bn = bitcast <4 x i64> %i.bm to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.bn, ptr align 1 %.034.lcssa, <16 x i1> %i.aw)
  %.pre68 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bo = phi i32 [ %.pre68, %bb.c ], [ %i.ar, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.ar, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.bp = icmp slt i32 %.1, %i.bo
  br i1 %i.bp, label %iter.check, label %._crit_edge60

iter.check:                                       ; preds = %bb.d
  %i.bq = xor i32 %.1, -1
  %i.br = add i32 %i.bo, %i.bq                    ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.br, 15
  br i1 %min.iters.check, label %.lr.ph59.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check79 = icmp ult i32 %i.br, 127
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = and i64 %i.bt, 112
  %n.vec = and i64 %i.bt, 8589934464              ; 5 uses
  %i.bv = trunc i64 %n.vec to i32
  %i.bw = add i32 %.1, %i.bv
  %i.bx = shl nuw nsw i64 %n.vec, 1
  %i.by = getelementptr i8, ptr %.034.lcssa, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.bz ; 5 uses
  %i.ca = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %wide.load80 = load <32 x i16>, ptr %i.ca, align 2, !tbaa !46
  %wide.load81 = load <32 x i16>, ptr %i.cb, align 2, !tbaa !46
  %wide.load82 = load <32 x i16>, ptr %i.cc, align 2, !tbaa !46
  %i.cd = zext <32 x i16> %wide.load to <32 x i32>
  %i.ce = zext <32 x i16> %wide.load80 to <32 x i32>
  %i.cf = zext <32 x i16> %wide.load81 to <32 x i32>
  %i.cg = zext <32 x i16> %wide.load82 to <32 x i32>
  %i.ch = shl nuw <32 x i32> %i.cd, splat (i32 16)
  %i.ci = shl nuw <32 x i32> %i.ce, splat (i32 16)
  %i.cj = shl nuw <32 x i32> %i.cf, splat (i32 16)
  %i.ck = shl nuw <32 x i32> %i.cg, splat (i32 16)
  %i.cl = bitcast <32 x i32> %i.ch to <32 x float> ; 2 uses
  %i.cm = bitcast <32 x i32> %i.ci to <32 x float> ; 2 uses
  %i.cn = bitcast <32 x i32> %i.cj to <32 x float> ; 2 uses
  %i.co = bitcast <32 x i32> %i.ck to <32 x float> ; 2 uses
  %i.cp = fcmp fast ogt <32 x float> %i.cl, zeroinitializer
  %i.cq = fcmp fast ogt <32 x float> %i.cm, zeroinitializer
  %i.cr = fcmp fast ogt <32 x float> %i.cn, zeroinitializer
  %i.cs = fcmp fast ogt <32 x float> %i.co, zeroinitializer
  %i.ct = fcmp fast olt <32 x float> %i.cl, zeroinitializer
  %i.cu = fcmp fast olt <32 x float> %i.cm, zeroinitializer
  %i.cv = fcmp fast olt <32 x float> %i.cn, zeroinitializer
  %i.cw = fcmp fast olt <32 x float> %i.co, zeroinitializer
  %i.cx = select <32 x i1> %i.ct, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.cy = select <32 x i1> %i.cu, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.cz = select <32 x i1> %i.cv, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.da = select <32 x i1> %i.cw, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.db = select <32 x i1> %i.cp, <32 x i16> splat (i16 16256), <32 x i16> %i.cx
  %i.dc = select <32 x i1> %i.cq, <32 x i16> splat (i16 16256), <32 x i16> %i.cy
  %i.dd = select <32 x i1> %i.cr, <32 x i16> splat (i16 16256), <32 x i16> %i.cz
  %i.de = select <32 x i1> %i.cs, <32 x i16> splat (i16 16256), <32 x i16> %i.da
  store <32 x i16> %i.db, ptr %next.gep, align 2, !tbaa !46
  store <32 x i16> %i.dc, ptr %i.ca, align 2, !tbaa !46
  store <32 x i16> %i.dd, ptr %i.cb, align 2, !tbaa !46
  store <32 x i16> %i.de, ptr %i.cc, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge60, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph59.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.bt, 8589934576            ; 4 uses
  %i.dg = trunc i64 %n.vec84 to i32
  %i.dh = add i32 %.1, %i.dg
  %i.di = shl nuw nsw i64 %n.vec84, 1
  %i.dj = getelementptr i8, ptr %.034.lcssa, i64 %i.di
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %i.dk = shl i64 %index85, 1
  %next.gep86 = getelementptr i8, ptr %.034.lcssa, i64 %i.dk ; 2 uses
  %wide.load87 = load <16 x i16>, ptr %next.gep86, align 2, !tbaa !46
  %i.dl = zext <16 x i16> %wide.load87 to <16 x i32>
  %i.dm = shl nuw <16 x i32> %i.dl, splat (i32 16)
  %i.dn = bitcast <16 x i32> %i.dm to <16 x float> ; 2 uses
  %i.do = fcmp fast ogt <16 x float> %i.dn, zeroinitializer
  %i.dp = fcmp fast olt <16 x float> %i.dn, zeroinitializer
  %i.dq = select <16 x i1> %i.dp, <16 x i16> splat (i16 -16512), <16 x i16> zeroinitializer
  %i.dr = select <16 x i1> %i.do, <16 x i16> splat (i16 16256), <16 x i16> %i.dq
  store <16 x i16> %i.dr, ptr %next.gep86, align 2, !tbaa !46
  %index.next88 = add nuw i64 %index85, 16        ; 2 uses
  %i.ds = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !315

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.bt, %n.vec84
  br i1 %cmp.n89, label %._crit_edge60, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.257.ph = phi i32 [ %.1, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  %.13556.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.257 = phi i32 [ %i.ec, %.lr.ph59 ], [ %.257.ph, %.lr.ph59.preheader ]
  %.13556 = phi ptr [ %i.eb, %.lr.ph59 ], [ %.13556.ph, %.lr.ph59.preheader ] ; 3 uses
  %i.dt = load i16, ptr %.13556, align 2, !tbaa !46
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = bitcast i32 %i.dv to float              ; 2 uses
  %i.dx = fcmp fast ogt float %i.dw, 0.000000e+00
  %i.dy = fcmp fast olt float %i.dw, 0.000000e+00
  %i.dz = select i1 %i.dy, i16 -16512, i16 0
  %i.ea = select i1 %i.dx, i16 16256, i16 %i.dz
  store i16 %i.ea, ptr %.13556, align 2, !tbaa !46
  %i.eb = getelementptr inbounds nuw i8, ptr %.13556, i64 2
  %i.ec = add nuw nsw i32 %.257, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ec, %i.bo
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !316

._crit_edge60:                                    ; preds = %.lr.ph59, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ed = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ee = sext i32 %i.ed to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ee
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ec, %._crit_edge71 ] ; 2 uses
end_hunk_1
