Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl6addArcEP5MyArcRiddddddiiiiiiPdS5_id:bb.a
  store i32 %16, ptr %i.ao, align 8, !tbaa !295
  %i.ap = load i32, ptr %1, align 4, !tbaa !42
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %1, align 4, !tbaa !42
  tail call void @_ZN2cv8ximgproc15EdgeDrawingImpl15joinLastTwoArcsEP5MyArcRi(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6addArcEP5MyArcRiddddddiiP15EllipseEquationdiiiiPdS7_id(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, double noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, double noundef %19) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !42
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [168 x i8], ptr %0, i64 %i.b ; 6 uses
  store double %2, ptr %i.c, align 8, !tbaa !279
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double %3, ptr %i.d, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %4, ptr %i.e, align 8, !tbaa !281
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %5, ptr %i.f, align 8, !tbaa !282
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %6, ptr %i.g, align 8, !tbaa !283
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %7, ptr %i.h, align 8, !tbaa !284
  %i.i = fsub double 1.000000e+00, %19
  %i.j = sitofp i32 %18 to double
  %i.k = fmul double %i.i, %i.j
  %i.l = tail call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl23computeEllipsePerimeterEP15EllipseEquation(ptr noundef %10)
  %i.m = fdiv double %i.k, %i.l
  %i.n = load i32, ptr %1, align 4, !tbaa !42
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [168 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store double %i.m, ptr %i.q, align 8, !tbaa !285
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i32 %8, ptr %i.r, align 8, !tbaa !286
  %i.s = load i32, ptr %1, align 4, !tbaa !42
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [168 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  store i32 %9, ptr %i.v, align 4, !tbaa !287
  %i.w = load i32, ptr %1, align 4, !tbaa !42
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [168 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  store i8 1, ptr %i.z, align 4, !tbaa !288
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !252
  %i.ab = load i32, ptr %1, align 4, !tbaa !42
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [168 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store double %11, ptr %i.ae, align 8, !tbaa !297
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i32 %12, ptr %i.af, align 8, !tbaa !289
  %i.ag = load i32, ptr %1, align 4, !tbaa !42
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [168 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  store i32 %13, ptr %i.aj, align 4, !tbaa !290
  %i.ak = load i32, ptr %1, align 4, !tbaa !42
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [168 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store i32 %14, ptr %i.an, align 8, !tbaa !291
  %i.ao = load i32, ptr %1, align 4, !tbaa !42
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [168 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  store i32 %15, ptr %i.ar, align 4, !tbaa !292
  %i.as = load i32, ptr %1, align 4, !tbaa !42
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [168 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store ptr %16, ptr %i.av, align 8, !tbaa !293
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr %17, ptr %i.aw, align 8, !tbaa !294
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i32 %18, ptr %i.ax, align 8, !tbaa !295
  %i.ay = load i32, ptr %1, align 4, !tbaa !42
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %1, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl20ComputeEllipsePointsEPdS2_S2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit:
  %i.a = sdiv i32 %3, 2                           ; 5 uses
  %i.b = add nsw i32 %i.a, 1                      ; 21 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.d = sext i32 %i.b to i64
  %i.e = icmp slt i32 %3, -3
  %i.f = shl nsw i64 %i.d, 3                      ; 28 uses
  %i.g = select i1 %i.e, i64 -1, i64 %i.f         ; 27 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.f, i1 false)
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.f, i1 false)
  %i.m = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.f, i1 false)
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.f, i1 false)
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.f, i1 false)
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.f, i1 false)
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.f, i1 false)
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.f, i1 false)
  %i.y = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.f, i1 false)
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.f, i1 false)
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.f, i1 false)
  %i.ae = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.f, i1 false)
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.f, i1 false)
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.f, i1 false)
  %i.ak = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.f, i1 false)
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %i.f, i1 false)
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.f, i1 false)
  %i.aq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.f, i1 false)
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.f, i1 false)
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.f, i1 false)
  %i.aw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.ax = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.f, i1 false)
  %i.ay = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.f, i1 false)
  %i.ba = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.f, i1 false)
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 12 uses
  %i.bd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bd, i8 0, i64 %i.f, i1 false)
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #41 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.f, i1 false)
  %i.bf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.bg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bl = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 5 uses
  %i.bm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #41 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %i.br = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bs = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.bt = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bc, i8 0, i64 %i.f, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load double, ptr %i.by, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load double, ptr %i.ca, align 8, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store double %4, ptr %i.cb, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %7 = load <2 x double>, ptr %5, align 8, !tbaa !44 ; 2 uses
  %8 = fmul <2 x double> %7, <double 5.000000e-01, double poison> ; 2 uses
  %9 = shufflevector <2 x double> %8, <2 x double> %7, <2 x i32> <i32 0, i32 3>
  %i.cd = extractelement <2 x double> %8, i64 0
  store double %i.cd, ptr %i.cc, align 8, !tbaa !44
  store <2 x double> %9, ptr %6, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 5 uses
  store double %i.bx, ptr %i.ce, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 5 uses
  store double %i.bz, ptr %i.cf, align 8, !tbaa !44
  %.not393 = icmp slt i32 %3, 2                   ; 2 uses
  br i1 %.not393, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !277 ; 3 uses
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !277 ; 3 uses
  %i.ci = sitofp i32 %i.a to double
  %i.cj = fdiv double f0x400921FB54442D18, %i.ci  ; 2 uses
  %i.ck = zext nneg i32 %i.a to i64               ; 2 uses
  %xtraiter = and i64 %i.ck, 1
  %i.cl = icmp eq i32 %i.b, 2
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ck, 1073741822
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.a ] ; 4 uses
  %.0194394 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.cv, %bb.a ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.a ]
  %i.cm = tail call double @cos(double noundef %.0194394) #42
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  store double %i.cm, ptr %i.cn, align 8, !tbaa !44
  %i.co = tail call double @sin(double noundef %.0194394) #42
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  store double %i.co, ptr %i.cp, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cq = fadd double %i.cj, %.0194394            ; 3 uses
  %i.cr = tail call double @cos(double noundef %i.cq) #42
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next
  store double %i.cr, ptr %i.cs, align 8, !tbaa !44
  %i.ct = tail call double @sin(double noundef %i.cq) #42
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next
  store double %i.ct, ptr %i.cu, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = fadd double %i.cj, %i.cq                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.a, !llvm.loop !608

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0194394.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cv, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1084 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1084)
  %i.cw = tail call double @cos(double noundef %.0194394.epil.init) #42
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.epil.init
  store double %i.cw, ptr %i.cx, align 8, !tbaa !44
  %i.cy = tail call double @sin(double noundef %.0194394.epil.init) #42
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.epil.init
  store double %i.cy, ptr %i.cz, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit
  %i.da = tail call noundef i32 @_ZN2cv8ximgproc15EdgeDrawingImpl7inverseEPPdS3_i(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bl, i32 noundef 2) ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 10 uses
  %i.dc = load <2 x double>, ptr %i.db, align 8
  %i.dd = load double, ptr %i.ce, align 8, !tbaa !44 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 7 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !44
  %i.dg = load double, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 10 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !44
  %i.dj = insertelement <2 x double> %i.dc, double %i.di, i64 1
  %i.dk = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dl, <2 x double> zeroinitializer)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 7 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !44
  %i.dp = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1
  %i.dr = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.ds, <2 x double> %i.dm) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.dv = extractelement <2 x double> %i.dt, i64 0
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dv, double 0.000000e+00)
  %i.dx = extractelement <2 x double> %i.dt, i64 1
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dx, double %i.dw)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.bv, double -4.000000e+00, double %i.dy)
  store double %i.dz, ptr %i.du, align 8, !tbaa !44
  br i1 %.not393, label %.lr.ph.i320.preheader, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %._crit_edge
  %wide.trip.count43.i = zext nneg i32 %i.b to i64 ; 24 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !277 ; 4 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !277 ; 8 uses
  %.pre452 = load ptr, ptr %i.l, align 8, !tbaa !277 ; 8 uses
  %i.eb = add nsw i64 %wide.trip.count43.i, -1    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %.lr.ph.i274.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph.split.i
  %i.ec = getelementptr nuw i8, ptr %i.ea, i64 8  ; 3 uses
  %i.ed = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ea, i64 %i.ed  ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.eg = getelementptr nuw i8, ptr %.pre, i64 8
  %i.eh = getelementptr i8, ptr %.pre, i64 %i.ed
  %i.ei = getelementptr nuw i8, ptr %.pre452, i64 8
  %i.ej = getelementptr i8, ptr %.pre452, i64 %i.ed
  %bound0 = icmp ult ptr %i.ec, %i.ef
  %bound1 = icmp ult ptr %i.db, %i.ee
  %found.conflict = and i1 %bound0, %bound1
  %bound0498 = icmp ult ptr %i.ec, %i.eh
  %bound1499 = icmp ult ptr %i.eg, %i.ee
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx = or i1 %found.conflict, %found.conflict500
  %bound0501 = icmp ult ptr %i.ec, %i.ej
  %bound1502 = icmp ult ptr %i.ei, %i.ee
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx, %found.conflict503
  br i1 %conflict.rdx504, label %.lr.ph.i274.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, -2                      ; 2 uses
  %i.ek = or i64 %i.eb, 1
  %i.el = load <1 x double>, ptr %i.db, align 8
  %broadcast.splat = shufflevector <1 x double> %i.el, <1 x double> poison, <2 x i32> zeroinitializer
  %i.em = load double, ptr %i.de, align 8, !tbaa !44, !alias.scope !675
  %broadcast.splatinsert506 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat507 = shufflevector <2 x double> %broadcast.splatinsert506, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.en = or disjoint i64 %index, 1               ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.en ; 3 uses
  store <2 x double> zeroinitializer, ptr %i.eo, align 8, !tbaa !44, !alias.scope !676, !noalias !677
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.en
  %wide.load = load <2 x double>, ptr %i.ep, align 8, !tbaa !44, !alias.scope !678
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !44, !alias.scope !676, !noalias !677
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre452, i64 %i.en
  %wide.load505 = load <2 x double>, ptr %i.er, align 8, !tbaa !44, !alias.scope !679
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat507, <2 x double> %wide.load505, <2 x double> %i.eq)
  store <2 x double> %i.es, ptr %i.eo, align 8, !tbaa !44, !alias.scope !676, !noalias !677
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !614

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge32.split.i282, label %.lr.ph.i274.preheader

.lr.ph.i274.preheader:                            ; preds = %vector.memcheck, %.preheader.lr.ph.split.i, %middle.block
  %indvars.iv40.i275.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.lr.ph.split.i ], [ %i.ek, %middle.block ]
  br label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.preheader, %.lr.ph.i274
  %indvars.iv40.i275 = phi i64 [ %indvars.iv.next41.i280, %.lr.ph.i274 ], [ %indvars.iv40.i275.ph, %.lr.ph.i274.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv40.i275 ; 3 uses
  store double 0.000000e+00, ptr %i.eu, align 8, !tbaa !44
  %i.ev = load double, ptr %i.db, align 8, !tbaa !44
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv40.i275
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !44
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ex, double 0.000000e+00) ; 2 uses
  store double %i.ey, ptr %i.eu, align 8, !tbaa !44
  %i.ez = load double, ptr %i.de, align 8, !tbaa !44
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre452, i64 %indvars.iv40.i275
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !44
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fb, double %i.ey)
  store double %i.fc, ptr %i.eu, align 8, !tbaa !44
  %indvars.iv.next41.i280 = add nuw nsw i64 %indvars.iv40.i275, 1 ; 2 uses
  %exitcond44.not.i281 = icmp eq i64 %indvars.iv.next41.i280, %wide.trip.count43.i
  br i1 %exitcond44.not.i281, label %._crit_edge32.split.i282, label %.lr.ph.i274, !llvm.loop !615

._crit_edge32.split.i282:                         ; preds = %.lr.ph.i274, %middle.block
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !277 ; 4 uses
  %i.fe = add nsw i64 %wide.trip.count43.i, -1    ; 3 uses
  %min.iters.check527 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check527, label %.lr.ph.i274.1.preheader, label %vector.memcheck528

vector.memcheck528:                               ; preds = %._crit_edge32.split.i282
  %i.ff = getelementptr nuw i8, ptr %i.fd, i64 8  ; 3 uses
  %i.fg = shl nuw nsw i64 %wide.trip.count43.i, 3 ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fd, i64 %i.fg  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.fj = getelementptr nuw i8, ptr %.pre, i64 8
  %i.fk = getelementptr i8, ptr %.pre, i64 %i.fg
  %i.fl = getelementptr nuw i8, ptr %.pre452, i64 8
  %i.fm = getelementptr i8, ptr %.pre452, i64 %i.fg
  %bound0529 = icmp ult ptr %i.ff, %i.fi
  %bound1530 = icmp ult ptr %i.dh, %i.fh
  %found.conflict531 = and i1 %bound0529, %bound1530
  %bound0532 = icmp ult ptr %i.ff, %i.fk
  %bound1533 = icmp ult ptr %i.fj, %i.fh
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %found.conflict531, %found.conflict534
  %bound0536 = icmp ult ptr %i.ff, %i.fm
  %bound1537 = icmp ult ptr %i.fl, %i.fh
end_hunk_0
