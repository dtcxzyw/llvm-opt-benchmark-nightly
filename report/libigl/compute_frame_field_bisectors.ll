Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/compute_frame_field_bisectors?download=true
inline.NumInlined: 634
inline.NumDeleted: 384
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl29compute_frame_field_bisectorsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_S9_S9_RNS1_15PlainObjectBaseIS6_EESG_:bb.a
  %i.af = fmul double %i.ac, %i.ae
  %i.ag = getelementptr i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i ; 3 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %.idx1.i.i.i.i.i.i.i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.ak = fmul double %i.ah, %i.aj
  %i.al = fadd double %i.af, %i.ak
  %i.am = fadd double %i.aa, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v ; 4 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !16 ; 3 uses
  %i.ap = fmul double %i.z, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.an, i64 %i.l ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.as = fmul double %i.ae, %i.ar
  %i.at = getelementptr i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i60 ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %i.av = fmul double %i.aj, %i.au
  %i.aw = fadd double %i.as, %i.av
  %i.ax = fadd double %i.ap, %i.aw
  %i.ay = tail call double @atan2(double noundef %i.am, double noundef %i.ax) #12 ; 3 uses
  %i.az = fcmp olt double %i.ay, 0.000000e+00
  %i.ba = fdiv double %i.ay, f0xC01921FB54442D18
  %i.bb = tail call double @llvm.ceil.f64(double %i.ba)
  %i.bc = select i1 %i.az, double %i.bb, double 0.000000e+00
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double f0x401921FB54442D18, double %i.ay)
  %i.be = tail call double @fmod(double noundef %i.bd, double noundef f0x401921FB54442D18) #12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !16 ; 2 uses
  %i.bh = fmul double %i.y, %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bf, i64 %i.o
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !16 ; 2 uses
  %i.bk = fmul double %i.ac, %i.bj
  %i.bl = getelementptr i8, ptr %i.bf, i64 %.idx1.i.i.i.i.i.i.i.i69
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !16 ; 2 uses
  %i.bn = fmul double %i.ah, %i.bm
  %i.bo = fadd double %i.bk, %i.bn
  %i.bp = fadd double %i.bh, %i.bo
  %i.bq = fmul double %i.ao, %i.bg
  %i.br = fmul double %i.ar, %i.bj
  %i.bs = fmul double %i.au, %i.bm
  %i.bt = fadd double %i.br, %i.bs
  %i.bu = fadd double %i.bq, %i.bt
  %i.bv = tail call double @atan2(double noundef %i.bp, double noundef %i.bu) #12 ; 3 uses
  %i.bw = fcmp olt double %i.bv, 0.000000e+00
  %i.bx = fdiv double %i.bv, f0xC01921FB54442D18
  %i.by = tail call double @llvm.ceil.f64(double %i.bx)
  %i.bz = select i1 %i.bw, double %i.by, double 0.000000e+00
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double f0x401921FB54442D18, double %i.bv)
  %i.cb = tail call double @fmod(double noundef %i.ca, double noundef f0x401921FB54442D18) #12
  %i.cc = fadd double %i.be, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01         ; 3 uses
  %i.ce = fcmp olt double %i.cd, 0.000000e+00
  %i.cf = fdiv double %i.cd, f0xC01921FB54442D18
  %i.cg = tail call double @llvm.ceil.f64(double %i.cf)
  %i.ch = select i1 %i.ce, double %i.cg, double 0.000000e+00
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double f0x401921FB54442D18, double %i.cd)
  %i.cj = tail call double @fmod(double noundef %i.ci, double noundef f0x401921FB54442D18) #12 ; 3 uses
  %i.ck = fadd double %i.cj, f0x3FF921FB54442D18  ; 3 uses
  %i.cl = fcmp olt double %i.ck, 0.000000e+00
  %i.cm = fdiv double %i.ck, f0xC01921FB54442D18
  %i.cn = tail call double @llvm.ceil.f64(double %i.cm)
  %i.co = select i1 %i.cl, double %i.cn, double 0.000000e+00
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double f0x401921FB54442D18, double %i.ck)
  %i.cq = tail call double @fmod(double noundef %i.cp, double noundef f0x401921FB54442D18) #12 ; 2 uses
  %i.cr = tail call double @cos(double noundef %i.cj) #12 ; 3 uses
  %i.cs = tail call double @sin(double noundef %i.cj) #12 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v ; 3 uses
  %i.cu = fmul double %i.ao, %i.cr
  %i.cv = fmul double %i.y, %i.cs
  %i.cw = fadd double %i.cu, %i.cv
  store double %i.cw, ptr %i.ct, align 8, !tbaa !16
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.r
  %i.cy = load double, ptr %i.aq, align 8, !tbaa !16
  %i.cz = fmul double %i.cr, %i.cy
  %i.da = load double, ptr %i.ab, align 8, !tbaa !16
  %i.db = fmul double %i.cs, %i.da
  %i.dc = fadd double %i.cz, %i.db
  store double %i.dc, ptr %i.cx, align 8, !tbaa !16
  %i.dd = getelementptr inbounds i8, ptr %i.ct, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = load double, ptr %i.at, align 8, !tbaa !16
  %i.df = fmul double %i.cr, %i.de
  %i.dg = load double, ptr %i.ag, align 8, !tbaa !16
  %i.dh = fmul double %i.cs, %i.dg
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dd, align 8, !tbaa !16
  %i.dj = tail call double @cos(double noundef %i.cq) #12 ; 3 uses
  %i.dk = tail call double @sin(double noundef %i.cq) #12 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v ; 3 uses
  %i.dm = load double, ptr %i.an, align 8, !tbaa !16
  %i.dn = fmul double %i.dj, %i.dm
  %i.do = load double, ptr %i.w, align 8, !tbaa !16
  %i.dp = fmul double %i.dk, %i.do
  %i.dq = fadd double %i.dn, %i.dp
  store double %i.dq, ptr %i.dl, align 8, !tbaa !16
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.u
  %i.ds = load double, ptr %i.aq, align 8, !tbaa !16
  %i.dt = fmul double %i.dj, %i.ds
  %i.du = load double, ptr %i.ab, align 8, !tbaa !16
  %i.dv = fmul double %i.dk, %i.du
  %i.dw = fadd double %i.dt, %i.dv
  store double %i.dw, ptr %i.dr, align 8, !tbaa !16
  %i.dx = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i81
  %i.dy = load double, ptr %i.at, align 8, !tbaa !16
  %i.dz = fmul double %i.dj, %i.dy
  %i.ea = load double, ptr %i.ag, align 8, !tbaa !16
  %i.eb = fmul double %i.dk, %i.ea
  %i.ec = fadd double %i.dz, %i.eb
  store double %i.ec, ptr %i.dx, align 8, !tbaa !16
  %i.ed = add i32 %.0240, 1                       ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.d, %i.ee
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl29compute_frame_field_bisectorsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_RNS1_15PlainObjectBaseIS6_EESG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.9", align 8   ; 8 uses
  %7 = alloca %"class.Eigen::Matrix.9", align 8   ; 8 uses
  %8 = alloca %"class.Eigen::Matrix.9", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl29compute_frame_field_bisectorsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_S9_S9_RNS1_15PlainObjectBaseIS6_EESG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %8, align 8, !tbaa !19
  call void @free(ptr noundef %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.b = load ptr, ptr %7, align 8, !tbaa !19
  call void @free(ptr noundef %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.c = load ptr, ptr %6, align 8, !tbaa !19
  call void @free(ptr noundef %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %8, align 8, !tbaa !19
  call void @free(ptr noundef %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.f = load ptr, ptr %7, align 8, !tbaa !19
  call void @free(ptr noundef %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.g = load ptr, ptr %6, align 8, !tbaa !19
  call void @free(ptr noundef %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.d
}

declare void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl29compute_frame_field_bisectorsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EES9_S9_S9_S9_RNS1_15PlainObjectBaseIS6_EESG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a
  %i.e = mul nsw i64 %i.b, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.e, i64 noundef %i.b, i64 noundef 3)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.g = icmp sgt i64 %i.f, 3074457345618258602
  br i1 %i.g, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit54

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit54: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.i = mul nsw i64 %i.f, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 3)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit54
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !63 ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !19, !noalias !64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23, !noalias !64 ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = icmp sgt i64 %i.p, 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %5, align 8, !tbaa !19, !noalias !65
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23, !noalias !65 ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = icmp sgt i64 %i.w, 1
  %i.aa = load ptr, ptr %6, align 8, !tbaa !19, !noalias !66 ; 2 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23, !noalias !66 ; 7 uses
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !20  ; 14 uses
  %i.af = load i64, ptr %i.r, align 8, !tbaa !20  ; 14 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20 ; 4 uses
  %i.ai = icmp sgt i64 %i.ad, 0
  %i.aj = load ptr, ptr %7, align 8, !tbaa !19, !noalias !67 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23, !noalias !67 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20 ; 4 uses
  %i.ap = icmp sgt i64 %i.am, 0
  %i.aq = add i64 %i.p, -1                        ; 6 uses
  %i.ar = add i64 %i.p, -2                        ; 2 uses
  %i.as = add i64 %i.w, -1                        ; 6 uses
  %i.at = add i64 %i.w, -2                        ; 2 uses
  %xtraiter = and i64 %i.aq, 1
  %i.au = icmp eq i64 %i.ar, 0
  %unroll_iter = and i64 %i.aq, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod355 = trunc i64 %i.aq to i1
  %xtraiter356 = and i64 %i.aq, 1
  %i.av = icmp eq i64 %i.ar, 0
  %unroll_iter360 = and i64 %i.aq, -2
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  %lcmp.mod359 = trunc i64 %i.aq to i1
  %xtraiter363 = and i64 %i.as, 1
  %i.aw = icmp eq i64 %i.at, 0
  %unroll_iter367 = and i64 %i.as, -2
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  %lcmp.mod366 = trunc i64 %i.as to i1
  %xtraiter370 = and i64 %i.as, 1
  %i.ax = icmp eq i64 %i.at, 0
  %unroll_iter374 = and i64 %i.as, -2
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  %lcmp.mod373 = trunc i64 %i.as to i1
  %min.iters.check332 = icmp ult i64 %i.ad, 8
  %ident.check324 = icmp ne i64 %i.ah, 1
  %ident.check325 = icmp ne i64 %i.ae, 1
  %ident.check326 = icmp ne i64 %i.af, 1
  %i.ay = or i1 %ident.check324, %ident.check325
  %i.az = or i1 %i.ay, %ident.check326
  %i.ba = sub i64 %i.m, %i.ab
  %diff.check329 = icmp ugt i64 %i.ba, -32
  %n.vec334 = and i64 %i.ad, 9223372036854775804  ; 3 uses
  %cmp.n347 = icmp eq i64 %i.ad, %n.vec334
  %xtraiter376 = and i64 %i.ad, 1
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  %min.iters.check = icmp ult i64 %i.am, 8
  %ident.check = icmp ne i64 %i.ao, 1
  %ident.check315 = icmp ne i64 %i.ae, 1
  %ident.check316 = icmp ne i64 %i.af, 1
  %i.bb = or i1 %ident.check, %ident.check315
  %i.bc = or i1 %i.bb, %ident.check316
  %i.bd = sub i64 %i.m, %i.ak
  %diff.check317 = icmp ugt i64 %i.bd, -32
  %n.vec = and i64 %i.am, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  %xtraiter378 = and i64 %i.am, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit54
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103
  %i.be = phi i64 [ 0, %.lr.ph ], [ %i.lr, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103 ] ; 10 uses
  %.0298 = phi i32 [ 0, %.lr.ph ], [ %i.lq, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103 ]
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = shl nuw nsw i64 %i.be, 3
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be ; 16 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be ; 7 uses
  br i1 %i.q, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !16
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !16 ; 3 uses
  %i.bl = fmul double %i.bj, %i.bk                ; 3 uses
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.preheader, label %.thread

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i

.thread:                                          ; preds = %bb.e
  %i.bm = load ptr, ptr %2, align 8, !tbaa !19, !noalias !68
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.be ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = fmul double %i.bo, %i.bk
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %.02223.i.i.i.i.i = phi double [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.bq = mul nsw i64 %.01724.i.i.i.i.i, %i.af
  %i.br = getelementptr [8 x i8], ptr %i.bh, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !16
  %i.bt = mul nuw nsw i64 %.01724.i.i.i.i.i, %i.j
  %i.bu = getelementptr [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !16
  %i.bw = fmul double %i.bs, %i.bv
  %i.bx = fadd double %.02223.i.i.i.i.i, %i.bw
  %i.by = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.af
  %i.ca = getelementptr [8 x i8], ptr %i.bh, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !16
  %i.cc = mul nuw nsw i64 %i.by, %i.j
  %i.cd = getelementptr [8 x i8], ptr %i.bi, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !16
  %i.cf = fmul double %i.cb, %i.ce
  %i.cg = fadd double %i.bx, %i.cf                ; 3 uses
  %i.ch = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit: ; preds = %bb.d
  %i.ci = load ptr, ptr %2, align 8, !tbaa !19, !noalias !69
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.be
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod.not, label %bb.f, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cg, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod355)
  %i.ck = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.af
  %i.cl = getelementptr [8 x i8], ptr %i.bh, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !16
  %i.cn = mul nuw nsw i64 %.01724.i.i.i.i.i.epil.init, %i.j
  %i.co = getelementptr [8 x i8], ptr %i.bi, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !16
  %i.cq = fmul double %i.cm, %i.cp
  %i.cr = fadd double %.02223.i.i.i.i.i.epil.init, %i.cq
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i.epil.preheader
  %.lcssa = phi double [ %i.cg, %.unr-lcssa ], [ %i.cr, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.cs = load ptr, ptr %2, align 8, !tbaa !19, !noalias !70
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.be ; 6 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !16
  %i.cv = fmul double %i.cu, %i.bk                ; 2 uses
  br i1 %i.av, label %.lr.ph.i.i.i.i.i64.epil.preheader, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i64
  %.01724.i.i.i.i.i65 = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i64 ], [ 1, %bb.f ] ; 4 uses
  %.02223.i.i.i.i.i66 = phi double [ %i.dm, %.lr.ph.i.i.i.i.i64 ], [ %i.cv, %bb.f ]
  %niter361 = phi i64 [ %niter361.next.1, %.lr.ph.i.i.i.i.i64 ], [ 0, %bb.f ]
  %i.cw = mul nsw i64 %.01724.i.i.i.i.i65, %i.ae
  %i.cx = getelementptr [8 x i8], ptr %i.ct, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !16
  %i.cz = mul nuw nsw i64 %.01724.i.i.i.i.i65, %i.j
  %i.da = getelementptr [8 x i8], ptr %i.bi, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !16
  %i.dc = fmul double %i.cy, %i.db
  %i.dd = fadd double %.02223.i.i.i.i.i66, %i.dc
  %i.de = add nuw nsw i64 %.01724.i.i.i.i.i65, 1  ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.ae
  %i.dg = getelementptr [8 x i8], ptr %i.ct, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !16
  %i.di = mul nuw nsw i64 %i.de, %i.j
  %i.dj = getelementptr [8 x i8], ptr %i.bi, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16
  %i.dl = fmul double %i.dh, %i.dk
  %i.dm = fadd double %i.dd, %i.dl                ; 3 uses
  %i.dn = add nuw nsw i64 %.01724.i.i.i.i.i65, 2  ; 2 uses
  %niter361.next.1 = add nuw i64 %niter361, 2     ; 2 uses
  %niter361.ncmp.1 = icmp eq i64 %niter361.next.1, %unroll_iter360
  br i1 %niter361.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i64, !llvm.loop !55

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i64
  br i1 %lcmp.mod357.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68, label %.lr.ph.i.i.i.i.i64.epil.preheader

.lr.ph.i.i.i.i.i64.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa, %bb.f
  %.01724.i.i.i.i.i65.epil.init = phi i64 [ 1, %bb.f ], [ %i.dn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i66.epil.init = phi double [ %i.cv, %bb.f ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod359)
  %i.do = mul nsw i64 %.01724.i.i.i.i.i65.epil.init, %i.ae
  %i.dp = getelementptr [8 x i8], ptr %i.ct, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !16
  %i.dr = mul nuw nsw i64 %.01724.i.i.i.i.i65.epil.init, %i.j
  %i.ds = getelementptr [8 x i8], ptr %i.bi, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !16
  %i.du = fmul double %i.dq, %i.dt
  %i.dv = fadd double %.02223.i.i.i.i.i66.epil.init, %i.du
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68: ; preds = %.lr.ph.i.i.i.i.i64.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa, %.thread, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit
  %i.dw = phi ptr [ %i.cj, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit ], [ %i.bn, %.thread ], [ %i.ct, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa ], [ %i.ct, %.lr.ph.i.i.i.i.i64.epil.preheader ] ; 14 uses
  %.0.i.i.i287 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit ], [ %i.bl, %.thread ], [ %.lcssa, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa ], [ %.lcssa, %.lr.ph.i.i.i.i.i64.epil.preheader ]
  %.0.i.i.i63 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit ], [ %i.bp, %.thread ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68.loopexit.unr-lcssa ], [ %i.dv, %.lr.ph.i.i.i.i.i64.epil.preheader ]
  %i.dx = ptrtoaddr ptr %i.dw to i64              ; 2 uses
  %i.dy = tail call double @atan2(double noundef %.0.i.i.i287, double noundef %.0.i.i.i63) #12 ; 3 uses
  %i.dz = fcmp olt double %i.dy, 0.000000e+00
  %i.ea = fdiv double %i.dy, f0xC01921FB54442D18
  %i.eb = tail call double @llvm.ceil.f64(double %i.ea)
  %i.ec = select i1 %i.dz, double %i.eb, double 0.000000e+00
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double f0x401921FB54442D18, double %i.dy)
  %i.ee = tail call double @fmod(double noundef %i.ed, double noundef f0x401921FB54442D18) #12
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.be ; 7 uses
  br i1 %i.x, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68
  %i.eg = load i64, ptr %i.y, align 8, !tbaa !20  ; 6 uses
  %i.eh = load double, ptr %i.bh, align 8, !tbaa !16
  %i.ei = load double, ptr %i.ef, align 8, !tbaa !16 ; 3 uses
  %i.ej = fmul double %i.eh, %i.ei                ; 3 uses
  br i1 %i.z, label %.lr.ph.i.i.i.i.i78.preheader, label %.thread292

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %bb.g
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i78.epil.preheader, label %.lr.ph.i.i.i.i.i78

.thread292:                                       ; preds = %bb.g
  %i.ek = load double, ptr %i.dw, align 8, !tbaa !16
  %i.el = fmul double %i.ek, %i.ei
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader, %.lr.ph.i.i.i.i.i78
  %.01724.i.i.i.i.i79 = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i78 ], [ 1, %.lr.ph.i.i.i.i.i78.preheader ] ; 4 uses
  %.02223.i.i.i.i.i80 = phi double [ %i.fc, %.lr.ph.i.i.i.i.i78 ], [ %i.ej, %.lr.ph.i.i.i.i.i78.preheader ]
  %niter368 = phi i64 [ %niter368.next.1, %.lr.ph.i.i.i.i.i78 ], [ 0, %.lr.ph.i.i.i.i.i78.preheader ]
  %i.em = mul nsw i64 %.01724.i.i.i.i.i79, %i.af
  %i.en = getelementptr [8 x i8], ptr %i.bh, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !16
  %i.ep = mul nsw i64 %.01724.i.i.i.i.i79, %i.eg
  %i.eq = getelementptr [8 x i8], ptr %i.ef, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !16
  %i.es = fmul double %i.eo, %i.er
  %i.et = fadd double %.02223.i.i.i.i.i80, %i.es
  %i.eu = add nuw nsw i64 %.01724.i.i.i.i.i79, 1  ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %i.af
  %i.ew = getelementptr [8 x i8], ptr %i.bh, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !16
  %i.ey = mul nsw i64 %i.eu, %i.eg
  %i.ez = getelementptr [8 x i8], ptr %i.ef, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !16
  %i.fb = fmul double %i.ex, %i.fa
  %i.fc = fadd double %i.et, %i.fb                ; 3 uses
  %i.fd = add nuw nsw i64 %.01724.i.i.i.i.i79, 2  ; 2 uses
  %niter368.next.1 = add nuw i64 %niter368, 2     ; 2 uses
  %niter368.ncmp.1 = icmp eq i64 %niter368.next.1, %unroll_iter367
  br i1 %niter368.ncmp.1, label %.unr-lcssa362, label %.lr.ph.i.i.i.i.i78, !llvm.loop !55

.unr-lcssa362:                                    ; preds = %.lr.ph.i.i.i.i.i78
  br i1 %lcmp.mod364.not, label %bb.h, label %.lr.ph.i.i.i.i.i78.epil.preheader

.lr.ph.i.i.i.i.i78.epil.preheader:                ; preds = %.unr-lcssa362, %.lr.ph.i.i.i.i.i78.preheader
  %.01724.i.i.i.i.i79.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fd, %.unr-lcssa362 ] ; 2 uses
  %.02223.i.i.i.i.i80.epil.init = phi double [ %i.ej, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fc, %.unr-lcssa362 ]
  tail call void @llvm.assume(i1 %lcmp.mod366)
  %i.fe = mul nsw i64 %.01724.i.i.i.i.i79.epil.init, %i.af
  %i.ff = getelementptr [8 x i8], ptr %i.bh, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !16
  %i.fh = mul nsw i64 %.01724.i.i.i.i.i79.epil.init, %i.eg
  %i.fi = getelementptr [8 x i8], ptr %i.ef, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !16
  %i.fk = fmul double %i.fg, %i.fj
  %i.fl = fadd double %.02223.i.i.i.i.i80.epil.init, %i.fk
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa362, %.lr.ph.i.i.i.i.i78.epil.preheader
  %.lcssa352 = phi double [ %i.fc, %.unr-lcssa362 ], [ %i.fl, %.lr.ph.i.i.i.i.i78.epil.preheader ] ; 2 uses
  %i.fm = load double, ptr %i.dw, align 8, !tbaa !16
  %i.fn = fmul double %i.fm, %i.ei                ; 2 uses
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i92.epil.preheader, label %.lr.ph.i.i.i.i.i92

.lr.ph.i.i.i.i.i92:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i92
  %.01724.i.i.i.i.i93 = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i92 ], [ 1, %bb.h ] ; 4 uses
  %.02223.i.i.i.i.i94 = phi double [ %i.ge, %.lr.ph.i.i.i.i.i92 ], [ %i.fn, %bb.h ]
  %niter375 = phi i64 [ %niter375.next.1, %.lr.ph.i.i.i.i.i92 ], [ 0, %bb.h ]
  %i.fo = mul nsw i64 %.01724.i.i.i.i.i93, %i.ae
  %i.fp = getelementptr [8 x i8], ptr %i.dw, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !16
  %i.fr = mul nsw i64 %.01724.i.i.i.i.i93, %i.eg
  %i.fs = getelementptr [8 x i8], ptr %i.ef, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !16
  %i.fu = fmul double %i.fq, %i.ft
  %i.fv = fadd double %.02223.i.i.i.i.i94, %i.fu
  %i.fw = add nuw nsw i64 %.01724.i.i.i.i.i93, 1  ; 2 uses
  %i.fx = mul nsw i64 %i.fw, %i.ae
  %i.fy = getelementptr [8 x i8], ptr %i.dw, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !16
  %i.ga = mul nsw i64 %i.fw, %i.eg
  %i.gb = getelementptr [8 x i8], ptr %i.ef, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !16
  %i.gd = fmul double %i.fz, %i.gc
  %i.ge = fadd double %i.fv, %i.gd                ; 3 uses
  %i.gf = add nuw nsw i64 %.01724.i.i.i.i.i93, 2  ; 2 uses
  %niter375.next.1 = add nuw i64 %niter375, 2     ; 2 uses
  %niter375.ncmp.1 = icmp eq i64 %niter375.next.1, %unroll_iter374
  br i1 %niter375.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i92, !llvm.loop !55

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i92
  br i1 %lcmp.mod371.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96, label %.lr.ph.i.i.i.i.i92.epil.preheader

.lr.ph.i.i.i.i.i92.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa, %bb.h
  %.01724.i.i.i.i.i93.epil.init = phi i64 [ 1, %bb.h ], [ %i.gf, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i94.epil.init = phi double [ %i.fn, %bb.h ], [ %i.ge, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod373)
  %i.gg = mul nsw i64 %.01724.i.i.i.i.i93.epil.init, %i.ae
  %i.gh = getelementptr [8 x i8], ptr %i.dw, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !16
  %i.gj = mul nsw i64 %.01724.i.i.i.i.i93.epil.init, %i.eg
  %i.gk = getelementptr [8 x i8], ptr %i.ef, i64 %i.gj
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !16
  %i.gm = fmul double %i.gi, %i.gl
  %i.gn = fadd double %.02223.i.i.i.i.i94.epil.init, %i.gm
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96: ; preds = %.lr.ph.i.i.i.i.i92.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68, %.thread292
  %.0.i.i.i77291 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68 ], [ %i.ej, %.thread292 ], [ %.lcssa352, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa ], [ %.lcssa352, %.lr.ph.i.i.i.i.i92.epil.preheader ]
  %.0.i.i.i91 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit68 ], [ %i.el, %.thread292 ], [ %i.ge, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96.loopexit.unr-lcssa ], [ %i.gn, %.lr.ph.i.i.i.i.i92.epil.preheader ]
  %i.go = tail call double @atan2(double noundef %.0.i.i.i77291, double noundef %.0.i.i.i91) #12 ; 3 uses
  %i.gp = fcmp olt double %i.go, 0.000000e+00
  %i.gq = fdiv double %i.go, f0xC01921FB54442D18
  %i.gr = tail call double @llvm.ceil.f64(double %i.gq)
  %i.gs = select i1 %i.gp, double %i.gr, double 0.000000e+00
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gs, double f0x401921FB54442D18, double %i.go)
  %i.gu = tail call double @fmod(double noundef %i.gt, double noundef f0x401921FB54442D18) #12
  %i.gv = fadd double %i.ee, %i.gu
  %i.gw = fmul double %i.gv, 5.000000e-01         ; 3 uses
  %i.gx = fcmp olt double %i.gw, 0.000000e+00
  %i.gy = fdiv double %i.gw, f0xC01921FB54442D18
  %i.gz = tail call double @llvm.ceil.f64(double %i.gy)
  %i.ha = select i1 %i.gx, double %i.gz, double 0.000000e+00
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double f0x401921FB54442D18, double %i.gw)
  %i.hc = tail call double @fmod(double noundef %i.hb, double noundef f0x401921FB54442D18) #12 ; 3 uses
  %i.hd = fadd double %i.hc, f0x3FF921FB54442D18  ; 3 uses
  %i.he = fcmp olt double %i.hd, 0.000000e+00
  %i.hf = fdiv double %i.hd, f0xC01921FB54442D18
  %i.hg = tail call double @llvm.ceil.f64(double %i.hf)
  %i.hh = select i1 %i.he, double %i.hg, double 0.000000e+00
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hh, double f0x401921FB54442D18, double %i.hd)
  %i.hj = tail call double @fmod(double noundef %i.hi, double noundef f0x401921FB54442D18) #12 ; 2 uses
  %i.hk = tail call double @cos(double noundef %i.hc) #12 ; 4 uses
  %i.hl = tail call double @sin(double noundef %i.hc) #12 ; 4 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.be ; 4 uses
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96
  %brmerge = select i1 %min.iters.check332, i1 true, i1 %i.az
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hn = add i64 %i.bf, %i.ab
  %i.ho = sub i64 %i.dx, %i.hn
  %diff.check328 = icmp ugt i64 %i.ho, -32
  %conflict.rdx330 = or i1 %diff.check328, %diff.check329
  br i1 %conflict.rdx330, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck327
  %broadcast.splatinsert335 = insertelement <2 x double> poison, double %i.hk, i64 0
  %broadcast.splat336 = shufflevector <2 x double> %broadcast.splatinsert335, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert337 = insertelement <2 x double> poison, double %i.hl, i64 0
  %broadcast.splat338 = shufflevector <2 x double> %broadcast.splatinsert337, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph333
  %index340 = phi i64 [ 0, %vector.ph333 ], [ %index.next345, %vector.body339 ] ; 4 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %index340 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %index340 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load341 = load <2 x double>, ptr %i.hq, align 8, !tbaa !16
  %wide.load342 = load <2 x double>, ptr %i.hr, align 8, !tbaa !16
  %i.hs = fmul <2 x double> %broadcast.splat336, %wide.load341
  %i.ht = fmul <2 x double> %broadcast.splat336, %wide.load342
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %index340 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load343 = load <2 x double>, ptr %i.hu, align 8, !tbaa !16
  %wide.load344 = load <2 x double>, ptr %i.hv, align 8, !tbaa !16
  %i.hw = fmul <2 x double> %broadcast.splat338, %wide.load343
  %i.hx = fmul <2 x double> %broadcast.splat338, %wide.load344
  %i.hy = fadd <2 x double> %i.hs, %i.hw
  %i.hz = fadd <2 x double> %i.ht, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <2 x double> %i.hy, ptr %i.hp, align 8, !tbaa !16
  store <2 x double> %i.hz, ptr %i.ia, align 8, !tbaa !16
  %index.next345 = add nuw i64 %index340, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next345, %n.vec334
  br i1 %i.ib, label %middle.block346, label %vector.body339, !llvm.loop !58

middle.block346:                                  ; preds = %vector.body339
  br i1 %cmp.n347, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %vector.memcheck327, %middle.block346
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck327 ], [ %n.vec334, %middle.block346 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod377.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350
  %i.ic = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ah
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ic
  %i.ie = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ae
  %i.if = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !16
  %i.ih = fmul double %i.hk, %i.ig
  %i.ii = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.af
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !16
  %i.il = fmul double %i.hl, %i.ik
  %i.im = fadd double %i.ih, %i.il
  store double %i.im, ptr %i.id, align 8, !tbaa !16
  %i.in = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader350 ], [ %i.in, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.io = icmp eq i64 %i.ad, %.neg
  br i1 %i.io, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ip = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ah
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ip
  %i.ir = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ae
  %i.is = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !16
  %i.iu = fmul double %i.hk, %i.it
  %i.iv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.af
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !16
  %i.iy = fmul double %i.hl, %i.ix
  %i.iz = fadd double %i.iu, %i.iy
  store double %i.iz, ptr %i.iq, align 8, !tbaa !16
  %i.ja = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.jb = mul nsw i64 %i.ja, %i.ah
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.jb
  %i.jd = mul nsw i64 %i.ja, %i.ae
  %i.je = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jd
  %i.jf = load double, ptr %i.je, align 8, !tbaa !16
  %i.jg = fmul double %i.hk, %i.jf
  %i.jh = mul nsw i64 %i.ja, %i.af
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !16
  %i.jk = fmul double %i.hl, %i.jj
  %i.jl = fadd double %i.jg, %i.jk
  store double %i.jl, ptr %i.jc, align 8, !tbaa !16
  %i.jm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.jm, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !59

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block346, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit96
  %i.jn = tail call double @cos(double noundef %i.hj) #12 ; 4 uses
  %i.jo = tail call double @sin(double noundef %i.hj) #12 ; 4 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.be ; 4 uses
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103

.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader:          ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %brmerge389 = select i1 %min.iters.check, i1 true, i1 %i.bc
  br i1 %brmerge389, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader
  %i.jq = add i64 %i.bg, %i.ak
  %i.jr = sub i64 %i.dx, %i.jq
  %diff.check = icmp ugt i64 %i.jr, -32
  %conflict.rdx = or i1 %diff.check, %diff.check317
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert318 = insertelement <2 x double> poison, double %i.jo, i64 0
  %broadcast.splat319 = shufflevector <2 x double> %broadcast.splatinsert318, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %index ; 2 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load = load <2 x double>, ptr %i.jt, align 8, !tbaa !16
  %wide.load320 = load <2 x double>, ptr %i.ju, align 8, !tbaa !16
  %i.jv = fmul <2 x double> %broadcast.splat, %wide.load
  %i.jw = fmul <2 x double> %broadcast.splat, %wide.load320
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %wide.load321 = load <2 x double>, ptr %i.jx, align 8, !tbaa !16
  %wide.load322 = load <2 x double>, ptr %i.jy, align 8, !tbaa !16
  %i.jz = fmul <2 x double> %broadcast.splat319, %wide.load321
  %i.ka = fmul <2 x double> %broadcast.splat319, %wide.load322
  %i.kb = fadd <2 x double> %i.jv, %i.jz
  %i.kc = fadd <2 x double> %i.jw, %i.ka
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <2 x double> %i.kb, ptr %i.js, align 8, !tbaa !16
  store <2 x double> %i.kc, ptr %i.kd, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349

.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i101.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader ] ; 6 uses
  %.neg380 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i101.ph, 1
  br i1 %lcmp.mod379.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349
  %i.kf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101.ph, %i.ao
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.kf
  %i.kh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101.ph, %i.ae
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.kh
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !16
  %i.kk = fmul double %i.jn, %i.kj
  %i.kl = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101.ph, %i.af
  %i.km = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !16
  %i.ko = fmul double %i.jo, %i.kn
  %i.kp = fadd double %i.kk, %i.ko
  store double %i.kp, ptr %i.kg, align 8, !tbaa !16
  %i.kq = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i101.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349
  %.05.i.i.i.i.i.i.i.i.i.i101.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i101.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.preheader349 ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol ]
  %i.kr = icmp eq i64 %i.am, %.neg380
  br i1 %i.kr, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i.i.i.i.i100:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i100
  %.05.i.i.i.i.i.i.i.i.i.i101 = phi i64 [ %i.lp, %.lr.ph.i.i.i.i.i.i.i.i.i.i100 ], [ %.05.i.i.i.i.i.i.i.i.i.i101.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol.loopexit ] ; 5 uses
  %i.ks = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101, %i.ao
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ks
  %i.ku = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101, %i.ae
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !16
  %i.kx = fmul double %i.jn, %i.kw
  %i.ky = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101, %i.af
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !16
  %i.lb = fmul double %i.jo, %i.la
  %i.lc = fadd double %i.kx, %i.lb
  store double %i.lc, ptr %i.kt, align 8, !tbaa !16
  %i.ld = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101, 1 ; 3 uses
  %i.le = mul nsw i64 %i.ld, %i.ao
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.le
  %i.lg = mul nsw i64 %i.ld, %i.ae
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !16
  %i.lj = fmul double %i.jn, %i.li
  %i.lk = mul nsw i64 %i.ld, %i.af
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.lk
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !16
  %i.ln = fmul double %i.jo, %i.lm
  %i.lo = fadd double %i.lj, %i.ln
  store double %i.lo, ptr %i.lf, align 8, !tbaa !16
  %i.lp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i101, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i102.1 = icmp eq i64 %i.lp, %i.am
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i102.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103, label %.lr.ph.i.i.i.i.i.i.i.i.i.i100, !llvm.loop !61

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit103: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i100, %middle.block, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.lq = add i32 %.0298, 1                       ; 2 uses
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = icmp samesign ugt i64 %i.j, %i.lr
  br i1 %i.ls, label %bb.d, label %._crit_edge, !llvm.loop !62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.j) #12
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #14 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !13
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !20
  store i64 %3, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!"double", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!19 = !{!18, !10, i64 0}
!20 = !{!18, !11, i64 8}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!18, !11, i64 16}
!24 = distinct !{!24, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!25 = distinct !{!25, !24, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!26 = distinct !{!26, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!27 = distinct !{!27, !26, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!28 = distinct !{!28, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!29 = distinct !{!29, !28, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!30 = distinct !{!30, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!31 = distinct !{!31, !30, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!33 = distinct !{!33, !32, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!35 = distinct !{!35, !34, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!36 = distinct !{!36, !17}
!37 = !{!25}
!38 = !{!27}
!39 = !{!29}
!40 = !{!31}
!41 = !{!33}
!42 = !{!35}
!43 = distinct !{!43, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!44 = distinct !{!44, !43, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!45 = distinct !{!45, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!46 = distinct !{!46, !45, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!47 = distinct !{!47, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!48 = distinct !{!48, !47, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!50 = distinct !{!50, !49, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!51 = distinct !{!51, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!52 = distinct !{!52, !51, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!53 = distinct !{!53, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!54 = distinct !{!54, !53, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0:thread:thread"}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !53, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!57 = distinct !{!57, !53, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0:thread"}
!58 = distinct !{!58, !17, !71, !72}
!59 = distinct !{!59, !17, !71}
!60 = distinct !{!60, !17, !71, !72}
!61 = distinct !{!61, !17, !71}
!62 = distinct !{!62, !17}
!63 = !{!44}
!64 = !{!46}
!65 = !{!48}
!66 = !{!50}
!67 = !{!52}
!68 = !{!54}
!69 = !{!56}
!70 = !{!57}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
