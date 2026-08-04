begin_hunk_0_@L_canny:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre38, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ae)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.af)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %sqrt, ptr %i.ag, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.ah = tail call ptr @dnon_max(ptr noundef nonnull %i.r, ptr noundef %.pre, ptr noundef %.pre38, i32 noundef %2, i32 noundef %3)
  store ptr %i.ah, ptr %4, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %._crit_edge, %bb.f
  %.030 = phi i32 [ 1, %bb.f ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %._crit_edge ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @GaussianMask(double noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = fptrunc double %0 to float               ; 2 uses
  %i.b = fmul float %i.a, 6.000000e+00
  %i.c = fptosi float %i.b to i16                 ; 2 uses
  %i.d = sext i16 %i.c to i32
  %i.e = and i16 %i.c, 1
  %i.f = xor i16 %i.e, 1
  %i.g = zext nneg i16 %i.f to i32
  %spec.select = or disjoint i32 %i.g, %i.d       ; 2 uses
  store i32 %spec.select, ptr %1, align 4, !tbaa !4
  %i.h = sext i32 %spec.select to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #8 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 4, !tbaa !4      ; 3 uses
  %.neg = sdiv i32 %i.j, -2                       ; 2 uses
  %sext = shl i32 %.neg, 16
  %i.k = ashr exact i32 %sext, 16                 ; 2 uses
  %i.l = sdiv i32 %i.j, 2                         ; 2 uses
  %.not3536 = icmp slt i32 %i.l, %i.k
  br i1 %.not3536, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = trunc i32 %.neg to i16
  %i.n = fpext float %i.a to double
  %i.o = fmul double %i.n, f0x3FF6A09E667F3BCD    ; 3 uses
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.r = phi i32 [ %i.l, %.lr.ph ], [ %i.aw, %bb.i ]
  %i.s = phi i32 [ %i.j, %.lr.ph ], [ %i.av, %bb.i ]
  %i.t = phi i32 [ %i.k, %.lr.ph ], [ %i.au, %bb.i ]
  %.02938 = phi ptr [ %i.i, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.03037 = phi i16 [ %i.m, %.lr.ph ], [ %i.at, %bb.i ] ; 3 uses
  %i.u = add nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = sitofp i16 %.03037 to double
  %i.x = fadd double %i.w, 5.000000e-01
  %i.y = fdiv double %i.x, %i.o
  %i.z = tail call double @erf(double noundef %i.y) #7, !tbaa !4
  %i.aa = fadd double %i.z, 1.000000e+00
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -1
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = sitofp i16 %.03037 to double            ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = fadd double %i.ad, -5.000000e-01
  %i.af = fdiv double %i.ae, %i.o
  %i.ag = tail call double @erf(double noundef %i.af) #7, !tbaa !4
  %i.ah = fsub double 1.000000e+00, %i.ag
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fadd <2 x double> %i.aj, <double 5.000000e-01, double -5.000000e-01>
  %i.al = fdiv <2 x double> %i.ak, %i.q           ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = tail call double @erf(double noundef %i.am) #7, !tbaa !4
  %i.ao = extractelement <2 x double> %i.al, i64 1
  %i.ap = tail call double @erf(double noundef %i.ao) #7, !tbaa !4
  %i.aq = fsub double %i.an, %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %.sink = phi double [ %i.aa, %bb.e ], [ %i.aq, %bb.h ], [ %i.ah, %bb.g ]
  %i.ar = fmul double %.sink, 5.000000e-01
  %i.as = fptrunc double %i.ar to float
  store float %i.as, ptr %.02938, align 4, !tbaa !11
  %.1 = getelementptr inbounds nuw i8, ptr %.02938, i64 4
  %i.at = add i16 %.03037, 1                      ; 2 uses
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.aw = sdiv i32 %i.av, 2                       ; 2 uses
  %.not35 = icmp slt i32 %i.aw, %i.au
  br i1 %.not35, label %._crit_edge, label %bb.d, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.i, %bb.c
  store ptr %i.i, ptr %2, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @DGaussianMask(double noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = fptrunc double %0 to float
  %i.b = fpext float %i.a to double               ; 4 uses
  %i.c = fmul double %i.b, f0x4026A09E667F3BCD
  %i.d = fptosi double %i.c to i16                ; 2 uses
  %i.e = sext i16 %i.d to i32
  %i.f = and i16 %i.d, 1
  %i.g = xor i16 %i.f, 1
  %i.h = zext nneg i16 %i.g to i32
  %spec.select = or disjoint i32 %i.h, %i.e       ; 2 uses
  store i32 %spec.select, ptr %1, align 4, !tbaa !4
  %i.i = sext i32 %spec.select to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #8 ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !4      ; 3 uses
  %.neg = sdiv i32 %i.k, -2                       ; 2 uses
  %sext = shl i32 %.neg, 16
  %i.l = ashr exact i32 %sext, 16                 ; 2 uses
  %i.m = sdiv i32 %i.k, 2                         ; 2 uses
  %.not4748 = icmp slt i32 %i.m, %i.l
  br i1 %.not4748, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = trunc i32 %.neg to i16
  %i.o = fmul double %i.b, 2.000000e+00
  %i.p = fmul double %i.o, %i.b                   ; 3 uses
  %i.q = fmul double %i.b, f0x40040D931FF62705    ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.s ; 2 uses
  %4 = extractelement <2 x double> %i.t, i64 0
  %5 = fptrunc double %4 to float
  %6 = fpext float %5 to double
  %7 = extractelement <2 x double> %i.t, i64 1
  %8 = fptrunc double %7 to float
  %9 = fpext float %8 to double
  %10 = insertelement <2 x double> poison, double %i.p, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.u = phi i32 [ %i.m, %.lr.ph ], [ %i.bf, %bb.i ]
  %i.v = phi i32 [ %i.k, %.lr.ph ], [ %i.be, %bb.i ]
  %i.w = phi i32 [ %i.l, %.lr.ph ], [ %i.bd, %bb.i ]
  %.04150 = phi ptr [ %i.j, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.04249 = phi i16 [ %i.n, %.lr.ph ], [ %i.bc, %bb.i ] ; 3 uses
  %i.x = add nsw i32 %i.u, %i.w                   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = sitofp i16 %.04249 to double
  %i.aa = fadd double %i.z, 5.000000e-01          ; 2 uses
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = fdiv double %i.ac, %i.p
  %i.ae = tail call double @exp(double noundef %i.ad) #7, !tbaa !4
  %i.af = fmul double %i.ae, %9
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %i.v, -1
  %i.ah = icmp eq i32 %i.x, %i.ag
  %i.ai = sitofp i16 %.04249 to double            ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = fadd double %i.ai, -5.000000e-01        ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = fmul double %i.aj, %i.ak
  %i.am = fdiv double %i.al, %i.p
  %i.an = tail call double @exp(double noundef %i.am) #7, !tbaa !4
  %i.ao = fmul double %i.an, %6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fadd <2 x double> %i.aq, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.as = fneg <2 x double> %i.ar
  %i.at = fmul <2 x double> %i.ar, %i.as
  %i.au = fdiv <2 x double> %i.at, %11            ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = tail call double @exp(double noundef %i.av) #7, !tbaa !4
  %i.ax = extractelement <2 x double> %i.au, i64 1
  %i.ay = tail call double @exp(double noundef %i.ax) #7, !tbaa !4
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = fdiv double %i.az, %i.q
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %.sink57 = phi double [ %i.af, %bb.e ], [ %i.ba, %bb.h ], [ %i.ao, %bb.g ]
  %i.bb = fptrunc double %.sink57 to float
  store float %i.bb, ptr %.04150, align 4, !tbaa !11
  %.1 = getelementptr inbounds nuw i8, ptr %.04150, i64 4
  %i.bc = add i16 %.04249, 1                      ; 2 uses
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.bf = sdiv i32 %i.be, 2                       ; 2 uses
  %.not47 = icmp slt i32 %i.bf, %i.bd
  br i1 %.not47, label %._crit_edge, label %bb.d, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.i, %bb.c
  store ptr %i.j, ptr %2, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @dfilter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %.preheader115

.preheader115:                                    ; preds = %bb.a
  %sext = shl i32 %6, 16
  %i.d = ashr exact i32 %sext, 16                 ; 5 uses
  %i.e = icmp slt i32 %i.d, 1                     ; 2 uses
  br i1 %i.e, label %._crit_edge124, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.preheader115
  %sext110 = shl i32 %5, 16
  %i.f = ashr exact i32 %sext110, 16              ; 5 uses
  %i.g = icmp slt i32 %i.f, 1
  %i.h = sdiv i32 %3, 2                           ; 4 uses
  %i.i = trunc i32 %i.h to i16
  %i.j = sub i16 0, %i.i                          ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %.not111116 = icmp slt i32 %i.h, %i.k
  %or.cond = or i1 %i.g, %.not111116
  br i1 %or.cond, label %._crit_edge124, label %.preheader114.us

.preheader114.us:                                 ; preds = %.preheader114.lr.ph, %._crit_edge121.split.us128
  %i.l = phi i32 [ %i.ap, %._crit_edge121.split.us128 ], [ 0, %.preheader114.lr.ph ] ; 2 uses
  %.082123.us = phi i16 [ %i.ao, %._crit_edge121.split.us128 ], [ 0, %.preheader114.lr.ph ]
  %.085122.us = phi ptr [ %i.ak, %._crit_edge121.split.us128 ], [ %i.c, %.preheader114.lr.ph ]
  %i.m = add nsw i32 %i.l, 1
  %i.n = mul nsw i32 %i.m, %i.f
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = mul nsw i32 %i.l, %i.f                   ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader114.us, %._crit_edge.us
  %i.u = phi i32 [ 0, %.preheader114.us ], [ %i.am, %._crit_edge.us ] ; 2 uses
  %.083119.us126 = phi i16 [ 0, %.preheader114.us ], [ %i.al, %._crit_edge.us ]
  %.186118.us127 = phi ptr [ %.085122.us, %.preheader114.us ], [ %i.ak, %._crit_edge.us ] ; 3 uses
  %i.v = add nsw i32 %i.u, %i.r
  %.186.promoted.us = load float, ptr %.186118.us127, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.us
  %i.w = phi float [ %.186.promoted.us, %.lr.ph.us ], [ %i.ah, %bb.e ]
  %i.x = phi i32 [ %i.k, %.lr.ph.us ], [ %i.aj, %bb.e ] ; 3 uses
  %.089117.us = phi i16 [ %i.j, %.lr.ph.us ], [ %i.ai, %bb.e ]
  %i.y = add nsw i32 %i.x, %i.u                   ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not112.us = icmp slt i32 %i.y, %i.f
  br i1 %.not112.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i32 %i.v, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.087.in.us = phi ptr [ %i.q, %bb.c ], [ %i.ac, %bb.d ], [ %i.t, %bb.b ]
  %.087.us = load float, ptr %.087.in.us, align 4, !tbaa !11
  %i.ad = sub nsw i32 %i.h, %i.x
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11
  %i.ah = tail call float @llvm.fmuladd.f32(float %.087.us, float %i.ag, float %i.w) ; 2 uses
  store float %i.ah, ptr %.186118.us127, align 4, !tbaa !11
  %i.ai = add i16 %.089117.us, 1                  ; 2 uses
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %.not111.us = icmp slt i32 %i.h, %i.aj
  br i1 %.not111.us, label %._crit_edge.us, label %bb.b, !llvm.loop !20

._crit_edge.us:                                   ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.186118.us127, i64 4 ; 2 uses
  %i.al = add i16 %.083119.us126, 1               ; 2 uses
  %i.am = sext i16 %i.al to i32                   ; 2 uses
  %i.an = icmp sgt i32 %i.f, %i.am
  br i1 %i.an, label %.lr.ph.us, label %._crit_edge121.split.us128, !llvm.loop !21

._crit_edge121.split.us128:                       ; preds = %._crit_edge.us
  %i.ao = add i16 %.082123.us, 1                  ; 2 uses
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %i.aq = icmp sgt i32 %i.d, %i.ap
  br i1 %i.aq, label %.preheader114.us, label %._crit_edge124, !llvm.loop !22

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %bb.l

._crit_edge124:                                   ; preds = %._crit_edge121.split.us128, %.preheader114.lr.ph, %.preheader115
  %i.ar = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #8 ; 3 uses
  %.not106 = icmp eq ptr %i.ar, null
  br i1 %.not106, label %bb.k, label %.preheader113

.preheader113:                                    ; preds = %._crit_edge124
  %sext107 = shl i32 %5, 16
  %i.as = ashr exact i32 %sext107, 16             ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader.lr.ph, label %._crit_edge139

.preheader.lr.ph:                                 ; preds = %.preheader113
  %i.au = sdiv i32 %4, 2                          ; 4 uses
  %i.av = trunc i32 %i.au to i16
  %i.aw = sub i16 0, %i.av                        ; 2 uses
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = add nsw i32 %i.d, -1
  %i.az = mul nsw i32 %i.ay, %5
  %.not108132 = icmp slt i32 %i.au, %i.ax
  %or.cond170 = or i1 %i.e, %.not108132
  br i1 %or.cond170, label %._crit_edge139, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge137.split.us143
  %i.ba = phi i32 [ %i.cc, %._crit_edge137.split.us143 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.184138.us = phi i16 [ %i.cb, %._crit_edge137.split.us143 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bc
  %i.be = sext i16 %.184138.us to i64             ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.be
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ar, i64 %i.be
  br label %.lr.ph.us140

.lr.ph.us140:                                     ; preds = %.preheader.us, %._crit_edge.us142
  %i.bg = phi i32 [ 0, %.preheader.us ], [ %i.bz, %._crit_edge.us142 ] ; 2 uses
  %.1135.us141 = phi i16 [ 0, %.preheader.us ], [ %i.by, %._crit_edge.us142 ]
  %i.bh = mul nsw i32 %i.bg, %i.as
  %i.bi = sext i32 %i.bh to i64
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bi ; 2 uses
  %.promoted.us = load float, ptr %gep.us, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.us140
  %i.bj = phi float [ %.promoted.us, %.lr.ph.us140 ], [ %i.bv, %bb.j ]
  %i.bk = phi i32 [ %i.ax, %.lr.ph.us140 ], [ %i.bx, %bb.j ] ; 2 uses
  %.190133.us = phi i16 [ %i.aw, %.lr.ph.us140 ], [ %i.bw, %bb.j ]
  %i.bl = add nsw i32 %i.bk, %i.bg                ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not109.us = icmp slt i32 %i.bl, %i.d
  br i1 %.not109.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = mul nuw nsw i32 %i.bl, %i.as
  %i.bo = add nsw i32 %i.bn, %i.ba
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.188.in.us = phi ptr [ %i.bd, %bb.h ], [ %i.bq, %bb.i ], [ %i.bf, %bb.g ]
  %.188.us = load float, ptr %.188.in.us, align 4, !tbaa !11
  %i.br = sub nsw i32 %i.au, %i.bk
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  %i.bv = tail call float @llvm.fmuladd.f32(float %.188.us, float %i.bu, float %i.bj) ; 2 uses
  %i.bw = add i16 %.190133.us, 1                  ; 2 uses
end_hunk_0
