Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/reduction?download=true
inline.NumInlined: 135
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.9:bb.a
middle.block153:                                  ; preds = %vector.body146
  %bin.rdx154 = fadd fast <4 x float> %i.cv, %i.cu
  %i.cx = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx154) ; 2 uses
  br i1 %cmp.n155, label %_ZN4ncnnL9reductionEfPKfii.exit.us, label %.lr.ph.i33.i.us.preheader241

.lr.ph.i33.i.us.preheader241:                     ; preds = %.lr.ph.i33.i.us.preheader, %middle.block153
  %indvars.iv.i34.i.us.ph = phi i64 [ 0, %.lr.ph.i33.i.us.preheader ], [ %n.vec145, %middle.block153 ]
  %.067.i35.i.us.ph = phi float [ %i.am, %.lr.ph.i33.i.us.preheader ], [ %i.cx, %middle.block153 ]
  br label %.lr.ph.i33.i.us

.lr.ph.i33.i.us:                                  ; preds = %.lr.ph.i33.i.us.preheader241, %.lr.ph.i33.i.us
  %indvars.iv.i34.i.us = phi i64 [ %indvars.iv.next.i36.i.us, %.lr.ph.i33.i.us ], [ %indvars.iv.i34.i.us.ph, %.lr.ph.i33.i.us.preheader241 ] ; 2 uses
  %.067.i35.i.us = phi float [ %i.db, %.lr.ph.i33.i.us ], [ %.067.i35.i.us.ph, %.lr.ph.i33.i.us.preheader241 ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.03382.us, i64 %indvars.iv.i34.i.us
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !54
  %i.da = call fast float @llvm.fabs.f32(float %i.cz)
  %i.db = fadd fast float %i.da, %.067.i35.i.us   ; 2 uses
  %indvars.iv.next.i36.i.us = add nuw nsw i64 %indvars.iv.i34.i.us, 1 ; 2 uses
  %exitcond.not.i37.i.us = icmp eq i64 %indvars.iv.next.i36.i.us, %wide.trip.count.i72.i.us
  br i1 %exitcond.not.i37.i.us, label %_ZN4ncnnL9reductionEfPKfii.exit.us, label %.lr.ph.i33.i.us, !llvm.loop !167

bb.j:                                             ; preds = %bb.c
  br i1 %i.y, label %.lr.ph.i.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfii.exit.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.j
  br i1 %min.iters.check, label %.lr.ph.i.i.us.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.preheader
  %i.dc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.am, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.dc, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi140 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.03382.us, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load = load <4 x float>, ptr %i.dd, align 4, !tbaa !54
  %wide.load141 = load <4 x float>, ptr %i.de, align 4, !tbaa !54
  %i.df = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.dg = fadd fast <4 x float> %wide.load141, %vec.phi140 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.dg, %i.df
  %i.di = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %_ZN4ncnnL9reductionEfPKfii.exit.us, label %.lr.ph.i.i.us.preheader240

.lr.ph.i.i.us.preheader240:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block
  %indvars.iv.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec, %middle.block ]
  %.067.i.i.us.ph = phi float [ %i.am, %.lr.ph.i.i.us.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader240, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us, %.lr.ph.i.i.us ], [ %indvars.iv.i.i.us.ph, %.lr.ph.i.i.us.preheader240 ] ; 2 uses
  %.067.i.i.us = phi float [ %i.dl, %.lr.ph.i.i.us ], [ %.067.i.i.us.ph, %.lr.ph.i.i.us.preheader240 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.03382.us, i64 %indvars.iv.i.i.us
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !54
  %i.dl = fadd fast float %i.dk, %.067.i.i.us     ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i72.i.us
  br i1 %exitcond.not.i.i.us, label %_ZN4ncnnL9reductionEfPKfii.exit.us, label %.lr.ph.i.i.us, !llvm.loop !169

_ZN4ncnnL9reductionEfPKfii.exit.us:               ; preds = %.lr.ph.i73.i.us, %.lr.ph.i65.i.us, %.lr.ph.i57.i.us, %.lr.ph.i49.i.us, %.lr.ph.i41.i.us, %.lr.ph.i33.i.us, %.lr.ph.i.i.us, %middle.block235, %middle.block218, %middle.block201, %middle.block185, %middle.block169, %middle.block153, %middle.block, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.us = phi nsz float [ %i.am, %bb.c ], [ %i.co, %.lr.ph.i41.i.us ], [ %i.cb, %.lr.ph.i49.i.us ], [ %i.br, %.lr.ph.i57.i.us ], [ %i.bi, %.lr.ph.i65.i.us ], [ %i.dl, %.lr.ph.i.i.us ], [ %i.db, %.lr.ph.i33.i.us ], [ %i.am, %bb.j ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.g ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.di, %middle.block ], [ %i.cx, %middle.block153 ], [ %i.ck, %middle.block169 ], [ %i.by, %middle.block185 ], [ %i.bo, %middle.block201 ], [ %i.bf, %middle.block218 ], [ %i.av, %middle.block235 ], [ %i.az, %.lr.ph.i73.i.us ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float %.0.i.us, ptr %i.dm, align 4, !tbaa !54
  %i.dn = getelementptr inbounds [4 x i8], ptr %.03382.us, i64 %i.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !170

._crit_edge.us:                                   ; preds = %_ZN4ncnnL9reductionEfPKfii.exit.us
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32
  %exitcond110.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond110.not, label %._crit_edge86, label %.noexc44.us

._crit_edge86:                                    ; preds = %._crit_edge.us, %.noexc44.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge86, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not20 = icmp sgt i32 %i.k, %i.j
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %5, align 8, !tbaa !18
  %i.m = load i32, ptr %6, align 4, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %7, align 4, !tbaa !44
  %i.r = load ptr, ptr %3, align 8, !tbaa !18
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = load float, ptr %4, align 4, !tbaa !54
  %i.v = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.w = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfiii(float noundef nofpclass(nan inf) %i.u, ptr noundef %i.v, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.q)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not83 = icmp sgt i32 %i.k, %i.j
  br i1 %.not83, label %._crit_edge85, label %.noexc44.lr.ph

.noexc44.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !171
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !171
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !171
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !44
  %.not35.not = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.u = load i32, ptr %6, align 4, !tbaa !44     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  %10 = sext i32 %i.u to i64                      ; 51 uses
  br i1 %i.v, label %.noexc44.lr.ph.split.us, label %._crit_edge85

.noexc44.lr.ph.split.us:                          ; preds = %.noexc44.lr.ph
  %i.w = load i32, ptr %8, align 4, !tbaa !44     ; 21 uses
  %i.x = load i32, ptr %9, align 4, !tbaa !44
  %i.y = icmp sgt i32 %i.w, 0                     ; 7 uses
  %i.z = sext i32 %i.k to i64
  %i.aa = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.u to i64
  %i.ab = add i32 %i.w, -1                        ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !18
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !42
  %xtraiter = and i32 %i.w, 3                     ; 3 uses
  %i.ae = icmp ult i32 %i.w, 4
  %unroll_iter = and i32 %i.w, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod153 = icmp ne i32 %xtraiter, 0
  %xtraiter154 = and i32 %i.w, 7                  ; 3 uses
  %i.af = icmp ult i32 %i.w, 8
  %unroll_iter159 = and i32 %i.w, 2147483640
  %lcmp.mod156.not = icmp eq i32 %xtraiter154, 0
  %lcmp.mod158 = icmp ne i32 %xtraiter154, 0
  %xtraiter161 = and i32 %i.w, 7                  ; 3 uses
  %i.ag = icmp ult i32 %i.w, 8
  %unroll_iter166 = and i32 %i.w, 2147483640
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  %lcmp.mod165 = icmp ne i32 %xtraiter161, 0
  %xtraiter168 = and i32 %i.w, 7                  ; 3 uses
  %i.ah = icmp ult i32 %i.w, 8
  %unroll_iter173 = and i32 %i.w, 2147483640
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  %lcmp.mod172 = icmp ne i32 %xtraiter168, 0
  %xtraiter175 = and i32 %i.w, 3                  ; 3 uses
  %i.ai = icmp ult i32 %i.w, 4
  %unroll_iter180 = and i32 %i.w, 2147483644
  %lcmp.mod177.not = icmp eq i32 %xtraiter175, 0
  %lcmp.mod179 = icmp ne i32 %xtraiter175, 0
  %xtraiter182 = and i32 %i.w, 3                  ; 3 uses
  %i.aj = icmp ult i32 %i.ab, 3
  %unroll_iter187 = and i32 %i.w, 2147483644
  %lcmp.mod184.not = icmp eq i32 %xtraiter182, 0
  %lcmp.mod186 = icmp ne i32 %xtraiter182, 0
  %xtraiter189 = and i32 %i.w, 7                  ; 3 uses
  %i.ak = icmp ult i32 %i.ab, 7
  %unroll_iter194 = and i32 %i.w, 2147483640
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  %lcmp.mod193 = icmp ne i32 %xtraiter189, 0
  br label %.noexc44.us

.noexc44.us:                                      ; preds = %._crit_edge.us, %.noexc44.lr.ph.split.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge.us ], [ %i.z, %.noexc44.lr.ph.split.us ] ; 4 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv106
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  br i1 %.not35.not, label %_ZN4ncnn3Mat7channelEi.exit.thread.us, label %.noexc45.us

.noexc45.us:                                      ; preds = %.noexc44.us
  %i.am = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !174
  %i.an = mul i64 %i.am, %indvars.iv106
  br label %.critedge.us

_ZN4ncnn3Mat7channelEi.exit.thread.us:            ; preds = %.noexc44.us
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !56
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv106, %i.ap
  br label %.critedge.us

.critedge.us:                                     ; preds = %_ZN4ncnn3Mat7channelEi.exit.thread.us, %.noexc45.us
  %.sink126 = phi i64 [ %i.aq, %_ZN4ncnn3Mat7channelEi.exit.thread.us ], [ %i.an, %.noexc45.us ]
  %i.ar = mul i64 %.sink126, %i.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar
  br label %bb.c

bb.c:                                             ; preds = %.critedge.us, %_ZN4ncnnL9reductionEfPKfiii.exit.us
  %indvars.iv = phi i64 [ 0, %.critedge.us ], [ %indvars.iv.next, %_ZN4ncnnL9reductionEfPKfiii.exit.us ] ; 3 uses
  %i.at = load float, ptr %7, align 4, !tbaa !54  ; 22 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 14 uses
  switch i32 %i.x, label %_ZN4ncnnL9reductionEfPKfiii.exit.us [
    i32 0, label %bb.j
    i32 1, label %bb.i
    i32 2, label %bb.h
    i32 6, label %bb.g
    i32 4, label %bb.f
    i32 5, label %bb.e
    i32 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.lr.ph.i68.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i68.i.us.preheader:                        ; preds = %bb.d
  br i1 %i.ae, label %.lr.ph.i68.i.us.epil.preheader, label %.lr.ph.i68.i.us

.lr.ph.i68.i.us:                                  ; preds = %.lr.ph.i68.i.us.preheader, %.lr.ph.i68.i.us
  %.0610.i70.i.us = phi ptr [ %i.bk, %.lr.ph.i68.i.us ], [ %i.au, %.lr.ph.i68.i.us.preheader ] ; 2 uses
  %.089.i71.i.us = phi float [ %i.bj, %.lr.ph.i68.i.us ], [ %i.at, %.lr.ph.i68.i.us.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i68.i.us ], [ 0, %.lr.ph.i68.i.us.preheader ]
  %i.av = load float, ptr %.0610.i70.i.us, align 4, !tbaa !54
  %i.aw = call fast float @llvm.exp.f32(float %i.av)
  %i.ax = fadd fast float %i.aw, %.089.i71.i.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i.us, i64 %10 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !54
  %i.ba = call fast float @llvm.exp.f32(float %i.az)
  %i.bb = fadd fast float %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %10 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !54
  %i.be = call fast float @llvm.exp.f32(float %i.bd)
  %i.bf = fadd fast float %i.be, %i.bb
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %10 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !54
  %i.bi = call fast float @llvm.exp.f32(float %i.bh)
  %i.bj = fadd fast float %i.bi, %i.bf            ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %10 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa, label %.lr.ph.i68.i.us, !llvm.loop !90

bb.e:                                             ; preds = %bb.c
  br i1 %i.y, label %.lr.ph.i62.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i62.i.us.preheader:                        ; preds = %bb.e
  br i1 %i.af, label %.lr.ph.i62.i.us.epil.preheader, label %.lr.ph.i62.i.us

.lr.ph.i62.i.us:                                  ; preds = %.lr.ph.i62.i.us.preheader, %.lr.ph.i62.i.us
  %.0610.i64.i.us = phi ptr [ %i.ci, %.lr.ph.i62.i.us ], [ %i.au, %.lr.ph.i62.i.us.preheader ] ; 2 uses
  %.089.i65.i.us = phi float [ %i.ch, %.lr.ph.i62.i.us ], [ %i.at, %.lr.ph.i62.i.us.preheader ]
  %niter160 = phi i32 [ %niter160.next.7, %.lr.ph.i62.i.us ], [ 0, %.lr.ph.i62.i.us.preheader ]
  %i.bl = load float, ptr %.0610.i64.i.us, align 4, !tbaa !54
  %i.bm = call nnan ninf nsz float @llvm.minnum.f32(float %i.bl, float %.089.i65.i.us)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0610.i64.i.us, i64 %10 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !54
  %i.bp = call nnan ninf nsz float @llvm.minnum.f32(float %i.bo, float %i.bm)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %10 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !54
  %i.bs = call nnan ninf nsz float @llvm.minnum.f32(float %i.br, float %i.bp)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %10 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !54
  %i.bv = call nnan ninf nsz float @llvm.minnum.f32(float %i.bu, float %i.bs)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %10 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !54
  %i.by = call nnan ninf nsz float @llvm.minnum.f32(float %i.bx, float %i.bv)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %10 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !54
  %i.cb = call nnan ninf nsz float @llvm.minnum.f32(float %i.ca, float %i.by)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %10 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !54
  %i.ce = call nnan ninf nsz float @llvm.minnum.f32(float %i.cd, float %i.cb)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %10 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !54
  %i.ch = call nnan ninf nsz float @llvm.minnum.f32(float %i.cg, float %i.ce) ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %10 ; 2 uses
  %niter160.next.7 = add nuw nsw i32 %niter160, 8 ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a, label %.lr.ph.i62.i.us, !llvm.loop !89

bb.f:                                             ; preds = %bb.c
  br i1 %i.y, label %.lr.ph.i56.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i56.i.us.preheader:                        ; preds = %bb.f
  br i1 %i.ag, label %.lr.ph.i56.i.us.epil.preheader, label %.lr.ph.i56.i.us

.lr.ph.i56.i.us:                                  ; preds = %.lr.ph.i56.i.us.preheader, %.lr.ph.i56.i.us
  %.0610.i58.i.us = phi ptr [ %i.dg, %.lr.ph.i56.i.us ], [ %i.au, %.lr.ph.i56.i.us.preheader ] ; 2 uses
  %.089.i59.i.us = phi float [ %i.df, %.lr.ph.i56.i.us ], [ %i.at, %.lr.ph.i56.i.us.preheader ]
  %niter167 = phi i32 [ %niter167.next.7, %.lr.ph.i56.i.us ], [ 0, %.lr.ph.i56.i.us.preheader ]
  %i.cj = load float, ptr %.0610.i58.i.us, align 4, !tbaa !54
  %i.ck = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.us, float %i.cj)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0610.i58.i.us, i64 %10 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !54
  %i.cn = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ck, float %i.cm)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %10 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !54
  %i.cq = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cn, float %i.cp)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %10 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !54
  %i.ct = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cq, float %i.cs)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %10 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !54
  %i.cw = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ct, float %i.cv)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %10 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !54
  %i.cz = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cw, float %i.cy)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %10 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !54
  %i.dc = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cz, float %i.db)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %10 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !54
  %i.df = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dc, float %i.de) ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %10 ; 2 uses
  %niter167.next.7 = add nuw nsw i32 %niter167, 8 ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a, label %.lr.ph.i56.i.us, !llvm.loop !88

bb.g:                                             ; preds = %bb.c
  br i1 %i.y, label %.lr.ph.i50.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i50.i.us.preheader:                        ; preds = %bb.g
  br i1 %i.ah, label %.lr.ph.i50.i.us.epil.preheader, label %.lr.ph.i50.i.us

.lr.ph.i50.i.us:                                  ; preds = %.lr.ph.i50.i.us.preheader, %.lr.ph.i50.i.us
  %.0610.i52.i.us = phi ptr [ %i.ee, %.lr.ph.i50.i.us ], [ %i.au, %.lr.ph.i50.i.us.preheader ] ; 2 uses
  %.089.i53.i.us = phi float [ %i.ed, %.lr.ph.i50.i.us ], [ %i.at, %.lr.ph.i50.i.us.preheader ]
  %niter174 = phi i32 [ %niter174.next.7, %.lr.ph.i50.i.us ], [ 0, %.lr.ph.i50.i.us.preheader ]
  %i.dh = load float, ptr %.0610.i52.i.us, align 4, !tbaa !54
  %i.di = fmul fast float %i.dh, %.089.i53.i.us
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i.us, i64 %10 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !54
  %i.dl = fmul fast float %i.dk, %i.di
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %10 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !54
end_hunk_0
begin_hunk_1_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.11:bb.a
  %i.fb = fadd fast float %i.fa, %i.ex
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %10 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !54
  %i.fe = call fast float @llvm.fabs.f32(float %i.fd)
  %i.ff = fadd fast float %i.fe, %i.fb
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %10 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !54
  %i.fi = call fast float @llvm.fabs.f32(float %i.fh)
  %i.fj = fadd fast float %i.fi, %i.ff            ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %10 ; 2 uses
  %niter188.next.3 = add nuw nsw i32 %niter188, 4 ; 2 uses
  %niter188.ncmp.3 = icmp eq i32 %niter188.next.3, %unroll_iter187
  br i1 %niter188.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a, label %.lr.ph.i38.i.us, !llvm.loop !85

bb.j:                                             ; preds = %bb.c
  br i1 %i.y, label %.lr.ph.i.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.j
  br i1 %i.ak, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us
  %.0610.i.i.us = phi ptr [ %i.gi, %.lr.ph.i.i.us ], [ %i.au, %.lr.ph.i.i.us.preheader ] ; 2 uses
  %.089.i.i.us = phi float [ %i.gh, %.lr.ph.i.i.us ], [ %i.at, %.lr.ph.i.i.us.preheader ]
  %niter195 = phi i32 [ %niter195.next.7, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.fl = load float, ptr %.0610.i.i.us, align 4, !tbaa !54
  %i.fm = fadd fast float %i.fl, %.089.i.i.us
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i.us, i64 %10 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !54
  %i.fp = fadd fast float %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %10 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !54
  %i.fs = fadd fast float %i.fr, %i.fp
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %10 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !54
  %i.fv = fadd fast float %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %10 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !54
  %i.fy = fadd fast float %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %10 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !54
  %i.gb = fadd fast float %i.ga, %i.fy
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %10 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !54
  %i.ge = fadd fast float %i.gd, %i.gb
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %10 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !54
  %i.gh = fadd fast float %i.gg, %i.ge            ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %10 ; 2 uses
  %niter195.next.7 = add nuw nsw i32 %niter195, 8 ; 2 uses
  %niter195.ncmp.7 = icmp eq i32 %niter195.next.7, %unroll_iter194
  br i1 %niter195.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !84

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.us
  br i1 %lcmp.mod191.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.0610.i.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i.i.us.preheader ], [ %i.gi, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa ]
  %.089.i.i.us.epil.init = phi float [ %i.at, %.lr.ph.i.i.us.preheader ], [ %i.gh, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph.i.i.us.epil

.lr.ph.i.i.us.epil:                               ; preds = %.lr.ph.i.i.us.epil, %.lr.ph.i.i.us.epil.preheader
  %.0610.i.i.us.epil = phi ptr [ %i.gl, %.lr.ph.i.i.us.epil ], [ %.0610.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ] ; 2 uses
  %.089.i.i.us.epil = phi float [ %i.gk, %.lr.ph.i.i.us.epil ], [ %.089.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ]
  %epil.iter190 = phi i32 [ %epil.iter190.next, %.lr.ph.i.i.us.epil ], [ 0, %.lr.ph.i.i.us.epil.preheader ]
  %i.gj = load float, ptr %.0610.i.i.us.epil, align 4, !tbaa !54
  %i.gk = fadd fast float %i.gj, %.089.i.i.us.epil ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i.us.epil, i64 %10
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i.i.us.epil, !llvm.loop !177

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a: ; preds = %.lr.ph.i38.i.us
  br i1 %lcmp.mod184.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i38.i.us.epil.preheader

.lr.ph.i38.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a, %.lr.ph.i38.i.us.preheader
  %.0610.i40.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i38.i.us.preheader ], [ %i.fk, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a ]
  %.089.i41.i.us.epil.init = phi float [ %i.at, %.lr.ph.i38.i.us.preheader ], [ %i.fj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i38.i.us.epil

.lr.ph.i38.i.us.epil:                             ; preds = %.lr.ph.i38.i.us.epil, %.lr.ph.i38.i.us.epil.preheader
  %.0610.i40.i.us.epil = phi ptr [ %i.gp, %.lr.ph.i38.i.us.epil ], [ %.0610.i40.i.us.epil.init, %.lr.ph.i38.i.us.epil.preheader ] ; 2 uses
  %.089.i41.i.us.epil = phi float [ %i.go, %.lr.ph.i38.i.us.epil ], [ %.089.i41.i.us.epil.init, %.lr.ph.i38.i.us.epil.preheader ]
  %epil.iter183 = phi i32 [ %epil.iter183.next, %.lr.ph.i38.i.us.epil ], [ 0, %.lr.ph.i38.i.us.epil.preheader ]
  %i.gm = load float, ptr %.0610.i40.i.us.epil, align 4, !tbaa !54
  %i.gn = call fast float @llvm.fabs.f32(float %i.gm)
  %i.go = fadd fast float %i.gn, %.089.i41.i.us.epil ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0610.i40.i.us.epil, i64 %10
  %epil.iter183.next = add i32 %epil.iter183, 1   ; 2 uses
  %epil.iter183.cmp.not = icmp eq i32 %epil.iter183.next, %xtraiter182
  br i1 %epil.iter183.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i38.i.us.epil, !llvm.loop !178

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a: ; preds = %.lr.ph.i44.i.us
  br i1 %lcmp.mod177.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i44.i.us.epil.preheader

.lr.ph.i44.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a, %.lr.ph.i44.i.us.preheader
  %.0610.i46.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i44.i.us.preheader ], [ %i.eu, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a ]
  %.089.i47.i.us.epil.init = phi float [ %i.at, %.lr.ph.i44.i.us.preheader ], [ %i.et, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i44.i.us.epil

.lr.ph.i44.i.us.epil:                             ; preds = %.lr.ph.i44.i.us.epil, %.lr.ph.i44.i.us.epil.preheader
  %.0610.i46.i.us.epil = phi ptr [ %i.gt, %.lr.ph.i44.i.us.epil ], [ %.0610.i46.i.us.epil.init, %.lr.ph.i44.i.us.epil.preheader ] ; 2 uses
  %.089.i47.i.us.epil = phi float [ %i.gs, %.lr.ph.i44.i.us.epil ], [ %.089.i47.i.us.epil.init, %.lr.ph.i44.i.us.epil.preheader ]
  %epil.iter176 = phi i32 [ %epil.iter176.next, %.lr.ph.i44.i.us.epil ], [ 0, %.lr.ph.i44.i.us.epil.preheader ]
  %i.gq = load float, ptr %.0610.i46.i.us.epil, align 4, !tbaa !54 ; 2 uses
  %i.gr = fmul fast float %i.gq, %i.gq
  %i.gs = fadd fast float %i.gr, %.089.i47.i.us.epil ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.0610.i46.i.us.epil, i64 %10
  %epil.iter176.next = add i32 %epil.iter176, 1   ; 2 uses
  %epil.iter176.cmp.not = icmp eq i32 %epil.iter176.next, %xtraiter175
  br i1 %epil.iter176.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i44.i.us.epil, !llvm.loop !179

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a: ; preds = %.lr.ph.i50.i.us
  br i1 %lcmp.mod170.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i50.i.us.epil.preheader

.lr.ph.i50.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a, %.lr.ph.i50.i.us.preheader
  %.0610.i52.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i50.i.us.preheader ], [ %i.ee, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a ]
  %.089.i53.i.us.epil.init = phi float [ %i.at, %.lr.ph.i50.i.us.preheader ], [ %i.ed, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph.i50.i.us.epil

.lr.ph.i50.i.us.epil:                             ; preds = %.lr.ph.i50.i.us.epil, %.lr.ph.i50.i.us.epil.preheader
  %.0610.i52.i.us.epil = phi ptr [ %i.gw, %.lr.ph.i50.i.us.epil ], [ %.0610.i52.i.us.epil.init, %.lr.ph.i50.i.us.epil.preheader ] ; 2 uses
  %.089.i53.i.us.epil = phi float [ %i.gv, %.lr.ph.i50.i.us.epil ], [ %.089.i53.i.us.epil.init, %.lr.ph.i50.i.us.epil.preheader ]
  %epil.iter169 = phi i32 [ %epil.iter169.next, %.lr.ph.i50.i.us.epil ], [ 0, %.lr.ph.i50.i.us.epil.preheader ]
  %i.gu = load float, ptr %.0610.i52.i.us.epil, align 4, !tbaa !54
  %i.gv = fmul fast float %i.gu, %.089.i53.i.us.epil ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i.us.epil, i64 %10
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i50.i.us.epil, !llvm.loop !180

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a: ; preds = %.lr.ph.i56.i.us
  br i1 %lcmp.mod163.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i56.i.us.epil.preheader

.lr.ph.i56.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a, %.lr.ph.i56.i.us.preheader
  %.0610.i58.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i56.i.us.preheader ], [ %i.dg, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a ]
  %.089.i59.i.us.epil.init = phi float [ %i.at, %.lr.ph.i56.i.us.preheader ], [ %i.df, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i56.i.us.epil

.lr.ph.i56.i.us.epil:                             ; preds = %.lr.ph.i56.i.us.epil, %.lr.ph.i56.i.us.epil.preheader
  %.0610.i58.i.us.epil = phi ptr [ %i.gz, %.lr.ph.i56.i.us.epil ], [ %.0610.i58.i.us.epil.init, %.lr.ph.i56.i.us.epil.preheader ] ; 2 uses
  %.089.i59.i.us.epil = phi float [ %i.gy, %.lr.ph.i56.i.us.epil ], [ %.089.i59.i.us.epil.init, %.lr.ph.i56.i.us.epil.preheader ]
  %epil.iter162 = phi i32 [ %epil.iter162.next, %.lr.ph.i56.i.us.epil ], [ 0, %.lr.ph.i56.i.us.epil.preheader ]
  %i.gx = load float, ptr %.0610.i58.i.us.epil, align 4, !tbaa !54
  %i.gy = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.us.epil, float %i.gx) ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0610.i58.i.us.epil, i64 %10
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i56.i.us.epil, !llvm.loop !181

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a: ; preds = %.lr.ph.i62.i.us
  br i1 %lcmp.mod156.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i62.i.us.epil.preheader

.lr.ph.i62.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a, %.lr.ph.i62.i.us.preheader
  %.0610.i64.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i62.i.us.preheader ], [ %i.ci, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a ]
  %.089.i65.i.us.epil.init = phi float [ %i.at, %.lr.ph.i62.i.us.preheader ], [ %i.ch, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i62.i.us.epil

.lr.ph.i62.i.us.epil:                             ; preds = %.lr.ph.i62.i.us.epil, %.lr.ph.i62.i.us.epil.preheader
  %.0610.i64.i.us.epil = phi ptr [ %i.hc, %.lr.ph.i62.i.us.epil ], [ %.0610.i64.i.us.epil.init, %.lr.ph.i62.i.us.epil.preheader ] ; 2 uses
  %.089.i65.i.us.epil = phi float [ %i.hb, %.lr.ph.i62.i.us.epil ], [ %.089.i65.i.us.epil.init, %.lr.ph.i62.i.us.epil.preheader ]
  %epil.iter155 = phi i32 [ %epil.iter155.next, %.lr.ph.i62.i.us.epil ], [ 0, %.lr.ph.i62.i.us.epil.preheader ]
  %i.ha = load float, ptr %.0610.i64.i.us.epil, align 4, !tbaa !54
  %i.hb = call nnan ninf nsz float @llvm.minnum.f32(float %i.ha, float %.089.i65.i.us.epil) ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0610.i64.i.us.epil, i64 %10
  %epil.iter155.next = add i32 %epil.iter155, 1   ; 2 uses
  %epil.iter155.cmp.not = icmp eq i32 %epil.iter155.next, %xtraiter154
  br i1 %epil.iter155.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i62.i.us.epil, !llvm.loop !182

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa: ; preds = %.lr.ph.i68.i.us
  br i1 %lcmp.mod.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i68.i.us.epil.preheader

.lr.ph.i68.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa, %.lr.ph.i68.i.us.preheader
  %.0610.i70.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i68.i.us.preheader ], [ %i.bk, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa ]
  %.089.i71.i.us.epil.init = phi float [ %i.at, %.lr.ph.i68.i.us.preheader ], [ %i.bj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph.i68.i.us.epil

.lr.ph.i68.i.us.epil:                             ; preds = %.lr.ph.i68.i.us.epil, %.lr.ph.i68.i.us.epil.preheader
  %.0610.i70.i.us.epil = phi ptr [ %i.hg, %.lr.ph.i68.i.us.epil ], [ %.0610.i70.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ] ; 2 uses
  %.089.i71.i.us.epil = phi float [ %i.hf, %.lr.ph.i68.i.us.epil ], [ %.089.i71.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i68.i.us.epil ], [ 0, %.lr.ph.i68.i.us.epil.preheader ]
  %i.hd = load float, ptr %.0610.i70.i.us.epil, align 4, !tbaa !54
  %i.he = call fast float @llvm.exp.f32(float %i.hd)
  %i.hf = fadd fast float %i.he, %.089.i71.i.us.epil ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i.us.epil, i64 %10
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i68.i.us.epil, !llvm.loop !183

_ZN4ncnnL9reductionEfPKfiii.exit.us:              ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa, %.lr.ph.i68.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a, %.lr.ph.i62.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a, %.lr.ph.i56.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a, %.lr.ph.i50.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a, %.lr.ph.i44.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a, %.lr.ph.i38.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.us = phi nsz float [ %i.at, %bb.c ], [ %i.gs, %.lr.ph.i44.i.us.epil ], [ %i.gv, %.lr.ph.i50.i.us.epil ], [ %i.gy, %.lr.ph.i56.i.us.epil ], [ %i.hb, %.lr.ph.i62.i.us.epil ], [ %i.gk, %.lr.ph.i.i.us.epil ], [ %i.go, %.lr.ph.i38.i.us.epil ], [ %i.at, %bb.j ], [ %i.at, %bb.i ], [ %i.at, %bb.h ], [ %i.at, %bb.g ], [ %i.at, %bb.f ], [ %i.at, %bb.e ], [ %i.at, %bb.d ], [ %i.gh, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa ], [ %i.fj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit140.unr-lcssa.a ], [ %i.et, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a ], [ %i.ed, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a ], [ %i.df, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a ], [ %i.ch, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a ], [ %i.bj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa ], [ %i.hf, %.lr.ph.i68.i.us.epil ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  store float %.0.i.us, ptr %i.hh, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !184

._crit_edge.us:                                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next107 to i32
  %exitcond109.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond109.not, label %._crit_edge85, label %.noexc44.us

._crit_edge85:                                    ; preds = %._crit_edge.us, %.noexc44.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge85, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge, label %.noexc20.lr.ph

.noexc20.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !185
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !185
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !185
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %6, align 4, !tbaa !44
  %i.r = load i32, ptr %7, align 4, !tbaa !44
  %i.s = load ptr, ptr %4, align 8, !tbaa !18
  %i.t = sext i32 %i.k to i64
  %i.u = add nsw i32 %i.j, 1
  br label %.noexc20

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc20
  %indvars.iv = phi i64 [ %i.t, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc20 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.w = load float, ptr %5, align 4, !tbaa !54
  %i.x = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.w, ptr noundef %i.v, i32 noundef %i.q, i32 noundef %i.r)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.noexc20

._crit_edge:                                      ; preds = %.noexc20, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not63 = icmp sgt i32 %i.k, %i.j
  br i1 %.not63, label %._crit_edge, label %.noexc37.lr.ph

.noexc37.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !188 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !188
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !188
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = load i32, ptr %4, align 4, !tbaa !44
  %.not28.not = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %7, align 4, !tbaa !44     ; 2 uses
  %i.s = load i32, ptr %8, align 4, !tbaa !44     ; 2 uses
  br i1 %.not28.not, label %.noexc37.lr.ph.split.us, label %.noexc37.lr.ph.split

.noexc37.lr.ph.split.us:                          ; preds = %.noexc37.lr.ph
  %i.t = load ptr, ptr %5, align 8, !tbaa !18
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  br label %.noexc37.us

.noexc37.us:                                      ; preds = %.noexc37.us, %.noexc37.lr.ph.split.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.noexc37.us ], [ %i.u, %.noexc37.lr.ph.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv69
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv69
  %i.y = load float, ptr %6, align 4, !tbaa !54
  %i.z = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.y, ptr noundef %i.w, i32 noundef %i.r, i32 noundef %i.s)
  store float %i.z, ptr %i.x, align 4, !tbaa !54
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 2 uses
  %lftr.wideiv72 = trunc i64 %indvars.iv.next70 to i32
  %exitcond73.not = icmp eq i32 %i.v, %lftr.wideiv72
  br i1 %exitcond73.not, label %._crit_edge, label %.noexc37.us

.noexc37.lr.ph.split:                             ; preds = %.noexc37.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ac = load ptr, ptr %5, align 8, !tbaa !18, !noalias !191
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !20, !noalias !191
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !42, !noalias !191
  %factor.op.mul65 = mul i64 %i.ad, %i.ae
  %i.af = sext i32 %i.k to i64
  %i.ag = add nsw i32 %i.j, 1
  br label %.noexc37

.noexc37:                                         ; preds = %.noexc37.lr.ph.split, %.noexc37
  %indvars.iv = phi i64 [ %i.af, %.noexc37.lr.ph.split ], [ %indvars.iv.next, %.noexc37 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %.reass66 = mul i64 %factor.op.mul65, %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.reass66
  %i.aj = load float, ptr %6, align 4, !tbaa !54
  %i.ak = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL9reductionEfPKfii(float noundef nofpclass(nan inf) %i.aj, ptr noundef %i.ah, i32 noundef %i.r, i32 noundef %i.s)
  store float %i.ak, ptr %i.ai, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ag, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.noexc37

._crit_edge:                                      ; preds = %.noexc37, %.noexc37.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.21:bb.a

scalar.ph188.preheader:                           ; preds = %.preheader.us.i62.i.us, %middle.block199
  %indvars.iv.i66.i.us.ph = phi i64 [ 0, %.preheader.us.i62.i.us ], [ %n.vec191, %middle.block199 ]
  %.114.us.i67.i.us.ph = phi float [ %.01316.us.i65.i.us, %.preheader.us.i62.i.us ], [ %i.cw, %middle.block199 ]
  br label %scalar.ph188

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv.i66.i.us = phi i64 [ %indvars.iv.next.i68.i.us, %scalar.ph188 ], [ %indvars.iv.i66.i.us.ph, %scalar.ph188.preheader ] ; 2 uses
  %.114.us.i67.i.us = phi float [ %i.da, %scalar.ph188 ], [ %.114.us.i67.i.us.ph, %scalar.ph188.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i64.i.us, i64 %indvars.iv.i66.i.us
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !54 ; 2 uses
  %i.cz = fmul fast float %i.cy, %i.cy
  %i.da = fadd fast float %i.cz, %.114.us.i67.i.us ; 2 uses
  %indvars.iv.next.i68.i.us = add nuw nsw i64 %indvars.iv.i66.i.us, 1 ; 2 uses
  %exitcond.not.i69.i.us = icmp eq i64 %indvars.iv.next.i68.i.us, %wide.trip.count.i117.i.us
  br i1 %exitcond.not.i69.i.us, label %._crit_edge.us.i70.i.us, label %scalar.ph188, !llvm.loop !283

._crit_edge.us.i70.i.us:                          ; preds = %scalar.ph188, %middle.block199
  %.lcssa167 = phi float [ %i.cw, %middle.block199 ], [ %i.da, %scalar.ph188 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i64.i.us, i64 %i.ac
  %i.dc = add nuw nsw i32 %.01018.us.i63.i.us, 1  ; 2 uses
  %exitcond23.not.i71.i.us = icmp eq i32 %i.dc, %i.x
  br i1 %exitcond23.not.i71.i.us, label %_ZN4ncnnL9reductionEfPKfiiii.exit.us, label %.preheader.us.i62.i.us, !llvm.loop !116

bb.i:                                             ; preds = %bb.c
  br i1 %brmerge110, label %_ZN4ncnnL9reductionEfPKfiiii.exit.us, label %.preheader.us.i48.i.us

.preheader.us.i48.i.us:                           ; preds = %bb.i, %._crit_edge.us.i56.i.us
  %.01018.us.i49.i.us = phi i32 [ %i.dr, %._crit_edge.us.i56.i.us ], [ 0, %bb.i ]
  %.01117.us.i50.i.us = phi ptr [ %i.dq, %._crit_edge.us.i56.i.us ], [ %.03484.us, %bb.i ] ; 3 uses
  %.01316.us.i51.i.us = phi float [ %.lcssa168, %._crit_edge.us.i56.i.us ], [ %i.aq, %bb.i ] ; 2 uses
  br i1 %min.iters.check173, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.preheader.us.i48.i.us
  %i.dd = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01316.us.i51.i.us, i64 0
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %vec.phi178 = phi <4 x float> [ %i.dd, %vector.ph174 ], [ %i.di, %vector.body176 ]
  %vec.phi179 = phi <4 x float> [ zeroinitializer, %vector.ph174 ], [ %i.dj, %vector.body176 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i50.i.us, i64 %index177 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load180 = load <4 x float>, ptr %i.de, align 4, !tbaa !54
  %wide.load181 = load <4 x float>, ptr %i.df, align 4, !tbaa !54
  %i.dg = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load180)
  %i.dh = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load181)
  %i.di = fadd fast <4 x float> %i.dg, %vec.phi178 ; 2 uses
  %i.dj = fadd fast <4 x float> %i.dh, %vec.phi179 ; 2 uses
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.dk, label %middle.block183, label %vector.body176, !llvm.loop !284

middle.block183:                                  ; preds = %vector.body176
  %bin.rdx184 = fadd fast <4 x float> %i.dj, %i.di
  %i.dl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx184) ; 2 uses
  br i1 %cmp.n185, label %._crit_edge.us.i56.i.us, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %.preheader.us.i48.i.us, %middle.block183
  %indvars.iv.i52.i.us.ph = phi i64 [ 0, %.preheader.us.i48.i.us ], [ %n.vec175, %middle.block183 ]
  %.114.us.i53.i.us.ph = phi float [ %.01316.us.i51.i.us, %.preheader.us.i48.i.us ], [ %i.dl, %middle.block183 ]
  br label %scalar.ph172

scalar.ph172:                                     ; preds = %scalar.ph172.preheader, %scalar.ph172
  %indvars.iv.i52.i.us = phi i64 [ %indvars.iv.next.i54.i.us, %scalar.ph172 ], [ %indvars.iv.i52.i.us.ph, %scalar.ph172.preheader ] ; 2 uses
  %.114.us.i53.i.us = phi float [ %i.dp, %scalar.ph172 ], [ %.114.us.i53.i.us.ph, %scalar.ph172.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i50.i.us, i64 %indvars.iv.i52.i.us
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !54
  %i.do = call fast float @llvm.fabs.f32(float %i.dn)
  %i.dp = fadd fast float %i.do, %.114.us.i53.i.us ; 2 uses
  %indvars.iv.next.i54.i.us = add nuw nsw i64 %indvars.iv.i52.i.us, 1 ; 2 uses
  %exitcond.not.i55.i.us = icmp eq i64 %indvars.iv.next.i54.i.us, %wide.trip.count.i117.i.us
  br i1 %exitcond.not.i55.i.us, label %._crit_edge.us.i56.i.us, label %scalar.ph172, !llvm.loop !285

._crit_edge.us.i56.i.us:                          ; preds = %scalar.ph172, %middle.block183
  %.lcssa168 = phi float [ %i.dl, %middle.block183 ], [ %i.dp, %scalar.ph172 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i50.i.us, i64 %i.ac
  %i.dr = add nuw nsw i32 %.01018.us.i49.i.us, 1  ; 2 uses
  %exitcond23.not.i57.i.us = icmp eq i32 %i.dr, %i.x
  br i1 %exitcond23.not.i57.i.us, label %_ZN4ncnnL9reductionEfPKfiiii.exit.us, label %.preheader.us.i48.i.us, !llvm.loop !113

bb.j:                                             ; preds = %bb.c
  br i1 %brmerge113, label %_ZN4ncnnL9reductionEfPKfiiii.exit.us, label %.preheader.us.i.i.us

.preheader.us.i.i.us:                             ; preds = %bb.j, %._crit_edge.us.i.i.us
  %.01018.us.i.i.us = phi i32 [ %i.ed, %._crit_edge.us.i.i.us ], [ 0, %bb.j ]
  %.01117.us.i.i.us = phi ptr [ %i.ec, %._crit_edge.us.i.i.us ], [ %.03484.us, %bb.j ] ; 3 uses
  %.01316.us.i.i.us = phi float [ %.lcssa169, %._crit_edge.us.i.i.us ], [ %i.aq, %bb.j ] ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i.i.us
  %i.ds = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01316.us.i.i.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ds, %vector.ph ], [ %i.dv, %vector.body ]
  %vec.phi170 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.dw, %vector.body ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i.i.us, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !54
  %wide.load171 = load <4 x float>, ptr %i.du, align 4, !tbaa !54
  %i.dv = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.dw = fadd fast <4 x float> %wide.load171, %vec.phi170 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.dw, %i.dv
  %i.dy = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i.i.us, %middle.block
  %indvars.iv.i.i.us.ph = phi i64 [ 0, %.preheader.us.i.i.us ], [ %n.vec, %middle.block ]
  %.114.us.i.i.us.ph = phi float [ %.01316.us.i.i.us, %.preheader.us.i.i.us ], [ %i.dy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us, %scalar.ph ], [ %indvars.iv.i.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.114.us.i.i.us = phi float [ %i.eb, %scalar.ph ], [ %.114.us.i.i.us.ph, %scalar.ph.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i.i.us, i64 %indvars.iv.i.i.us
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !54
  %i.eb = fadd fast float %i.ea, %.114.us.i.i.us  ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i117.i.us
  br i1 %exitcond.not.i.i.us, label %._crit_edge.us.i.i.us, label %scalar.ph, !llvm.loop !287

._crit_edge.us.i.i.us:                            ; preds = %scalar.ph, %middle.block
  %.lcssa169 = phi float [ %i.dy, %middle.block ], [ %i.eb, %scalar.ph ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.01117.us.i.i.us, i64 %i.ac
  %i.ed = add nuw nsw i32 %.01018.us.i.i.us, 1    ; 2 uses
  %exitcond23.not.i.i.us = icmp eq i32 %i.ed, %i.x
  br i1 %exitcond23.not.i.i.us, label %_ZN4ncnnL9reductionEfPKfiiii.exit.us, label %.preheader.us.i.i.us, !llvm.loop !110

_ZN4ncnnL9reductionEfPKfiiii.exit.us:             ; preds = %._crit_edge.us.i126.i.us, %._crit_edge.us.i112.i.us, %._crit_edge.us.i98.i.us, %._crit_edge.us.i84.i.us, %._crit_edge.us.i70.i.us, %._crit_edge.us.i56.i.us, %._crit_edge.us.i.i.us, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.us = phi nsz float [ %i.aq, %bb.c ], [ %.lcssa167, %._crit_edge.us.i70.i.us ], [ %.lcssa166, %._crit_edge.us.i84.i.us ], [ %.lcssa165, %._crit_edge.us.i98.i.us ], [ %.lcssa164, %._crit_edge.us.i112.i.us ], [ %.lcssa169, %._crit_edge.us.i.i.us ], [ %.lcssa168, %._crit_edge.us.i56.i.us ], [ %i.aq, %bb.j ], [ %i.aq, %bb.f ], [ %i.aq, %bb.i ], [ %i.aq, %bb.d ], [ %i.aq, %bb.h ], [ %i.aq, %bb.e ], [ %i.aq, %bb.g ], [ %.lcssa, %._crit_edge.us.i126.i.us ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  store float %.0.i.us, ptr %i.ee, align 4, !tbaa !54
  %i.ef = getelementptr inbounds [4 x i8], ptr %.03484.us, i64 %i.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !288

._crit_edge.us:                                   ; preds = %_ZN4ncnnL9reductionEfPKfiiii.exit.us
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next130 to i32
  %exitcond132.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond132.not, label %._crit_edge88, label %.noexc46.us

._crit_edge88:                                    ; preds = %._crit_edge.us, %.noexc46.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge88, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.22(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not53 = icmp sgt i32 %i.k, %i.j
  br i1 %.not53, label %._crit_edge57.split, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load i32, ptr %4, align 4, !tbaa !44     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  %10 = sext i32 %i.r to i64                      ; 51 uses
  br i1 %i.s, label %.lr.ph56.split, label %._crit_edge57.split

.lr.ph56.split:                                   ; preds = %.lr.ph56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !56, !noalias !289
  %i.y = load i32, ptr %i.v, align 8, !tbaa !57, !noalias !289
  %i.z = load ptr, ptr %6, align 8, !tbaa !18, !noalias !289
  %i.aa = sext i32 %i.x to i64
  %i.ab = sext i32 %i.y to i64
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !42, !noalias !289
  %factor.op.mul58 = mul nsw i64 %i.aa, %i.ab
  %factor.op.mul60 = mul i64 %factor.op.mul58, %i.ac
  %i.ad = load i32, ptr %7, align 4, !tbaa !44    ; 16 uses
  %i.ae = load i32, ptr %8, align 4, !tbaa !44    ; 8 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !20
  %i.ag = load i32, ptr %9, align 4, !tbaa !44
  %i.ah = icmp slt i32 %i.ae, 1                   ; 7 uses
  %i.ai = icmp slt i32 %i.ad, 1                   ; 7 uses
  %sext = shl i64 %i.af, 32
  %i.aj = ashr exact i64 %sext, 30                ; 7 uses
  %i.ak = sext i32 %i.k to i64
  %i.al = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.r to i64
  %brmerge80 = select i1 %i.ah, i1 true, i1 %i.ai
  %brmerge77 = select i1 %i.ah, i1 true, i1 %i.ai
  %brmerge74 = select i1 %i.ah, i1 true, i1 %i.ai
  %brmerge71 = select i1 %i.ah, i1 true, i1 %i.ai
  %brmerge68 = select i1 %i.ah, i1 true, i1 %i.ai
  %brmerge65 = select i1 %i.ah, i1 true, i1 %i.ai
  %brmerge = select i1 %i.ah, i1 true, i1 %i.ai
  %i.am = add i32 %i.ad, -1                       ; 7 uses
  %xtraiter = and i32 %i.ad, 3                    ; 3 uses
  %i.an = icmp ult i32 %i.am, 3
  %unroll_iter = and i32 %i.ad, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod153 = icmp ne i32 %xtraiter, 0
  %xtraiter155 = and i32 %i.ad, 7                 ; 3 uses
  %i.ao = icmp ult i32 %i.am, 7
  %unroll_iter160 = and i32 %i.ad, 2147483640
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  %lcmp.mod159 = icmp ne i32 %xtraiter155, 0
  %xtraiter163 = and i32 %i.ad, 7                 ; 3 uses
  %i.ap = icmp ult i32 %i.am, 7
  %unroll_iter168 = and i32 %i.ad, 2147483640
  %lcmp.mod165.not = icmp eq i32 %xtraiter163, 0
  %lcmp.mod167 = icmp ne i32 %xtraiter163, 0
  %xtraiter171 = and i32 %i.ad, 7                 ; 3 uses
  %i.aq = icmp ult i32 %i.am, 7
  %unroll_iter176 = and i32 %i.ad, 2147483640
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  %lcmp.mod175 = icmp ne i32 %xtraiter171, 0
  %xtraiter179 = and i32 %i.ad, 3                 ; 3 uses
  %i.ar = icmp ult i32 %i.am, 3
  %unroll_iter184 = and i32 %i.ad, 2147483644
  %lcmp.mod181.not = icmp eq i32 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i32 %xtraiter179, 0
  %xtraiter187 = and i32 %i.ad, 3                 ; 3 uses
  %i.as = icmp ult i32 %i.am, 3
  %unroll_iter192 = and i32 %i.ad, 2147483644
  %lcmp.mod189.not = icmp eq i32 %xtraiter187, 0
  %lcmp.mod191 = icmp ne i32 %xtraiter187, 0
  %xtraiter195 = and i32 %i.ad, 7                 ; 3 uses
  %i.at = icmp ult i32 %i.am, 7
  %unroll_iter200 = and i32 %i.ad, 2147483640
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  %lcmp.mod199 = icmp ne i32 %xtraiter195, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph56.split, %._crit_edge
  %indvars.iv94 = phi i64 [ %i.ak, %.lr.ph56.split ], [ %indvars.iv.next95, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %.reass59.reass = mul i64 %factor.op.mul60, %indvars.iv94
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 %.reass59.reass
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge57.split, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aw = load float, ptr %5, align 4, !tbaa !54  ; 15 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 7 uses
  switch i32 %i.ag, label %_ZN4ncnn3MatD2Ev.exit [
    i32 0, label %bb.d
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 6, label %bb.j
    i32 4, label %bb.l
    i32 5, label %bb.n
    i32 10, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %brmerge, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.d, %._crit_edge.us.i.i
  %.01322.us.i.i = phi i32 [ %i.ca, %._crit_edge.us.i.i ], [ 0, %bb.d ]
  %.01421.us.i.i = phi ptr [ %i.bz, %._crit_edge.us.i.i ], [ %i.ax, %bb.d ] ; 3 uses
  %.01620.us.i.i = phi float [ %.lcssa151, %._crit_edge.us.i.i ], [ %i.aw, %bb.d ] ; 2 uses
  br i1 %i.at, label %.epil.preheader194, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %.01218.us.i.i = phi ptr [ %i.bv, %.preheader.us.i.i.new ], [ %.01421.us.i.i, %.preheader.us.i.i ] ; 2 uses
  %.117.us.i.i = phi float [ %i.bu, %.preheader.us.i.i.new ], [ %.01620.us.i.i, %.preheader.us.i.i ]
  %niter201 = phi i32 [ %niter201.next.7, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.ay = load float, ptr %.01218.us.i.i, align 4, !tbaa !54
  %i.az = fadd fast float %i.ay, %.117.us.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i.i, i64 %10 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !54
  %i.bc = fadd fast float %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %10 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !54
  %i.bf = fadd fast float %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %10 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !54
  %i.bi = fadd fast float %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %10 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !54
  %i.bl = fadd fast float %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %10 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !54
  %i.bo = fadd fast float %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %10 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !54
  %i.br = fadd fast float %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %10 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !54
  %i.bu = fadd fast float %i.bt, %i.br            ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %10 ; 2 uses
  %niter201.next.7 = add nuw nsw i32 %niter201, 8 ; 2 uses
  %niter201.ncmp.7 = icmp eq i32 %niter201.next.7, %unroll_iter200
  br i1 %niter201.ncmp.7, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !129

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod197.not, label %._crit_edge.us.i.i, label %.epil.preheader194

.epil.preheader194:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %.01218.us.i.i.epil.init = phi ptr [ %.01421.us.i.i, %.preheader.us.i.i ], [ %i.bv, %._crit_edge.us.i.i.unr-lcssa ]
  %.117.us.i.i.epil.init = phi float [ %.01620.us.i.i, %.preheader.us.i.i ], [ %i.bu, %._crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader194
  %.01218.us.i.i.epil = phi ptr [ %.01218.us.i.i.epil.init, %.epil.preheader194 ], [ %i.by, %bb.e ] ; 2 uses
  %.117.us.i.i.epil = phi float [ %.117.us.i.i.epil.init, %.epil.preheader194 ], [ %i.bx, %bb.e ]
  %epil.iter196 = phi i32 [ 0, %.epil.preheader194 ], [ %epil.iter196.next, %bb.e ]
  %i.bw = load float, ptr %.01218.us.i.i.epil, align 4, !tbaa !54
  %i.bx = fadd fast float %i.bw, %.117.us.i.i.epil ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i.i.epil, i64 %10
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %._crit_edge.us.i.i, label %bb.e, !llvm.loop !292

._crit_edge.us.i.i:                               ; preds = %bb.e, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa151 = phi float [ %i.bu, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bx, %bb.e ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.01421.us.i.i, i64 %i.aj
  %i.ca = add nuw nsw i32 %.01322.us.i.i, 1       ; 2 uses
  %exitcond26.not.i.i = icmp eq i32 %i.ca, %i.ae
  br i1 %exitcond26.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i.i, !llvm.loop !131

bb.f:                                             ; preds = %bb.c
  br i1 %brmerge65, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i53.i

.preheader.us.i53.i:                              ; preds = %bb.f, %._crit_edge.us.i61.i
  %.01322.us.i54.i = phi i32 [ %i.cw, %._crit_edge.us.i61.i ], [ 0, %bb.f ]
  %.01421.us.i55.i = phi ptr [ %i.cv, %._crit_edge.us.i61.i ], [ %i.ax, %bb.f ] ; 3 uses
  %.01620.us.i56.i = phi float [ %.lcssa150, %._crit_edge.us.i61.i ], [ %i.aw, %bb.f ] ; 2 uses
  br i1 %i.as, label %.epil.preheader186, label %.preheader.us.i53.i.new

.preheader.us.i53.i.new:                          ; preds = %.preheader.us.i53.i, %.preheader.us.i53.i.new
  %.01218.us.i58.i = phi ptr [ %i.cq, %.preheader.us.i53.i.new ], [ %.01421.us.i55.i, %.preheader.us.i53.i ] ; 2 uses
  %.117.us.i59.i = phi float [ %i.cp, %.preheader.us.i53.i.new ], [ %.01620.us.i56.i, %.preheader.us.i53.i ]
  %niter193 = phi i32 [ %niter193.next.3, %.preheader.us.i53.i.new ], [ 0, %.preheader.us.i53.i ]
  %i.cb = load float, ptr %.01218.us.i58.i, align 4, !tbaa !54
  %i.cc = call fast float @llvm.fabs.f32(float %i.cb)
  %i.cd = fadd fast float %i.cc, %.117.us.i59.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i58.i, i64 %10 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !54
  %i.cg = call fast float @llvm.fabs.f32(float %i.cf)
  %i.ch = fadd fast float %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %10 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !54
  %i.ck = call fast float @llvm.fabs.f32(float %i.cj)
  %i.cl = fadd fast float %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %10 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !54
  %i.co = call fast float @llvm.fabs.f32(float %i.cn)
  %i.cp = fadd fast float %i.co, %i.cl            ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %10 ; 2 uses
  %niter193.next.3 = add nuw nsw i32 %niter193, 4 ; 2 uses
  %niter193.ncmp.3 = icmp eq i32 %niter193.next.3, %unroll_iter192
  br i1 %niter193.ncmp.3, label %._crit_edge.us.i61.i.unr-lcssa, label %.preheader.us.i53.i.new, !llvm.loop !132

._crit_edge.us.i61.i.unr-lcssa:                   ; preds = %.preheader.us.i53.i.new
  br i1 %lcmp.mod189.not, label %._crit_edge.us.i61.i, label %.epil.preheader186

.epil.preheader186:                               ; preds = %._crit_edge.us.i61.i.unr-lcssa, %.preheader.us.i53.i
  %.01218.us.i58.i.epil.init = phi ptr [ %.01421.us.i55.i, %.preheader.us.i53.i ], [ %i.cq, %._crit_edge.us.i61.i.unr-lcssa ]
  %.117.us.i59.i.epil.init = phi float [ %.01620.us.i56.i, %.preheader.us.i53.i ], [ %i.cp, %._crit_edge.us.i61.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader186
  %.01218.us.i58.i.epil = phi ptr [ %.01218.us.i58.i.epil.init, %.epil.preheader186 ], [ %i.cu, %bb.g ] ; 2 uses
  %.117.us.i59.i.epil = phi float [ %.117.us.i59.i.epil.init, %.epil.preheader186 ], [ %i.ct, %bb.g ]
  %epil.iter188 = phi i32 [ 0, %.epil.preheader186 ], [ %epil.iter188.next, %bb.g ]
  %i.cr = load float, ptr %.01218.us.i58.i.epil, align 4, !tbaa !54
  %i.cs = call fast float @llvm.fabs.f32(float %i.cr)
  %i.ct = fadd fast float %i.cs, %.117.us.i59.i.epil ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i58.i.epil, i64 %10
  %epil.iter188.next = add i32 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i32 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %._crit_edge.us.i61.i, label %bb.g, !llvm.loop !293

._crit_edge.us.i61.i:                             ; preds = %bb.g, %._crit_edge.us.i61.i.unr-lcssa
  %.lcssa150 = phi float [ %i.cp, %._crit_edge.us.i61.i.unr-lcssa ], [ %i.ct, %bb.g ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.01421.us.i55.i, i64 %i.aj
  %i.cw = add nuw nsw i32 %.01322.us.i54.i, 1     ; 2 uses
  %exitcond26.not.i62.i = icmp eq i32 %i.cw, %i.ae
end_hunk_2
begin_hunk_3_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.22:bb.a

.preheader.us.i89.i:                              ; preds = %bb.l, %._crit_edge.us.i97.i
  %.01322.us.i90.i = phi i32 [ %i.fy, %._crit_edge.us.i97.i ], [ 0, %bb.l ]
  %.01421.us.i91.i = phi ptr [ %i.fx, %._crit_edge.us.i97.i ], [ %i.ax, %bb.l ] ; 3 uses
  %.01620.us.i92.i = phi float [ %.lcssa147, %._crit_edge.us.i97.i ], [ %i.aw, %bb.l ] ; 2 uses
  br i1 %i.ap, label %.epil.preheader162, label %.preheader.us.i89.i.new

.preheader.us.i89.i.new:                          ; preds = %.preheader.us.i89.i, %.preheader.us.i89.i.new
  %.01218.us.i94.i = phi ptr [ %i.ft, %.preheader.us.i89.i.new ], [ %.01421.us.i91.i, %.preheader.us.i89.i ] ; 2 uses
  %.117.us.i95.i = phi float [ %i.fs, %.preheader.us.i89.i.new ], [ %.01620.us.i92.i, %.preheader.us.i89.i ]
  %niter169 = phi i32 [ %niter169.next.7, %.preheader.us.i89.i.new ], [ 0, %.preheader.us.i89.i ]
  %i.ew = load float, ptr %.01218.us.i94.i, align 4, !tbaa !54
  %i.ex = call nnan ninf nsz float @llvm.maxnum.f32(float %.117.us.i95.i, float %i.ew)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i94.i, i64 %10 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !54
  %i.fa = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ex, float %i.ez)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %10 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !54
  %i.fd = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fa, float %i.fc)
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %10 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !54
  %i.fg = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fd, float %i.ff)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %10 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !54
  %i.fj = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fg, float %i.fi)
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %10 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !54
  %i.fm = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fj, float %i.fl)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %10 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !54
  %i.fp = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fm, float %i.fo)
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %10 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !54
  %i.fs = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fp, float %i.fr) ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %10 ; 2 uses
  %niter169.next.7 = add nuw nsw i32 %niter169, 8 ; 2 uses
  %niter169.ncmp.7 = icmp eq i32 %niter169.next.7, %unroll_iter168
  br i1 %niter169.ncmp.7, label %._crit_edge.us.i97.i.unr-lcssa, label %.preheader.us.i89.i.new, !llvm.loop !141

._crit_edge.us.i97.i.unr-lcssa:                   ; preds = %.preheader.us.i89.i.new
  br i1 %lcmp.mod165.not, label %._crit_edge.us.i97.i, label %.epil.preheader162

.epil.preheader162:                               ; preds = %._crit_edge.us.i97.i.unr-lcssa, %.preheader.us.i89.i
  %.01218.us.i94.i.epil.init = phi ptr [ %.01421.us.i91.i, %.preheader.us.i89.i ], [ %i.ft, %._crit_edge.us.i97.i.unr-lcssa ]
  %.117.us.i95.i.epil.init = phi float [ %.01620.us.i92.i, %.preheader.us.i89.i ], [ %i.fs, %._crit_edge.us.i97.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader162
  %.01218.us.i94.i.epil = phi ptr [ %.01218.us.i94.i.epil.init, %.epil.preheader162 ], [ %i.fw, %bb.m ] ; 2 uses
  %.117.us.i95.i.epil = phi float [ %.117.us.i95.i.epil.init, %.epil.preheader162 ], [ %i.fv, %bb.m ]
  %epil.iter164 = phi i32 [ 0, %.epil.preheader162 ], [ %epil.iter164.next, %bb.m ]
  %i.fu = load float, ptr %.01218.us.i94.i.epil, align 4, !tbaa !54
  %i.fv = call nnan ninf nsz float @llvm.maxnum.f32(float %.117.us.i95.i.epil, float %i.fu) ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i94.i.epil, i64 %10
  %epil.iter164.next = add i32 %epil.iter164, 1   ; 2 uses
  %epil.iter164.cmp.not = icmp eq i32 %epil.iter164.next, %xtraiter163
  br i1 %epil.iter164.cmp.not, label %._crit_edge.us.i97.i, label %bb.m, !llvm.loop !296

._crit_edge.us.i97.i:                             ; preds = %bb.m, %._crit_edge.us.i97.i.unr-lcssa
  %.lcssa147 = phi float [ %i.fs, %._crit_edge.us.i97.i.unr-lcssa ], [ %i.fv, %bb.m ] ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.01421.us.i91.i, i64 %i.aj
  %i.fy = add nuw nsw i32 %.01322.us.i90.i, 1     ; 2 uses
  %exitcond26.not.i98.i = icmp eq i32 %i.fy, %i.ae
  br i1 %exitcond26.not.i98.i, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i89.i, !llvm.loop !143

bb.n:                                             ; preds = %bb.c
  br i1 %brmerge77, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i101.i

.preheader.us.i101.i:                             ; preds = %bb.n, %._crit_edge.us.i109.i
  %.01322.us.i102.i = phi i32 [ %i.hb, %._crit_edge.us.i109.i ], [ 0, %bb.n ]
  %.01421.us.i103.i = phi ptr [ %i.ha, %._crit_edge.us.i109.i ], [ %i.ax, %bb.n ] ; 3 uses
  %.01620.us.i104.i = phi float [ %.lcssa146, %._crit_edge.us.i109.i ], [ %i.aw, %bb.n ] ; 2 uses
  br i1 %i.ao, label %.epil.preheader154, label %.preheader.us.i101.i.new

.preheader.us.i101.i.new:                         ; preds = %.preheader.us.i101.i, %.preheader.us.i101.i.new
  %.01218.us.i106.i = phi ptr [ %i.gw, %.preheader.us.i101.i.new ], [ %.01421.us.i103.i, %.preheader.us.i101.i ] ; 2 uses
  %.117.us.i107.i = phi float [ %i.gv, %.preheader.us.i101.i.new ], [ %.01620.us.i104.i, %.preheader.us.i101.i ]
  %niter161 = phi i32 [ %niter161.next.7, %.preheader.us.i101.i.new ], [ 0, %.preheader.us.i101.i ]
  %i.fz = load float, ptr %.01218.us.i106.i, align 4, !tbaa !54
  %i.ga = call nnan ninf nsz float @llvm.minnum.f32(float %i.fz, float %.117.us.i107.i)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i106.i, i64 %10 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !54
  %i.gd = call nnan ninf nsz float @llvm.minnum.f32(float %i.gc, float %i.ga)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %10 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !54
  %i.gg = call nnan ninf nsz float @llvm.minnum.f32(float %i.gf, float %i.gd)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %10 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !54
  %i.gj = call nnan ninf nsz float @llvm.minnum.f32(float %i.gi, float %i.gg)
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %10 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !54
  %i.gm = call nnan ninf nsz float @llvm.minnum.f32(float %i.gl, float %i.gj)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %10 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !54
  %i.gp = call nnan ninf nsz float @llvm.minnum.f32(float %i.go, float %i.gm)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %10 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !54
  %i.gs = call nnan ninf nsz float @llvm.minnum.f32(float %i.gr, float %i.gp)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %10 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !54
  %i.gv = call nnan ninf nsz float @llvm.minnum.f32(float %i.gu, float %i.gs) ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %10 ; 2 uses
  %niter161.next.7 = add nuw nsw i32 %niter161, 8 ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.us.i109.i.unr-lcssa, label %.preheader.us.i101.i.new, !llvm.loop !144

._crit_edge.us.i109.i.unr-lcssa:                  ; preds = %.preheader.us.i101.i.new
  br i1 %lcmp.mod157.not, label %._crit_edge.us.i109.i, label %.epil.preheader154

.epil.preheader154:                               ; preds = %._crit_edge.us.i109.i.unr-lcssa, %.preheader.us.i101.i
  %.01218.us.i106.i.epil.init = phi ptr [ %.01421.us.i103.i, %.preheader.us.i101.i ], [ %i.gw, %._crit_edge.us.i109.i.unr-lcssa ]
  %.117.us.i107.i.epil.init = phi float [ %.01620.us.i104.i, %.preheader.us.i101.i ], [ %i.gv, %._crit_edge.us.i109.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader154
  %.01218.us.i106.i.epil = phi ptr [ %.01218.us.i106.i.epil.init, %.epil.preheader154 ], [ %i.gz, %bb.o ] ; 2 uses
  %.117.us.i107.i.epil = phi float [ %.117.us.i107.i.epil.init, %.epil.preheader154 ], [ %i.gy, %bb.o ]
  %epil.iter156 = phi i32 [ 0, %.epil.preheader154 ], [ %epil.iter156.next, %bb.o ]
  %i.gx = load float, ptr %.01218.us.i106.i.epil, align 4, !tbaa !54
  %i.gy = call nnan ninf nsz float @llvm.minnum.f32(float %i.gx, float %.117.us.i107.i.epil) ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i106.i.epil, i64 %10
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %._crit_edge.us.i109.i, label %bb.o, !llvm.loop !297

._crit_edge.us.i109.i:                            ; preds = %bb.o, %._crit_edge.us.i109.i.unr-lcssa
  %.lcssa146 = phi float [ %i.gv, %._crit_edge.us.i109.i.unr-lcssa ], [ %i.gy, %bb.o ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.01421.us.i103.i, i64 %i.aj
  %i.hb = add nuw nsw i32 %.01322.us.i102.i, 1    ; 2 uses
  %exitcond26.not.i110.i = icmp eq i32 %i.hb, %i.ae
  br i1 %exitcond26.not.i110.i, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i101.i, !llvm.loop !146

bb.p:                                             ; preds = %bb.c
  br i1 %brmerge80, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i113.i

.preheader.us.i113.i:                             ; preds = %bb.p, %._crit_edge.us.i121.i
  %.01322.us.i114.i = phi i32 [ %i.hx, %._crit_edge.us.i121.i ], [ 0, %bb.p ]
  %.01421.us.i115.i = phi ptr [ %i.hw, %._crit_edge.us.i121.i ], [ %i.ax, %bb.p ] ; 3 uses
  %.01620.us.i116.i = phi float [ %.lcssa, %._crit_edge.us.i121.i ], [ %i.aw, %bb.p ] ; 2 uses
  br i1 %i.an, label %.epil.preheader, label %.preheader.us.i113.i.new

.preheader.us.i113.i.new:                         ; preds = %.preheader.us.i113.i, %.preheader.us.i113.i.new
  %.01218.us.i118.i = phi ptr [ %i.hr, %.preheader.us.i113.i.new ], [ %.01421.us.i115.i, %.preheader.us.i113.i ] ; 2 uses
  %.117.us.i119.i = phi float [ %i.hq, %.preheader.us.i113.i.new ], [ %.01620.us.i116.i, %.preheader.us.i113.i ]
  %niter = phi i32 [ %niter.next.3, %.preheader.us.i113.i.new ], [ 0, %.preheader.us.i113.i ]
  %i.hc = load float, ptr %.01218.us.i118.i, align 4, !tbaa !54
  %i.hd = call fast float @llvm.exp.f32(float %i.hc)
  %i.he = fadd fast float %i.hd, %.117.us.i119.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i118.i, i64 %10 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !54
  %i.hh = call fast float @llvm.exp.f32(float %i.hg)
  %i.hi = fadd fast float %i.hh, %i.he
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %10 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !54
  %i.hl = call fast float @llvm.exp.f32(float %i.hk)
  %i.hm = fadd fast float %i.hl, %i.hi
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %10 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !54
  %i.hp = call fast float @llvm.exp.f32(float %i.ho)
  %i.hq = fadd fast float %i.hp, %i.hm            ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %10 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i121.i.unr-lcssa, label %.preheader.us.i113.i.new, !llvm.loop !147

._crit_edge.us.i121.i.unr-lcssa:                  ; preds = %.preheader.us.i113.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i121.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i121.i.unr-lcssa, %.preheader.us.i113.i
  %.01218.us.i118.i.epil.init = phi ptr [ %.01421.us.i115.i, %.preheader.us.i113.i ], [ %i.hr, %._crit_edge.us.i121.i.unr-lcssa ]
  %.117.us.i119.i.epil.init = phi float [ %.01620.us.i116.i, %.preheader.us.i113.i ], [ %i.hq, %._crit_edge.us.i121.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.01218.us.i118.i.epil = phi ptr [ %.01218.us.i118.i.epil.init, %.epil.preheader ], [ %i.hv, %bb.q ] ; 2 uses
  %.117.us.i119.i.epil = phi float [ %.117.us.i119.i.epil.init, %.epil.preheader ], [ %i.hu, %bb.q ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.hs = load float, ptr %.01218.us.i118.i.epil, align 4, !tbaa !54
  %i.ht = call fast float @llvm.exp.f32(float %i.hs)
  %i.hu = fadd fast float %i.ht, %.117.us.i119.i.epil ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.01218.us.i118.i.epil, i64 %10
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i121.i, label %bb.q, !llvm.loop !298

._crit_edge.us.i121.i:                            ; preds = %bb.q, %._crit_edge.us.i121.i.unr-lcssa
  %.lcssa = phi float [ %i.hq, %._crit_edge.us.i121.i.unr-lcssa ], [ %i.hu, %bb.q ] ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %.01421.us.i115.i, i64 %i.aj
  %i.hx = add nuw nsw i32 %.01322.us.i114.i, 1    ; 2 uses
  %exitcond26.not.i122.i = icmp eq i32 %i.hx, %i.ae
  br i1 %exitcond26.not.i122.i, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.us.i113.i, !llvm.loop !149

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge.us.i121.i, %._crit_edge.us.i109.i, %._crit_edge.us.i97.i, %._crit_edge.us.i85.i, %._crit_edge.us.i73.i, %._crit_edge.us.i61.i, %._crit_edge.us.i.i, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c
  %.0.i = phi nsz float [ %i.aw, %bb.c ], [ %.lcssa149, %._crit_edge.us.i73.i ], [ %i.aw, %bb.n ], [ %.lcssa147, %._crit_edge.us.i97.i ], [ %.lcssa146, %._crit_edge.us.i109.i ], [ %.lcssa151, %._crit_edge.us.i.i ], [ %.lcssa150, %._crit_edge.us.i61.i ], [ %i.aw, %bb.d ], [ %.lcssa148, %._crit_edge.us.i85.i ], [ %i.aw, %bb.f ], [ %i.aw, %bb.l ], [ %i.aw, %bb.h ], [ %i.aw, %bb.p ], [ %i.aw, %bb.j ], [ %.lcssa, %._crit_edge.us.i121.i ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store float %.0.i, ptr %i.hy, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !299

._crit_edge57.split:                              ; preds = %._crit_edge, %.lr.ph56, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge57.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.23(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge86, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !300
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !300
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !300
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !44
  %.not36.not = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.u = load i32, ptr %6, align 4, !tbaa !44     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  %11 = sext i32 %i.u to i64                      ; 51 uses
  br i1 %i.v, label %.noexc45.lr.ph.split.us, label %._crit_edge86

.noexc45.lr.ph.split.us:                          ; preds = %.noexc45.lr.ph
  %i.w = load i32, ptr %8, align 4, !tbaa !44
  %i.x = load i32, ptr %9, align 4, !tbaa !44
  %i.y = mul i32 %i.x, %i.w                       ; 21 uses
  %i.z = load i32, ptr %10, align 4, !tbaa !44
  %i.aa = icmp sgt i32 %i.y, 0                    ; 7 uses
  %i.ab = sext i32 %i.k to i64
  %i.ac = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.u to i64
  %i.ad = add i32 %i.y, -1                        ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !18
  %i.af = load i64, ptr %i.s, align 8, !tbaa !42
  %xtraiter = and i32 %i.y, 3                     ; 3 uses
  %i.ag = icmp ult i32 %i.y, 4
  %unroll_iter = and i32 %i.y, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod154 = icmp ne i32 %xtraiter, 0
  %xtraiter155 = and i32 %i.y, 7                  ; 3 uses
  %i.ah = icmp ult i32 %i.y, 8
  %unroll_iter160 = and i32 %i.y, 2147483640
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  %lcmp.mod159 = icmp ne i32 %xtraiter155, 0
  %xtraiter162 = and i32 %i.y, 7                  ; 3 uses
  %i.ai = icmp ult i32 %i.y, 8
  %unroll_iter167 = and i32 %i.y, 2147483640
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  %lcmp.mod166 = icmp ne i32 %xtraiter162, 0
  %xtraiter169 = and i32 %i.y, 7                  ; 3 uses
  %i.aj = icmp ult i32 %i.y, 8
  %unroll_iter174 = and i32 %i.y, 2147483640
  %lcmp.mod171.not = icmp eq i32 %xtraiter169, 0
  %lcmp.mod173 = icmp ne i32 %xtraiter169, 0
  %xtraiter176 = and i32 %i.y, 3                  ; 3 uses
  %i.ak = icmp ult i32 %i.y, 4
  %unroll_iter181 = and i32 %i.y, 2147483644
  %lcmp.mod178.not = icmp eq i32 %xtraiter176, 0
  %lcmp.mod180 = icmp ne i32 %xtraiter176, 0
  %xtraiter183 = and i32 %i.y, 3                  ; 3 uses
  %i.al = icmp ult i32 %i.ad, 3
  %unroll_iter188 = and i32 %i.y, 2147483644
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  %lcmp.mod187 = icmp ne i32 %xtraiter183, 0
  %xtraiter190 = and i32 %i.y, 7                  ; 3 uses
  %i.am = icmp ult i32 %i.ad, 7
  %unroll_iter195 = and i32 %i.y, 2147483640
  %lcmp.mod192.not = icmp eq i32 %xtraiter190, 0
  %lcmp.mod194 = icmp ne i32 %xtraiter190, 0
  br label %.noexc45.us

.noexc45.us:                                      ; preds = %._crit_edge.us, %.noexc45.lr.ph.split.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.us ], [ %i.ab, %.noexc45.lr.ph.split.us ] ; 4 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv107
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  br i1 %.not36.not, label %_ZN4ncnn3Mat7channelEi.exit.thread.us, label %.noexc46.us

.noexc46.us:                                      ; preds = %.noexc45.us
  %i.ao = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !303
  %i.ap = mul i64 %i.ao, %indvars.iv107
  br label %.critedge.us

_ZN4ncnn3Mat7channelEi.exit.thread.us:            ; preds = %.noexc45.us
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !56
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %indvars.iv107, %i.ar
  br label %.critedge.us

.critedge.us:                                     ; preds = %_ZN4ncnn3Mat7channelEi.exit.thread.us, %.noexc46.us
  %.sink127 = phi i64 [ %i.as, %_ZN4ncnn3Mat7channelEi.exit.thread.us ], [ %i.ap, %.noexc46.us ]
  %i.at = mul i64 %.sink127, %i.af
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.at
  br label %bb.c

bb.c:                                             ; preds = %.critedge.us, %_ZN4ncnnL9reductionEfPKfiii.exit.us
  %indvars.iv = phi i64 [ 0, %.critedge.us ], [ %indvars.iv.next, %_ZN4ncnnL9reductionEfPKfiii.exit.us ] ; 3 uses
  %i.av = load float, ptr %7, align 4, !tbaa !54  ; 22 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv ; 14 uses
  switch i32 %i.z, label %_ZN4ncnnL9reductionEfPKfiii.exit.us [
    i32 0, label %bb.j
    i32 1, label %bb.i
    i32 2, label %bb.h
    i32 6, label %bb.g
    i32 4, label %bb.f
    i32 5, label %bb.e
    i32 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.i68.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i68.i.us.preheader:                        ; preds = %bb.d
  br i1 %i.ag, label %.lr.ph.i68.i.us.epil.preheader, label %.lr.ph.i68.i.us

.lr.ph.i68.i.us:                                  ; preds = %.lr.ph.i68.i.us.preheader, %.lr.ph.i68.i.us
  %.0610.i70.i.us = phi ptr [ %i.bm, %.lr.ph.i68.i.us ], [ %i.aw, %.lr.ph.i68.i.us.preheader ] ; 2 uses
  %.089.i71.i.us = phi float [ %i.bl, %.lr.ph.i68.i.us ], [ %i.av, %.lr.ph.i68.i.us.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i68.i.us ], [ 0, %.lr.ph.i68.i.us.preheader ]
  %i.ax = load float, ptr %.0610.i70.i.us, align 4, !tbaa !54
  %i.ay = call fast float @llvm.exp.f32(float %i.ax)
  %i.az = fadd fast float %i.ay, %.089.i71.i.us
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i.us, i64 %11 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !54
  %i.bc = call fast float @llvm.exp.f32(float %i.bb)
  %i.bd = fadd fast float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %11 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !54
  %i.bg = call fast float @llvm.exp.f32(float %i.bf)
  %i.bh = fadd fast float %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %11 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !54
  %i.bk = call fast float @llvm.exp.f32(float %i.bj)
  %i.bl = fadd fast float %i.bk, %i.bh            ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %11 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa, label %.lr.ph.i68.i.us, !llvm.loop !90

bb.e:                                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.i62.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i62.i.us.preheader:                        ; preds = %bb.e
  br i1 %i.ah, label %.lr.ph.i62.i.us.epil.preheader, label %.lr.ph.i62.i.us

.lr.ph.i62.i.us:                                  ; preds = %.lr.ph.i62.i.us.preheader, %.lr.ph.i62.i.us
  %.0610.i64.i.us = phi ptr [ %i.ck, %.lr.ph.i62.i.us ], [ %i.aw, %.lr.ph.i62.i.us.preheader ] ; 2 uses
  %.089.i65.i.us = phi float [ %i.cj, %.lr.ph.i62.i.us ], [ %i.av, %.lr.ph.i62.i.us.preheader ]
  %niter161 = phi i32 [ %niter161.next.7, %.lr.ph.i62.i.us ], [ 0, %.lr.ph.i62.i.us.preheader ]
  %i.bn = load float, ptr %.0610.i64.i.us, align 4, !tbaa !54
  %i.bo = call nnan ninf nsz float @llvm.minnum.f32(float %i.bn, float %.089.i65.i.us)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0610.i64.i.us, i64 %11 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !54
  %i.br = call nnan ninf nsz float @llvm.minnum.f32(float %i.bq, float %i.bo)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %11 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !54
  %i.bu = call nnan ninf nsz float @llvm.minnum.f32(float %i.bt, float %i.br)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %11 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !54
  %i.bx = call nnan ninf nsz float @llvm.minnum.f32(float %i.bw, float %i.bu)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %11 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !54
  %i.ca = call nnan ninf nsz float @llvm.minnum.f32(float %i.bz, float %i.bx)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %11 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !54
  %i.cd = call nnan ninf nsz float @llvm.minnum.f32(float %i.cc, float %i.ca)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %11 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !54
  %i.cg = call nnan ninf nsz float @llvm.minnum.f32(float %i.cf, float %i.cd)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %11 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !54
  %i.cj = call nnan ninf nsz float @llvm.minnum.f32(float %i.ci, float %i.cg) ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %11 ; 2 uses
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a, label %.lr.ph.i62.i.us, !llvm.loop !89

bb.f:                                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.i56.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i56.i.us.preheader:                        ; preds = %bb.f
  br i1 %i.ai, label %.lr.ph.i56.i.us.epil.preheader, label %.lr.ph.i56.i.us

.lr.ph.i56.i.us:                                  ; preds = %.lr.ph.i56.i.us.preheader, %.lr.ph.i56.i.us
  %.0610.i58.i.us = phi ptr [ %i.di, %.lr.ph.i56.i.us ], [ %i.aw, %.lr.ph.i56.i.us.preheader ] ; 2 uses
  %.089.i59.i.us = phi float [ %i.dh, %.lr.ph.i56.i.us ], [ %i.av, %.lr.ph.i56.i.us.preheader ]
  %niter168 = phi i32 [ %niter168.next.7, %.lr.ph.i56.i.us ], [ 0, %.lr.ph.i56.i.us.preheader ]
  %i.cl = load float, ptr %.0610.i58.i.us, align 4, !tbaa !54
  %i.cm = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.us, float %i.cl)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0610.i58.i.us, i64 %11 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !54
  %i.cp = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cm, float %i.co)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %11 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !54
  %i.cs = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cp, float %i.cr)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %11 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !54
  %i.cv = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cs, float %i.cu)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %11 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !54
  %i.cy = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cv, float %i.cx)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %11 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !54
  %i.db = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cy, float %i.da)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %11 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !54
  %i.de = call nnan ninf nsz float @llvm.maxnum.f32(float %i.db, float %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %11 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !54
  %i.dh = call nnan ninf nsz float @llvm.maxnum.f32(float %i.de, float %i.dg) ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %11 ; 2 uses
  %niter168.next.7 = add i32 %niter168, 8         ; 2 uses
  %niter168.ncmp.7 = icmp eq i32 %niter168.next.7, %unroll_iter167
  br i1 %niter168.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a, label %.lr.ph.i56.i.us, !llvm.loop !88

bb.g:                                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.i50.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i50.i.us.preheader:                        ; preds = %bb.g
  br i1 %i.aj, label %.lr.ph.i50.i.us.epil.preheader, label %.lr.ph.i50.i.us

.lr.ph.i50.i.us:                                  ; preds = %.lr.ph.i50.i.us.preheader, %.lr.ph.i50.i.us
  %.0610.i52.i.us = phi ptr [ %i.eg, %.lr.ph.i50.i.us ], [ %i.aw, %.lr.ph.i50.i.us.preheader ] ; 2 uses
  %.089.i53.i.us = phi float [ %i.ef, %.lr.ph.i50.i.us ], [ %i.av, %.lr.ph.i50.i.us.preheader ]
  %niter175 = phi i32 [ %niter175.next.7, %.lr.ph.i50.i.us ], [ 0, %.lr.ph.i50.i.us.preheader ]
  %i.dj = load float, ptr %.0610.i52.i.us, align 4, !tbaa !54
  %i.dk = fmul fast float %i.dj, %.089.i53.i.us
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i.us, i64 %11 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !54
  %i.dn = fmul fast float %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %11 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !54
end_hunk_3
begin_hunk_4_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.23:bb.a
  %i.fd = fadd fast float %i.fc, %i.ez
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %11 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !54
  %i.fg = call fast float @llvm.fabs.f32(float %i.ff)
  %i.fh = fadd fast float %i.fg, %i.fd
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %11 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !54
  %i.fk = call fast float @llvm.fabs.f32(float %i.fj)
  %i.fl = fadd fast float %i.fk, %i.fh            ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %11 ; 2 uses
  %niter189.next.3 = add i32 %niter189, 4         ; 2 uses
  %niter189.ncmp.3 = icmp eq i32 %niter189.next.3, %unroll_iter188
  br i1 %niter189.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a, label %.lr.ph.i38.i.us, !llvm.loop !85

bb.j:                                             ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.i.i.us.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.j
  br i1 %i.am, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us
  %.0610.i.i.us = phi ptr [ %i.gk, %.lr.ph.i.i.us ], [ %i.aw, %.lr.ph.i.i.us.preheader ] ; 2 uses
  %.089.i.i.us = phi float [ %i.gj, %.lr.ph.i.i.us ], [ %i.av, %.lr.ph.i.i.us.preheader ]
  %niter196 = phi i32 [ %niter196.next.7, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.fn = load float, ptr %.0610.i.i.us, align 4, !tbaa !54
  %i.fo = fadd fast float %i.fn, %.089.i.i.us
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i.us, i64 %11 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !54
  %i.fr = fadd fast float %i.fq, %i.fo
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %11 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !54
  %i.fu = fadd fast float %i.ft, %i.fr
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %11 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !54
  %i.fx = fadd fast float %i.fw, %i.fu
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %11 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !54
  %i.ga = fadd fast float %i.fz, %i.fx
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %11 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !54
  %i.gd = fadd fast float %i.gc, %i.ga
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %11 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !54
  %i.gg = fadd fast float %i.gf, %i.gd
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %11 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !54
  %i.gj = fadd fast float %i.gi, %i.gg            ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %11 ; 2 uses
  %niter196.next.7 = add i32 %niter196, 8         ; 2 uses
  %niter196.ncmp.7 = icmp eq i32 %niter196.next.7, %unroll_iter195
  br i1 %niter196.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !84

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.us
  br i1 %lcmp.mod192.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.0610.i.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i.i.us.preheader ], [ %i.gk, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa ]
  %.089.i.i.us.epil.init = phi float [ %i.av, %.lr.ph.i.i.us.preheader ], [ %i.gj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.i.i.us.epil

.lr.ph.i.i.us.epil:                               ; preds = %.lr.ph.i.i.us.epil, %.lr.ph.i.i.us.epil.preheader
  %.0610.i.i.us.epil = phi ptr [ %i.gn, %.lr.ph.i.i.us.epil ], [ %.0610.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ] ; 2 uses
  %.089.i.i.us.epil = phi float [ %i.gm, %.lr.ph.i.i.us.epil ], [ %.089.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ]
  %epil.iter191 = phi i32 [ %epil.iter191.next, %.lr.ph.i.i.us.epil ], [ 0, %.lr.ph.i.i.us.epil.preheader ]
  %i.gl = load float, ptr %.0610.i.i.us.epil, align 4, !tbaa !54
  %i.gm = fadd fast float %i.gl, %.089.i.i.us.epil ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i.us.epil, i64 %11
  %epil.iter191.next = add i32 %epil.iter191, 1   ; 2 uses
  %epil.iter191.cmp.not = icmp eq i32 %epil.iter191.next, %xtraiter190
  br i1 %epil.iter191.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i.i.us.epil, !llvm.loop !306

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a: ; preds = %.lr.ph.i38.i.us
  br i1 %lcmp.mod185.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i38.i.us.epil.preheader

.lr.ph.i38.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a, %.lr.ph.i38.i.us.preheader
  %.0610.i40.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i38.i.us.preheader ], [ %i.fm, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a ]
  %.089.i41.i.us.epil.init = phi float [ %i.av, %.lr.ph.i38.i.us.preheader ], [ %i.fl, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph.i38.i.us.epil

.lr.ph.i38.i.us.epil:                             ; preds = %.lr.ph.i38.i.us.epil, %.lr.ph.i38.i.us.epil.preheader
  %.0610.i40.i.us.epil = phi ptr [ %i.gr, %.lr.ph.i38.i.us.epil ], [ %.0610.i40.i.us.epil.init, %.lr.ph.i38.i.us.epil.preheader ] ; 2 uses
  %.089.i41.i.us.epil = phi float [ %i.gq, %.lr.ph.i38.i.us.epil ], [ %.089.i41.i.us.epil.init, %.lr.ph.i38.i.us.epil.preheader ]
  %epil.iter184 = phi i32 [ %epil.iter184.next, %.lr.ph.i38.i.us.epil ], [ 0, %.lr.ph.i38.i.us.epil.preheader ]
  %i.go = load float, ptr %.0610.i40.i.us.epil, align 4, !tbaa !54
  %i.gp = call fast float @llvm.fabs.f32(float %i.go)
  %i.gq = fadd fast float %i.gp, %.089.i41.i.us.epil ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0610.i40.i.us.epil, i64 %11
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i38.i.us.epil, !llvm.loop !307

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a: ; preds = %.lr.ph.i44.i.us
  br i1 %lcmp.mod178.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i44.i.us.epil.preheader

.lr.ph.i44.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a, %.lr.ph.i44.i.us.preheader
  %.0610.i46.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i44.i.us.preheader ], [ %i.ew, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a ]
  %.089.i47.i.us.epil.init = phi float [ %i.av, %.lr.ph.i44.i.us.preheader ], [ %i.ev, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i44.i.us.epil

.lr.ph.i44.i.us.epil:                             ; preds = %.lr.ph.i44.i.us.epil, %.lr.ph.i44.i.us.epil.preheader
  %.0610.i46.i.us.epil = phi ptr [ %i.gv, %.lr.ph.i44.i.us.epil ], [ %.0610.i46.i.us.epil.init, %.lr.ph.i44.i.us.epil.preheader ] ; 2 uses
  %.089.i47.i.us.epil = phi float [ %i.gu, %.lr.ph.i44.i.us.epil ], [ %.089.i47.i.us.epil.init, %.lr.ph.i44.i.us.epil.preheader ]
  %epil.iter177 = phi i32 [ %epil.iter177.next, %.lr.ph.i44.i.us.epil ], [ 0, %.lr.ph.i44.i.us.epil.preheader ]
  %i.gs = load float, ptr %.0610.i46.i.us.epil, align 4, !tbaa !54 ; 2 uses
  %i.gt = fmul fast float %i.gs, %i.gs
  %i.gu = fadd fast float %i.gt, %.089.i47.i.us.epil ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.0610.i46.i.us.epil, i64 %11
  %epil.iter177.next = add i32 %epil.iter177, 1   ; 2 uses
  %epil.iter177.cmp.not = icmp eq i32 %epil.iter177.next, %xtraiter176
  br i1 %epil.iter177.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i44.i.us.epil, !llvm.loop !308

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a: ; preds = %.lr.ph.i50.i.us
  br i1 %lcmp.mod171.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i50.i.us.epil.preheader

.lr.ph.i50.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a, %.lr.ph.i50.i.us.preheader
  %.0610.i52.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i50.i.us.preheader ], [ %i.eg, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a ]
  %.089.i53.i.us.epil.init = phi float [ %i.av, %.lr.ph.i50.i.us.preheader ], [ %i.ef, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i50.i.us.epil

.lr.ph.i50.i.us.epil:                             ; preds = %.lr.ph.i50.i.us.epil, %.lr.ph.i50.i.us.epil.preheader
  %.0610.i52.i.us.epil = phi ptr [ %i.gy, %.lr.ph.i50.i.us.epil ], [ %.0610.i52.i.us.epil.init, %.lr.ph.i50.i.us.epil.preheader ] ; 2 uses
  %.089.i53.i.us.epil = phi float [ %i.gx, %.lr.ph.i50.i.us.epil ], [ %.089.i53.i.us.epil.init, %.lr.ph.i50.i.us.epil.preheader ]
  %epil.iter170 = phi i32 [ %epil.iter170.next, %.lr.ph.i50.i.us.epil ], [ 0, %.lr.ph.i50.i.us.epil.preheader ]
  %i.gw = load float, ptr %.0610.i52.i.us.epil, align 4, !tbaa !54
  %i.gx = fmul fast float %i.gw, %.089.i53.i.us.epil ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i.us.epil, i64 %11
  %epil.iter170.next = add i32 %epil.iter170, 1   ; 2 uses
  %epil.iter170.cmp.not = icmp eq i32 %epil.iter170.next, %xtraiter169
  br i1 %epil.iter170.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i50.i.us.epil, !llvm.loop !309

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a: ; preds = %.lr.ph.i56.i.us
  br i1 %lcmp.mod164.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i56.i.us.epil.preheader

.lr.ph.i56.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a, %.lr.ph.i56.i.us.preheader
  %.0610.i58.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i56.i.us.preheader ], [ %i.di, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a ]
  %.089.i59.i.us.epil.init = phi float [ %i.av, %.lr.ph.i56.i.us.preheader ], [ %i.dh, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.i56.i.us.epil

.lr.ph.i56.i.us.epil:                             ; preds = %.lr.ph.i56.i.us.epil, %.lr.ph.i56.i.us.epil.preheader
  %.0610.i58.i.us.epil = phi ptr [ %i.hb, %.lr.ph.i56.i.us.epil ], [ %.0610.i58.i.us.epil.init, %.lr.ph.i56.i.us.epil.preheader ] ; 2 uses
  %.089.i59.i.us.epil = phi float [ %i.ha, %.lr.ph.i56.i.us.epil ], [ %.089.i59.i.us.epil.init, %.lr.ph.i56.i.us.epil.preheader ]
  %epil.iter163 = phi i32 [ %epil.iter163.next, %.lr.ph.i56.i.us.epil ], [ 0, %.lr.ph.i56.i.us.epil.preheader ]
  %i.gz = load float, ptr %.0610.i58.i.us.epil, align 4, !tbaa !54
  %i.ha = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.us.epil, float %i.gz) ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.0610.i58.i.us.epil, i64 %11
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i56.i.us.epil, !llvm.loop !310

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a: ; preds = %.lr.ph.i62.i.us
  br i1 %lcmp.mod157.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i62.i.us.epil.preheader

.lr.ph.i62.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a, %.lr.ph.i62.i.us.preheader
  %.0610.i64.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i62.i.us.preheader ], [ %i.ck, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a ]
  %.089.i65.i.us.epil.init = phi float [ %i.av, %.lr.ph.i62.i.us.preheader ], [ %i.cj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i62.i.us.epil

.lr.ph.i62.i.us.epil:                             ; preds = %.lr.ph.i62.i.us.epil, %.lr.ph.i62.i.us.epil.preheader
  %.0610.i64.i.us.epil = phi ptr [ %i.he, %.lr.ph.i62.i.us.epil ], [ %.0610.i64.i.us.epil.init, %.lr.ph.i62.i.us.epil.preheader ] ; 2 uses
  %.089.i65.i.us.epil = phi float [ %i.hd, %.lr.ph.i62.i.us.epil ], [ %.089.i65.i.us.epil.init, %.lr.ph.i62.i.us.epil.preheader ]
  %epil.iter156 = phi i32 [ %epil.iter156.next, %.lr.ph.i62.i.us.epil ], [ 0, %.lr.ph.i62.i.us.epil.preheader ]
  %i.hc = load float, ptr %.0610.i64.i.us.epil, align 4, !tbaa !54
  %i.hd = call nnan ninf nsz float @llvm.minnum.f32(float %i.hc, float %.089.i65.i.us.epil) ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0610.i64.i.us.epil, i64 %11
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i62.i.us.epil, !llvm.loop !311

_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa: ; preds = %.lr.ph.i68.i.us
  br i1 %lcmp.mod.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i68.i.us.epil.preheader

.lr.ph.i68.i.us.epil.preheader:                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa, %.lr.ph.i68.i.us.preheader
  %.0610.i70.i.us.epil.init = phi ptr [ %i.aw, %.lr.ph.i68.i.us.preheader ], [ %i.bm, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa ]
  %.089.i71.i.us.epil.init = phi float [ %i.av, %.lr.ph.i68.i.us.preheader ], [ %i.bl, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.i68.i.us.epil

.lr.ph.i68.i.us.epil:                             ; preds = %.lr.ph.i68.i.us.epil, %.lr.ph.i68.i.us.epil.preheader
  %.0610.i70.i.us.epil = phi ptr [ %i.hi, %.lr.ph.i68.i.us.epil ], [ %.0610.i70.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ] ; 2 uses
  %.089.i71.i.us.epil = phi float [ %i.hh, %.lr.ph.i68.i.us.epil ], [ %.089.i71.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i68.i.us.epil ], [ 0, %.lr.ph.i68.i.us.epil.preheader ]
  %i.hf = load float, ptr %.0610.i70.i.us.epil, align 4, !tbaa !54
  %i.hg = call fast float @llvm.exp.f32(float %i.hf)
  %i.hh = fadd fast float %i.hg, %.089.i71.i.us.epil ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i.us.epil, i64 %11
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit.us, label %.lr.ph.i68.i.us.epil, !llvm.loop !312

_ZN4ncnnL9reductionEfPKfiii.exit.us:              ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa, %.lr.ph.i68.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a, %.lr.ph.i62.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a, %.lr.ph.i56.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a, %.lr.ph.i50.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a, %.lr.ph.i44.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a, %.lr.ph.i38.i.us.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.us = phi nsz float [ %i.av, %bb.c ], [ %i.gu, %.lr.ph.i44.i.us.epil ], [ %i.gx, %.lr.ph.i50.i.us.epil ], [ %i.ha, %.lr.ph.i56.i.us.epil ], [ %i.hd, %.lr.ph.i62.i.us.epil ], [ %i.gm, %.lr.ph.i.i.us.epil ], [ %i.gq, %.lr.ph.i38.i.us.epil ], [ %i.av, %bb.j ], [ %i.av, %bb.i ], [ %i.av, %bb.h ], [ %i.av, %bb.g ], [ %i.av, %bb.f ], [ %i.av, %bb.e ], [ %i.av, %bb.d ], [ %i.gj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit.unr-lcssa ], [ %i.fl, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit141.unr-lcssa.a ], [ %i.ev, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit142.unr-lcssa.a ], [ %i.ef, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit143.unr-lcssa.a ], [ %i.dh, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit144.unr-lcssa.a ], [ %i.cj, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit145.unr-lcssa.a ], [ %i.bl, %_ZN4ncnnL9reductionEfPKfiii.exit.us.loopexit146.unr-lcssa ], [ %i.hh, %.lr.ph.i68.i.us.epil ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store float %.0.i.us, ptr %i.hj, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !313

._crit_edge.us:                                   ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.us
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32
  %exitcond110.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond110.not, label %._crit_edge86, label %.noexc45.us

._crit_edge86:                                    ; preds = %._crit_edge.us, %.noexc45.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge86, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.24(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not74 = icmp sgt i32 %i.k, %i.j
  br i1 %.not74, label %._crit_edge76.split, label %.noexc37.lr.ph

.noexc37.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !314
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !314
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !314
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !18, !noalias !317
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !317
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42, !noalias !317
  %factor.op.mul77 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !44
  %i.w = load i32, ptr %6, align 4, !tbaa !44
  %i.x = mul nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.noexc37.lr.ph.split, label %._crit_edge76.split

.noexc37.lr.ph.split:                             ; preds = %.noexc37.lr.ph
  %i.z = load i32, ptr %8, align 4, !tbaa !44     ; 10 uses
  %i.aa = load i32, ptr %9, align 4, !tbaa !44
  %i.ab = icmp sgt i32 %i.z, 0                    ; 7 uses
  %wide.trip.count.i72.i = zext i32 %i.z to i64   ; 21 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.x to i64
  %min.iters.check208 = icmp ult i32 %i.z, 8
  %n.vec210 = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n220 = icmp eq i64 %n.vec210, %wide.trip.count.i72.i
  %min.iters.check189 = icmp ult i32 %i.z, 8
  %n.vec191 = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec191, %wide.trip.count.i72.i
  %min.iters.check174 = icmp ult i32 %i.z, 8
  %n.vec176 = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n185 = icmp eq i64 %n.vec176, %wide.trip.count.i72.i
  %min.iters.check158 = icmp ult i32 %i.z, 8
  %n.vec160 = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n170 = icmp eq i64 %n.vec160, %wide.trip.count.i72.i
  %min.iters.check142 = icmp ult i32 %i.z, 8
  %n.vec144 = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec144, %wide.trip.count.i72.i
  %min.iters.check126 = icmp ult i32 %i.z, 8
  %n.vec128 = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec128, %wide.trip.count.i72.i
  %min.iters.check = icmp ult i32 %i.z, 8
  %n.vec = and i64 %wide.trip.count.i72.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i72.i
  br label %.noexc37

.noexc37:                                         ; preds = %.noexc37.lr.ph.split, %._crit_edge
  %indvars.iv92 = phi i64 [ %i.ad, %.noexc37.lr.ph.split ], [ %indvars.iv.next93, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv92
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %.reass78 = mul i64 %factor.op.mul77, %indvars.iv92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass78
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4ncnnL9reductionEfPKfii.exit
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next93 to i32
  %exitcond95.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond95.not, label %._crit_edge76.split, label %.noexc37

bb.c:                                             ; preds = %.noexc37, %_ZN4ncnnL9reductionEfPKfii.exit
  %indvars.iv = phi i64 [ 0, %.noexc37 ], [ %indvars.iv.next, %_ZN4ncnnL9reductionEfPKfii.exit ] ; 2 uses
  %.02772 = phi ptr [ %i.af, %.noexc37 ], [ %i.di, %_ZN4ncnnL9reductionEfPKfii.exit ] ; 15 uses
  %i.ah = load float, ptr %7, align 4, !tbaa !54  ; 22 uses
  switch i32 %i.aa, label %_ZN4ncnnL9reductionEfPKfii.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 6, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 10, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i.i.preheader, label %_ZN4ncnnL9reductionEfPKfii.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.ai = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ah, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ai, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi123 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.02772, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !54
  %wide.load124 = load <4 x float>, ptr %i.ak, align 4, !tbaa !54
  %i.al = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.am = fadd fast <4 x float> %wide.load124, %vec.phi123 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.am, %i.al
  %i.ao = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %_ZN4ncnnL9reductionEfPKfii.exit, label %.lr.ph.i.i.preheader223

.lr.ph.i.i.preheader223:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi float [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader223, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader223 ] ; 2 uses
  %.067.i.i = phi float [ %i.ar, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader223 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.02772, i64 %indvars.iv.i.i
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !54
  %i.ar = fadd fast float %i.aq, %.067.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i72.i
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL9reductionEfPKfii.exit, label %.lr.ph.i.i, !llvm.loop !321

bb.e:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i33.i.preheader, label %_ZN4ncnnL9reductionEfPKfii.exit

.lr.ph.i33.i.preheader:                           ; preds = %bb.e
  br i1 %min.iters.check126, label %.lr.ph.i33.i.preheader224, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.i33.i.preheader
  %i.as = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ah, i64 0
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %vec.phi131 = phi <4 x float> [ %i.as, %vector.ph127 ], [ %i.ax, %vector.body129 ]
  %vec.phi132 = phi <4 x float> [ zeroinitializer, %vector.ph127 ], [ %i.ay, %vector.body129 ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.02772, i64 %index130 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load133 = load <4 x float>, ptr %i.at, align 4, !tbaa !54
  %wide.load134 = load <4 x float>, ptr %i.au, align 4, !tbaa !54
  %i.av = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load133)
  %i.aw = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load134)
  %i.ax = fadd fast <4 x float> %i.av, %vec.phi131 ; 2 uses
  %i.ay = fadd fast <4 x float> %i.aw, %vec.phi132 ; 2 uses
  %index.next135 = add nuw i64 %index130, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.az, label %middle.block136, label %vector.body129, !llvm.loop !322

middle.block136:                                  ; preds = %vector.body129
end_hunk_4
begin_hunk_5_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.25:bb.a
.lr.ph.i38.i.us.epil:                             ; preds = %.lr.ph.i38.i.us.epil, %.lr.ph.i38.i.us.epil.preheader
  %.0610.i40.i.us.epil = phi ptr [ %i.hg, %.lr.ph.i38.i.us.epil ], [ %.0610.i40.i.us.epil.init, %.lr.ph.i38.i.us.epil.preheader ] ; 2 uses
  %.089.i41.i.us.epil = phi float [ %i.hf, %.lr.ph.i38.i.us.epil ], [ %.089.i41.i.us.epil.init, %.lr.ph.i38.i.us.epil.preheader ]
  %epil.iter175 = phi i32 [ %epil.iter175.next, %.lr.ph.i38.i.us.epil ], [ 0, %.lr.ph.i38.i.us.epil.preheader ]
  %i.hd = load float, ptr %.0610.i40.i.us.epil, align 4, !tbaa !54
  %i.he = call fast float @llvm.fabs.f32(float %i.hd)
  %i.hf = fadd fast float %i.he, %.089.i41.i.us.epil ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %.0610.i40.i.us.epil, i64 %i.ai
  %epil.iter175.next = add i32 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i32 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i38.i.us.epil, !llvm.loop !345

_ZN4ncnn3MatD2Ev.exit.us.loopexit133.unr-lcssa:   ; preds = %.lr.ph.i44.i.us
  br i1 %lcmp.mod169.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i44.i.us.epil.preheader

.lr.ph.i44.i.us.epil.preheader:                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.loopexit133.unr-lcssa, %.lr.ph.i44.i.us.preheader
  %.0610.i46.i.us.epil.init = phi ptr [ %i.bl, %.lr.ph.i44.i.us.preheader ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit.us.loopexit133.unr-lcssa ]
  %.089.i47.i.us.epil.init = phi float [ %i.bk, %.lr.ph.i44.i.us.preheader ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit.us.loopexit133.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i44.i.us.epil

.lr.ph.i44.i.us.epil:                             ; preds = %.lr.ph.i44.i.us.epil, %.lr.ph.i44.i.us.epil.preheader
  %.0610.i46.i.us.epil = phi ptr [ %i.hk, %.lr.ph.i44.i.us.epil ], [ %.0610.i46.i.us.epil.init, %.lr.ph.i44.i.us.epil.preheader ] ; 2 uses
  %.089.i47.i.us.epil = phi float [ %i.hj, %.lr.ph.i44.i.us.epil ], [ %.089.i47.i.us.epil.init, %.lr.ph.i44.i.us.epil.preheader ]
  %epil.iter168 = phi i32 [ %epil.iter168.next, %.lr.ph.i44.i.us.epil ], [ 0, %.lr.ph.i44.i.us.epil.preheader ]
  %i.hh = load float, ptr %.0610.i46.i.us.epil, align 4, !tbaa !54 ; 2 uses
  %i.hi = fmul fast float %i.hh, %i.hh
  %i.hj = fadd fast float %i.hi, %.089.i47.i.us.epil ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %.0610.i46.i.us.epil, i64 %i.ai
  %epil.iter168.next = add i32 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i32 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i44.i.us.epil, !llvm.loop !346

_ZN4ncnn3MatD2Ev.exit.us.loopexit134.unr-lcssa:   ; preds = %.lr.ph.i50.i.us
  br i1 %lcmp.mod162.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i50.i.us.epil.preheader

.lr.ph.i50.i.us.epil.preheader:                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.loopexit134.unr-lcssa, %.lr.ph.i50.i.us.preheader
  %.0610.i52.i.us.epil.init = phi ptr [ %i.bl, %.lr.ph.i50.i.us.preheader ], [ %i.ev, %_ZN4ncnn3MatD2Ev.exit.us.loopexit134.unr-lcssa ]
  %.089.i53.i.us.epil.init = phi float [ %i.bk, %.lr.ph.i50.i.us.preheader ], [ %i.eu, %_ZN4ncnn3MatD2Ev.exit.us.loopexit134.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i50.i.us.epil

.lr.ph.i50.i.us.epil:                             ; preds = %.lr.ph.i50.i.us.epil, %.lr.ph.i50.i.us.epil.preheader
  %.0610.i52.i.us.epil = phi ptr [ %i.hn, %.lr.ph.i50.i.us.epil ], [ %.0610.i52.i.us.epil.init, %.lr.ph.i50.i.us.epil.preheader ] ; 2 uses
  %.089.i53.i.us.epil = phi float [ %i.hm, %.lr.ph.i50.i.us.epil ], [ %.089.i53.i.us.epil.init, %.lr.ph.i50.i.us.epil.preheader ]
  %epil.iter161 = phi i32 [ %epil.iter161.next, %.lr.ph.i50.i.us.epil ], [ 0, %.lr.ph.i50.i.us.epil.preheader ]
  %i.hl = load float, ptr %.0610.i52.i.us.epil, align 4, !tbaa !54
  %i.hm = fmul fast float %i.hl, %.089.i53.i.us.epil ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.0610.i52.i.us.epil, i64 %i.ai
  %epil.iter161.next = add i32 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i32 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i50.i.us.epil, !llvm.loop !347

_ZN4ncnn3MatD2Ev.exit.us.loopexit135.unr-lcssa:   ; preds = %.lr.ph.i56.i.us
  br i1 %lcmp.mod155.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i56.i.us.epil.preheader

.lr.ph.i56.i.us.epil.preheader:                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.loopexit135.unr-lcssa, %.lr.ph.i56.i.us.preheader
  %.0610.i58.i.us.epil.init = phi ptr [ %i.bl, %.lr.ph.i56.i.us.preheader ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit.us.loopexit135.unr-lcssa ]
  %.089.i59.i.us.epil.init = phi float [ %i.bk, %.lr.ph.i56.i.us.preheader ], [ %i.dw, %_ZN4ncnn3MatD2Ev.exit.us.loopexit135.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph.i56.i.us.epil

.lr.ph.i56.i.us.epil:                             ; preds = %.lr.ph.i56.i.us.epil, %.lr.ph.i56.i.us.epil.preheader
  %.0610.i58.i.us.epil = phi ptr [ %i.hq, %.lr.ph.i56.i.us.epil ], [ %.0610.i58.i.us.epil.init, %.lr.ph.i56.i.us.epil.preheader ] ; 2 uses
  %.089.i59.i.us.epil = phi float [ %i.hp, %.lr.ph.i56.i.us.epil ], [ %.089.i59.i.us.epil.init, %.lr.ph.i56.i.us.epil.preheader ]
  %epil.iter154 = phi i32 [ %epil.iter154.next, %.lr.ph.i56.i.us.epil ], [ 0, %.lr.ph.i56.i.us.epil.preheader ]
  %i.ho = load float, ptr %.0610.i58.i.us.epil, align 4, !tbaa !54
  %i.hp = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.us.epil, float %i.ho) ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.0610.i58.i.us.epil, i64 %i.ai
  %epil.iter154.next = add i32 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i32 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i56.i.us.epil, !llvm.loop !348

_ZN4ncnn3MatD2Ev.exit.us.loopexit136.unr-lcssa:   ; preds = %.lr.ph.i62.i.us
  br i1 %lcmp.mod148.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i62.i.us.epil.preheader

.lr.ph.i62.i.us.epil.preheader:                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.loopexit136.unr-lcssa, %.lr.ph.i62.i.us.preheader
  %.0610.i64.i.us.epil.init = phi ptr [ %i.bl, %.lr.ph.i62.i.us.preheader ], [ %i.cz, %_ZN4ncnn3MatD2Ev.exit.us.loopexit136.unr-lcssa ]
  %.089.i65.i.us.epil.init = phi float [ %i.bk, %.lr.ph.i62.i.us.preheader ], [ %i.cy, %_ZN4ncnn3MatD2Ev.exit.us.loopexit136.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod150)
  br label %.lr.ph.i62.i.us.epil

.lr.ph.i62.i.us.epil:                             ; preds = %.lr.ph.i62.i.us.epil, %.lr.ph.i62.i.us.epil.preheader
  %.0610.i64.i.us.epil = phi ptr [ %i.ht, %.lr.ph.i62.i.us.epil ], [ %.0610.i64.i.us.epil.init, %.lr.ph.i62.i.us.epil.preheader ] ; 2 uses
  %.089.i65.i.us.epil = phi float [ %i.hs, %.lr.ph.i62.i.us.epil ], [ %.089.i65.i.us.epil.init, %.lr.ph.i62.i.us.epil.preheader ]
  %epil.iter147 = phi i32 [ %epil.iter147.next, %.lr.ph.i62.i.us.epil ], [ 0, %.lr.ph.i62.i.us.epil.preheader ]
  %i.hr = load float, ptr %.0610.i64.i.us.epil, align 4, !tbaa !54
  %i.hs = call nnan ninf nsz float @llvm.minnum.f32(float %i.hr, float %.089.i65.i.us.epil) ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %.0610.i64.i.us.epil, i64 %i.ai
  %epil.iter147.next = add i32 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i32 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i62.i.us.epil, !llvm.loop !349

_ZN4ncnn3MatD2Ev.exit.us.loopexit137.unr-lcssa:   ; preds = %.lr.ph.i68.i.us
  br i1 %lcmp.mod.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i68.i.us.epil.preheader

.lr.ph.i68.i.us.epil.preheader:                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.loopexit137.unr-lcssa, %.lr.ph.i68.i.us.preheader
  %.0610.i70.i.us.epil.init = phi ptr [ %i.bl, %.lr.ph.i68.i.us.preheader ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.us.loopexit137.unr-lcssa ]
  %.089.i71.i.us.epil.init = phi float [ %i.bk, %.lr.ph.i68.i.us.preheader ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.us.loopexit137.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.i68.i.us.epil

.lr.ph.i68.i.us.epil:                             ; preds = %.lr.ph.i68.i.us.epil, %.lr.ph.i68.i.us.epil.preheader
  %.0610.i70.i.us.epil = phi ptr [ %i.hx, %.lr.ph.i68.i.us.epil ], [ %.0610.i70.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ] ; 2 uses
  %.089.i71.i.us.epil = phi float [ %i.hw, %.lr.ph.i68.i.us.epil ], [ %.089.i71.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i68.i.us.epil ], [ 0, %.lr.ph.i68.i.us.epil.preheader ]
  %i.hu = load float, ptr %.0610.i70.i.us.epil, align 4, !tbaa !54
  %i.hv = call fast float @llvm.exp.f32(float %i.hu)
  %i.hw = fadd fast float %i.hv, %.089.i71.i.us.epil ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.0610.i70.i.us.epil, i64 %i.ai
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnn3MatD2Ev.exit.us, label %.lr.ph.i68.i.us.epil, !llvm.loop !350

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.us.loopexit137.unr-lcssa, %.lr.ph.i68.i.us.epil, %_ZN4ncnn3MatD2Ev.exit.us.loopexit136.unr-lcssa, %.lr.ph.i62.i.us.epil, %_ZN4ncnn3MatD2Ev.exit.us.loopexit135.unr-lcssa, %.lr.ph.i56.i.us.epil, %_ZN4ncnn3MatD2Ev.exit.us.loopexit134.unr-lcssa, %.lr.ph.i50.i.us.epil, %_ZN4ncnn3MatD2Ev.exit.us.loopexit133.unr-lcssa, %.lr.ph.i44.i.us.epil, %_ZN4ncnn3MatD2Ev.exit.us.loopexit132.unr-lcssa, %.lr.ph.i38.i.us.epil, %_ZN4ncnn3MatD2Ev.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.epil, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.us = phi nsz float [ %i.bk, %bb.e ], [ %i.hj, %.lr.ph.i44.i.us.epil ], [ %i.hm, %.lr.ph.i50.i.us.epil ], [ %i.hp, %.lr.ph.i56.i.us.epil ], [ %i.hs, %.lr.ph.i62.i.us.epil ], [ %i.hb, %.lr.ph.i.i.us.epil ], [ %i.hf, %.lr.ph.i38.i.us.epil ], [ %i.bk, %bb.l ], [ %i.bk, %bb.k ], [ %i.bk, %bb.j ], [ %i.bk, %bb.i ], [ %i.bk, %bb.h ], [ %i.bk, %bb.g ], [ %i.bk, %bb.f ], [ %i.gy, %_ZN4ncnn3MatD2Ev.exit.us.loopexit.unr-lcssa ], [ %i.ga, %_ZN4ncnn3MatD2Ev.exit.us.loopexit132.unr-lcssa ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit.us.loopexit133.unr-lcssa ], [ %i.eu, %_ZN4ncnn3MatD2Ev.exit.us.loopexit134.unr-lcssa ], [ %i.dw, %_ZN4ncnn3MatD2Ev.exit.us.loopexit135.unr-lcssa ], [ %i.cy, %_ZN4ncnn3MatD2Ev.exit.us.loopexit136.unr-lcssa ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.us.loopexit137.unr-lcssa ], [ %i.hw, %.lr.ph.i68.i.us.epil ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.us, i64 %indvars.iv
  store float %.0.i.us, ptr %i.hy, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e, !llvm.loop !351

._crit_edge.us:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next101 to i32
  %exitcond103.not = icmp eq i32 %i.ak, %lftr.wideiv
  br i1 %exitcond103.not, label %._crit_edge79, label %bb.c

._crit_edge79:                                    ; preds = %._crit_edge.us, %.lr.ph78, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge79, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.26(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not99 = icmp sgt i32 %i.k, %i.j
  br i1 %.not99, label %._crit_edge101.split, label %.noexc50.lr.ph

.noexc50.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56, !noalias !352
  %i.n = load ptr, ptr %3, align 8, !tbaa !18, !noalias !352
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !352
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42, !noalias !352 ; 2 uses
  %factor.op.mul102 = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load i32, ptr %4, align 4, !tbaa !44     ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = mul i64 %i.r, %i.s
  br i1 %i.u, label %.noexc50.lr.ph.split, label %._crit_edge101.split

.noexc50.lr.ph.split:                             ; preds = %.noexc50.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !56, !noalias !355
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !57, !noalias !355
  %i.ac = load ptr, ptr %5, align 8, !tbaa !18, !noalias !355
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !355
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !355 ; 2 uses
  %factor.op.mul103 = mul i64 %i.ad, %i.ae
  %i.af = sext i32 %i.aa to i64
  %i.ag = sext i32 %i.ab to i64
  %factor.op.mul = mul nsw i64 %i.af, %i.ag
  %factor.op.mul98 = mul i64 %factor.op.mul, %i.ae
  %i.ah = load i32, ptr %6, align 4, !tbaa !44    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %10 = sext i32 %i.ah to i64                     ; 51 uses
  br i1 %i.ai, label %.noexc50.lr.ph.split.split, label %._crit_edge101.split

.noexc50.lr.ph.split.split:                       ; preds = %.noexc50.lr.ph.split
  %i.aj = load i32, ptr %8, align 4, !tbaa !44    ; 21 uses
  %i.ak = load i32, ptr %9, align 4, !tbaa !44
  %i.al = icmp sgt i32 %i.aj, 0                   ; 7 uses
  %i.am = sext i32 %i.k to i64
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count122 = zext nneg i32 %i.t to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  %i.ao = add i32 %i.aj, -1                       ; 2 uses
  %xtraiter = and i32 %i.aj, 3                    ; 3 uses
  %i.ap = icmp ult i32 %i.aj, 4
  %unroll_iter = and i32 %i.aj, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod170 = icmp ne i32 %xtraiter, 0
  %xtraiter171 = and i32 %i.aj, 7                 ; 3 uses
  %i.aq = icmp ult i32 %i.aj, 8
  %unroll_iter176 = and i32 %i.aj, 2147483640
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  %lcmp.mod175 = icmp ne i32 %xtraiter171, 0
  %xtraiter178 = and i32 %i.aj, 7                 ; 3 uses
  %i.ar = icmp ult i32 %i.aj, 8
  %unroll_iter183 = and i32 %i.aj, 2147483640
  %lcmp.mod180.not = icmp eq i32 %xtraiter178, 0
  %lcmp.mod182 = icmp ne i32 %xtraiter178, 0
  %xtraiter185 = and i32 %i.aj, 7                 ; 3 uses
  %i.as = icmp ult i32 %i.aj, 8
  %unroll_iter190 = and i32 %i.aj, 2147483640
  %lcmp.mod187.not = icmp eq i32 %xtraiter185, 0
  %lcmp.mod189 = icmp ne i32 %xtraiter185, 0
  %xtraiter192 = and i32 %i.aj, 3                 ; 3 uses
  %i.at = icmp ult i32 %i.aj, 4
  %unroll_iter197 = and i32 %i.aj, 2147483644
  %lcmp.mod194.not = icmp eq i32 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i32 %xtraiter192, 0
  %xtraiter199 = and i32 %i.aj, 3                 ; 3 uses
  %i.au = icmp ult i32 %i.ao, 3
  %unroll_iter204 = and i32 %i.aj, 2147483644
  %lcmp.mod201.not = icmp eq i32 %xtraiter199, 0
  %lcmp.mod203 = icmp ne i32 %xtraiter199, 0
  %xtraiter206 = and i32 %i.aj, 7                 ; 3 uses
  %i.av = icmp ult i32 %i.ao, 7
  %unroll_iter211 = and i32 %i.aj, 2147483640
  %lcmp.mod208.not = icmp eq i32 %xtraiter206, 0
  %lcmp.mod210 = icmp ne i32 %xtraiter206, 0
  br label %.noexc50

.noexc50:                                         ; preds = %.noexc50.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv124 = phi i64 [ %i.am, %.noexc50.lr.ph.split.split ], [ %indvars.iv.next125, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul102, %indvars.iv124
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass
  %.reass104 = mul i64 %factor.op.mul103, %indvars.iv124
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.reass104
  br label %.noexc49

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next125 to i32
  %exitcond127.not = icmp eq i32 %i.an, %lftr.wideiv
  br i1 %exitcond127.not, label %._crit_edge101.split, label %.noexc50

.noexc49:                                         ; preds = %.noexc50, %._crit_edge
  %indvars.iv119 = phi i64 [ 0, %.noexc50 ], [ %indvars.iv.next120, %._crit_edge ] ; 3 uses
  %.reass.reass = mul i64 %factor.op.mul98, %indvars.iv119
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.reass.reass
  %i.az = mul i64 %i.v, %indvars.iv119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.noexc49, !llvm.loop !358

bb.c:                                             ; preds = %.noexc49, %_ZN4ncnnL9reductionEfPKfiii.exit
  %indvars.iv = phi i64 [ 0, %.noexc49 ], [ %indvars.iv.next, %_ZN4ncnnL9reductionEfPKfiii.exit ] ; 3 uses
  %i.bb = load float, ptr %7, align 4, !tbaa !54  ; 22 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv ; 14 uses
  switch i32 %i.ak, label %_ZN4ncnnL9reductionEfPKfiii.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 6, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 10, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  br i1 %i.av, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.0610.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.bc, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi float [ %i.bz, %.lr.ph.i.i ], [ %i.bb, %.lr.ph.i.i.preheader ]
  %niter212 = phi i32 [ %niter212.next.7, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bd = load float, ptr %.0610.i.i, align 4, !tbaa !54
  %i.be = fadd fast float %i.bd, %.089.i.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i, i64 %10 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !54
  %i.bh = fadd fast float %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %10 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !54
  %i.bk = fadd fast float %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %10 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !54
  %i.bn = fadd fast float %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %10 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  %i.bq = fadd fast float %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %10 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !54
  %i.bt = fadd fast float %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %10 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !54
  %i.bw = fadd fast float %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %10 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !54
  %i.bz = fadd fast float %i.by, %i.bw            ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %10 ; 2 uses
  %niter212.next.7 = add nuw nsw i32 %niter212, 8 ; 2 uses
  %niter212.ncmp.7 = icmp eq i32 %niter212.next.7, %unroll_iter211
  br i1 %niter212.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !84

bb.e:                                             ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i38.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i38.i.preheader:                           ; preds = %bb.e
  br i1 %i.au, label %.lr.ph.i38.i.epil.preheader, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %.lr.ph.i38.i
  %.0610.i40.i = phi ptr [ %i.cq, %.lr.ph.i38.i ], [ %i.bc, %.lr.ph.i38.i.preheader ] ; 2 uses
  %.089.i41.i = phi float [ %i.cp, %.lr.ph.i38.i ], [ %i.bb, %.lr.ph.i38.i.preheader ]
  %niter205 = phi i32 [ %niter205.next.3, %.lr.ph.i38.i ], [ 0, %.lr.ph.i38.i.preheader ]
  %i.cb = load float, ptr %.0610.i40.i, align 4, !tbaa !54
  %i.cc = call fast float @llvm.fabs.f32(float %i.cb)
  %i.cd = fadd fast float %i.cc, %.089.i41.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0610.i40.i, i64 %10 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !54
  %i.cg = call fast float @llvm.fabs.f32(float %i.cf)
  %i.ch = fadd fast float %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %10 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !54
  %i.ck = call fast float @llvm.fabs.f32(float %i.cj)
  %i.cl = fadd fast float %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %10 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !54
  %i.co = call fast float @llvm.fabs.f32(float %i.cn)
  %i.cp = fadd fast float %i.co, %i.cl            ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %10 ; 2 uses
  %niter205.next.3 = add nuw nsw i32 %niter205, 4 ; 2 uses
  %niter205.ncmp.3 = icmp eq i32 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a, label %.lr.ph.i38.i, !llvm.loop !85

bb.f:                                             ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i44.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i44.i.preheader:                           ; preds = %bb.f
  br i1 %i.at, label %.lr.ph.i44.i.epil.preheader, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader, %.lr.ph.i44.i
  %.0610.i46.i = phi ptr [ %i.dg, %.lr.ph.i44.i ], [ %i.bc, %.lr.ph.i44.i.preheader ] ; 2 uses
  %.089.i47.i = phi float [ %i.df, %.lr.ph.i44.i ], [ %i.bb, %.lr.ph.i44.i.preheader ]
  %niter198 = phi i32 [ %niter198.next.3, %.lr.ph.i44.i ], [ 0, %.lr.ph.i44.i.preheader ]
  %i.cr = load float, ptr %.0610.i46.i, align 4, !tbaa !54 ; 2 uses
  %i.cs = fmul fast float %i.cr, %i.cr
  %i.ct = fadd fast float %i.cs, %.089.i47.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0610.i46.i, i64 %10 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !54 ; 2 uses
  %i.cw = fmul fast float %i.cv, %i.cv
  %i.cx = fadd fast float %i.cw, %i.ct
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %10 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !54 ; 2 uses
  %i.da = fmul fast float %i.cz, %i.cz
  %i.db = fadd fast float %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %10 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !54 ; 2 uses
  %i.de = fmul fast float %i.dd, %i.dd
  %i.df = fadd fast float %i.de, %i.db            ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %10 ; 2 uses
  %niter198.next.3 = add nuw nsw i32 %niter198, 4 ; 2 uses
  %niter198.ncmp.3 = icmp eq i32 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a, label %.lr.ph.i44.i, !llvm.loop !86

bb.g:                                             ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i50.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i50.i.preheader:                           ; preds = %bb.g
  br i1 %i.as, label %.lr.ph.i50.i.epil.preheader, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i.preheader, %.lr.ph.i50.i
  %.0610.i52.i = phi ptr [ %i.ee, %.lr.ph.i50.i ], [ %i.bc, %.lr.ph.i50.i.preheader ] ; 2 uses
  %.089.i53.i = phi float [ %i.ed, %.lr.ph.i50.i ], [ %i.bb, %.lr.ph.i50.i.preheader ]
  %niter191 = phi i32 [ %niter191.next.7, %.lr.ph.i50.i ], [ 0, %.lr.ph.i50.i.preheader ]
  %i.dh = load float, ptr %.0610.i52.i, align 4, !tbaa !54
  %i.di = fmul fast float %i.dh, %.089.i53.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i, i64 %10 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !54
  %i.dl = fmul fast float %i.dk, %i.di
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %10 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !54
  %i.do = fmul fast float %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %10 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !54
  %i.dr = fmul fast float %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %10 ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !54
end_hunk_5
begin_hunk_6_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.26:bb.a
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !54
  %i.fk = call nnan ninf nsz float @llvm.minnum.f32(float %i.fj, float %i.fh)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %10 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !54
  %i.fn = call nnan ninf nsz float @llvm.minnum.f32(float %i.fm, float %i.fk)
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %10 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !54
  %i.fq = call nnan ninf nsz float @llvm.minnum.f32(float %i.fp, float %i.fn)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %10 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !54
  %i.ft = call nnan ninf nsz float @llvm.minnum.f32(float %i.fs, float %i.fq)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %10 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !54
  %i.fw = call nnan ninf nsz float @llvm.minnum.f32(float %i.fv, float %i.ft)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %10 ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !54
  %i.fz = call nnan ninf nsz float @llvm.minnum.f32(float %i.fy, float %i.fw) ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %10 ; 2 uses
  %niter177.next.7 = add nuw nsw i32 %niter177, 8 ; 2 uses
  %niter177.ncmp.7 = icmp eq i32 %niter177.next.7, %unroll_iter176
  br i1 %niter177.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a, label %.lr.ph.i62.i, !llvm.loop !89

bb.j:                                             ; preds = %bb.c
  br i1 %i.al, label %.lr.ph.i68.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i68.i.preheader:                           ; preds = %bb.j
  br i1 %i.ap, label %.lr.ph.i68.i.epil.preheader, label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %.lr.ph.i68.i.preheader, %.lr.ph.i68.i
  %.0610.i70.i = phi ptr [ %i.gq, %.lr.ph.i68.i ], [ %i.bc, %.lr.ph.i68.i.preheader ] ; 2 uses
  %.089.i71.i = phi float [ %i.gp, %.lr.ph.i68.i ], [ %i.bb, %.lr.ph.i68.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i68.i ], [ 0, %.lr.ph.i68.i.preheader ]
  %i.gb = load float, ptr %.0610.i70.i, align 4, !tbaa !54
  %i.gc = call fast float @llvm.exp.f32(float %i.gb)
  %i.gd = fadd fast float %i.gc, %.089.i71.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i, i64 %10 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !54
  %i.gg = call fast float @llvm.exp.f32(float %i.gf)
  %i.gh = fadd fast float %i.gg, %i.gd
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %10 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !54
  %i.gk = call fast float @llvm.exp.f32(float %i.gj)
  %i.gl = fadd fast float %i.gk, %i.gh
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %10 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !54
  %i.go = call fast float @llvm.exp.f32(float %i.gn)
  %i.gp = fadd fast float %i.go, %i.gl            ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %10 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa, label %.lr.ph.i68.i, !llvm.loop !90

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod208.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.0610.i.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i.i.preheader ], [ %i.ca, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi float [ %i.bb, %.lr.ph.i.i.preheader ], [ %i.bz, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0610.i.i.epil = phi ptr [ %i.gt, %.lr.ph.i.i.epil ], [ %.0610.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.089.i.i.epil = phi float [ %i.gs, %.lr.ph.i.i.epil ], [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter207 = phi i32 [ %epil.iter207.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.gr = load float, ptr %.0610.i.i.epil, align 4, !tbaa !54
  %i.gs = fadd fast float %i.gr, %.089.i.i.epil   ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i.epil, i64 %10
  %epil.iter207.next = add i32 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i32 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i.i.epil, !llvm.loop !359

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a: ; preds = %.lr.ph.i38.i
  br i1 %lcmp.mod201.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i38.i.epil.preheader

.lr.ph.i38.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a, %.lr.ph.i38.i.preheader
  %.0610.i40.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i38.i.preheader ], [ %i.cq, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a ]
  %.089.i41.i.epil.init = phi float [ %i.bb, %.lr.ph.i38.i.preheader ], [ %i.cp, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.i38.i.epil

.lr.ph.i38.i.epil:                                ; preds = %.lr.ph.i38.i.epil, %.lr.ph.i38.i.epil.preheader
  %.0610.i40.i.epil = phi ptr [ %i.gx, %.lr.ph.i38.i.epil ], [ %.0610.i40.i.epil.init, %.lr.ph.i38.i.epil.preheader ] ; 2 uses
  %.089.i41.i.epil = phi float [ %i.gw, %.lr.ph.i38.i.epil ], [ %.089.i41.i.epil.init, %.lr.ph.i38.i.epil.preheader ]
  %epil.iter200 = phi i32 [ %epil.iter200.next, %.lr.ph.i38.i.epil ], [ 0, %.lr.ph.i38.i.epil.preheader ]
  %i.gu = load float, ptr %.0610.i40.i.epil, align 4, !tbaa !54
  %i.gv = call fast float @llvm.fabs.f32(float %i.gu)
  %i.gw = fadd fast float %i.gv, %.089.i41.i.epil ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0610.i40.i.epil, i64 %10
  %epil.iter200.next = add i32 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i32 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i38.i.epil, !llvm.loop !360

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a: ; preds = %.lr.ph.i44.i
  br i1 %lcmp.mod194.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i44.i.epil.preheader

.lr.ph.i44.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a, %.lr.ph.i44.i.preheader
  %.0610.i46.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i44.i.preheader ], [ %i.dg, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a ]
  %.089.i47.i.epil.init = phi float [ %i.bb, %.lr.ph.i44.i.preheader ], [ %i.df, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i44.i.epil

.lr.ph.i44.i.epil:                                ; preds = %.lr.ph.i44.i.epil, %.lr.ph.i44.i.epil.preheader
  %.0610.i46.i.epil = phi ptr [ %i.hb, %.lr.ph.i44.i.epil ], [ %.0610.i46.i.epil.init, %.lr.ph.i44.i.epil.preheader ] ; 2 uses
  %.089.i47.i.epil = phi float [ %i.ha, %.lr.ph.i44.i.epil ], [ %.089.i47.i.epil.init, %.lr.ph.i44.i.epil.preheader ]
  %epil.iter193 = phi i32 [ %epil.iter193.next, %.lr.ph.i44.i.epil ], [ 0, %.lr.ph.i44.i.epil.preheader ]
  %i.gy = load float, ptr %.0610.i46.i.epil, align 4, !tbaa !54 ; 2 uses
  %i.gz = fmul fast float %i.gy, %i.gy
  %i.ha = fadd fast float %i.gz, %.089.i47.i.epil ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.0610.i46.i.epil, i64 %10
  %epil.iter193.next = add i32 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i32 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i44.i.epil, !llvm.loop !361

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit159.unr-lcssa.a: ; preds = %.lr.ph.i50.i
  br i1 %lcmp.mod187.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i50.i.epil.preheader

.lr.ph.i50.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit159.unr-lcssa.a, %.lr.ph.i50.i.preheader
  %.0610.i52.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i50.i.preheader ], [ %i.ee, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit159.unr-lcssa.a ]
  %.089.i53.i.epil.init = phi float [ %i.bb, %.lr.ph.i50.i.preheader ], [ %i.ed, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit159.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i50.i.epil

.lr.ph.i50.i.epil:                                ; preds = %.lr.ph.i50.i.epil, %.lr.ph.i50.i.epil.preheader
  %.0610.i52.i.epil = phi ptr [ %i.he, %.lr.ph.i50.i.epil ], [ %.0610.i52.i.epil.init, %.lr.ph.i50.i.epil.preheader ] ; 2 uses
  %.089.i53.i.epil = phi float [ %i.hd, %.lr.ph.i50.i.epil ], [ %.089.i53.i.epil.init, %.lr.ph.i50.i.epil.preheader ]
  %epil.iter186 = phi i32 [ %epil.iter186.next, %.lr.ph.i50.i.epil ], [ 0, %.lr.ph.i50.i.epil.preheader ]
  %i.hc = load float, ptr %.0610.i52.i.epil, align 4, !tbaa !54
  %i.hd = fmul fast float %i.hc, %.089.i53.i.epil ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i.epil, i64 %10
  %epil.iter186.next = add i32 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i32 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i50.i.epil, !llvm.loop !362

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit160.unr-lcssa.a: ; preds = %.lr.ph.i56.i
  br i1 %lcmp.mod180.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i56.i.epil.preheader

.lr.ph.i56.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit160.unr-lcssa.a, %.lr.ph.i56.i.preheader
  %.0610.i58.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i56.i.preheader ], [ %i.fc, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit160.unr-lcssa.a ]
  %.089.i59.i.epil.init = phi float [ %i.bb, %.lr.ph.i56.i.preheader ], [ %i.fb, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit160.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.i56.i.epil

.lr.ph.i56.i.epil:                                ; preds = %.lr.ph.i56.i.epil, %.lr.ph.i56.i.epil.preheader
  %.0610.i58.i.epil = phi ptr [ %i.hh, %.lr.ph.i56.i.epil ], [ %.0610.i58.i.epil.init, %.lr.ph.i56.i.epil.preheader ] ; 2 uses
  %.089.i59.i.epil = phi float [ %i.hg, %.lr.ph.i56.i.epil ], [ %.089.i59.i.epil.init, %.lr.ph.i56.i.epil.preheader ]
  %epil.iter179 = phi i32 [ %epil.iter179.next, %.lr.ph.i56.i.epil ], [ 0, %.lr.ph.i56.i.epil.preheader ]
  %i.hf = load float, ptr %.0610.i58.i.epil, align 4, !tbaa !54
  %i.hg = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.epil, float %i.hf) ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0610.i58.i.epil, i64 %10
  %epil.iter179.next = add i32 %epil.iter179, 1   ; 2 uses
  %epil.iter179.cmp.not = icmp eq i32 %epil.iter179.next, %xtraiter178
  br i1 %epil.iter179.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i56.i.epil, !llvm.loop !363

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a: ; preds = %.lr.ph.i62.i
  br i1 %lcmp.mod173.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i62.i.epil.preheader

.lr.ph.i62.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a, %.lr.ph.i62.i.preheader
  %.0610.i64.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i62.i.preheader ], [ %i.ga, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a ]
  %.089.i65.i.epil.init = phi float [ %i.bb, %.lr.ph.i62.i.preheader ], [ %i.fz, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph.i62.i.epil

.lr.ph.i62.i.epil:                                ; preds = %.lr.ph.i62.i.epil, %.lr.ph.i62.i.epil.preheader
  %.0610.i64.i.epil = phi ptr [ %i.hk, %.lr.ph.i62.i.epil ], [ %.0610.i64.i.epil.init, %.lr.ph.i62.i.epil.preheader ] ; 2 uses
  %.089.i65.i.epil = phi float [ %i.hj, %.lr.ph.i62.i.epil ], [ %.089.i65.i.epil.init, %.lr.ph.i62.i.epil.preheader ]
  %epil.iter172 = phi i32 [ %epil.iter172.next, %.lr.ph.i62.i.epil ], [ 0, %.lr.ph.i62.i.epil.preheader ]
  %i.hi = load float, ptr %.0610.i64.i.epil, align 4, !tbaa !54
  %i.hj = call nnan ninf nsz float @llvm.minnum.f32(float %i.hi, float %.089.i65.i.epil) ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.0610.i64.i.epil, i64 %10
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i62.i.epil, !llvm.loop !364

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa: ; preds = %.lr.ph.i68.i
  br i1 %lcmp.mod.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i68.i.epil.preheader

.lr.ph.i68.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa, %.lr.ph.i68.i.preheader
  %.0610.i70.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i68.i.preheader ], [ %i.gq, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa ]
  %.089.i71.i.epil.init = phi float [ %i.bb, %.lr.ph.i68.i.preheader ], [ %i.gp, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i68.i.epil

.lr.ph.i68.i.epil:                                ; preds = %.lr.ph.i68.i.epil, %.lr.ph.i68.i.epil.preheader
  %.0610.i70.i.epil = phi ptr [ %i.ho, %.lr.ph.i68.i.epil ], [ %.0610.i70.i.epil.init, %.lr.ph.i68.i.epil.preheader ] ; 2 uses
  %.089.i71.i.epil = phi float [ %i.hn, %.lr.ph.i68.i.epil ], [ %.089.i71.i.epil.init, %.lr.ph.i68.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i68.i.epil ], [ 0, %.lr.ph.i68.i.epil.preheader ]
  %i.hl = load float, ptr %.0610.i70.i.epil, align 4, !tbaa !54
  %i.hm = call fast float @llvm.exp.f32(float %i.hl)
  %i.hn = fadd fast float %i.hm, %.089.i71.i.epil ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i.epil, i64 %10
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i68.i.epil, !llvm.loop !365

_ZN4ncnnL9reductionEfPKfiii.exit:                 ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa, %.lr.ph.i68.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a, %.lr.ph.i62.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit160.unr-lcssa.a, %.lr.ph.i56.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit159.unr-lcssa.a, %.lr.ph.i50.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a, %.lr.ph.i44.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a, %.lr.ph.i38.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi nsz float [ %i.bb, %bb.c ], [ %i.ha, %.lr.ph.i44.i.epil ], [ %i.hd, %.lr.ph.i50.i.epil ], [ %i.hg, %.lr.ph.i56.i.epil ], [ %i.hj, %.lr.ph.i62.i.epil ], [ %i.gs, %.lr.ph.i.i.epil ], [ %i.gw, %.lr.ph.i38.i.epil ], [ %i.bb, %bb.d ], [ %i.bb, %bb.e ], [ %i.bb, %bb.f ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ], [ %i.bb, %bb.i ], [ %i.bb, %bb.j ], [ %i.bz, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa ], [ %i.cp, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit157.unr-lcssa.a ], [ %i.df, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit158.unr-lcssa.a ], [ %i.ed, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit159.unr-lcssa.a ], [ %i.fb, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit160.unr-lcssa.a ], [ %i.fz, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit161.unr-lcssa.a ], [ %i.gp, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit162.unr-lcssa ], [ %i.hn, %.lr.ph.i68.i.epil ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store float %.0.i, ptr %i.hp, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !366

._crit_edge101.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc50.lr.ph, %.noexc50.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge101.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.27(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not73 = icmp sgt i32 %i.k, %i.j
  br i1 %.not73, label %._crit_edge75.split, label %.noexc37.lr.ph

.noexc37.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !367
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !367
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !367
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !18, !noalias !370
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !370
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42, !noalias !370
  %factor.op.mul76 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !44
  %i.w = load i32, ptr %6, align 4, !tbaa !44
  %i.x = mul nsw i32 %i.w, %i.v                   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  %10 = sext i32 %i.x to i64                      ; 51 uses
  br i1 %i.y, label %.noexc37.lr.ph.split, label %._crit_edge75.split

.noexc37.lr.ph.split:                             ; preds = %.noexc37.lr.ph
  %i.z = load i32, ptr %8, align 4, !tbaa !44     ; 21 uses
  %i.aa = load i32, ptr %9, align 4, !tbaa !44
  %i.ab = icmp sgt i32 %i.z, 0                    ; 7 uses
  %i.ac = sext i32 %i.k to i64
  %i.ad = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.x to i64
  %i.ae = add i32 %i.z, -1                        ; 2 uses
  %xtraiter = and i32 %i.z, 3                     ; 3 uses
  %i.af = icmp ult i32 %i.z, 4
  %unroll_iter = and i32 %i.z, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod136 = icmp ne i32 %xtraiter, 0
  %xtraiter137 = and i32 %i.z, 7                  ; 3 uses
  %i.ag = icmp ult i32 %i.z, 8
  %unroll_iter142 = and i32 %i.z, 2147483640
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  %lcmp.mod141 = icmp ne i32 %xtraiter137, 0
  %xtraiter144 = and i32 %i.z, 7                  ; 3 uses
  %i.ah = icmp ult i32 %i.z, 8
  %unroll_iter149 = and i32 %i.z, 2147483640
  %lcmp.mod146.not = icmp eq i32 %xtraiter144, 0
  %lcmp.mod148 = icmp ne i32 %xtraiter144, 0
  %xtraiter151 = and i32 %i.z, 7                  ; 3 uses
  %i.ai = icmp ult i32 %i.z, 8
  %unroll_iter156 = and i32 %i.z, 2147483640
  %lcmp.mod153.not = icmp eq i32 %xtraiter151, 0
  %lcmp.mod155 = icmp ne i32 %xtraiter151, 0
  %xtraiter158 = and i32 %i.z, 3                  ; 3 uses
  %i.aj = icmp ult i32 %i.z, 4
  %unroll_iter163 = and i32 %i.z, 2147483644
  %lcmp.mod160.not = icmp eq i32 %xtraiter158, 0
  %lcmp.mod162 = icmp ne i32 %xtraiter158, 0
  %xtraiter165 = and i32 %i.z, 3                  ; 3 uses
  %i.ak = icmp ult i32 %i.ae, 3
  %unroll_iter170 = and i32 %i.z, 2147483644
  %lcmp.mod167.not = icmp eq i32 %xtraiter165, 0
  %lcmp.mod169 = icmp ne i32 %xtraiter165, 0
  %xtraiter172 = and i32 %i.z, 7                  ; 3 uses
  %i.al = icmp ult i32 %i.ae, 7
  %unroll_iter177 = and i32 %i.z, 2147483640
  %lcmp.mod174.not = icmp eq i32 %xtraiter172, 0
  %lcmp.mod176 = icmp ne i32 %xtraiter172, 0
  br label %.noexc37

.noexc37:                                         ; preds = %.noexc37.lr.ph.split, %._crit_edge
  %indvars.iv91 = phi i64 [ %i.ac, %.noexc37.lr.ph.split ], [ %indvars.iv.next92, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv91
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %.reass77 = mul i64 %factor.op.mul76, %indvars.iv91
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass77
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond94.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond94.not, label %._crit_edge75.split, label %.noexc37

bb.c:                                             ; preds = %.noexc37, %_ZN4ncnnL9reductionEfPKfiii.exit
  %indvars.iv = phi i64 [ 0, %.noexc37 ], [ %indvars.iv.next, %_ZN4ncnnL9reductionEfPKfiii.exit ] ; 3 uses
  %i.ao = load float, ptr %7, align 4, !tbaa !54  ; 22 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv ; 14 uses
  switch i32 %i.aa, label %_ZN4ncnnL9reductionEfPKfiii.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 6, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 10, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  br i1 %i.al, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.0610.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.ap, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi float [ %i.bm, %.lr.ph.i.i ], [ %i.ao, %.lr.ph.i.i.preheader ]
  %niter178 = phi i32 [ %niter178.next.7, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aq = load float, ptr %.0610.i.i, align 4, !tbaa !54
  %i.ar = fadd fast float %i.aq, %.089.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i, i64 %10 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !54
  %i.au = fadd fast float %i.at, %i.ar
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %10 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !54
  %i.ax = fadd fast float %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %10 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !54
  %i.ba = fadd fast float %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %10 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !54
  %i.bd = fadd fast float %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %10 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !54
  %i.bg = fadd fast float %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %10 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !54
  %i.bj = fadd fast float %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %10 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !54
  %i.bm = fadd fast float %i.bl, %i.bj            ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %10 ; 2 uses
  %niter178.next.7 = add nuw nsw i32 %niter178, 8 ; 2 uses
  %niter178.ncmp.7 = icmp eq i32 %niter178.next.7, %unroll_iter177
  br i1 %niter178.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !84

bb.e:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i38.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i38.i.preheader:                           ; preds = %bb.e
  br i1 %i.ak, label %.lr.ph.i38.i.epil.preheader, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %.lr.ph.i38.i
  %.0610.i40.i = phi ptr [ %i.cd, %.lr.ph.i38.i ], [ %i.ap, %.lr.ph.i38.i.preheader ] ; 2 uses
  %.089.i41.i = phi float [ %i.cc, %.lr.ph.i38.i ], [ %i.ao, %.lr.ph.i38.i.preheader ]
  %niter171 = phi i32 [ %niter171.next.3, %.lr.ph.i38.i ], [ 0, %.lr.ph.i38.i.preheader ]
  %i.bo = load float, ptr %.0610.i40.i, align 4, !tbaa !54
  %i.bp = call fast float @llvm.fabs.f32(float %i.bo)
  %i.bq = fadd fast float %i.bp, %.089.i41.i
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0610.i40.i, i64 %10 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !54
  %i.bt = call fast float @llvm.fabs.f32(float %i.bs)
  %i.bu = fadd fast float %i.bt, %i.bq
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %10 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !54
  %i.bx = call fast float @llvm.fabs.f32(float %i.bw)
  %i.by = fadd fast float %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %10 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !54
  %i.cb = call fast float @llvm.fabs.f32(float %i.ca)
  %i.cc = fadd fast float %i.cb, %i.by            ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %10 ; 2 uses
  %niter171.next.3 = add nuw nsw i32 %niter171, 4 ; 2 uses
  %niter171.ncmp.3 = icmp eq i32 %niter171.next.3, %unroll_iter170
  br i1 %niter171.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a, label %.lr.ph.i38.i, !llvm.loop !85

bb.f:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i44.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i44.i.preheader:                           ; preds = %bb.f
  br i1 %i.aj, label %.lr.ph.i44.i.epil.preheader, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader, %.lr.ph.i44.i
  %.0610.i46.i = phi ptr [ %i.ct, %.lr.ph.i44.i ], [ %i.ap, %.lr.ph.i44.i.preheader ] ; 2 uses
  %.089.i47.i = phi float [ %i.cs, %.lr.ph.i44.i ], [ %i.ao, %.lr.ph.i44.i.preheader ]
  %niter164 = phi i32 [ %niter164.next.3, %.lr.ph.i44.i ], [ 0, %.lr.ph.i44.i.preheader ]
  %i.ce = load float, ptr %.0610.i46.i, align 4, !tbaa !54 ; 2 uses
  %i.cf = fmul fast float %i.ce, %i.ce
  %i.cg = fadd fast float %i.cf, %.089.i47.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0610.i46.i, i64 %10 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !54 ; 2 uses
  %i.cj = fmul fast float %i.ci, %i.ci
  %i.ck = fadd fast float %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %10 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !54 ; 2 uses
  %i.cn = fmul fast float %i.cm, %i.cm
  %i.co = fadd fast float %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %10 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !54 ; 2 uses
  %i.cr = fmul fast float %i.cq, %i.cq
  %i.cs = fadd fast float %i.cr, %i.co            ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %10 ; 2 uses
  %niter164.next.3 = add nuw nsw i32 %niter164, 4 ; 2 uses
  %niter164.ncmp.3 = icmp eq i32 %niter164.next.3, %unroll_iter163
  br i1 %niter164.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a, label %.lr.ph.i44.i, !llvm.loop !86

bb.g:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i50.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i50.i.preheader:                           ; preds = %bb.g
  br i1 %i.ai, label %.lr.ph.i50.i.epil.preheader, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i.preheader, %.lr.ph.i50.i
  %.0610.i52.i = phi ptr [ %i.dr, %.lr.ph.i50.i ], [ %i.ap, %.lr.ph.i50.i.preheader ] ; 2 uses
  %.089.i53.i = phi float [ %i.dq, %.lr.ph.i50.i ], [ %i.ao, %.lr.ph.i50.i.preheader ]
  %niter157 = phi i32 [ %niter157.next.7, %.lr.ph.i50.i ], [ 0, %.lr.ph.i50.i.preheader ]
  %i.cu = load float, ptr %.0610.i52.i, align 4, !tbaa !54
  %i.cv = fmul fast float %i.cu, %.089.i53.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i, i64 %10 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !54
  %i.cy = fmul fast float %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %10 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !54
  %i.db = fmul fast float %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %10 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !54
  %i.de = fmul fast float %i.dd, %i.db
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %10 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !54
  %i.dh = fmul fast float %i.dg, %i.de
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %10 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !54
  %i.dk = fmul fast float %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %10 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !54
  %i.dn = fmul fast float %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %10 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !54
  %i.dq = fmul fast float %i.dp, %i.dn            ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %10 ; 2 uses
  %niter157.next.7 = add nuw nsw i32 %niter157, 8 ; 2 uses
  %niter157.ncmp.7 = icmp eq i32 %niter157.next.7, %unroll_iter156
end_hunk_6
begin_hunk_7_@_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.27:bb.a
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !54
  %i.ex = call nnan ninf nsz float @llvm.minnum.f32(float %i.ew, float %i.eu)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %10 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !54
  %i.fa = call nnan ninf nsz float @llvm.minnum.f32(float %i.ez, float %i.ex)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %10 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !54
  %i.fd = call nnan ninf nsz float @llvm.minnum.f32(float %i.fc, float %i.fa)
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %10 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !54
  %i.fg = call nnan ninf nsz float @llvm.minnum.f32(float %i.ff, float %i.fd)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %10 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !54
  %i.fj = call nnan ninf nsz float @llvm.minnum.f32(float %i.fi, float %i.fg)
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %10 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !54
  %i.fm = call nnan ninf nsz float @llvm.minnum.f32(float %i.fl, float %i.fj) ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %10 ; 2 uses
  %niter143.next.7 = add nuw nsw i32 %niter143, 8 ; 2 uses
  %niter143.ncmp.7 = icmp eq i32 %niter143.next.7, %unroll_iter142
  br i1 %niter143.ncmp.7, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a, label %.lr.ph.i62.i, !llvm.loop !89

bb.j:                                             ; preds = %bb.c
  br i1 %i.ab, label %.lr.ph.i68.i.preheader, label %_ZN4ncnnL9reductionEfPKfiii.exit

.lr.ph.i68.i.preheader:                           ; preds = %bb.j
  br i1 %i.af, label %.lr.ph.i68.i.epil.preheader, label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %.lr.ph.i68.i.preheader, %.lr.ph.i68.i
  %.0610.i70.i = phi ptr [ %i.gd, %.lr.ph.i68.i ], [ %i.ap, %.lr.ph.i68.i.preheader ] ; 2 uses
  %.089.i71.i = phi float [ %i.gc, %.lr.ph.i68.i ], [ %i.ao, %.lr.ph.i68.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i68.i ], [ 0, %.lr.ph.i68.i.preheader ]
  %i.fo = load float, ptr %.0610.i70.i, align 4, !tbaa !54
  %i.fp = call fast float @llvm.exp.f32(float %i.fo)
  %i.fq = fadd fast float %i.fp, %.089.i71.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i, i64 %10 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !54
  %i.ft = call fast float @llvm.exp.f32(float %i.fs)
  %i.fu = fadd fast float %i.ft, %i.fq
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %10 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !54
  %i.fx = call fast float @llvm.exp.f32(float %i.fw)
  %i.fy = fadd fast float %i.fx, %i.fu
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %10 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !54
  %i.gb = call fast float @llvm.exp.f32(float %i.ga)
  %i.gc = fadd fast float %i.gb, %i.fy            ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %10 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa, label %.lr.ph.i68.i, !llvm.loop !90

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod174.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.0610.i.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i.i.preheader ], [ %i.bn, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi float [ %i.ao, %.lr.ph.i.i.preheader ], [ %i.bm, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0610.i.i.epil = phi ptr [ %i.gg, %.lr.ph.i.i.epil ], [ %.0610.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.089.i.i.epil = phi float [ %i.gf, %.lr.ph.i.i.epil ], [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter173 = phi i32 [ %epil.iter173.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ge = load float, ptr %.0610.i.i.epil, align 4, !tbaa !54
  %i.gf = fadd fast float %i.ge, %.089.i.i.epil   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0610.i.i.epil, i64 %10
  %epil.iter173.next = add i32 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i32 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i.i.epil, !llvm.loop !373

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a: ; preds = %.lr.ph.i38.i
  br i1 %lcmp.mod167.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i38.i.epil.preheader

.lr.ph.i38.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a, %.lr.ph.i38.i.preheader
  %.0610.i40.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i38.i.preheader ], [ %i.cd, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a ]
  %.089.i41.i.epil.init = phi float [ %i.ao, %.lr.ph.i38.i.preheader ], [ %i.cc, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph.i38.i.epil

.lr.ph.i38.i.epil:                                ; preds = %.lr.ph.i38.i.epil, %.lr.ph.i38.i.epil.preheader
  %.0610.i40.i.epil = phi ptr [ %i.gk, %.lr.ph.i38.i.epil ], [ %.0610.i40.i.epil.init, %.lr.ph.i38.i.epil.preheader ] ; 2 uses
  %.089.i41.i.epil = phi float [ %i.gj, %.lr.ph.i38.i.epil ], [ %.089.i41.i.epil.init, %.lr.ph.i38.i.epil.preheader ]
  %epil.iter166 = phi i32 [ %epil.iter166.next, %.lr.ph.i38.i.epil ], [ 0, %.lr.ph.i38.i.epil.preheader ]
  %i.gh = load float, ptr %.0610.i40.i.epil, align 4, !tbaa !54
  %i.gi = call fast float @llvm.fabs.f32(float %i.gh)
  %i.gj = fadd fast float %i.gi, %.089.i41.i.epil ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0610.i40.i.epil, i64 %10
  %epil.iter166.next = add i32 %epil.iter166, 1   ; 2 uses
  %epil.iter166.cmp.not = icmp eq i32 %epil.iter166.next, %xtraiter165
  br i1 %epil.iter166.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i38.i.epil, !llvm.loop !374

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a: ; preds = %.lr.ph.i44.i
  br i1 %lcmp.mod160.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i44.i.epil.preheader

.lr.ph.i44.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a, %.lr.ph.i44.i.preheader
  %.0610.i46.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i44.i.preheader ], [ %i.ct, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a ]
  %.089.i47.i.epil.init = phi float [ %i.ao, %.lr.ph.i44.i.preheader ], [ %i.cs, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod162)
  br label %.lr.ph.i44.i.epil

.lr.ph.i44.i.epil:                                ; preds = %.lr.ph.i44.i.epil, %.lr.ph.i44.i.epil.preheader
  %.0610.i46.i.epil = phi ptr [ %i.go, %.lr.ph.i44.i.epil ], [ %.0610.i46.i.epil.init, %.lr.ph.i44.i.epil.preheader ] ; 2 uses
  %.089.i47.i.epil = phi float [ %i.gn, %.lr.ph.i44.i.epil ], [ %.089.i47.i.epil.init, %.lr.ph.i44.i.epil.preheader ]
  %epil.iter159 = phi i32 [ %epil.iter159.next, %.lr.ph.i44.i.epil ], [ 0, %.lr.ph.i44.i.epil.preheader ]
  %i.gl = load float, ptr %.0610.i46.i.epil, align 4, !tbaa !54 ; 2 uses
  %i.gm = fmul fast float %i.gl, %i.gl
  %i.gn = fadd fast float %i.gm, %.089.i47.i.epil ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0610.i46.i.epil, i64 %10
  %epil.iter159.next = add i32 %epil.iter159, 1   ; 2 uses
  %epil.iter159.cmp.not = icmp eq i32 %epil.iter159.next, %xtraiter158
  br i1 %epil.iter159.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i44.i.epil, !llvm.loop !375

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit125.unr-lcssa.a: ; preds = %.lr.ph.i50.i
  br i1 %lcmp.mod153.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i50.i.epil.preheader

.lr.ph.i50.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit125.unr-lcssa.a, %.lr.ph.i50.i.preheader
  %.0610.i52.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i50.i.preheader ], [ %i.dr, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit125.unr-lcssa.a ]
  %.089.i53.i.epil.init = phi float [ %i.ao, %.lr.ph.i50.i.preheader ], [ %i.dq, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit125.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i50.i.epil

.lr.ph.i50.i.epil:                                ; preds = %.lr.ph.i50.i.epil, %.lr.ph.i50.i.epil.preheader
  %.0610.i52.i.epil = phi ptr [ %i.gr, %.lr.ph.i50.i.epil ], [ %.0610.i52.i.epil.init, %.lr.ph.i50.i.epil.preheader ] ; 2 uses
  %.089.i53.i.epil = phi float [ %i.gq, %.lr.ph.i50.i.epil ], [ %.089.i53.i.epil.init, %.lr.ph.i50.i.epil.preheader ]
  %epil.iter152 = phi i32 [ %epil.iter152.next, %.lr.ph.i50.i.epil ], [ 0, %.lr.ph.i50.i.epil.preheader ]
  %i.gp = load float, ptr %.0610.i52.i.epil, align 4, !tbaa !54
  %i.gq = fmul fast float %i.gp, %.089.i53.i.epil ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0610.i52.i.epil, i64 %10
  %epil.iter152.next = add i32 %epil.iter152, 1   ; 2 uses
  %epil.iter152.cmp.not = icmp eq i32 %epil.iter152.next, %xtraiter151
  br i1 %epil.iter152.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i50.i.epil, !llvm.loop !376

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit126.unr-lcssa.a: ; preds = %.lr.ph.i56.i
  br i1 %lcmp.mod146.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i56.i.epil.preheader

.lr.ph.i56.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit126.unr-lcssa.a, %.lr.ph.i56.i.preheader
  %.0610.i58.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i56.i.preheader ], [ %i.ep, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit126.unr-lcssa.a ]
  %.089.i59.i.epil.init = phi float [ %i.ao, %.lr.ph.i56.i.preheader ], [ %i.eo, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit126.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i56.i.epil

.lr.ph.i56.i.epil:                                ; preds = %.lr.ph.i56.i.epil, %.lr.ph.i56.i.epil.preheader
  %.0610.i58.i.epil = phi ptr [ %i.gu, %.lr.ph.i56.i.epil ], [ %.0610.i58.i.epil.init, %.lr.ph.i56.i.epil.preheader ] ; 2 uses
  %.089.i59.i.epil = phi float [ %i.gt, %.lr.ph.i56.i.epil ], [ %.089.i59.i.epil.init, %.lr.ph.i56.i.epil.preheader ]
  %epil.iter145 = phi i32 [ %epil.iter145.next, %.lr.ph.i56.i.epil ], [ 0, %.lr.ph.i56.i.epil.preheader ]
  %i.gs = load float, ptr %.0610.i58.i.epil, align 4, !tbaa !54
  %i.gt = call nnan ninf nsz float @llvm.maxnum.f32(float %.089.i59.i.epil, float %i.gs) ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.0610.i58.i.epil, i64 %10
  %epil.iter145.next = add i32 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i32 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i56.i.epil, !llvm.loop !377

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a: ; preds = %.lr.ph.i62.i
  br i1 %lcmp.mod139.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i62.i.epil.preheader

.lr.ph.i62.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a, %.lr.ph.i62.i.preheader
  %.0610.i64.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i62.i.preheader ], [ %i.fn, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a ]
  %.089.i65.i.epil.init = phi float [ %i.ao, %.lr.ph.i62.i.preheader ], [ %i.fm, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a ]
  call void @llvm.assume(i1 %lcmp.mod141)
  br label %.lr.ph.i62.i.epil

.lr.ph.i62.i.epil:                                ; preds = %.lr.ph.i62.i.epil, %.lr.ph.i62.i.epil.preheader
  %.0610.i64.i.epil = phi ptr [ %i.gx, %.lr.ph.i62.i.epil ], [ %.0610.i64.i.epil.init, %.lr.ph.i62.i.epil.preheader ] ; 2 uses
  %.089.i65.i.epil = phi float [ %i.gw, %.lr.ph.i62.i.epil ], [ %.089.i65.i.epil.init, %.lr.ph.i62.i.epil.preheader ]
  %epil.iter138 = phi i32 [ %epil.iter138.next, %.lr.ph.i62.i.epil ], [ 0, %.lr.ph.i62.i.epil.preheader ]
  %i.gv = load float, ptr %.0610.i64.i.epil, align 4, !tbaa !54
  %i.gw = call nnan ninf nsz float @llvm.minnum.f32(float %i.gv, float %.089.i65.i.epil) ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0610.i64.i.epil, i64 %10
  %epil.iter138.next = add i32 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i32 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i62.i.epil, !llvm.loop !378

_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa: ; preds = %.lr.ph.i68.i
  br i1 %lcmp.mod.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i68.i.epil.preheader

.lr.ph.i68.i.epil.preheader:                      ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa, %.lr.ph.i68.i.preheader
  %.0610.i70.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i68.i.preheader ], [ %i.gd, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa ]
  %.089.i71.i.epil.init = phi float [ %i.ao, %.lr.ph.i68.i.preheader ], [ %i.gc, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i68.i.epil

.lr.ph.i68.i.epil:                                ; preds = %.lr.ph.i68.i.epil, %.lr.ph.i68.i.epil.preheader
  %.0610.i70.i.epil = phi ptr [ %i.hb, %.lr.ph.i68.i.epil ], [ %.0610.i70.i.epil.init, %.lr.ph.i68.i.epil.preheader ] ; 2 uses
  %.089.i71.i.epil = phi float [ %i.ha, %.lr.ph.i68.i.epil ], [ %.089.i71.i.epil.init, %.lr.ph.i68.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i68.i.epil ], [ 0, %.lr.ph.i68.i.epil.preheader ]
  %i.gy = load float, ptr %.0610.i70.i.epil, align 4, !tbaa !54
  %i.gz = call fast float @llvm.exp.f32(float %i.gy)
  %i.ha = fadd fast float %i.gz, %.089.i71.i.epil ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.0610.i70.i.epil, i64 %10
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL9reductionEfPKfiii.exit, label %.lr.ph.i68.i.epil, !llvm.loop !379

_ZN4ncnnL9reductionEfPKfiii.exit:                 ; preds = %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa, %.lr.ph.i68.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a, %.lr.ph.i62.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit126.unr-lcssa.a, %.lr.ph.i56.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit125.unr-lcssa.a, %.lr.ph.i50.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a, %.lr.ph.i44.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a, %.lr.ph.i38.i.epil, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi nsz float [ %i.ao, %bb.c ], [ %i.gn, %.lr.ph.i44.i.epil ], [ %i.gq, %.lr.ph.i50.i.epil ], [ %i.gt, %.lr.ph.i56.i.epil ], [ %i.gw, %.lr.ph.i62.i.epil ], [ %i.gf, %.lr.ph.i.i.epil ], [ %i.gj, %.lr.ph.i38.i.epil ], [ %i.ao, %bb.d ], [ %i.ao, %bb.e ], [ %i.ao, %bb.f ], [ %i.ao, %bb.g ], [ %i.ao, %bb.h ], [ %i.ao, %bb.i ], [ %i.ao, %bb.j ], [ %i.bm, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit.unr-lcssa ], [ %i.cc, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit123.unr-lcssa.a ], [ %i.cs, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit124.unr-lcssa.a ], [ %i.dq, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit125.unr-lcssa.a ], [ %i.eo, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit126.unr-lcssa.a ], [ %i.fm, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit127.unr-lcssa.a ], [ %i.gc, %_ZN4ncnnL9reductionEfPKfiii.exit.loopexit128.unr-lcssa ], [ %i.ha, %.lr.ph.i68.i.epil ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store float %.0.i, ptr %i.hc, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !380

._crit_edge75.split:                              ; preds = %._crit_edge, %.noexc37.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge75.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.28(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not15 = icmp sgt i32 %i.k, %i.j
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.m = sext i32 %i.k to i64                     ; 3 uses
  %i.n = add nsw i32 %i.j, 1
  %i.o = sub i32 %i.j, %i.k                       ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.q, 8589934588               ; 3 uses
  %i.r = add nsw i64 %n.vec, %i.m
  %invariant.gep = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !54
  %i.s = call fast <4 x float> @llvm.log.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.s, ptr %gep, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !54
  %i.w = call fast float @llvm.log.f32(float %i.v)
  store float %i.w, ptr %i.u, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !382

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.29(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not17 = icmp sgt i32 %i.k, %i.j
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.m = sext i32 %i.k to i64                     ; 3 uses
  %i.n = add nsw i32 %i.j, 1
  %i.o = sub i32 %i.j, %i.k                       ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.q, 8589934588               ; 3 uses
  %i.r = add nsw i64 %n.vec, %i.m
  %invariant.gep = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !54 ; 2 uses
  %i.s = fcmp fast olt <4 x float> %wide.load, splat (float f0x00800000)
  %i.t = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %wide.load)
  %i.u = select <4 x i1> %i.s, <4 x float> zeroinitializer, <4 x float> %i.t
  store <4 x float> %i.u, ptr %gep, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !54 ; 2 uses
  %i.y = fcmp fast olt float %i.x, f0x00800000
  %i.z = call fast float @llvm.sqrt.f32(float %i.x)
  %i.aa = select i1 %i.y, float 0.000000e+00, float %i.z
  store float %i.aa, ptr %i.w, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !384

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL12reduction_opERKNS_3MatERS0_bbbbiifRKNS_6OptionE.omp_outlined.30(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #13 personality ptr @__gxx_personality_v0 {
end_hunk_7
