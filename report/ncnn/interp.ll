inline.NumInlined: 152
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnnL13linear_coeffsEiiPiPfi:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !89
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %.not38 = icmp sgt i32 %i.k, %i.j
  br i1 %.not38, label %._crit_edge42.split, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %factor.op.mul43 = mul i64 %i.w, %i.u
  %i.x = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !49     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph41.split, label %._crit_edge42.split

.lr.ph41.split:                                   ; preds = %.lr.ph41
  %i.aa = load ptr, ptr %7, align 8, !tbaa !54    ; 3 uses
  %i.ab = sext i32 %i.k to i64
  %i.ac = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.y, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod53 = trunc i32 %i.y to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph41.split, %._crit_edge
  %indvars.iv46 = phi i64 [ %i.ab, %.lr.ph41.split ], [ %indvars.iv.next47, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %.reass44 = mul i64 %factor.op.mul43, %indvars.iv46
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass44 ; 2 uses
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.03237.epil.init = phi ptr [ %i.af, %.lr.ph ], [ %i.bh, %._crit_edge.unr-lcssa ]
  %.03336.epil.init = phi ptr [ %i.x, %.lr.ph ], [ %i.bi, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod53)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load <2 x float>, ptr %.03336.epil.init, align 4, !tbaa !67
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !67
  %i.am = fmul fast <2 x float> %i.al, %i.ak
  %i.an = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.am)
  store float %i.an, ptr %.03237.epil.init, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next47 to i32
  %exitcond49.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond49.not, label %._crit_edge42.split, label %.lr.ph

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.03237 = phi ptr [ %i.bh, %.lr.ph.new ], [ %i.af, %.lr.ph ] ; 3 uses
  %.03336 = phi ptr [ %i.bi, %.lr.ph.new ], [ %i.x, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load <2 x float>, ptr %.03336, align 4, !tbaa !67
  %i.at = load <2 x float>, ptr %i.ar, align 4, !tbaa !67
  %i.au = fmul fast <2 x float> %i.at, %i.as
  %i.av = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %.03237, i64 4
  store float %i.av, ptr %.03237, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.03336, i64 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bb
  %i.bd = load <2 x float>, ptr %i.ax, align 4, !tbaa !67
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !67
  %i.bf = fmul fast <2 x float> %i.be, %i.bd
  %i.bg = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %.03237, i64 8 ; 2 uses
  store float %i.bg, ptr %i.aw, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %.03336, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !90

._crit_edge42.split:                              ; preds = %._crit_edge, %.lr.ph41, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge42.split, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = sitofp fast i32 %0 to double
  %i.b = sitofp fast i32 %1 to double
  %i.c = fdiv fast double %i.a, %i.b
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double
  %i.f = add nsw i32 %1, -1
  %i.g = sitofp fast i32 %i.f to double
  %i.h = fdiv fast double %i.e, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.087 = phi nsz double [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = add nsw i32 %0, -2
  %i.k = add nsw i32 %0, -1
  %i.l = add nsw i32 %0, -3
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.j, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = uitofp nneg i32 %i.m to double           ; 2 uses
  %i.o = fadd fast double %i.n, 5.000000e-01
  %i.p = fmul fast double %i.o, %.087
  %i.q = fadd fast double %i.p, -5.000000e-01
  %i.r = fmul fast double %.087, %i.n
  %.085.in = select i1 %.not, double %i.q, double %i.r
  %.085 = fptrunc double %.085.in to float        ; 2 uses
  %i.s = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %.085)
  %i.t = fptosi float %i.s to i32                 ; 4 uses
  %i.u = sitofp fast i32 %i.t to float
  %i.v = fsub fast float %.085, %i.u              ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 6 uses
  %i.x = fadd fast float %i.v, 1.000000e+00       ; 4 uses
  %i.y = fsub fast float 1.000000e+00, %i.v       ; 3 uses
  %i.z = fmul fast float %i.x, %i.x
  %i.aa = fmul fast float %i.x, 7.500000e-01
  %5 = fsub fast float 3.750000e+00, %i.aa
  %6 = fmul fast float %i.z, %5
  %reass.mul.i = fmul fast float %i.x, 6.000000e+00
  %i.ab = fsub fast float %6, %reass.mul.i
  %i.ac = fadd fast float %i.ab, 3.000000e+00     ; 4 uses
  store float %i.ac, ptr %i.w, align 4, !tbaa !67
  %i.ad = fmul fast float %i.v, %i.v
  %i.ae = fmul fast float %i.v, 1.250000e+00
  %i.af = fadd fast float %i.ae, -2.250000e+00
  %i.ag = fmul fast float %i.ad, %i.af
  %i.ah = fadd fast float %i.ag, 1.000000e+00     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store float %i.ah, ptr %i.ai, align 4, !tbaa !67
  %i.aj = fmul fast float %i.y, %i.y
  %i.ak = fmul fast float %i.y, 1.250000e+00
  %i.al = fadd fast float %i.ak, -2.250000e+00
  %i.am = fmul fast float %i.aj, %i.al            ; 2 uses
  %i.an = fadd fast float %i.am, 1.000000e+00     ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !67
  %i.ap = fadd fast float %i.am, %i.ah
  %i.aq = fadd fast float %i.ap, %i.ac            ; 2 uses
  %i.ar = fneg fast float %i.aq                   ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 3 uses
  store float %i.ar, ptr %i.as, align 4, !tbaa !67
  %i.at = icmp slt i32 %i.t, 0
  br i1 %i.at, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.au = fadd fast float %i.aq, 1.000000e+00
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.av = icmp eq i32 %i.t, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = fadd fast float %i.ah, %i.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %.thread
  %.sink100 = phi float [ %i.au, %.thread ], [ %i.aw, %bb.f ] ; 2 uses
  %.sink99 = phi float [ %i.ar, %.thread ], [ %i.an, %bb.f ] ; 2 uses
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %i.ar, %bb.f ] ; 2 uses
  store float %.sink100, ptr %i.w, align 4, !tbaa !67
  store float %.sink99, ptr %i.ai, align 4, !tbaa !67
  store float %.sink, ptr %i.ao, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.ax = phi float [ %i.ah, %bb.e ], [ %.sink99, %.sink.split ]
  %i.ay = phi float [ %i.ar, %bb.e ], [ 0.000000e+00, %.sink.split ]
  %i.az = phi float [ %i.an, %bb.e ], [ %.sink, %.sink.split ]
  %i.ba = phi float [ %i.ac, %bb.e ], [ %.sink100, %.sink.split ] ; 3 uses
  %.1 = phi i32 [ %i.t, %bb.e ], [ 1, %.sink.split ] ; 3 uses
  %i.bb = icmp eq i32 %.1, %i.j
  br i1 %i.bb, label %.thread91, label %bb.h

.thread91:                                        ; preds = %bb.g
  %i.bc = fadd fast float %i.ay, %i.az
  br label %.sink.split101

bb.h:                                             ; preds = %bb.g
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = fsub fast float 1.000000e+00, %i.ba
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.i, %.thread91
  %.sink104 = phi float [ %i.bc, %.thread91 ], [ %i.bd, %bb.i ]
  %.sink103 = phi float [ %i.ax, %.thread91 ], [ %i.ba, %bb.i ]
  %.sink102 = phi float [ %i.ba, %.thread91 ], [ 0.000000e+00, %bb.i ]
  store float %.sink104, ptr %i.as, align 4, !tbaa !67
  store float %.sink103, ptr %i.ao, align 4, !tbaa !67
  store float %.sink102, ptr %i.ai, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %.sink.split101, %bb.h
  %.3 = phi i32 [ %.1, %bb.h ], [ %i.l, %.sink.split101 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.be, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !91
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge48.split, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %factor.op.mul49 = mul i64 %i.w, %i.u
  %i.x = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !49     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph47.split, label %._crit_edge48.split

.lr.ph47.split:                                   ; preds = %.lr.ph47
  %i.aa = load ptr, ptr %7, align 8, !tbaa !54    ; 3 uses
  %i.ab = sext i32 %i.k to i64
  %i.ac = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.y, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod59 = trunc i32 %i.y to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph47.split, %._crit_edge
  %indvars.iv52 = phi i64 [ %i.ab, %.lr.ph47.split ], [ %indvars.iv.next53, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %.reass50 = mul i64 %factor.op.mul49, %indvars.iv52
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass50 ; 2 uses
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.03843.epil.init = phi ptr [ %i.af, %.lr.ph ], [ %i.bk, %._crit_edge.unr-lcssa ]
  %.03942.epil.init = phi ptr [ %i.x, %.lr.ph ], [ %i.bl, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load <4 x float>, ptr %.03942.epil.init, align 4, !tbaa !67
  %i.am = load <4 x float>, ptr %i.ak, align 4, !tbaa !67
  %i.an = fmul fast <4 x float> %i.am, %i.al
  %i.ao = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.an)
  store float %i.ao, ptr %.03843.epil.init, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next53 to i32
  %exitcond55.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond55.not, label %._crit_edge48.split, label %.lr.ph

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.03843 = phi ptr [ %i.bk, %.lr.ph.new ], [ %i.af, %.lr.ph ] ; 3 uses
  %.03942 = phi ptr [ %i.bl, %.lr.ph.new ], [ %i.x, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = load <4 x float>, ptr %.03942, align 4, !tbaa !67
  %i.av = load <4 x float>, ptr %i.at, align 4, !tbaa !67
  %i.aw = fmul fast <4 x float> %i.av, %i.au
  %i.ax = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %.03843, i64 4
  store float %i.ax, ptr %.03843, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.03942, i64 16
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
end_hunk_0
begin_hunk_1_@_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.10:bb.a
  %i.fq = fmul fast <4 x float> %i.fp, %i.fo
  %i.fr = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fq)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv373.i
  store float %i.fr, ptr %i.fs, align 4, !tbaa !67
  %i.ft = getelementptr inbounds i8, ptr %i.fm, i64 -4
  %i.fu = load <4 x float>, ptr %i.ft, align 4, !tbaa !67
  %i.fv = fmul fast <4 x float> %i.fu, %i.fo
  %i.fw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fv)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0267359.i, i64 %indvars.iv373.i
  store float %i.fw, ptr %i.fx, align 4, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %.0277343.i, i64 16
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %exitcond377.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i
  br i1 %exitcond377.not.i, label %.lr.ph354.preheader.i, label %.lr.ph344.i, !llvm.loop !119

bb.ao:                                            ; preds = %bb.am
  %i.fz = add nsw i32 %.0273356.i, 3
  %i.ga = icmp eq i32 %i.du, %i.fz
  br i1 %i.ga, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gb = sext i32 %i.du to i64
  %i.gc = mul i64 %i.bh, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gc
  %i.ge = add nsw i32 %i.du, 1
  %i.gf = sext i32 %i.ge to i64
  %i.gg = mul i64 %i.bh, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gg
  %i.gi = add nsw i32 %i.du, 2
  %i.gj = sext i32 %i.gi to i64
  %i.gk = mul i64 %i.bh, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gk
  br i1 %i.bg, label %.lr.ph341.i, label %._crit_edge.i

.lr.ph341.i:                                      ; preds = %bb.ap, %.lr.ph341.i
  %indvars.iv368.i = phi i64 [ %indvars.iv.next369.i, %.lr.ph341.i ], [ 0, %bb.ap ] ; 5 uses
  %.0280340.i = phi ptr [ %i.hi, %.lr.ph341.i ], [ %i.ax, %bb.ap ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv368.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !49
  %i.go = sext i32 %i.gn to i64                   ; 3 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.go
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.go
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.go
  %i.gs = getelementptr inbounds i8, ptr %i.gp, i64 -4
  %i.gt = load <4 x float>, ptr %.0280340.i, align 4, !tbaa !67 ; 3 uses
  %i.gu = load <4 x float>, ptr %i.gs, align 4, !tbaa !67
  %i.gv = fmul fast <4 x float> %i.gu, %i.gt
  %i.gw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gv)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv368.i
  store float %i.gw, ptr %i.gx, align 4, !tbaa !67
  %i.gy = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gz = load <4 x float>, ptr %i.gy, align 4, !tbaa !67
  %i.ha = fmul fast <4 x float> %i.gz, %i.gt
  %i.hb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ha)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0267359.i, i64 %indvars.iv368.i
  store float %i.hb, ptr %i.hc, align 4, !tbaa !67
  %i.hd = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.he = load <4 x float>, ptr %i.hd, align 4, !tbaa !67
  %i.hf = fmul fast <4 x float> %i.he, %i.gt
  %i.hg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hf)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0269358.i, i64 %indvars.iv368.i
  store float %i.hg, ptr %i.hh, align 4, !tbaa !67
  %i.hi = getelementptr inbounds nuw i8, ptr %.0280340.i, i64 16
  %indvars.iv.next369.i = add nuw nsw i64 %indvars.iv368.i, 1 ; 2 uses
  %exitcond372.not.i = icmp eq i64 %indvars.iv.next369.i, %wide.trip.count.i
  br i1 %exitcond372.not.i, label %.lr.ph354.preheader.i, label %.lr.ph341.i, !llvm.loop !120

bb.aq:                                            ; preds = %bb.ao
  %i.hj = add nsw i32 %i.du, -1
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul i64 %i.bh, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hl
  %i.hn = sext i32 %i.du to i64
  %i.ho = mul i64 %i.bh, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ho
  %i.hq = add nsw i32 %i.du, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul i64 %i.bh, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hs
  %i.hu = add nsw i32 %i.du, 2
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul i64 %i.bh, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hw
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.aq ] ; 6 uses
  %.0282337.i = phi ptr [ %i.ja, %.lr.ph.i ], [ %i.ax, %bb.aq ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !49
  %i.ia = sext i32 %i.hz to i64                   ; 4 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ia
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.ia
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ia
  %i.if = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.ig = load <4 x float>, ptr %.0282337.i, align 4, !tbaa !67 ; 4 uses
  %i.ih = load <4 x float>, ptr %i.if, align 4, !tbaa !67
  %i.ii = fmul fast <4 x float> %i.ih, %i.ig
  %i.ij = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ii)
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv.i
  store float %i.ij, ptr %i.ik, align 4, !tbaa !67
  %i.il = getelementptr inbounds i8, ptr %i.ic, i64 -4
  %i.im = load <4 x float>, ptr %i.il, align 4, !tbaa !67
  %i.in = fmul fast <4 x float> %i.im, %i.ig
  %i.io = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.in)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0267359.i, i64 %indvars.iv.i
  store float %i.io, ptr %i.ip, align 4, !tbaa !67
  %i.iq = getelementptr inbounds i8, ptr %i.id, i64 -4
  %i.ir = load <4 x float>, ptr %i.iq, align 4, !tbaa !67
  %i.is = fmul fast <4 x float> %i.ir, %i.ig
  %i.it = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.is)
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.0269358.i, i64 %indvars.iv.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !67
  %i.iv = getelementptr inbounds i8, ptr %i.ie, i64 -4
  %i.iw = load <4 x float>, ptr %i.iv, align 4, !tbaa !67
  %i.ix = fmul fast <4 x float> %i.iw, %i.ig
  %i.iy = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ix)
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.0271357.i, i64 %indvars.iv.i
  store float %i.iy, ptr %i.iz, align 4, !tbaa !67
  %i.ja = getelementptr inbounds nuw i8, ptr %.0282337.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph354.preheader.i, label %.lr.ph.i, !llvm.loop !121

.loopexit.i:                                      ; preds = %bb.aj
  br i1 %i.bg, label %.lr.ph354.preheader.i, label %._crit_edge.i

.lr.ph354.preheader.i.loopexit.unr-lcssa:         ; preds = %.lr.ph347.i
  br i1 %lcmp.mod.not, label %.lr.ph354.preheader.i, label %.lr.ph347.i.epil.preheader

.lr.ph347.i.epil.preheader:                       ; preds = %.lr.ph354.preheader.i.loopexit.unr-lcssa, %.lr.ph347.i.preheader
  %indvars.iv378.i.epil.init = phi i64 [ 0, %.lr.ph347.i.preheader ], [ %indvars.iv.next379.i.1, %.lr.ph354.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %.0275346.i.epil.init = phi ptr [ %i.ax, %.lr.ph347.i.preheader ], [ %i.ex, %.lr.ph354.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv378.i.epil.init
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !49
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.jd
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -4
  %i.jg = load <4 x float>, ptr %.0275346.i.epil.init, align 4, !tbaa !67
  %i.jh = load <4 x float>, ptr %i.jf, align 4, !tbaa !67
  %i.ji = fmul fast <4 x float> %i.jh, %i.jg
  %i.jj = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ji)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv378.i.epil.init
  store float %i.jj, ptr %i.jk, align 4, !tbaa !67
  br label %.lr.ph354.preheader.i

.lr.ph354.preheader.i:                            ; preds = %.lr.ph.i, %.lr.ph341.i, %.lr.ph344.i, %.lr.ph347.i.epil.preheader, %.lr.ph354.preheader.i.loopexit.unr-lcssa, %.loopexit.i
  %.1266423.i = phi ptr [ %.0265360.i, %.loopexit.i ], [ %.0267359.i, %.lr.ph347.i.epil.preheader ], [ %.0269358.i, %.lr.ph344.i ], [ %.0271357.i, %.lr.ph341.i ], [ %.0267359.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0265360.i, %.lr.ph.i ] ; 7 uses
  %.1268421.i = phi ptr [ %.0267359.i, %.loopexit.i ], [ %.0269358.i, %.lr.ph347.i.epil.preheader ], [ %.0271357.i, %.lr.ph344.i ], [ %.0265360.i, %.lr.ph341.i ], [ %.0269358.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0267359.i, %.lr.ph.i ] ; 7 uses
  %.1270419.i = phi ptr [ %.0269358.i, %.loopexit.i ], [ %.0271357.i, %.lr.ph347.i.epil.preheader ], [ %.0265360.i, %.lr.ph344.i ], [ %.0267359.i, %.lr.ph341.i ], [ %.0271357.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0269358.i, %.lr.ph.i ] ; 7 uses
  %.1272417.i = phi ptr [ %.0271357.i, %.loopexit.i ], [ %.0265360.i, %.lr.ph347.i.epil.preheader ], [ %.0267359.i, %.lr.ph344.i ], [ %.0269358.i, %.lr.ph341.i ], [ %.0265360.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0271357.i, %.lr.ph.i ] ; 7 uses
  %i.jl = load <4 x float>, ptr %.0261361.i, align 4, !tbaa !67 ; 5 uses
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv384.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.av, i64 %.reass.i ; 4 uses
  br i1 %min.iters.check, label %.lr.ph354.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph354.preheader.i
  %.1266423.i145 = ptrtoaddr ptr %.1266423.i to i64
  %.1268421.i142 = ptrtoaddr ptr %.1268421.i to i64
  %.1270419.i140 = ptrtoaddr ptr %.1270419.i to i64
  %.1272417.i139 = ptrtoaddr ptr %.1272417.i to i64
  %i.jn = sub i64 %.1272417.i139, %i.ds
  %diff.check = icmp ugt i64 %i.jn, -16
  %i.jo = sub i64 %.1270419.i140, %i.ds
  %diff.check141 = icmp ugt i64 %i.jo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check141
  %i.jp = sub i64 %.1268421.i142, %i.ds
  %diff.check143 = icmp ugt i64 %i.jp, -16
  %conflict.rdx144 = or i1 %conflict.rdx, %diff.check143
  %i.jq = sub i64 %.1266423.i145, %i.ds
  %diff.check146 = icmp ugt i64 %i.jq, -16
  %conflict.rdx147 = or i1 %conflict.rdx144, %diff.check146
  br i1 %conflict.rdx147, label %.lr.ph354.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jr = getelementptr i8, ptr %i.jm, i64 %i.bp
  %i.js = getelementptr i8, ptr %.1272417.i, i64 %i.bp
  %i.jt = getelementptr i8, ptr %.1270419.i, i64 %i.bp
  %i.ju = getelementptr i8, ptr %.1268421.i, i64 %i.bp
  %i.jv = getelementptr i8, ptr %.1266423.i, i64 %i.bp
  %broadcast.splat = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat149 = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat151 = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat153 = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jw = shl i64 %index, 2                       ; 5 uses
  %next.gep = getelementptr i8, ptr %i.jm, i64 %i.jw
  %next.gep154 = getelementptr i8, ptr %.1272417.i, i64 %i.jw
  %next.gep155 = getelementptr i8, ptr %.1270419.i, i64 %i.jw
  %next.gep156 = getelementptr i8, ptr %.1268421.i, i64 %i.jw
  %next.gep157 = getelementptr i8, ptr %.1266423.i, i64 %i.jw
  %wide.load = load <4 x float>, ptr %next.gep157, align 4, !tbaa !67
  %i.jx = fmul fast <4 x float> %wide.load, %broadcast.splat
  %wide.load158 = load <4 x float>, ptr %next.gep156, align 4, !tbaa !67
  %i.jy = fmul fast <4 x float> %wide.load158, %broadcast.splat149
  %i.jz = fadd fast <4 x float> %i.jx, %i.jy
  %wide.load159 = load <4 x float>, ptr %next.gep155, align 4, !tbaa !67
  %i.ka = fmul fast <4 x float> %wide.load159, %broadcast.splat151
  %i.kb = fadd fast <4 x float> %i.jz, %i.ka
  %wide.load160 = load <4 x float>, ptr %next.gep154, align 4, !tbaa !67
  %i.kc = fmul fast <4 x float> %wide.load160, %broadcast.splat153
  %i.kd = fadd fast <4 x float> %i.kb, %i.kc
  store <4 x float> %i.kd, ptr %next.gep, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph354.i.preheader

.lr.ph354.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph354.preheader.i, %middle.block
  %.0353.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph354.preheader.i ], [ %i.bo, %middle.block ]
  %.0256352.i.ph = phi ptr [ %i.jm, %vector.memcheck ], [ %i.jm, %.lr.ph354.preheader.i ], [ %i.jr, %middle.block ]
  %.0257351.i.ph = phi ptr [ %.1272417.i, %vector.memcheck ], [ %.1272417.i, %.lr.ph354.preheader.i ], [ %i.js, %middle.block ]
  %.0258350.i.ph = phi ptr [ %.1270419.i, %vector.memcheck ], [ %.1270419.i, %.lr.ph354.preheader.i ], [ %i.jt, %middle.block ]
  %.0259349.i.ph = phi ptr [ %.1268421.i, %vector.memcheck ], [ %.1268421.i, %.lr.ph354.preheader.i ], [ %i.ju, %middle.block ]
  %.0260348.i.ph = phi ptr [ %.1266423.i, %vector.memcheck ], [ %.1266423.i, %.lr.ph354.preheader.i ], [ %i.jv, %middle.block ]
  br label %.lr.ph354.i

._crit_edge.i:                                    ; preds = %.lr.ph354.i, %middle.block, %.loopexit.i, %bb.aq, %bb.ap, %bb.an, %bb.al
  %.1266422.i = phi ptr [ %.0267359.i, %bb.al ], [ %.0265360.i, %.loopexit.i ], [ %.0265360.i, %bb.aq ], [ %.0271357.i, %bb.ap ], [ %.0269358.i, %bb.an ], [ %.1266423.i, %middle.block ], [ %.1266423.i, %.lr.ph354.i ]
  %.1268420.i = phi ptr [ %.0269358.i, %bb.al ], [ %.0267359.i, %.loopexit.i ], [ %.0267359.i, %bb.aq ], [ %.0265360.i, %bb.ap ], [ %.0271357.i, %bb.an ], [ %.1268421.i, %middle.block ], [ %.1268421.i, %.lr.ph354.i ]
  %.1270418.i = phi ptr [ %.0271357.i, %bb.al ], [ %.0269358.i, %.loopexit.i ], [ %.0269358.i, %bb.aq ], [ %.0267359.i, %bb.ap ], [ %.0265360.i, %bb.an ], [ %.1270419.i, %middle.block ], [ %.1270419.i, %.lr.ph354.i ]
  %.1272416.i = phi ptr [ %.0265360.i, %bb.al ], [ %.0271357.i, %.loopexit.i ], [ %.0271357.i, %bb.aq ], [ %.0269358.i, %bb.ap ], [ %.0267359.i, %bb.an ], [ %.1272417.i, %middle.block ], [ %.1272417.i, %.lr.ph354.i ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0261361.i, i64 16
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count387.i
  br i1 %exitcond388.not.i, label %._crit_edge363.i, label %bb.aj, !llvm.loop !123

.lr.ph354.i:                                      ; preds = %.lr.ph354.i.preheader, %.lr.ph354.i
  %.0353.i = phi i32 [ %i.kv, %.lr.ph354.i ], [ %.0353.i.ph, %.lr.ph354.i.preheader ]
  %.0256352.i = phi ptr [ %i.ku, %.lr.ph354.i ], [ %.0256352.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0257351.i = phi ptr [ %i.km, %.lr.ph354.i ], [ %.0257351.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0258350.i = phi ptr [ %i.kk, %.lr.ph354.i ], [ %.0258350.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0259349.i = phi ptr [ %i.ki, %.lr.ph354.i ], [ %.0259349.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0260348.i = phi ptr [ %i.kg, %.lr.ph354.i ], [ %.0260348.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0260348.i, i64 4
  %i.kh = load float, ptr %.0260348.i, align 4, !tbaa !67
  %i.ki = getelementptr inbounds nuw i8, ptr %.0259349.i, i64 4
  %i.kj = load float, ptr %.0259349.i, align 4, !tbaa !67
  %i.kk = getelementptr inbounds nuw i8, ptr %.0258350.i, i64 4
  %i.kl = load float, ptr %.0258350.i, align 4, !tbaa !67
  %i.km = getelementptr inbounds nuw i8, ptr %.0257351.i, i64 4
  %i.kn = load float, ptr %.0257351.i, align 4, !tbaa !67
  %i.ko = insertelement <4 x float> poison, float %i.kh, i64 0
  %i.kp = insertelement <4 x float> %i.ko, float %i.kj, i64 1
  %i.kq = insertelement <4 x float> %i.kp, float %i.kl, i64 2
  %i.kr = insertelement <4 x float> %i.kq, float %i.kn, i64 3
  %i.ks = fmul fast <4 x float> %i.kr, %i.jl
  %i.kt = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ks)
  %i.ku = getelementptr inbounds nuw i8, ptr %.0256352.i, i64 4
  store float %i.kt, ptr %.0256352.i, align 4, !tbaa !67
  %i.kv = add nuw nsw i32 %.0353.i, 1             ; 2 uses
  %exitcond383.not.i = icmp eq i32 %i.kv, %i.an
  br i1 %exitcond383.not.i, label %._crit_edge.i, label %.lr.ph354.i, !llvm.loop !124

_ZN4ncnn3MatD2Ev.exit291.i:                       ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.df, %bb.ab ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ac ], [ %i.dg, %bb.af ], [ %i.dg, %bb.ag ], [ %i.dg, %bb.ah ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.kw = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not.i308.i = icmp eq ptr %i.kw, null
  br i1 %.not.i308.i, label %_ZN4ncnn3MatD2Ev.exit286.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit291.i
  %i.kx = atomicrmw add ptr %i.kw, i32 -1 acq_rel, align 4
  %i.ky = icmp eq i32 %i.kx, 1
  br i1 %i.ky, label %bb.as, label %_ZN4ncnn3MatD2Ev.exit286.i

bb.as:                                            ; preds = %bb.ar
  %i.kz = load ptr, ptr %i.w, align 8, !tbaa !63  ; 3 uses
  %.not3.i309.i = icmp eq ptr %i.kz, null
  %i.la = load ptr, ptr %10, align 8, !tbaa !59   ; 3 uses
  br i1 %.not3.i309.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lb = load ptr, ptr %i.kz, align 8, !tbaa !9
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef %i.la)
          to label %_ZN4ncnn3MatD2Ev.exit286.i unwind label %bb.aw, !inline_history !64

bb.au:                                            ; preds = %bb.as
  %.not.i317.i = icmp eq ptr %i.la, null
  br i1 %.not.i317.i, label %_ZN4ncnn3MatD2Ev.exit286.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.la) #12
  br label %_ZN4ncnn3MatD2Ev.exit286.i

bb.aw:                                            ; preds = %bb.at
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit286.i:                       ; preds = %bb.av, %bb.au, %bb.at, %bb.ar, %_ZN4ncnn3MatD2Ev.exit291.i, %bb.aa
  %.pn.pn.i = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %.pn.i, %bb.ar ], [ %.pn.i, %_ZN4ncnn3MatD2Ev.exit291.i ], [ %.pn.i, %bb.at ], [ %.pn.i, %bb.au ], [ %.pn.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.lg = load ptr, ptr %i.s, align 8, !tbaa !62  ; 2 uses
  %.not.i312.i = icmp eq ptr %i.lg, null
  br i1 %.not.i312.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit286.i
  %i.lh = atomicrmw add ptr %i.lg, i32 -1 acq_rel, align 4
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %bb.ay, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.lj = load ptr, ptr %i.t, align 8, !tbaa !63  ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.lj, null
  %i.lk = load ptr, ptr %9, align 8, !tbaa !59    ; 3 uses
  br i1 %.not3.i313.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = load ptr, ptr %i.lj, align 8, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  invoke void %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef %i.lk)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bc, !inline_history !64

bb.ba:                                            ; preds = %bb.ay
  %.not.i316.i = icmp eq ptr %i.lk, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.lk) #12
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bc:                                            ; preds = %bb.az
  %i.lo = landingpad { ptr, i32 }
          catch ptr null
  %i.lp = extractvalue { ptr, i32 } %i.lo, 0
  call void @__clang_call_terminate(ptr %i.lp) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %_ZN4ncnn3MatD2Ev.exit286.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %.body

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %_ZN4ncnn3MatD2Ev.exit288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.lq = load i32, ptr %i.b, align 4, !tbaa !49
  %i.lr = sext i32 %i.lq to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.lr
  br i1 %.not.not, label %.noexc29, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.be:                                            ; preds = %.noexc29
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %bb.be
  %eh.lpad-body = phi { ptr, i32 } [ %i.ls, %bb.be ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ]
  %i.lt = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.lt) #22
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn20eval_list_expressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_3MatESaIS9_EERS8_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

end_hunk_1
