inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@doubleIntgr:bb.a
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.a, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 40
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !24 ; 3 uses
  br i1 %i.q, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %._crit_edge108
  %i.dx = add i32 %i.ds, 5                        ; 3 uses
  %wide.trip.count142 = zext nneg i32 %i.p to i64
  %i.dy = add nsw i64 %wide.trip.count142, -1     ; 3 uses
  %xtraiter26 = and i64 %i.dy, 1
  %i.dz = icmp eq i32 %i.p, 2
  br i1 %i.dz, label %.epil.preheader25, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.lr.ph115
  %unroll_iter31 = and i64 %i.dy, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph115.new
  %indvars.iv139 = phi i64 [ 1, %.lr.ph115.new ], [ %indvars.iv.next140.1, %bb.b ] ; 3 uses
  %.290112 = phi double [ %i.dw, %.lr.ph115.new ], [ %i.eo, %bb.b ]
  %niter32 = phi i64 [ 0, %.lr.ph115.new ], [ %niter32.next.1, %bb.b ]
  %i.ea = trunc i64 %indvars.iv139 to i32
  %i.eb = mul i32 %i.c, %i.ea
  %i.ec = add i32 %i.dx, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !24
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double 2.000000e+00, double %.290112)
  %i.eh = trunc i64 %indvars.iv139 to i32
  %i.ei = add i32 %i.eh, 1
  %i.ej = mul i32 %i.c, %i.ei
  %i.ek = add i32 %i.dx, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !24
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double 2.000000e+00, double %i.eg) ; 3 uses
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %niter32.next.1 = add nuw i64 %niter32, 2       ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %unroll_iter31
  br i1 %niter32.ncmp.1, label %._crit_edge116.loopexit.unr-lcssa, label %bb.b

._crit_edge116.loopexit.unr-lcssa:                ; preds = %bb.b
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %._crit_edge116, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge116.loopexit.unr-lcssa, %.lr.ph115
  %indvars.iv139.epil.init = phi i64 [ 1, %.lr.ph115 ], [ %indvars.iv.next140.1, %._crit_edge116.loopexit.unr-lcssa ]
  %.290112.epil.init = phi double [ %i.dw, %.lr.ph115 ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ep = trunc i64 %indvars.iv139.epil.init to i32
  %i.eq = mul i32 %i.c, %i.ep
  %i.er = add i32 %i.dx, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double 2.000000e+00, double %.290112.epil.init)
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %.epil.preheader25, %._crit_edge116.loopexit.unr-lcssa, %._crit_edge108.thread, %._crit_edge108
  %i.ew = phi i32 [ %i.ds, %._crit_edge108 ], [ %i.dn, %._crit_edge108.thread ], [ %i.ds, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ds, %.epil.preheader25 ]
  %.091.lcssa145 = phi double [ %.091.lcssa, %._crit_edge108 ], [ %.lcssa7, %._crit_edge108.thread ], [ %.091.lcssa, %._crit_edge116.loopexit.unr-lcssa ], [ %.091.lcssa, %.epil.preheader25 ]
  %.290.lcssa = phi double [ %i.dw, %._crit_edge108 ], [ %i.dr, %._crit_edge108.thread ], [ %i.eo, %._crit_edge116.loopexit.unr-lcssa ], [ %i.ev, %.epil.preheader25 ]
  %i.ex = add nsw i32 %i.av, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !24
  %i.fb = fadd double %.290.lcssa, %i.fa
  %i.fc = fmul double %i.ba, %i.fb
  %i.fd = fadd double %.091.lcssa145, %i.fc
  %i.fe = fmul double %i.m, 5.000000e-01
  %i.ff = fmul double %i.fe, %i.fd
  ret double %i.ff
}

; Function Attrs: nounwind uwtable
define internal fastcc void @CbInit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #10 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %.not27 = icmp slt i32 %i.d, 1
  br i1 %.not27, label %.split38, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = zext nneg i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !24
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double 1.000000e+00, ptr %.40..40..sroa_idx, align 8, !tbaa !24
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext nneg i32 %i.d to i64                ; 19 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = zext nneg i32 %i.d to i64
  %i.n = shl nuw nsw i64 %i.m, 3                  ; 20 uses
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.l
  %i.o = shl nuw nsw i64 %i.k, 4
  %invariant.gep46 = getelementptr i8, ptr %i.b, i64 %i.o
  %i.p = mul nuw nsw i64 %i.k, 24
  %invariant.gep48 = getelementptr i8, ptr %i.b, i64 %i.p
  %i.q = shl nuw nsw i64 %i.k, 5
  %invariant.gep50 = getelementptr i8, ptr %i.b, i64 %i.q
  %i.r = mul nuw nsw i64 %i.k, 40
  %invariant.gep52 = getelementptr i8, ptr %i.b, i64 %i.r
  %i.s = mul nuw nsw i64 %i.k, 48
  %invariant.gep54 = getelementptr i8, ptr %i.b, i64 %i.s
  %i.t = mul nuw nsw i64 %i.k, 56
  %invariant.gep56 = getelementptr i8, ptr %i.b, i64 %i.t
  %i.u = shl nuw nsw i64 %i.k, 6
  %invariant.gep58 = getelementptr i8, ptr %i.b, i64 %i.u
  %i.v = mul nuw nsw i64 %i.k, 72
  %invariant.gep60 = getelementptr i8, ptr %i.b, i64 %i.v
  %i.w = mul nuw nsw i64 %i.k, 80
  %invariant.gep62 = getelementptr i8, ptr %i.b, i64 %i.w
  %i.x = mul nuw nsw i64 %i.k, 88
  %invariant.gep64 = getelementptr i8, ptr %i.b, i64 %i.x
  %i.y = mul nuw nsw i64 %i.k, 96
  %invariant.gep66 = getelementptr i8, ptr %i.b, i64 %i.y
  %i.z = mul nuw nsw i64 %i.k, 104
  %invariant.gep68 = getelementptr i8, ptr %i.b, i64 %i.z
  %i.aa = mul nuw nsw i64 %i.k, 112
  %invariant.gep70 = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ab = mul nuw nsw i64 %i.k, 120
  %invariant.gep72 = getelementptr i8, ptr %i.b, i64 %i.ab
  %i.ac = shl nuw nsw i64 %i.k, 7
  %invariant.gep74 = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ad = mul nuw nsw i64 %i.k, 136
  %invariant.gep76 = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.ae = mul nuw nsw i64 %i.k, 144
  %invariant.gep78 = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.af = mul nuw nsw i64 %i.k, 152
  %invariant.gep80 = getelementptr i8, ptr %i.b, i64 %i.af
  br label %.split

.split:                                           ; preds = %.split.preheader, %.split
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.split ] ; 2 uses
  %i.ag = mul nsw i64 %i.j, %indvar               ; 20 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep47, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep49, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep51 = getelementptr i8, ptr %invariant.gep50, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep51, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep53, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep55 = getelementptr i8, ptr %invariant.gep54, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep55, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep57 = getelementptr i8, ptr %invariant.gep56, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep57, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep59 = getelementptr i8, ptr %invariant.gep58, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep59, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep61, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep63, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep65, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep67 = getelementptr i8, ptr %invariant.gep66, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep67, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep69, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep71, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep73, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep75, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep77, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep79, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep81, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 20
  br i1 %exitcond.not, label %.split38, label %.split

.split38:                                         ; preds = %.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fB(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %5 = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %6 = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 25 uses
  %7 = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %10 = load i32, ptr %9, align 8, !tbaa !26      ; 12 uses
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 808
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 20008 ; 3 uses
  %13 = getelementptr i8, ptr %4, i64 688         ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %15 = load i32, ptr %8, align 4, !tbaa !29      ; 6 uses
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 784
  %17 = load double, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 792
  %19 = load double, ptr %18, align 8, !tbaa !28
  %20 = sub i32 0, %15                            ; 2 uses
  %21 = getelementptr i8, ptr %4, i64 304         ; 3 uses
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %23 = icmp sgt i32 %10, 0
  %24 = sub i32 0, %10                            ; 2 uses
  %.not88 = icmp slt i32 %10, 1
  %wide.trip.count.i = zext i32 %10 to i64        ; 24 uses
  %25 = add i32 %10, 1                            ; 2 uses
  %26 = sext i32 %10 to i64                       ; 4 uses
  %27 = sext i32 %15 to i64                       ; 4 uses
  %wide.trip.count = zext i32 %25 to i64          ; 4 uses
  %i.a = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.b = zext i32 %15 to i64
  %scevgep = getelementptr i8, ptr %4, i64 20008
  %i.c = zext i32 %15 to i64
  %i.d = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.e = getelementptr i8, ptr %4, i64 %i.d
  %scevgep102 = getelementptr i8, ptr %i.e, i64 20000
  %i.f = add nsw i64 %i.d, -8                     ; 6 uses
  %scevgep105 = getelementptr i8, ptr %7, i64 %i.f
  %i.g = getelementptr i8, ptr %4, i64 %i.d
  %scevgep107.a = getelementptr i8, ptr %i.g, i64 728
  %scevgep109.a = getelementptr i8, ptr %6, i64 %i.f
  %scevgep112 = getelementptr i8, ptr %6, i64 %i.f
  %scevgep115 = getelementptr i8, ptr %6, i64 %i.f
  %scevgep118 = getelementptr i8, ptr %6, i64 %i.f
  %scevgep121 = getelementptr i8, ptr %6, i64 %i.f
  %i.h = shl nsw i64 %27, 3
  %i.i = shl nsw i64 %26, 3
  %i.j = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %i.k = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.l = getelementptr i8, ptr %4, i64 %i.k
  %scevgep156 = getelementptr i8, ptr %i.l, i64 256
  %i.m = shl nsw i64 %27, 3
  %i.n = mul nsw i64 %26, 152
  %i.o = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.p = add nsw i64 %i.n, %i.o                   ; 2 uses
  %i.q = shl nsw i64 %27, 3
  %i.r = shl nsw i64 %26, 3
  %i.s = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %i.t = getelementptr i8, ptr %4, i64 %i.p
  %i.u = getelementptr i8, ptr %i.t, i64 20008
  %i.v = getelementptr i8, ptr %4, i64 %i.j
  %i.w = getelementptr i8, ptr %i.v, i64 20008
  %min.iters.check220 = icmp ult i32 %10, 4
  %n.vec222 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n231 = icmp eq i64 %n.vec222, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter237 = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i64 %i.s, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod239 = trunc i32 %10 to i1
  %min.iters.check206 = icmp eq i32 %10, 1
  %n.vec208 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec208, %wide.trip.count.i
  %xtraiter240 = and i64 %wide.trip.count.i, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %i.y = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check173 = icmp ult i32 %10, 4
  %n.vec175 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n186 = icmp eq i64 %n.vec175, %wide.trip.count.i
  %xtraiter243 = and i64 %wide.trip.count.i, 1
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %i.z = add nsw i64 %wide.trip.count.i, -1
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %25, 9
  %i.ab = trunc i64 %i.a to i32                   ; 5 uses
  %i.ac = icmp ugt i64 %i.a, 4294967295
  %n.vec = and i64 %i.aa, -2                      ; 2 uses
  %i.ad = or i64 %i.aa, 1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.ae = mul i64 %i.q, %indvars.iv97
  %i.af = mul i64 %i.m, %indvars.iv97             ; 5 uses
  %i.ag = getelementptr i8, ptr %4, i64 %i.af
  %scevgep189 = getelementptr i8, ptr %i.ag, i64 808 ; 2 uses
  %scevgep190 = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %scevgep191 = getelementptr i8, ptr %6, i64 %i.af
  %i.ah = add i64 %i.p, %i.af                     ; 2 uses
  %scevgep192 = getelementptr i8, ptr %6, i64 %i.ah
  %scevgep193 = getelementptr i8, ptr %5, i64 %i.af
  %scevgep194 = getelementptr i8, ptr %5, i64 %i.ah
  %i.ai = mul i64 %i.h, %indvars.iv97             ; 4 uses
  %i.aj = add i64 %i.j, %i.ai
  %i.ak = mul i64 %indvars.iv97, %i.c             ; 2 uses
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = mul i64 %indvars.iv97, %i.b             ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = fmul double %19, %i.ap
  %i.ar = mul nsw i64 %indvars.iv97, %27
  %i.as = icmp eq i64 %indvars.iv97, 19
  %i.at = select i1 %i.as, i32 %20, i32 %15       ; 4 uses
  %i.au = icmp eq i64 %indvars.iv97, 0
  %i.av = select i1 %i.au, i32 %15, i32 %20       ; 4 uses
  %i.aw = add i32 %i.av, %i.an
  %i.ax = add i32 %i.at, %i.an
  %i.ay = add i32 %i.at, %i.al
  %i.az = add i32 %i.av, %i.al
  %i.ba = insertelement <2 x ptr> poison, ptr %scevgep189, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %scevgep193, i64 1
  %i.bc = insertelement <2 x ptr> poison, ptr %scevgep192, i64 0
  %i.bd = insertelement <2 x ptr> %i.bc, ptr %scevgep190, i64 1
  %i.be = insertelement <2 x ptr> poison, ptr %scevgep191, i64 0
  %i.bf = insertelement <2 x ptr> %i.be, ptr %scevgep189, i64 1
  %i.bg = insertelement <2 x ptr> poison, ptr %scevgep190, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %scevgep194, i64 1
  %i.bi = getelementptr i8, ptr %4, i64 %i.ai
  %i.bj = getelementptr i8, ptr %i.bi, i64 20008
  %i.bk = getelementptr i8, ptr %i.w, i64 %i.ai
  %invariant.op = add i64 215, %i.ae
  %i.bl = icmp ult <2 x ptr> %i.bb, %i.bd
  %i.bm = icmp ult <2 x ptr> %i.bf, %i.bh
  %i.bn = and <2 x i1> %i.bm, %i.bl
  %i.bo = bitcast <2 x i1> %i.bn to i2
  %conflict.rdx204.not = icmp eq i2 %i.bo, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.bp = mul i64 %i.i, %indvars.iv93             ; 4 uses
  %scevgep154 = getelementptr i8, ptr %i.bj, i64 %i.bp ; 3 uses
  %scevgep155 = getelementptr i8, ptr %i.bk, i64 %i.bp ; 3 uses
  %i.bq = add i64 %i.ai, %i.bp                    ; 2 uses
  %scevgep157 = getelementptr i8, ptr %5, i64 %i.bq
  %i.br = add i64 %i.aj, %i.bp                    ; 2 uses
  %scevgep158 = getelementptr i8, ptr %5, i64 %i.br
  %scevgep159 = getelementptr i8, ptr %6, i64 %i.bq
  %scevgep160 = getelementptr i8, ptr %6, i64 %i.br
  %i.bs = mul i64 %indvars.iv93, %wide.trip.count.i ; 3 uses
  %i.bt = add i64 %i.ak, %i.bs                    ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %sext = shl i64 %i.bt, 32
  %i.bv = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.bv
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bv
  %scevgep104 = getelementptr i8, ptr %7, i64 %i.bv ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.bv ; 7 uses
  %i.bw = trunc i64 %i.bs to i32
  %i.bx = add i32 %i.ay, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 3                    ; 2 uses
  %scevgep114.a = getelementptr i8, ptr %6, i64 %i.bz
  %scevgep116.a = getelementptr i8, ptr %scevgep115, i64 %i.bz
  %i.ca = trunc i64 %i.bs to i32
  %i.cb = add i32 %i.az, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %6, i64 %i.cd
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.cd
  %scevgep120 = getelementptr i8, ptr %6, i64 %i.bv
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.bv
  %i.ce = mul i64 %indvars.iv93, %wide.trip.count.i ; 3 uses
  %i.cf = add i64 %i.am, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 4 uses
  %i.ch = trunc i64 %i.ce to i32
  %i.ci = add i32 %i.aw, %i.ch                    ; 2 uses
  %i.cj = trunc i64 %i.ce to i32
  %i.ck = add i32 %i.ax, %i.cj                    ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = fmul double %17, %i.cm
  %i.co = mul nsw i64 %indvars.iv93, %26
  %i.cp = add nsw i64 %i.co, %i.ar                ; 5 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cp ; 6 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %6, i64 %i.cp ; 5 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %11, i64 %i.cp ; 13 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %12, i64 %i.cp ; 8 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.aq, double 1.000000e+00) ; 6 uses
  br i1 %23, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.cv = mul i64 %i.r, %indvars.iv93
  %op.rdx233.reass = add i64 %i.cv, %invariant.op
  %diff.check = icmp ult i64 %op.rdx233.reass, 31
  %or.cond = select i1 %min.iters.check220, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader236, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body225 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %index226 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load227 = load <2 x double>, ptr %i.cw, align 8, !tbaa !24
  %wide.load228 = load <2 x double>, ptr %i.cx, align 8, !tbaa !24
  %i.cy = fmul <2 x double> %broadcast.splat224, %wide.load227
  %i.cz = fmul <2 x double> %broadcast.splat224, %wide.load228
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index226 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x double> %i.cy, ptr %i.da, align 8, !tbaa !24
  store <2 x double> %i.cz, ptr %i.db, align 8, !tbaa !24
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.dc, label %middle.block230, label %vector.body225, !llvm.loop !103

middle.block230:                                  ; preds = %vector.body225
  br i1 %cmp.n231, label %.preheader60.i.preheader, label %.lr.ph.i.preheader236

.lr.ph.i.preheader236:                            ; preds = %.lr.ph.i.preheader, %middle.block230
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec222, %middle.block230 ] ; 3 uses
  %i.dd = sub nsw i64 %i.s, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader236, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader236 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader236 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv.i.prol
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  %i.dg = fmul double %i.cu, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.prol
  store double %i.dg, ptr %i.dh, align 8, !tbaa !24
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader236
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader236 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.di = icmp ult i64 %i.dd, 3
  br i1 %i.di, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = fmul double %i.cu, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv.next.i
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = fmul double %i.cu, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i
  store double %i.dp, ptr %i.dq, align 8, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv.next.i.1
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fmul double %i.cu, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.1
  store double %i.dt, ptr %i.du, align 8, !tbaa !24
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv.next.i.2
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !24
  %i.dx = fmul double %i.cu, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.2
  store double %i.dx, ptr %i.dy, align 8, !tbaa !24
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !105

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block230
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %indvars.iv79.i ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.x, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.ea = load double, ptr %gep.i, align 8, !tbaa !24
  %i.eb = load double, ptr %i.dz, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv74.i ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !24
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.ed)
  store double %i.ee, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.ef = load double, ptr %gep.i.1, align 8, !tbaa !24
  %i.eg = load double, ptr %i.dz, align 8, !tbaa !24
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next75.i ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !24
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.eg, double %i.ei)
  store double %i.ej, ptr %i.eh, align 8, !tbaa !24
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod238.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i.epil.init
  %i.ek = load double, ptr %gep.i.epil, align 8, !tbaa !24
  %i.el = load double, ptr %i.dz, align 8, !tbaa !24
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv74.i.epil.init ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !24
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.el, double %i.en)
  store double %i.eo, ptr %i.em, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count.i
  br i1 %exitcond83.not.i, label %.lr.ph67.i.preheader, label %.preheader60.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge.i
  %conflict.rdx204.not.not = xor i1 %conflict.rdx204.not, true
  %brmerge = select i1 %min.iters.check206, i1 true, i1 %conflict.rdx204.not.not
  br i1 %brmerge, label %.lr.ph67.i.preheader235, label %vector.body209

vector.body209:                                   ; preds = %.lr.ph67.i.preheader, %vector.body209
  %index210 = phi i64 [ %index.next214, %vector.body209 ], [ 0, %.lr.ph67.i.preheader ] ; 5 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index210
  %wide.load211 = load <2 x double>, ptr %i.ep, align 8, !tbaa !24, !alias.scope !106
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index210 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.eq, align 8, !tbaa !24, !alias.scope !109, !noalias !111 ; 2 uses
  %i.er = fmul <2 x double> %wide.load211, %wide.load212
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index210
  store <2 x double> %i.er, ptr %i.es, align 8, !tbaa !24, !alias.scope !109, !noalias !111
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %index210
  %wide.load213 = load <2 x double>, ptr %i.et, align 8, !tbaa !24, !alias.scope !113
  %i.eu = fmul <2 x double> %wide.load212, %wide.load213
  store <2 x double> %i.eu, ptr %i.eq, align 8, !tbaa !24, !alias.scope !109, !noalias !111
  %index.next214 = add nuw i64 %index210, 2       ; 2 uses
  %i.ev = icmp eq i64 %index.next214, %n.vec208
  br i1 %i.ev, label %middle.block215, label %vector.body209, !llvm.loop !114

middle.block215:                                  ; preds = %vector.body209
  br i1 %cmp.n216, label %.preheader.i.preheader, label %.lr.ph67.i.preheader235

.lr.ph67.i.preheader235:                          ; preds = %.lr.ph67.i.preheader, %middle.block215
  %indvars.iv84.i.ph = phi i64 [ %n.vec208, %middle.block215 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod241.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader235
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv84.i.ph
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv84.i.ph ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !24 ; 2 uses
  %i.fa = fmul double %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv84.i.ph
  store double %i.fa, ptr %i.fb, align 8, !tbaa !24
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv84.i.ph
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !24
  %i.fe = fmul double %i.ez, %i.fd
  store double %i.fe, ptr %i.ey, align 8, !tbaa !24
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader235
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader235 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.ff = icmp eq i64 %indvars.iv84.i.ph, %i.y
  br i1 %i.ff, label %.preheader.i.preheader, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.1, %.lr.ph67.i ], [ %indvars.iv84.i.unr, %.lr.ph67.i.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv84.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !24
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv84.i ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !24 ; 2 uses
  %i.fk = fmul double %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv84.i
  store double %i.fk, ptr %i.fl, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv84.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !24
  %i.fo = fmul double %i.fj, %i.fn
  store double %i.fo, ptr %i.fi, align 8, !tbaa !24
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 4 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next85.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next85.i ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24 ; 2 uses
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next85.i
  store double %i.ft, ptr %i.fu, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next85.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24
  %i.fx = fmul double %i.fs, %i.fw
  store double %i.fx, ptr %i.fr, align 8, !tbaa !24
  %indvars.iv.next85.i.1 = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %exitcond88.not.i.1 = icmp eq i64 %indvars.iv.next85.i.1, %wide.trip.count.i
  br i1 %exitcond88.not.i.1, label %.preheader.i.preheader, label %.lr.ph67.i, !llvm.loop !115

.preheader.i.preheader:                           ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block215
  %bound0161 = icmp ult ptr %scevgep154, %scevgep156
  %bound1162 = icmp ult ptr %21, %scevgep155
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0164 = icmp ult ptr %scevgep154, %scevgep158
  %bound1165 = icmp ult ptr %scevgep157, %scevgep155
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %found.conflict163, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep154, %scevgep160
  %bound1169 = icmp ult ptr %scevgep159, %scevgep155
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge70.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge70.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [48 x i8], ptr %21, i64 %indvars.iv94.i ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv94.i ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv94.i ; 4 uses
  %brmerge246 = select i1 %min.iters.check173, i1 true, i1 %conflict.rdx171
  br i1 %brmerge246, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.preheader.i
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !24, !alias.scope !116
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !24, !alias.scope !119
  %broadcast.splatinsert182 = insertelement <2 x double> poison, double %i.gc, i64 0
  %broadcast.splat183 = shufflevector <2 x double> %broadcast.splatinsert182, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next184, %vector.body176 ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %index177 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load178 = load <2 x double>, ptr %i.gd, align 8, !tbaa !24, !alias.scope !121
  %wide.load179 = load <2 x double>, ptr %i.ge, align 8, !tbaa !24, !alias.scope !121
  %i.gf = fmul <2 x double> %wide.load178, %broadcast.splat
  %i.gg = fmul <2 x double> %wide.load179, %broadcast.splat
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index177 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.gh, align 8, !tbaa !24, !alias.scope !123, !noalias !125
  %wide.load181 = load <2 x double>, ptr %i.gi, align 8, !tbaa !24, !alias.scope !123, !noalias !125
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %broadcast.splat183, <2 x double> %wide.load180)
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %broadcast.splat183, <2 x double> %wide.load181)
  store <2 x double> %i.gj, ptr %i.gh, align 8, !tbaa !24, !alias.scope !123, !noalias !125
  store <2 x double> %i.gk, ptr %i.gi, align 8, !tbaa !24, !alias.scope !123, !noalias !125
  %index.next184 = add nuw i64 %index177, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.gl, label %middle.block185, label %vector.body176, !llvm.loop !126

middle.block185:                                  ; preds = %vector.body176
  br i1 %cmp.n186, label %._crit_edge70.i, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %.preheader.i, %middle.block185
  %indvars.iv89.i.ph = phi i64 [ %n.vec175, %middle.block185 ], [ 0, %.preheader.i ] ; 5 uses
  br i1 %lcmp.mod244.not, label %scalar.ph172.prol.loopexit, label %scalar.ph172.prol

scalar.ph172.prol:                                ; preds = %scalar.ph172.preheader
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv89.i.ph
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !24
  %i.go = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gp = fmul double %i.gn, %i.go
  %i.gq = load double, ptr %i.ga, align 8, !tbaa !24
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv89.i.ph ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !24
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %i.gs)
  store double %i.gt, ptr %i.gr, align 8, !tbaa !24
  %indvars.iv.next90.i.prol = or disjoint i64 %indvars.iv89.i.ph, 1
  br label %scalar.ph172.prol.loopexit

scalar.ph172.prol.loopexit:                       ; preds = %scalar.ph172.prol, %scalar.ph172.preheader
  %indvars.iv89.i.unr = phi i64 [ %indvars.iv89.i.ph, %scalar.ph172.preheader ], [ %indvars.iv.next90.i.prol, %scalar.ph172.prol ]
  %i.gu = icmp eq i64 %indvars.iv89.i.ph, %i.z
  br i1 %i.gu, label %._crit_edge70.i, label %scalar.ph172

scalar.ph172:                                     ; preds = %scalar.ph172.prol.loopexit, %scalar.ph172
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i.1, %scalar.ph172 ], [ %indvars.iv89.i.unr, %scalar.ph172.prol.loopexit ] ; 4 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv89.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !24
  %i.gx = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = load double, ptr %i.ga, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv89.i ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !24
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.gz, double %i.hb)
  store double %i.hc, ptr %i.ha, align 8, !tbaa !24
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next90.i
  %i.he = load double, ptr %i.hd, align 8, !tbaa !24
  %i.hf = load double, ptr %i.fz, align 8, !tbaa !24
  %i.hg = fmul double %i.he, %i.hf
  %i.hh = load double, ptr %i.ga, align 8, !tbaa !24
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next90.i ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !24
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hh, double %i.hj)
  store double %i.hk, ptr %i.hi, align 8, !tbaa !24
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %exitcond93.not.i.1 = icmp eq i64 %indvars.iv.next90.i.1, %wide.trip.count.i
  br i1 %exitcond93.not.i.1, label %._crit_edge70.i, label %scalar.ph172, !llvm.loop !127

._crit_edge70.i:                                  ; preds = %scalar.ph172.prol.loopexit, %scalar.ph172, %middle.block185
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count.i
  br i1 %exitcond98.not.i, label %WebRatesB.exit, label %.preheader.i

WebRatesB.exit:                                   ; preds = %._crit_edge70.i
  %i.hl = icmp eq i64 %indvars.iv93, 19
  %i.hm = select i1 %i.hl, i32 %24, i32 %10       ; 4 uses
  %i.hn = icmp eq i64 %indvars.iv93, 0
  %i.ho = select i1 %i.hn, i32 %10, i32 %24       ; 4 uses
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %WebRatesB.exit
  %i.hp = trunc nsw i64 %i.cp to i32
  %i.hq = add i32 %i.hp, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.hr = add i32 %i.cg, %i.ab
  %i.hs = icmp slt i32 %i.hr, %i.cg
  %i.ht = add i32 %i.ci, %i.ab
  %i.hu = icmp slt i32 %i.ht, %i.ci
  %i.hv = or i1 %i.hu, %i.ac
  %i.hw = add i32 %i.ck, %i.ab
  %i.hx = icmp slt i32 %i.hw, %i.ck
  %i.hy = add i32 %i.ho, %i.cg                    ; 2 uses
  %i.hz = add i32 %i.hy, %i.ab
  %i.ia = icmp slt i32 %i.hz, %i.hy
  %i.ib = add i32 %i.hm, %i.cg                    ; 2 uses
  %i.ic = add i32 %i.ib, %i.ab
  %i.id = icmp slt i32 %i.ic, %i.ib
  %i.ie = or i1 %i.hs, %i.hv
  %i.if = or i1 %i.hx, %i.ie
  %i.ig = or i1 %i.ia, %i.if
  %i.ih = or i1 %i.id, %i.ig
  br i1 %i.ih, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ii = add i32 %i.hm, %i.bu
  %i.ij = sext i32 %i.ii to i64
  %i.ik = shl nsw i64 %i.ij, 3                    ; 2 uses
  %scevgep108 = getelementptr i8, ptr %6, i64 %i.ik
  %scevgep110 = getelementptr i8, ptr %scevgep109.a, i64 %i.ik
  %i.il = add i32 %i.ho, %i.bu
  %i.im = sext i32 %i.il to i64
  %i.in = shl nsw i64 %i.im, 3                    ; 2 uses
  %scevgep111 = getelementptr i8, ptr %6, i64 %i.in
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.in
  %bound0 = icmp ult ptr %scevgep101, %scevgep106
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %13, %scevgep106
  %bound1124 = icmp ult ptr %scevgep104, %scevgep107.a
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %scevgep104, %scevgep110
  %bound1127 = icmp ult ptr %scevgep108, %scevgep106
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx, %found.conflict128
  %bound0130 = icmp ult ptr %scevgep104, %scevgep113
  %bound1131 = icmp ult ptr %scevgep111, %scevgep106
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep104, %scevgep116.a
  %bound1135 = icmp ult ptr %scevgep114.a, %scevgep106
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %scevgep104, %scevgep119
  %bound1139 = icmp ult ptr %scevgep117, %scevgep106
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %scevgep104, %scevgep122
  %bound1143 = icmp ult ptr %scevgep120, %scevgep106
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  br i1 %conflict.rdx145, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.io = trunc i64 %index to i32
  %i.ip = or disjoint i32 %i.io, 1
  %i.iq = add i32 %i.hq, %i.ip                    ; 5 uses
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ir
  %wide.load = load <2 x double>, ptr %i.is, align 8, !tbaa !24, !alias.scope !128 ; 4 uses
  %i.it = add i32 %i.iq, %i.av
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %6, i64 %i.iu
  %wide.load146 = load <2 x double>, ptr %i.iv, align 8, !tbaa !24, !alias.scope !131
  %i.iw = fsub <2 x double> %wide.load, %wide.load146
  %i.ix = add nsw i32 %i.iq, %i.at
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.iy
  %wide.load147 = load <2 x double>, ptr %i.iz, align 8, !tbaa !24, !alias.scope !133
  %i.ja = fsub <2 x double> %wide.load147, %wide.load
  %i.jb = add i32 %i.iq, %i.ho
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %6, i64 %i.jc
  %wide.load148 = load <2 x double>, ptr %i.jd, align 8, !tbaa !24, !alias.scope !135
  %i.je = fsub <2 x double> %wide.load, %wide.load148
  %i.jf = add nsw i32 %i.iq, %i.hm
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %6, i64 %i.jg
  %wide.load149 = load <2 x double>, ptr %i.jh, align 8, !tbaa !24, !alias.scope !137
  %i.ji = fsub <2 x double> %wide.load149, %wide.load
  %i.jj = getelementptr inbounds [8 x i8], ptr %14, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.jj, align 8, !tbaa !24, !alias.scope !139, !noalias !141
  %i.jk = fneg <2 x double> %wide.load150
  %i.jl = fsub <2 x double> %i.ja, %i.iw
  %i.jm = getelementptr inbounds [8 x i8], ptr %13, i64 %index
  %wide.load151 = load <2 x double>, ptr %i.jm, align 8, !tbaa !24, !alias.scope !139, !noalias !141
  %i.jn = fsub <2 x double> %i.ji, %i.je
  %i.jo = fneg <2 x double> %i.jn
  %i.jp = fmul <2 x double> %wide.load151, %i.jo
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jl, <2 x double> %i.jp)
  %i.jr = getelementptr inbounds [8 x i8], ptr %12, i64 %i.ir
  %wide.load152 = load <2 x double>, ptr %i.jr, align 8, !tbaa !24, !alias.scope !143, !noalias !141
  %i.js = fsub <2 x double> %i.jq, %wide.load152
  %i.jt = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ir
  store <2 x double> %i.js, ptr %i.jt, align 8, !tbaa !24, !alias.scope !141, !noalias !145
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jv = trunc nuw nsw i64 %indvars.iv to i32
  %i.jw = add i32 %i.hq, %i.jv                    ; 5 uses
  %i.jx = sext i32 %i.jw to i64                   ; 3 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.jx
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !24 ; 4 uses
  %i.ka = add i32 %i.jw, %i.av
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %6, i64 %i.kb
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !24
  %i.ke = fsub double %i.jz, %i.kd
  %i.kf = add nsw i32 %i.jw, %i.at
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %6, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !24
  %i.kj = fsub double %i.ki, %i.jz
  %i.kk = add i32 %i.jw, %i.ho
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %6, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !24
  %i.ko = fsub double %i.jz, %i.kn
  %i.kp = add nsw i32 %i.jw, %i.hm
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %6, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !24
  %i.kt = fsub double %i.ks, %i.jz
  %i.ku = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !24
  %i.kx = fneg double %i.kw
  %i.ky = fsub double %i.kj, %i.ke
  %i.kz = getelementptr inbounds [8 x i8], ptr %13, i64 %i.ku
  %i.la = load double, ptr %i.kz, align 8, !tbaa !24
  %i.lb = fsub double %i.kt, %i.ko
  %i.lc = fneg double %i.lb
  %i.ld = fmul double %i.la, %i.lc
  %i.le = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.ky, double %i.ld)
  %i.lf = getelementptr inbounds [8 x i8], ptr %12, i64 %i.jx
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !24
  %i.lh = fsub double %i.le, %i.lg
  %i.li = getelementptr inbounds [8 x i8], ptr %7, i64 %i.jx
  store double %i.lh, ptr %i.li, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c, %WebRatesB.exit
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 20
  br i1 %exitcond96.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %._crit_edge
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 20
  br i1 %exitcond100.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

declare i32 @CVodeSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditionerB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PrecondB(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5, double noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 39224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 39232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = tail call ptr @CVodeGetAdjCVodeBmem(ptr noundef %i.b, i32 noundef %i.d) #10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #11 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 39208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.k = tail call i32 @CVodeGetErrWeights(ptr noundef nonnull %i.e, ptr noundef %i.j) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %check_retval.exit117, label %bb.c

check_retval.exit117:                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef %i.k) #11 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 5 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %i.j) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 296 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !67   ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 800
  %i.w = load double, ptr %i.v, align 8, !tbaa !68 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !70  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 808 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 39216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ah) #10 ; 20 uses
  %i.aj = tail call double @N_VWrmsNorm(ptr noundef %3, ptr noundef %i.j) #10
  %i.ak = tail call double @llvm.fabs.f64(double %6)
  %i.al = fmul double %i.ak, 1.000000e+03
  %i.am = fmul double %i.al, f0x3CB0000000000000
  %i.an = fmul double %i.am, 2.400000e+03
  %i.ao = fmul double %i.an, %i.aj                ; 2 uses
  %i.ap = fcmp oeq double %i.ao, 0.000000e+00
  %.0108 = select i1 %i.ap, double 1.000000e+00, double %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.ac, 0
  br i1 %i.aq, label %.lr.ph138, label %.preheader

.lr.ph138:                                        ; preds = %bb.c
  %i.ar = icmp slt i32 %i.aa, 1
  %i.as = icmp slt i32 %i.u, 1
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 784
  %i.au = getelementptr i8, ptr %7, i64 304       ; 2 uses
  %i.av = getelementptr i8, ptr %7, i64 592       ; 5 uses
  %brmerge = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %brmerge, label %.preheader, label %.lr.ph138.split.split

.lr.ph138.split.split:                            ; preds = %.lr.ph138
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !73
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !26 ; 5 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = zext i32 %i.az to i64                   ; 14 uses
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = zext nneg i32 %i.aa to i64              ; 4 uses
  %wide.trip.count180 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count170 = zext nneg i32 %i.u to i64 ; 6 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph138.split.split
  %xtraiter = and i64 %wide.trip.count170, 1
  %i.be = icmp eq i32 %i.u, 1
  %unroll_iter = and i64 %wide.trip.count170, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod239 = trunc i32 %i.u to i1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph138.split.split
  %i.bf = shl nuw nsw i64 %i.bb, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.bf ; 4 uses
  %scevgep203 = getelementptr i8, ptr %i.o, i64 %i.bf
  %i.bg = getelementptr i8, ptr %7, i64 %i.bf
  %scevgep205 = getelementptr i8, ptr %i.bg, i64 592
  %scevgep215 = getelementptr i8, ptr %i.o, i64 %i.bf
  %i.bh = mul nuw nsw i64 %i.bb, 56
  %i.bi = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep217 = getelementptr i8, ptr %i.bi, i64 256
  %min.iters.check226 = icmp ult i32 %i.az, 5
  %bound0221 = icmp ult ptr %i.ai, %scevgep217
  %bound1222 = icmp ult ptr %i.au, %scevgep
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.bj = and i64 %i.bb, 3                        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 4, i64 %i.bj
  %n.vec228 = sub nsw i64 %i.bb, %i.bl            ; 2 uses
  %i.bm = add nsw i64 %i.bb, -1
  %min.iters.check = icmp ult i32 %i.az, 4
  %bound0206 = icmp ult ptr %i.ai, %scevgep205
  %bound1207 = icmp ult ptr %i.av, %scevgep
  %found.conflict208 = and i1 %bound0206, %bound1207
  %n.vec = and i64 %i.bb, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter242 = and i64 %i.bb, 1
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  %i.bn = add nsw i64 %i.bb, -1
  %xtraiter245 = and i64 %wide.trip.count170, 1
  %i.bo = icmp eq i32 %i.u, 1
  %unroll_iter248 = and i64 %wide.trip.count170, 2147483646
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  %lcmp.mod247 = trunc i32 %i.u to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split135.us.us
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %._crit_edge.split135.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv177
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25 ; 3 uses
  %i.br = mul nsw i32 %i.bq, %i.ae
  %i.bs = mul nuw nsw i64 %indvars.iv177, %i.bd
  %i.bt = sitofp i32 %i.bq to double
  %i.bu = mul nsw i32 %i.ay, %i.bq
  %invariant.gep200 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bs
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 1
  br label %.lr.ph125.us.us

.lr.ph125.us.us:                                  ; preds = %._crit_edge126.split.us.us.us, %.lr.ph.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %._crit_edge126.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv172
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25 ; 3 uses
  %i.by = mul nsw i32 %i.bx, %i.u
  %i.bz = add nsw i32 %i.by, %i.br
  %i.ca = add nsw i32 %i.bu, %i.bx
  %i.cb = sitofp i32 %i.bx to double
  %i.cc = mul nsw i32 %i.az, %i.ca
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cd ; 7 uses
  %gep201 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep200, i64 %indvars.iv172
  %i.cf = load ptr, ptr %gep201, align 8, !tbaa !12 ; 3 uses
  %i.cg = sext i32 %i.bz to i64                   ; 2 uses
  %invariant.gep198 = getelementptr [8 x i8], ptr %i.af, i64 %i.cg ; 3 uses
  %i.ch = shl nsw i64 %i.cd, 3                    ; 2 uses
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.ch
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.ch
  %i.ci = insertelement <2 x double> %i.bv, double %i.cb, i64 0
  %bound0218 = icmp ult ptr %i.ai, %scevgep216
  %bound1219 = icmp ult ptr %i.ce, %scevgep
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx224 = or i1 %found.conflict220, %found.conflict223
  %bound0 = icmp ult ptr %i.ai, %scevgep204
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  br label %.preheader.preheader.i.i.us.us.us

.preheader.preheader.i.i.us.us.us:                ; preds = %._crit_edge.us.us.us, %.lr.ph125.us.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %._crit_edge.us.us.us ], [ 0, %.lr.ph125.us.us ] ; 5 uses
  %i.cj = add nsw i64 %indvars.iv167, %i.cg       ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cj ; 3 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !24 ; 3 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fmul double %i.w, %i.cm                 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cj
  %i.cp = load double, ptr %i.co, align 8, !tbaa !24
  %i.cq = fdiv double %.0108, %i.cp               ; 2 uses
  %i.cr = fcmp ogt double %i.cn, %i.cq
  %..us.us.us = select i1 %i.cr, double %i.cn, double %i.cq ; 2 uses
  %i.cs = fadd double %i.cl, %..us.us.us
  store double %i.cs, ptr %i.ck, align 8, !tbaa !24
  %i.ct = load <2 x double>, ptr %i.at, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.bc, i1 false), !tbaa !24
  br label %.preheader.i.i.us.us.us

.preheader.i.i.us.us.us:                          ; preds = %._crit_edge.i.i.us.us.us, %.preheader.preheader.i.i.us.us.us
  %indvars.iv48.i.i.us.us.us = phi i64 [ 0, %.preheader.preheader.i.i.us.us.us ], [ %indvars.iv.next49.i.i.us.us.us, %._crit_edge.i.i.us.us.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv48.i.i.us.us.us ; 4 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv48.i.i.us.us.us ; 7 uses
  %brmerge250 = select i1 %min.iters.check226, i1 true, i1 %conflict.rdx224
  br i1 %brmerge250, label %scalar.ph225.preheader, label %vector.ph227
end_hunk_0
