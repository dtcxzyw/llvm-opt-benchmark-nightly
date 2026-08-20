inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4ncnn9Pooling1D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not65 = icmp sgt i32 %i.k, %i.j
  br i1 %.not65, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42
  %factor.op.mul67 = mul i64 %i.w, %i.u           ; 2 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !40     ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 224
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split.split.us, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %.lr.ph.split
  %i.ae = sext i32 %i.k to i64
  %i.af = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph63

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !29
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !30
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %i.ah to i64
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count85 = zext nneg i32 %i.x to i64
  %wide.trip.count80 = zext nneg i32 %i.ac to i64
  br label %.lr.ph63.us

.lr.ph63.us:                                      ; preds = %._crit_edge64.split.us.us, %.lr.ph.split.split.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge64.split.us.us ], [ %i.al, %.lr.ph.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv87
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %.reass68.us = mul i64 %factor.op.mul67, %indvars.iv87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass68.us
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph63.us
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %._crit_edge.us.us ], [ 0, %.lr.ph63.us ] ; 3 uses
  %i.ap = mul nsw i64 %indvars.iv82, %i.ak
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.us.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.f ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.03955.us.us = phi i32 [ %.1.ph.us.us, %bb.f ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.04054.us.us = phi float [ %.141.ph.us.us, %bb.f ], [ 0.000000e+00, %.lr.ph.us.us ] ; 3 uses
  %i.aq = add nsw i64 %indvars.iv77, %i.ap        ; 3 uses
  %i.ar = icmp slt i64 %i.aq, %i.aj
  br i1 %i.ar, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load i32, ptr %7, align 4, !tbaa !40
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.au = load i32, ptr %8, align 4, !tbaa !40
  %i.av = add i32 %i.at, %i.au
  %i.aw = sub i32 %i.as, %i.av
  %i.ax = sext i32 %i.aw to i64
  %.not46.us.us = icmp slt i64 %i.aq, %i.ax
  br i1 %.not46.us.us, label %bb.e, label %._crit_edge.us.us

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.aq
  %i.az = load float, ptr %i.ay, align 4, !tbaa !56
  %i.ba = fadd fast float %i.az, %.04054.us.us
  %i.bb = add nsw i32 %.03955.us.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.141.ph.us.us = phi float [ %.04054.us.us, %bb.c ], [ %i.ba, %bb.e ] ; 2 uses
  %.1.ph.us.us = phi i32 [ %.03955.us.us, %bb.c ], [ %i.bb, %bb.e ] ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !94

._crit_edge.us.us:                                ; preds = %bb.f, %bb.d
  %.040.lcssa.us.us = phi float [ %.04054.us.us, %bb.d ], [ %.141.ph.us.us, %bb.f ]
  %.039.lcssa.us.us = phi i32 [ %.03955.us.us, %bb.d ], [ %.1.ph.us.us, %bb.f ]
  %i.bc = sitofp fast i32 %.039.lcssa.us.us to float
  %i.bd = fdiv fast float %.040.lcssa.us.us, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv82
  store float %i.bd, ptr %i.be, align 4, !tbaa !56
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge64.split.us.us, label %.lr.ph.us.us, !llvm.loop !95

._crit_edge64.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %lftr.wideiv90 = trunc i64 %indvars.iv.next88 to i32
  %exitcond91.not = icmp eq i32 %i.am, %lftr.wideiv90
  br i1 %exitcond91.not, label %._crit_edge.split, label %.lr.ph63.us

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge64.split
  %indvars.iv73 = phi i64 [ %i.ae, %.lr.ph63.preheader ], [ %indvars.iv.next74, %._crit_edge64.split ] ; 2 uses
  %.reass68 = mul i64 %factor.op.mul67, %indvars.iv73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass68 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph63, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph63 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x float> splat (float +qnan), ptr %i.bg, align 4, !tbaa !56
  store <4 x float> splat (float +qnan), ptr %i.bh, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge64.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph63, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph63 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge64.split:                              ; preds = %scalar.ph, %middle.block
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32
  %exitcond76.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond76.not, label %._crit_edge.split, label %.lr.ph63

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  store float +qnan, ptr %i.bj, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge64.split, label %scalar.ph, !llvm.loop !97

._crit_edge.split:                                ; preds = %._crit_edge64.split, %._crit_edge64.split.us.us, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Pooling1D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 5 uses
  %.not41 = icmp sgt i32 %i.k, %i.j
  br i1 %.not41, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !45     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42
  %factor.op.mul43 = mul i64 %i.w, %i.u           ; 6 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !40     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28  ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph39.us.preheader, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.lr.ph.split
  %i.ac = sext i32 %i.k to i64                    ; 5 uses
  %i.ad = zext nneg i32 %i.x to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 5 uses
  %i.af = add nsw i32 %i.j, 1
  %i.ag = sub i32 %i.af, %i.k                     ; 2 uses
  %7 = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.ag, 3                    ; 3 uses
  %i.ah = icmp ult i32 %7, 3
  br i1 %i.ah, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i32 %i.ag, -4
  br label %.lr.ph39

.lr.ph39.us.preheader:                            ; preds = %.lr.ph.split
  %i.ai = sitofp fast i32 %i.aa to float
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.al = sext i32 %i.ak to i64
  %i.am = sext i32 %i.k to i64
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count54 = zext nneg i32 %i.x to i64
  %wide.trip.count.a = zext nneg i32 %i.aa to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count.a, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.a
  %i.ao = fdiv fast float 1.000000e+00, %i.ai
  br label %.lr.ph39.us

.lr.ph39.us:                                      ; preds = %.lr.ph39.us.preheader, %._crit_edge40.split.us.us
  %indvars.iv56 = phi i64 [ %i.am, %.lr.ph39.us.preheader ], [ %indvars.iv.next57, %._crit_edge40.split.us.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %.reass44.us = mul i64 %factor.op.mul43, %indvars.iv56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass44.us
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph39.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %._crit_edge.us.us ], [ 0, %.lr.ph39.us ] ; 3 uses
  %i.ar = mul nsw i64 %indvars.iv51, %i.al
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.av, %vector.body ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.phi67 = phi <4 x float> [ %i.aw, %vector.body ], [ zeroinitializer, %.lr.ph.us.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x float>, ptr %i.at, align 4, !tbaa !56
  %wide.load68 = load <4 x float>, ptr %i.au, align 4, !tbaa !56
  %i.av = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.aw = fadd fast <4 x float> %wide.load68, %vec.phi67 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.aw, %i.av
  %i.ay = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec, %middle.block ]
  %.03134.us.us.ph = phi float [ 0.000000e+00, %.lr.ph.us.us ], [ %i.ay, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.03134.us.us = phi float [ %i.bb, %scalar.ph ], [ %.03134.us.us.ph, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !56
  %i.bb = fadd fast float %i.ba, %.03134.us.us    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.a
  br i1 %exitcond50.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !99

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %.lcssa = phi float [ %i.ay, %middle.block ], [ %i.bb, %scalar.ph ]
  %i.bc = fmul fast float %.lcssa, %i.ao
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv51
  store float %i.bc, ptr %i.bd, align 4, !tbaa !56
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge40.split.us.us, label %.lr.ph.us.us, !llvm.loop !100

._crit_edge40.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %lftr.wideiv59 = trunc i64 %indvars.iv.next57 to i32
  %exitcond60.not = icmp eq i32 %i.an, %lftr.wideiv59
  br i1 %exitcond60.not, label %._crit_edge.split, label %.lr.ph39.us

.lr.ph39:                                         ; preds = %.lr.ph39, %.lr.ph39.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %indvar.next.3, %.lr.ph39 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph39.preheader.new ], [ %niter.next.3, %.lr.ph39 ]
  %i.be = add nsw i64 %indvar, %i.ac
  %i.bf = mul i64 %factor.op.mul43, %i.be
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.bf
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !56
  %indvar.next = or disjoint i64 %indvar, 1
  %i.bg = add nsw i64 %indvar.next, %i.ac
  %i.bh = mul i64 %factor.op.mul43, %i.bg
  %scevgep.1 = getelementptr i8, ptr %i.r, i64 %i.bh
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ae, i1 false), !tbaa !56
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.bi = add nsw i64 %indvar.next.1, %i.ac
  %i.bj = mul i64 %factor.op.mul43, %i.bi
  %scevgep.2 = getelementptr i8, ptr %i.r, i64 %i.bj
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ae, i1 false), !tbaa !56
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.bk = add nsw i64 %indvar.next.2, %i.ac
  %i.bl = mul i64 %factor.op.mul43, %i.bk
  %scevgep.3 = getelementptr i8, ptr %i.r, i64 %i.bl
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ae, i1 false), !tbaa !56
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.loopexit72.unr-lcssa, label %.lr.ph39

._crit_edge.split.loopexit72.unr-lcssa:           ; preds = %.lr.ph39
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.lr.ph39.epil.preheader

.lr.ph39.epil.preheader:                          ; preds = %._crit_edge.split.loopexit72.unr-lcssa, %.lr.ph39.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph39.preheader ], [ %indvar.next.3, %._crit_edge.split.loopexit72.unr-lcssa ]
  %lcmp.mod73 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph39.epil

.lr.ph39.epil:                                    ; preds = %.lr.ph39.epil, %.lr.ph39.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.lr.ph39.epil.preheader ], [ %indvar.next.epil, %.lr.ph39.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph39.epil.preheader ], [ %epil.iter.next, %.lr.ph39.epil ]
  %i.bm = add i64 %indvar.epil, %i.ac
  %i.bn = mul i64 %factor.op.mul43, %i.bm
  %scevgep.epil = getelementptr i8, ptr %i.r, i64 %i.bn
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.ae, i1 false), !tbaa !56
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.lr.ph39.epil, !llvm.loop !101

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit72.unr-lcssa, %.lr.ph39.epil, %._crit_edge40.split.us.us, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

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
!10 = !{!"_ZTSN4ncnn9Pooling1DE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244}
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
!28 = !{!10, !6, i64 212}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 220}
!31 = !{!10, !6, i64 224}
!32 = !{!10, !6, i64 228}
!33 = !{!10, !6, i64 232}
!34 = !{!10, !6, i64 236}
!35 = !{!10, !6, i64 240}
!36 = !{!10, !6, i64 244}
!37 = !{!38, !6, i64 44}
!38 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !39, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!39 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!38, !6, i64 48}
!42 = !{!38, !17, i64 16}
!43 = !{!44, !39, i64 8}
!44 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !39, i64 8, !39, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!45 = !{!38, !13, i64 0}
!46 = !{!38, !17, i64 64}
!47 = !{!38, !6, i64 56}
!48 = !{!44, !6, i64 4}
!49 = !{!38, !22, i64 8}
!50 = !{!38, !39, i64 32}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !8, i64 0}
!53 = distinct !{null}
!54 = !{!11, !12, i64 8}
!55 = !{!11, !12, i64 9}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !7, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !61, !62, !63}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = distinct !{!64, !61, !63, !62}
!65 = !{!66}
!66 = !{i64 2, i64 -1, i64 -1, i1 true}
!67 = distinct !{!67, !61, !62, !63}
!68 = distinct !{!68, !61, !63, !62}
!69 = distinct !{!69, !61, !62, !63}
!70 = distinct !{!70, !61}
!71 = distinct !{!71, !61, !63, !62}
!72 = distinct !{!72, !61, !62, !63}
!73 = distinct !{!73, !61}
!74 = distinct !{!74, !61, !63, !62}
!75 = distinct !{null, null}
!76 = !{!13, !13, i64 0}
!77 = !{!38, !6, i64 24}
!78 = !{i64 0, i64 1, !79, i64 1, i64 1, !79, i64 2, i64 1, !79, i64 3, i64 1, !79, i64 4, i64 4, !40, i64 8, i64 8, !80, i64 16, i64 8, !80, i64 24, i64 4, !40, i64 28, i64 1, !79, i64 29, i64 1, !79, i64 30, i64 1, !79, i64 31, i64 1, !79, i64 32, i64 1, !79, i64 33, i64 1, !79, i64 34, i64 1, !79, i64 35, i64 1, !79, i64 36, i64 1, !79, i64 37, i64 1, !79, i64 38, i64 1, !79, i64 39, i64 1, !79, i64 40, i64 4, !40, i64 44, i64 1, !79, i64 45, i64 1, !79, i64 46, i64 1, !79, i64 47, i64 1, !79, i64 48, i64 1, !81, i64 49, i64 1, !79, i64 50, i64 1, !79, i64 51, i64 1, !79, i64 52, i64 1, !79, i64 53, i64 1, !79, i64 54, i64 1, !79, i64 55, i64 1, !79, i64 56, i64 1, !79, i64 57, i64 1, !79, i64 58, i64 1, !79, i64 59, i64 1, !79, i64 60, i64 1, !79, i64 61, i64 1, !79, i64 62, i64 1, !79, i64 63, i64 1, !79}
!79 = !{!12, !12, i64 0}
!80 = !{!39, !39, i64 0}
!81 = !{!7, !7, i64 0}
!82 = !{!44, !39, i64 16}
!83 = distinct !{!83, !61, !62, !63}
!84 = distinct !{!84, !61, !63, !62}
!85 = distinct !{!85, !61}
!86 = !{!87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!90}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !61, !62, !63}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !61, !62}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61}
!96 = distinct !{!96, !61, !62, !63}
!97 = distinct !{!97, !61, !63, !62}
!98 = distinct !{!98, !61, !62, !63}
!99 = distinct !{!99, !61, !63, !62}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !59}
end_hunk_0
