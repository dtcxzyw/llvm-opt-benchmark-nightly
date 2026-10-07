Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_compute_autocorrelation:bb.a
  %i.agw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agx = getelementptr i8, ptr %i.agw, i64 -44
  %i.agy = load <2 x float>, ptr %i.agx, align 4, !tbaa !10
  %i.agz = fpext <2 x float> %i.agy to <2 x double>
  %i.aha = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afy, <2 x double> %i.agz, <2 x double> %i.afq) ; 2 uses
  %i.ahb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -52
  %i.ahd = load <2 x float>, ptr %i.ahc, align 4, !tbaa !10
  %i.ahe = shufflevector <2 x float> %i.ahd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahf = fpext <2 x float> %i.ahe to <2 x double>
  %i.ahg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afy, <2 x double> %i.ahf, <2 x double> %i.afr) ; 2 uses
  %i.ahh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -60
  %i.ahj = load <2 x float>, ptr %i.ahi, align 4, !tbaa !10
  %i.ahk = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahl = fpext <2 x float> %i.ahk to <2 x double>
  %i.ahm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afy, <2 x double> %i.ahl, <2 x double> %i.afs) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit289, label %.preheader162, !llvm.loop !41

.loopexit.loopexit287:                            ; preds = %.preheader150, %middle.block479
  %i.ahn = phi <2 x double> [ %i.hg, %middle.block479 ], [ %i.hw, %.preheader150 ]
  %i.aho = phi <2 x double> [ %i.hi, %middle.block479 ], [ %i.ic, %.preheader150 ]
  %i.ahp = phi <2 x double> [ %i.hk, %middle.block479 ], [ %i.ii, %.preheader150 ]
  %i.ahq = phi <2 x double> [ %i.hm, %middle.block479 ], [ %i.io, %.preheader150 ]
  %i.ahr = shufflevector <2 x double> %i.ahn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahr, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.aho, ptr %i.cr, align 8, !tbaa !17
  store <2 x double> %i.ahp, ptr %i.cu, align 8, !tbaa !17
  store <2 x double> %i.ahq, ptr %i.cx, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit288:                            ; preds = %.preheader156, %middle.block441
  %i.ahs = phi <2 x double> [ %i.zn, %middle.block441 ], [ %i.aaj, %.preheader156 ]
  %i.aht = phi <2 x double> [ %i.zp, %middle.block441 ], [ %i.aap, %.preheader156 ]
  %i.ahu = phi <2 x double> [ %i.zr, %middle.block441 ], [ %i.aau, %.preheader156 ]
  %i.ahv = phi <2 x double> [ %i.zt, %middle.block441 ], [ %i.aaz, %.preheader156 ]
  %i.ahw = phi <2 x double> [ %i.zv, %middle.block441 ], [ %i.abf, %.preheader156 ]
  %i.ahx = phi <2 x double> [ %i.zx, %middle.block441 ], [ %i.abl, %.preheader156 ]
  %i.ahy = shufflevector <2 x double> %i.ahs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahy, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.aht, ptr %i.it, align 8, !tbaa !17
  %i.ahz = shufflevector <2 x double> %i.ahu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahz, ptr %i.rz, align 8, !tbaa !17
  %i.aia = shufflevector <2 x double> %i.ahv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aia, ptr %i.sc, align 8, !tbaa !17
  store <2 x double> %i.ahw, ptr %i.sj, align 8, !tbaa !17
  store <2 x double> %i.ahx, ptr %i.sm, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit289:                            ; preds = %.preheader162, %middle.block
  %i.aib = phi <2 x double> [ %i.aew, %middle.block ], [ %i.afz, %.preheader162 ]
  %i.aic = phi <2 x double> [ %i.aey, %middle.block ], [ %i.agf, %.preheader162 ]
  %i.aid = phi <2 x double> [ %i.afa, %middle.block ], [ %i.agk, %.preheader162 ]
  %i.aie = phi <2 x double> [ %i.afc, %middle.block ], [ %i.agq, %.preheader162 ]
  %i.aif = phi <2 x double> [ %i.afe, %middle.block ], [ %i.agv, %.preheader162 ]
  %i.aig = phi <2 x double> [ %i.afg, %middle.block ], [ %i.aha, %.preheader162 ]
  %i.aih = phi <2 x double> [ %i.afi, %middle.block ], [ %i.ahg, %.preheader162 ]
  %i.aii = phi <2 x double> [ %i.afk, %middle.block ], [ %i.ahm, %.preheader162 ]
  store <2 x double> %i.aib, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.aic, ptr %i.it, align 8, !tbaa !17
  %i.aij = shufflevector <2 x double> %i.aid, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aij, ptr %i.iw, align 8, !tbaa !17
  store <2 x double> %i.aie, ptr %i.iz, align 8, !tbaa !17
  %i.aik = shufflevector <2 x double> %i.aif, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aik, ptr %i.je, align 8, !tbaa !17
  %i.ail = shufflevector <2 x double> %i.aig, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ail, ptr %i.jh, align 8, !tbaa !17
  store <2 x double> %i.aih, ptr %i.jm, align 8, !tbaa !17
  store <2 x double> %i.aii, ptr %i.jp, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit289, %.loopexit.loopexit288, %.loopexit.loopexit287, %.preheader167.preheader, %.preheader161.preheader, %.preheader155.preheader, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_lp_coefficients(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x double], align 16           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %wide.trip.count81 = zext i32 %i.b to i64
  %exitcond82.not84 = icmp eq i32 %i.b, 0
  br i1 %exitcond82.not84, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %.loopexit107
  %indvars.iv.next76 = add i32 %indvars.iv7586, 1
  %i.d = trunc nuw i64 %indvars.iv.next79 to i32  ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %bb.c, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph89, %bb.b
  %i.f = phi i32 [ 0, %.lr.ph89 ], [ %i.e, %bb.b ] ; 3 uses
  %i.g = phi i32 [ 0, %.lr.ph89 ], [ %i.d, %bb.b ]
  %.04987 = phi double [ %i.c, %.lr.ph89 ], [ %i.bl, %bb.b ] ; 2 uses
  %indvars.iv7586 = phi i32 [ 1, %.lr.ph89 ], [ %indvars.iv.next76, %bb.b ] ; 2 uses
  %indvars.iv7885 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next79, %bb.b ] ; 13 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv7885, 1 ; 7 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next79
  %i.i = load double, ptr %i.h, align 8, !tbaa !17
  %i.j = fneg reassoc nsz arcp double %i.i        ; 3 uses
  %.not62 = icmp eq i64 %indvars.iv7885, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check92 = icmp samesign ult i64 %indvars.iv7885, 4
  br i1 %min.iters.check92, label %.lr.ph.preheader108, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader
  %n.vec94 = and i64 %indvars.iv7885, 9223372036854775804 ; 3 uses
  %i.k = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.j, i64 0
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body95 ] ; 3 uses
  %vec.phi = phi <2 x double> [ %i.k, %vector.ph93 ], [ %i.t, %vector.body95 ]
  %vec.phi97 = phi <2 x double> [ zeroinitializer, %vector.ph93 ], [ %i.u, %vector.body95 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load98 = load <2 x double>, ptr %i.l, align 16, !tbaa !17
  %wide.load99 = load <2 x double>, ptr %i.m, align 16, !tbaa !17
  %i.n = sub nuw nsw i64 %indvars.iv7885, %index96
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -24
  %wide.load100 = load <2 x double>, ptr %i.p, align 8, !tbaa !17
  %wide.load101 = load <2 x double>, ptr %i.q, align 8, !tbaa !17
  %reverse = shufflevector <2 x double> %wide.load100, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse102 = shufflevector <2 x double> %wide.load101, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = fneg reassoc nsz arcp <2 x double> %wide.load98
  %i.s = fneg reassoc nsz arcp <2 x double> %wide.load99
  %i.t = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %reverse, <2 x double> %vec.phi) ; 2 uses
  %i.u = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %reverse102, <2 x double> %vec.phi97) ; 2 uses
  %index.next103 = add nuw i64 %index96, 4        ; 2 uses
  %i.v = icmp eq i64 %index.next103, %n.vec94
  br i1 %i.v, label %middle.block104, label %vector.body95, !llvm.loop !43

middle.block104:                                  ; preds = %vector.body95
  %bin.rdx = fadd reassoc nsz arcp <2 x double> %i.u, %i.t
  %i.w = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %cmp.n105 = icmp eq i64 %indvars.iv7885, %n.vec94
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %.lr.ph.preheader, %middle.block104
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec94, %middle.block104 ]
  %.05055.ph = phi double [ %i.j, %.lr.ph.preheader ], [ %i.w, %middle.block104 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader108, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader108 ] ; 3 uses
  %.05055 = phi double [ %i.ad, %.lr.ph ], [ %.05055.ph, %.lr.ph.preheader108 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !17
  %i.z = sub nuw nsw i64 %indvars.iv7885, %indvars.iv
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !17
  %i.ac = fneg reassoc nsz arcp double %i.y
  %i.ad = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ac, double %i.ab, double %.05055) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv7885
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block104, %bb.c
  %.050.lcssa = phi double [ %i.j, %bb.c ], [ %i.w, %middle.block104 ], [ %i.ad, %.lr.ph ]
  %i.ae = fdiv reassoc nsz arcp double %.050.lcssa, %.04987 ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv7885
  store double %i.ae, ptr %i.af, align 8, !tbaa !17
  %.not63 = icmp eq i32 %i.f, 0
  br i1 %.not63, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %wide.trip.count70 = zext nneg i32 %i.f to i64
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv67 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next68, %.lr.ph58 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv67 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = xor i64 %indvars.iv67, -1
  %i.aj = add nsw i64 %indvars.iv7885, %i.ai
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 3 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ae, double %i.am, double %i.ah)
  store double %i.an, ptr %i.ag, align 8, !tbaa !17
  %i.ao = load double, ptr %i.al, align 8, !tbaa !17
  %i.ap = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ae, double %i.ah, double %i.ao)
  store double %i.ap, ptr %i.al, align 8, !tbaa !17
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !45

._crit_edge59:                                    ; preds = %.lr.ph58, %._crit_edge
  %i.aq = and i32 %i.g, 1
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge59
  %4 = zext nneg i32 %i.f to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %4 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17 ; 2 uses
  %i.at = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.as, double %i.ae, double %i.as)
  store double %i.at, ptr %i.ar, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge59
  %i.au = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %indvars.iv7885 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv7885, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %indvars.iv.next79, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x double>, ptr %i.av, align 16, !tbaa !17
  %wide.load90 = load <2 x double>, ptr %i.aw, align 16, !tbaa !17
  %i.ax = fptrunc reassoc nsz arcp <2 x double> %wide.load to <2 x float>
  %i.ay = fptrunc reassoc nsz arcp <2 x double> %wide.load90 to <2 x float>
  %i.az = fneg reassoc nsz arcp <2 x float> %i.ax
  %i.ba = fneg reassoc nsz arcp <2 x float> %i.ay
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store <2 x float> %i.az, ptr %i.bb, align 4, !tbaa !10
  store <2 x float> %i.ba, ptr %i.bc, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next79, %n.vec
  br i1 %cmp.n, label %.loopexit107, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv72.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv72
  %i.bf = load double, ptr %i.be, align 8, !tbaa !17
  %i.bg = fptrunc reassoc nsz arcp double %i.bf to float
  %i.bh = fneg reassoc nsz arcp float %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv72
  store float %i.bh, ptr %i.bi, align 4, !tbaa !10
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32
  %exitcond77.not = icmp eq i32 %indvars.iv7586, %lftr.wideiv
  br i1 %exitcond77.not, label %.loopexit107, label %scalar.ph, !llvm.loop !47

.loopexit107:                                     ; preds = %scalar.ph, %middle.block
  %i.bj = fneg reassoc nsz arcp double %i.ae
  %i.bk = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bj, double %i.ae, double 1.000000e+00)
  %i.bl = fmul reassoc nsz arcp double %i.bk, %.04987 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv7885
  store double %i.bl, ptr %i.bm, align 8, !tbaa !17
  %i.bn = fcmp reassoc nsz arcp oeq double %i.bl, 0.000000e+00
  br i1 %i.bn, label %bb.f, label %bb.b, !llvm.loop !42

bb.f:                                             ; preds = %.loopexit107
  %i.bo = trunc nuw i64 %indvars.iv.next79 to i32
  store i32 %i.bo, ptr %1, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 3) i32 @FLAC__lpc_quantize_coefficients(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = add i32 %2, -1
  %i.c = shl nuw i32 1, %i.b                      ; 4 uses
  %i.d = sub nsw i32 0, %i.c                      ; 2 uses
  %i.e = add nsw i32 %i.c, -1                     ; 2 uses
  %.not97 = icmp eq i32 %1, 0
  br i1 %.not97, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.06988 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.h)
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = fcmp reassoc nsz arcp olt double %.06988, %i.j
  %.1 = select nsz i1 %i.k, double %i.j, double %.06988 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.n)
  %i.p = fpext float %i.o to double               ; 2 uses
  %i.q = fcmp reassoc nsz arcp olt double %.1, %i.p
  %.1.1 = select nsz i1 %i.q, double %i.p, double %.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !48

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.06988.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.s)
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = fcmp reassoc nsz arcp olt double %.06988.epil.init, %i.u
  %.1.epil = select nsz i1 %i.v, double %i.u, double %.06988.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.1.lcssa = phi double [ %.1.1, %._crit_edge.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.w = fcmp reassoc nsz arcp ugt double %.1.lcssa, 0.000000e+00
  br i1 %i.w, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.x = load i32, ptr @FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN, align 4, !tbaa !8
  %i.y = add i32 %i.x, -1
  %notmask = shl nsw i32 -1, %i.y                 ; 2 uses
  %i.z = xor i32 %notmask, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.aa = call reassoc nsz arcp double @frexp(double noundef %.1.lcssa, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add i32 %2, %i.ac                       ; 5 uses
  store i32 %i.ad, ptr %4, align 4, !tbaa !8
  %i.ae = icmp sgt i32 %i.ad, %i.z
  br i1 %i.ae, label %.critedge.thread, label %bb.c

.critedge.thread:                                 ; preds = %bb.b
  store i32 %i.z, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.lr.ph96.preheader

bb.c:                                             ; preds = %bb.b
  %i.af = icmp slt i32 %i.ad, %notmask
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.af, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.ag = icmp sgt i32 %i.ad, -1
  br i1 %i.ag, label %.lr.ph96.preheader, label %.lr.ph92

.lr.ph96.preheader:                               ; preds = %.critedge, %.critedge.thread
  %wide.trip.count109 = zext i32 %1 to i64
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv106 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next107, %.lr.ph96 ] ; 3 uses
  %.06795 = phi double [ 0.000000e+00, %.lr.ph96.preheader ], [ %i.as, %.lr.ph96 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv106
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = load i32, ptr %4, align 4, !tbaa !8
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = sitofp reassoc nsz arcp i32 %i.ak to float
  %i.am = fmul reassoc nsz arcp float %i.ai, %i.al
  %i.an = fpext reassoc nsz arcp float %i.am to double
  %i.ao = fadd reassoc nsz arcp double %.06795, %i.an ; 2 uses
  %i.ap = tail call i64 @lround(double noundef %i.ao) #14
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %.not85 = icmp sgt i32 %i.c, %i.aq
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.d)
  %.066 = select i1 %.not85, i32 %spec.select, i32 %i.e ; 2 uses
  %i.ar = sitofp reassoc nsz arcp i32 %.066 to double
  %i.as = fsub reassoc nsz arcp double %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv106
  store i32 %.066, ptr %i.at, align 4, !tbaa !8
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph96, !llvm.loop !49

.lr.ph92:                                         ; preds = %.critedge
  %i.au = sub nsw i32 0, %i.ad
  %i.av = shl nuw i32 1, %i.au
  %i.aw = sitofp reassoc nsz arcp i32 %i.av to float
  %wide.trip.count104 = zext i32 %1 to i64
  %i.ax = fdiv reassoc nsz arcp float 1.000000e+00, %i.aw
  br label %bb.d
end_hunk_0
