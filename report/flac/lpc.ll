Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_compute_autocorrelation:bb.a
  %i.adn = fpext reassoc nsz arcp <2 x float> %wide.load391 to <2 x double>
  %i.ado = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acd, <2 x double> %i.adn, <2 x double> %vec.phi371) ; 2 uses
  %i.adp = getelementptr i8, ptr %i.acb, i64 12
  %wide.load392 = load <2 x float>, ptr %i.adp, align 4, !tbaa !10
  %i.adq = fpext reassoc nsz arcp <2 x float> %wide.load392 to <2 x double>
  %i.adr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acd, <2 x double> %i.adq, <2 x double> %vec.phi370) ; 2 uses
  %i.ads = getelementptr i8, ptr %i.acb, i64 8
  %wide.load393 = load <2 x float>, ptr %i.ads, align 4, !tbaa !10
  %i.adt = fpext reassoc nsz arcp <2 x float> %wide.load393 to <2 x double>
  %i.adu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acd, <2 x double> %i.adt, <2 x double> %vec.phi365) ; 2 uses
  %i.adv = getelementptr i8, ptr %i.acb, i64 4
  %wide.load394 = load <2 x float>, ptr %i.adv, align 4, !tbaa !10
  %i.adw = fpext reassoc nsz arcp <2 x float> %wide.load394 to <2 x double>
  %i.adx = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acd, <2 x double> %i.adw, <2 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ady = icmp eq i64 %index.next, %n.vec
  br i1 %i.ady, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %i.adz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adx)
  %i.aea = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adu)
  %i.aeb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acn)
  %i.aec = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ack)
  %i.aed = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ach)
  %i.aee = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ace)
  %i.aef = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adr)
  %i.aeg = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.ado)
  %i.aeh = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adl)
  %i.aei = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adi)
  %i.aej = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adf)
  %i.aek = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.adc)
  %i.ael = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acz)
  %i.aem = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acw)
  %i.aen = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.act)
  %i.aeo = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.acq)
  %cmp.n = icmp eq i64 %i.abj, %n.vec
  %i.aep = insertelement <2 x double> poison, double %i.aee, i64 0
  %i.aeq = insertelement <2 x double> %i.aep, double %i.aed, i64 1 ; 2 uses
  %i.aer = insertelement <2 x double> poison, double %i.aec, i64 0
  %i.aes = insertelement <2 x double> %i.aer, double %i.aeb, i64 1 ; 2 uses
  %i.aet = insertelement <2 x double> poison, double %i.aen, i64 0
  %i.aeu = insertelement <2 x double> %i.aet, double %i.aeo, i64 1 ; 2 uses
  %i.aev = insertelement <2 x double> poison, double %i.aem, i64 0
  %i.aew = insertelement <2 x double> %i.aev, double %i.ael, i64 1 ; 2 uses
  %i.aex = insertelement <2 x double> poison, double %i.aej, i64 0
  %i.aey = insertelement <2 x double> %i.aex, double %i.aek, i64 1 ; 2 uses
  %i.aez = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.afa = insertelement <2 x double> %i.aez, double %i.aei, i64 1 ; 2 uses
  %i.afb = insertelement <2 x double> poison, double %i.aeg, i64 0
  %i.afc = insertelement <2 x double> %i.afb, double %i.aef, i64 1 ; 2 uses
  %i.afd = insertelement <2 x double> poison, double %i.aea, i64 0
  %i.afe = insertelement <2 x double> %i.afd, double %i.adz, i64 1 ; 2 uses
  br i1 %cmp.n, label %.loopexit.loopexit289, label %.preheader162.preheader563

.preheader162.preheader563:                       ; preds = %.preheader162.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 16, %.preheader162.preheader ], [ %i.abk, %middle.block ]
  %.ph564 = phi <2 x double> [ %i.abg, %.preheader162.preheader ], [ %i.aeq, %middle.block ]
  %.ph565 = phi <2 x double> [ %i.abh, %.preheader162.preheader ], [ %i.aes, %middle.block ]
  %.ph566 = phi <2 x double> [ %i.nv, %.preheader162.preheader ], [ %i.aeu, %middle.block ]
  %.ph567 = phi <2 x double> [ %i.qd, %.preheader162.preheader ], [ %i.aew, %middle.block ]
  %.ph568 = phi <2 x double> [ %i.qe, %.preheader162.preheader ], [ %i.aey, %middle.block ]
  %.ph569 = phi <2 x double> [ %i.qv, %.preheader162.preheader ], [ %i.afa, %middle.block ]
  %.ph570 = phi <2 x double> [ %i.rj, %.preheader162.preheader ], [ %i.afc, %middle.block ]
  %.ph571 = phi <2 x double> [ %i.abi, %.preheader162.preheader ], [ %i.afe, %middle.block ]
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader563, %.preheader162
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader162 ], [ %indvars.iv.ph, %.preheader162.preheader563 ] ; 9 uses
  %i.aff = phi <2 x double> [ %i.aft, %.preheader162 ], [ %.ph564, %.preheader162.preheader563 ]
  %i.afg = phi <2 x double> [ %i.afz, %.preheader162 ], [ %.ph565, %.preheader162.preheader563 ]
  %i.afh = phi <2 x double> [ %i.age, %.preheader162 ], [ %.ph566, %.preheader162.preheader563 ]
  %i.afi = phi <2 x double> [ %i.agk, %.preheader162 ], [ %.ph567, %.preheader162.preheader563 ]
  %i.afj = phi <2 x double> [ %i.agp, %.preheader162 ], [ %.ph568, %.preheader162.preheader563 ]
  %i.afk = phi <2 x double> [ %i.agu, %.preheader162 ], [ %.ph569, %.preheader162.preheader563 ]
  %i.afl = phi <2 x double> [ %i.aha, %.preheader162 ], [ %.ph570, %.preheader162.preheader563 ]
  %i.afm = phi <2 x double> [ %i.ahg, %.preheader162 ], [ %.ph571, %.preheader162.preheader563 ]
  %i.afn = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.afo = getelementptr i8, ptr %i.afn, i64 -4
  %i.afp = load <2 x float>, ptr %i.afo, align 4, !tbaa !10
  %i.afq = fpext <2 x float> %i.afp to <2 x double> ; 2 uses
  %i.afr = shufflevector <2 x double> %i.afq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.afs = shufflevector <2 x double> %i.afq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 8 uses
  %i.aft = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.afr, <2 x double> %i.aff) ; 2 uses
  %i.afu = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.afv = getelementptr i8, ptr %i.afu, i64 -12
  %i.afw = load <2 x float>, ptr %i.afv, align 4, !tbaa !10
  %i.afx = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afy = fpext <2 x float> %i.afx to <2 x double>
  %i.afz = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.afy, <2 x double> %i.afg) ; 2 uses
  %i.aga = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agb = getelementptr i8, ptr %i.aga, i64 -20
  %i.agc = load <2 x float>, ptr %i.agb, align 4, !tbaa !10
  %i.agd = fpext <2 x float> %i.agc to <2 x double>
  %i.age = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.agd, <2 x double> %i.afh) ; 2 uses
  %i.agf = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agg = getelementptr i8, ptr %i.agf, i64 -28
  %i.agh = load <2 x float>, ptr %i.agg, align 4, !tbaa !10
  %i.agi = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agj = fpext <2 x float> %i.agi to <2 x double>
  %i.agk = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.agj, <2 x double> %i.afi) ; 2 uses
  %i.agl = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agm = getelementptr i8, ptr %i.agl, i64 -36
  %i.agn = load <2 x float>, ptr %i.agm, align 4, !tbaa !10
  %i.ago = fpext <2 x float> %i.agn to <2 x double>
  %i.agp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.ago, <2 x double> %i.afj) ; 2 uses
  %i.agq = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agr = getelementptr i8, ptr %i.agq, i64 -44
  %i.ags = load <2 x float>, ptr %i.agr, align 4, !tbaa !10
  %i.agt = fpext <2 x float> %i.ags to <2 x double>
  %i.agu = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.agt, <2 x double> %i.afk) ; 2 uses
  %i.agv = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.agw = getelementptr i8, ptr %i.agv, i64 -52
  %i.agx = load <2 x float>, ptr %i.agw, align 4, !tbaa !10
  %i.agy = shufflevector <2 x float> %i.agx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agz = fpext <2 x float> %i.agy to <2 x double>
  %i.aha = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.agz, <2 x double> %i.afl) ; 2 uses
  %i.ahb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -60
  %i.ahd = load <2 x float>, ptr %i.ahc, align 4, !tbaa !10
  %i.ahe = shufflevector <2 x float> %i.ahd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahf = fpext <2 x float> %i.ahe to <2 x double>
  %i.ahg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afs, <2 x double> %i.ahf, <2 x double> %i.afm) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit289, label %.preheader162, !llvm.loop !41

.loopexit.loopexit287:                            ; preds = %.preheader150, %middle.block479
  %i.ahh = phi <2 x double> [ %i.hg, %middle.block479 ], [ %i.hw, %.preheader150 ]
  %i.ahi = phi <2 x double> [ %i.hi, %middle.block479 ], [ %i.ic, %.preheader150 ]
  %i.ahj = phi <2 x double> [ %i.hk, %middle.block479 ], [ %i.ii, %.preheader150 ]
  %i.ahk = phi <2 x double> [ %i.hm, %middle.block479 ], [ %i.io, %.preheader150 ]
  %i.ahl = shufflevector <2 x double> %i.ahh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahl, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.ahi, ptr %i.cr, align 8, !tbaa !17
  store <2 x double> %i.ahj, ptr %i.cu, align 8, !tbaa !17
  store <2 x double> %i.ahk, ptr %i.cx, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit288:                            ; preds = %.preheader156, %middle.block441
  %i.ahm = phi <2 x double> [ %i.zh, %middle.block441 ], [ %i.aad, %.preheader156 ]
  %i.ahn = phi <2 x double> [ %i.zj, %middle.block441 ], [ %i.aaj, %.preheader156 ]
  %i.aho = phi <2 x double> [ %i.zl, %middle.block441 ], [ %i.aao, %.preheader156 ]
  %i.ahp = phi <2 x double> [ %i.zn, %middle.block441 ], [ %i.aat, %.preheader156 ]
  %i.ahq = phi <2 x double> [ %i.zp, %middle.block441 ], [ %i.aaz, %.preheader156 ]
  %i.ahr = phi <2 x double> [ %i.zr, %middle.block441 ], [ %i.abf, %.preheader156 ]
  %i.ahs = shufflevector <2 x double> %i.ahm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahs, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.ahn, ptr %i.it, align 8, !tbaa !17
  %i.aht = shufflevector <2 x double> %i.aho, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aht, ptr %i.rs, align 8, !tbaa !17
  %i.ahu = shufflevector <2 x double> %i.ahp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahu, ptr %i.rv, align 8, !tbaa !17
  store <2 x double> %i.ahq, ptr %i.sc, align 8, !tbaa !17
  store <2 x double> %i.ahr, ptr %i.sf, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit289:                            ; preds = %.preheader162, %middle.block
  %i.ahv = phi <2 x double> [ %i.aeq, %middle.block ], [ %i.aft, %.preheader162 ]
  %i.ahw = phi <2 x double> [ %i.aes, %middle.block ], [ %i.afz, %.preheader162 ]
  %i.ahx = phi <2 x double> [ %i.aeu, %middle.block ], [ %i.age, %.preheader162 ]
  %i.ahy = phi <2 x double> [ %i.aew, %middle.block ], [ %i.agk, %.preheader162 ]
  %i.ahz = phi <2 x double> [ %i.aey, %middle.block ], [ %i.agp, %.preheader162 ]
  %i.aia = phi <2 x double> [ %i.afa, %middle.block ], [ %i.agu, %.preheader162 ]
  %i.aib = phi <2 x double> [ %i.afc, %middle.block ], [ %i.aha, %.preheader162 ]
  %i.aic = phi <2 x double> [ %i.afe, %middle.block ], [ %i.ahg, %.preheader162 ]
  store <2 x double> %i.ahv, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.ahw, ptr %i.it, align 8, !tbaa !17
  %i.aid = shufflevector <2 x double> %i.ahx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aid, ptr %i.iw, align 8, !tbaa !17
  store <2 x double> %i.ahy, ptr %i.iz, align 8, !tbaa !17
  %i.aie = shufflevector <2 x double> %i.ahz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aie, ptr %i.je, align 8, !tbaa !17
  %i.aif = shufflevector <2 x double> %i.aia, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aif, ptr %i.ji, align 8, !tbaa !17
  store <2 x double> %i.aib, ptr %i.jn, align 8, !tbaa !17
  store <2 x double> %i.aic, ptr %i.jo, align 8, !tbaa !17
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
  %wide.trip.count82 = zext i32 %i.b to i64
  %exitcond83.not85 = icmp eq i32 %i.b, 0
  br i1 %exitcond83.not85, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %.loopexit109
  %indvars.iv.next76 = add i32 %indvars.iv7587, 1
  %i.d = trunc nuw i64 %indvars.iv.next80 to i32  ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.loopexit, label %bb.c, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph91, %bb.b
  %i.f = phi i32 [ 0, %.lr.ph91 ], [ %i.e, %bb.b ] ; 3 uses
  %i.g = phi i32 [ 0, %.lr.ph91 ], [ %i.d, %bb.b ]
  %.04988 = phi double [ %i.c, %.lr.ph91 ], [ %i.bm, %bb.b ] ; 2 uses
  %indvars.iv7587 = phi i32 [ 1, %.lr.ph91 ], [ %indvars.iv.next76, %bb.b ] ; 2 uses
  %indvars.iv7986 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next80, %bb.b ] ; 13 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv7986, 1 ; 7 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next80
  %i.i = load double, ptr %i.h, align 8, !tbaa !17
  %i.j = fneg reassoc nsz arcp double %i.i        ; 3 uses
  %.not62 = icmp eq i64 %indvars.iv7986, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check94 = icmp samesign ult i64 %indvars.iv7986, 4
  br i1 %min.iters.check94, label %.lr.ph.preheader110, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.preheader
  %n.vec96 = and i64 %indvars.iv7986, 9223372036854775804 ; 3 uses
  %i.k = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.j, i64 0
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next105, %vector.body97 ] ; 3 uses
  %vec.phi = phi <2 x double> [ %i.k, %vector.ph95 ], [ %i.t, %vector.body97 ]
  %vec.phi99 = phi <2 x double> [ zeroinitializer, %vector.ph95 ], [ %i.u, %vector.body97 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index98 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load100.a = load <2 x double>, ptr %i.l, align 16, !tbaa !17
  %wide.load101.a = load <2 x double>, ptr %i.m, align 16, !tbaa !17
  %i.n = sub nuw nsw i64 %indvars.iv7986, %index98
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -24
  %wide.load102 = load <2 x double>, ptr %i.p, align 8, !tbaa !17
  %wide.load103 = load <2 x double>, ptr %i.q, align 8, !tbaa !17
  %reverse = shufflevector <2 x double> %wide.load102, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse104 = shufflevector <2 x double> %wide.load103, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = fneg reassoc nsz arcp <2 x double> %wide.load100.a
  %i.s = fneg reassoc nsz arcp <2 x double> %wide.load101.a
  %i.t = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %reverse, <2 x double> %vec.phi) ; 2 uses
  %i.u = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %reverse104, <2 x double> %vec.phi99) ; 2 uses
  %index.next105 = add nuw i64 %index98, 4        ; 2 uses
  %i.v = icmp eq i64 %index.next105, %n.vec96
  br i1 %i.v, label %middle.block106, label %vector.body97, !llvm.loop !43

middle.block106:                                  ; preds = %vector.body97
  %bin.rdx = fadd reassoc nsz arcp <2 x double> %i.u, %i.t
  %i.w = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %cmp.n107 = icmp eq i64 %indvars.iv7986, %n.vec96
  br i1 %cmp.n107, label %._crit_edge, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block106
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec96, %middle.block106 ]
  %.05055.ph = phi double [ %i.j, %.lr.ph.preheader ], [ %i.w, %middle.block106 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader110 ] ; 3 uses
  %.05055 = phi double [ %i.ad, %.lr.ph ], [ %.05055.ph, %.lr.ph.preheader110 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !17
  %i.z = sub nuw nsw i64 %indvars.iv7986, %indvars.iv
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !17
  %i.ac = fneg reassoc nsz arcp double %i.y
  %i.ad = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ac, double %i.ab, double %.05055) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv7986
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block106, %bb.c
  %.050.lcssa = phi double [ %i.j, %bb.c ], [ %i.w, %middle.block106 ], [ %i.ad, %.lr.ph ]
  %i.ae = fdiv reassoc nsz arcp double %.050.lcssa, %.04988 ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv7986
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
  %i.aj = add nsw i64 %indvars.iv7986, %i.ai
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
  br i1 %exitcond71.not, label %._crit_edge59.loopexit, label %.lr.ph58, !llvm.loop !45

._crit_edge59.loopexit:                           ; preds = %.lr.ph58
  %i.aq = zext nneg i32 %i.f to i64
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %._crit_edge
  %.1.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.aq, %._crit_edge59.loopexit ]
  %i.ar = and i32 %i.g, 1
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1.lcssa ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.au = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.at, double %i.ae, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge59
  %i.av = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %indvars.iv7986 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv7986, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %indvars.iv.next80, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 16, !tbaa !17
  %wide.load92 = load <2 x double>, ptr %i.ax, align 16, !tbaa !17
  %i.ay = fptrunc reassoc nsz arcp <2 x double> %wide.load to <2 x float>
  %i.az = fptrunc reassoc nsz arcp <2 x double> %wide.load92 to <2 x float>
  %i.ba = fneg reassoc nsz arcp <2 x float> %i.ay
  %i.bb = fneg reassoc nsz arcp <2 x float> %i.az
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store <2 x float> %i.ba, ptr %i.bc, align 4, !tbaa !10
  store <2 x float> %i.bb, ptr %i.bd, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next80, %n.vec
  br i1 %cmp.n, label %.loopexit109, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv72.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv72
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !17
  %i.bh = fptrunc reassoc nsz arcp double %i.bg to float
  %i.bi = fneg reassoc nsz arcp float %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv72
  store float %i.bi, ptr %i.bj, align 4, !tbaa !10
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32
  %exitcond78 = icmp eq i32 %indvars.iv7587, %lftr.wideiv
  br i1 %exitcond78, label %.loopexit109, label %scalar.ph, !llvm.loop !47

.loopexit109:                                     ; preds = %scalar.ph, %middle.block
  %i.bk = fneg reassoc nsz arcp double %i.ae
  %i.bl = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bk, double %i.ae, double 1.000000e+00)
  %i.bm = fmul reassoc nsz arcp double %i.bl, %.04988 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv7986
  store double %i.bm, ptr %i.bn, align 8, !tbaa !17
  %i.bo = fcmp reassoc nsz arcp oeq double %i.bm, 0.000000e+00
  br i1 %i.bo, label %bb.f, label %bb.b, !llvm.loop !42

bb.f:                                             ; preds = %.loopexit109
  %i.bp = trunc nuw i64 %indvars.iv.next80 to i32
  store i32 %i.bp, ptr %1, align 4, !tbaa !8
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

bb.d:                                             ; preds = %.lr.ph92, %bb.d
  %indvars.iv101 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next102, %bb.d ] ; 3 uses
  %.06590 = phi double [ 0.000000e+00, %.lr.ph92 ], [ %i.bg, %bb.d ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv101
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  %i.ba = fmul reassoc nsz arcp float %i.az, %i.ax
  %i.bb = fpext reassoc nsz arcp float %i.ba to double
  %i.bc = fadd reassoc nsz arcp double %.06590, %i.bb ; 2 uses
  %i.bd = tail call i64 @lround(double noundef %i.bc) #14
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %.not = icmp sgt i32 %i.c, %i.be
  %spec.select86 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %i.d)
  %.0 = select i1 %.not, i32 %spec.select86, i32 %i.e ; 2 uses
  %i.bf = sitofp reassoc nsz arcp i32 %.0 to double
  %i.bg = fsub reassoc nsz arcp double %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv101
  store i32 %.0, ptr %i.bh, align 4, !tbaa !8
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge93, label %bb.d, !llvm.loop !50

._crit_edge93:                                    ; preds = %bb.d
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph96, %bb.c, %bb.a, %._crit_edge93, %._crit_edge
  %.173 = phi i32 [ 1, %bb.c ], [ 2, %._crit_edge ], [ 0, %._crit_edge93 ], [ 2, %bb.a ], [ 0, %.lr.ph96 ]
  ret i32 %.173
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_residual_from_qlp_coefficients(ptr noalias nofree noundef readonly %0, i32 noundef %1, ptr noalias nofree noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noalias nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %3, 13
  br i1 %i.a, label %bb.b, label %.preheader604

.preheader604:                                    ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader604
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 116
end_hunk_0
