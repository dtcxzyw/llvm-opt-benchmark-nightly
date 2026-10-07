Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thinplate?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@thinplate_match:bb.a
  br i1 %i.my, label %.lr.ph903.i.i.epil.preheader, label %.lr.ph903.i.i

.lr.ph903.i.i:                                    ; preds = %.lr.ph903.preheader.i.i, %.lr.ph903.i.i
  %indvars.iv1090.i.i = phi i64 [ %indvars.iv.next1091.i.i.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ] ; 9 uses
  %niter2120 = phi i64 [ %niter2120.next.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ]
  %i.bck = mul nuw nsw i64 %indvars.iv1090.i.i, %i.ml
  %gep1230.i.i = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bck ; 2 uses
  %i.bcl = load double, ptr %gep1230.i.i, align 8, !tbaa !117
  %i.bcm = fneg reassoc nsz arcp contract afn double %i.bcl
  store double %i.bcm, ptr %gep1230.i.i, align 8, !tbaa !117
  %indvars.iv.next1091.i.i = or disjoint i64 %indvars.iv1090.i.i, 1
  %i.bcn = mul nuw nsw i64 %indvars.iv.next1091.i.i, %i.ml
  %gep1230.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcn ; 2 uses
  %i.bco = load double, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %i.bcp = fneg reassoc nsz arcp contract afn double %i.bco
  store double %i.bcp, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.1 = or disjoint i64 %indvars.iv1090.i.i, 2
  %i.bcq = mul nuw nsw i64 %indvars.iv.next1091.i.i.1, %i.ml
  %gep1230.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcq ; 2 uses
  %i.bcr = load double, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %i.bcs = fneg reassoc nsz arcp contract afn double %i.bcr
  store double %i.bcs, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.2 = or disjoint i64 %indvars.iv1090.i.i, 3
  %i.bct = mul nuw nsw i64 %indvars.iv.next1091.i.i.2, %i.ml
  %gep1230.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bct ; 2 uses
  %i.bcu = load double, ptr %gep1230.i.i.3, align 8, !tbaa !117
  %i.bcv = fneg reassoc nsz arcp contract afn double %i.bcu
  store double %i.bcv, ptr %gep1230.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.3 = or disjoint i64 %indvars.iv1090.i.i, 4
  %i.bcw = mul nuw nsw i64 %indvars.iv.next1091.i.i.3, %i.ml
  %gep1230.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcw ; 2 uses
  %i.bcx = load double, ptr %gep1230.i.i.4, align 8, !tbaa !117
  %i.bcy = fneg reassoc nsz arcp contract afn double %i.bcx
  store double %i.bcy, ptr %gep1230.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.4 = or disjoint i64 %indvars.iv1090.i.i, 5
  %i.bcz = mul nuw nsw i64 %indvars.iv.next1091.i.i.4, %i.ml
  %gep1230.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcz ; 2 uses
  %i.bda = load double, ptr %gep1230.i.i.5, align 8, !tbaa !117
  %i.bdb = fneg reassoc nsz arcp contract afn double %i.bda
  store double %i.bdb, ptr %gep1230.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.5 = or disjoint i64 %indvars.iv1090.i.i, 6
  %i.bdc = mul nuw nsw i64 %indvars.iv.next1091.i.i.5, %i.ml
  %gep1230.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bdc ; 2 uses
  %i.bdd = load double, ptr %gep1230.i.i.6, align 8, !tbaa !117
  %i.bde = fneg reassoc nsz arcp contract afn double %i.bdd
  store double %i.bde, ptr %gep1230.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.6 = or disjoint i64 %indvars.iv1090.i.i, 7
  %i.bdf = mul nuw nsw i64 %indvars.iv.next1091.i.i.6, %i.ml
  %gep1230.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bdf ; 2 uses
  %i.bdg = load double, ptr %gep1230.i.i.7, align 8, !tbaa !117
  %i.bdh = fneg reassoc nsz arcp contract afn double %i.bdg
  store double %i.bdh, ptr %gep1230.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.7 = add nuw nsw i64 %indvars.iv1090.i.i, 8 ; 2 uses
  %niter2120.next.7 = add i64 %niter2120, 8       ; 2 uses
  %niter2120.ncmp.7 = icmp eq i64 %niter2120.next.7, %unroll_iter2119
  br i1 %niter2120.ncmp.7, label %.thread721.i.i.loopexit.unr-lcssa, label %.lr.ph903.i.i

bb.aa:                                            ; preds = %.loopexit729.i.i
  %i.bdi = icmp eq i32 %.0631900.i.i, 30
  br i1 %i.bdi, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.lcssa862.i.i
  %i.bdk = load double, ptr %i.bdj, align 8, !tbaa !117 ; 5 uses
  %i.bdl = load double, ptr %i.ayb, align 8, !tbaa !117 ; 4 uses
  %i.bdm = load double, ptr %i.ayc, align 8, !tbaa !117 ; 2 uses
  %i.bdn = fsub reassoc nsz arcp contract afn double %i.bdl, %i.bcf
  %i.bdo = fadd reassoc nsz arcp contract afn double %i.bdl, %i.bcf
  %i.bdp = fmul reassoc nsz arcp contract afn double %i.bdn, %i.bdo
  %i.bdq = fsub reassoc nsz arcp contract afn double %i.bdm, %i.ayf
  %i.bdr = fadd reassoc nsz arcp contract afn double %i.bdm, %i.ayf
  %i.bds = fmul reassoc nsz arcp contract afn double %i.bdq, %i.bdr
  %i.bdt = fadd reassoc nsz arcp contract afn double %i.bds, %i.bdp
  %i.bdu = fmul reassoc nsz arcp contract afn double %i.ayf, 2.000000e+00
  %i.bdv = fmul reassoc nsz arcp contract afn double %i.bdu, %i.bdl
  %i.bdw = fdiv reassoc nsz arcp contract afn double %i.bdt, %i.bdv ; 5 uses
  %i.bdx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bdw) ; 3 uses
  %i.bdy = fcmp reassoc nsz arcp contract afn ogt double %i.bdx, 1.000000e+00
  br i1 %i.bdy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bdz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bdx ; 2 uses
  %i.bea = fmul reassoc nsz arcp contract afn double %i.bdz, %i.bdz
  %i.beb = fadd reassoc nsz arcp contract afn double %i.bea, 1.000000e+00
  %i.bec = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.beb)
  %i.bed = fmul reassoc nsz arcp contract afn double %i.bec, %i.bdx
  br label %PYTHAG.exit708.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bee = fmul reassoc nsz arcp contract afn double %i.bdw, %i.bdw
  %i.bef = fadd reassoc nsz arcp contract afn double %i.bee, 1.000000e+00
  %i.beg = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bef)
  br label %PYTHAG.exit708.i.i

PYTHAG.exit708.i.i:                               ; preds = %bb.ad, %bb.ac
  %.0.i707.i.i = phi nsz double [ %i.bed, %bb.ac ], [ %i.beg, %bb.ad ]
  %i.beh = fsub reassoc nsz arcp contract afn double %i.bdk, %i.bcf
  %i.bei = fadd reassoc nsz arcp contract afn double %i.bdk, %i.bcf
  %i.bej = fmul reassoc nsz arcp contract afn double %i.beh, %i.bei
  %i.bek = tail call reassoc nsz arcp contract afn noundef double @llvm.copysign.f64(double %.0.i707.i.i, double %i.bdw)
  %i.bel = fadd reassoc nsz arcp contract afn double %i.bek, %i.bdw
  %i.bem = fdiv reassoc nsz arcp contract afn double %i.bdl, %i.bel
  %i.ben = fsub reassoc nsz arcp contract afn double %i.bem, %i.ayf
  %i.beo = fmul reassoc nsz arcp contract afn double %i.ben, %i.ayf
  %i.bep = fadd reassoc nsz arcp contract afn double %i.beo, %i.bej
  %i.beq = fdiv reassoc nsz arcp contract afn double %i.bep, %i.bdk ; 2 uses
  %.not695.not890.i.i = icmp sgt i64 %indvars.iv1095.i.i, %i.aze
  br i1 %.not695.not890.i.i, label %.lr.ph896.i.i, label %._crit_edge897.i.i

.loopexit.i.loopexit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph889.i.i
  br i1 %lcmp.mod2109.not, label %.loopexit.i.loopexit.i, label %.lr.ph889.i.i.epil.preheader

.lr.ph889.i.i.epil.preheader:                     ; preds = %.loopexit.i.loopexit.i.loopexit.unr-lcssa, %.lr.ph889.i.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph889.i.i.ph ], [ %i.bix, %.loopexit.i.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv1080.i.i.epil.init = phi i64 [ 0, %.lr.ph889.i.i.ph ], [ %indvars.iv.next1081.i.i.1, %.loopexit.i.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2110)
  %i.ber = mul nuw nsw i64 %indvars.iv1080.i.i.epil.init, %i.gs ; 2 uses
  %gep1226.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.ber
  %gep1228.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.ber ; 2 uses
  %i.bes = load double, ptr %gep1228.i.i.epil, align 8, !tbaa !117 ; 2 uses
  %i.bet = fmul reassoc nsz arcp contract afn double %store_forwarded.epil.init, %.1681.i.i
  %i.beu = fmul reassoc nsz arcp contract afn double %i.bes, %.9.i.i
  %i.bev = fadd reassoc nsz arcp contract afn double %i.beu, %i.bet
  store double %i.bev, ptr %gep1226.i.i.epil, align 8, !tbaa !117
  %i.bew = fmul reassoc nsz arcp contract afn double %i.bes, %.1681.i.i
  %i.bex = fmul reassoc nsz arcp contract afn double %store_forwarded.epil.init, %.9.i.i
  %i.bey = fsub reassoc nsz arcp contract afn double %i.bew, %i.bex
  store double %i.bey, ptr %gep1228.i.i.epil, align 8, !tbaa !117
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i.loopexit1926.unr-lcssa:    ; preds = %.lr.ph889.i.i.lver.orig
  br i1 %lcmp.mod2103.not, label %.loopexit.i.loopexit.i, label %.lr.ph889.i.i.lver.orig.epil.preheader

.lr.ph889.i.i.lver.orig.epil.preheader:           ; preds = %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, %.lr.ph889.i.i.lver.orig.preheader
  %indvars.iv1080.i.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph889.i.i.lver.orig.preheader ], [ %indvars.iv.next1081.i.i.lver.orig.1, %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2104)
  %i.bez = mul nsw i64 %indvars.iv1080.i.i.lver.orig.epil.init, %i.gs ; 2 uses
  %gep1226.i.i.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bez ; 2 uses
  %i.bfa = load double, ptr %gep1226.i.i.lver.orig.epil, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bez ; 2 uses
  %i.bfb = load double, ptr %gep1228.i.i.lver.orig.epil, align 8, !tbaa !117 ; 2 uses
  %i.bfc = fmul reassoc nsz arcp contract afn double %i.bfa, %.1681.i.i
  %i.bfd = fmul reassoc nsz arcp contract afn double %i.bfb, %.9.i.i
  %i.bfe = fadd reassoc nsz arcp contract afn double %i.bfd, %i.bfc
  store double %i.bfe, ptr %gep1226.i.i.lver.orig.epil, align 8, !tbaa !117
  %i.bff = fmul reassoc nsz arcp contract afn double %i.bfb, %.1681.i.i
  %i.bfg = fmul reassoc nsz arcp contract afn double %i.bfa, %.9.i.i
  %i.bfh = fsub reassoc nsz arcp contract afn double %i.bff, %i.bfg
  store double %i.bfh, ptr %gep1228.i.i.lver.orig.epil, align 8, !tbaa !117
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph889.i.i.lver.orig.epil.preheader, %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, %.lr.ph889.i.i.epil.preheader, %.loopexit.i.loopexit.i.loopexit.unr-lcssa
  %i.bfi = fmul reassoc nsz arcp contract afn double %.1681.i.i, %i.bgq
  %i.bfj = fmul reassoc nsz arcp contract afn double %.9.i.i, %i.bgs
  %i.bfk = fadd reassoc nsz arcp contract afn double %i.bfi, %i.bfj ; 2 uses
  %i.bfl = fmul reassoc nsz arcp contract afn double %.1681.i.i, %i.bgs
  %i.bfm = fmul reassoc nsz arcp contract afn double %.9.i.i, %i.bgq
  %i.bfn = fsub reassoc nsz arcp contract afn double %i.bfl, %i.bfm ; 2 uses
  %exitcond1089.not.i.i = icmp eq i64 %indvars.iv.next1086.i.i, %indvars.iv1095.i.i
  br i1 %exitcond1089.not.i.i, label %._crit_edge897.i.i, label %.lr.ph896.i.i

.lr.ph896.i.i:                                    ; preds = %PYTHAG.exit708.i.i, %.loopexit.i.loopexit.i
  %indvars.iv1085.i.i = phi i64 [ %indvars.iv.next1086.i.i, %.loopexit.i.loopexit.i ], [ %i.aze, %PYTHAG.exit708.i.i ] ; 5 uses
  %.0673894.i.i = phi double [ %i.bfn, %.loopexit.i.loopexit.i ], [ %i.bdk, %PYTHAG.exit708.i.i ] ; 2 uses
  %.8893.i.i = phi double [ %.9.i.i, %.loopexit.i.loopexit.i ], [ 1.000000e+00, %PYTHAG.exit708.i.i ]
  %.0679892.i.i = phi double [ %i.bfk, %.loopexit.i.loopexit.i ], [ %i.beq, %PYTHAG.exit708.i.i ] ; 2 uses
  %.0680891.i.i = phi double [ %.1681.i.i, %.loopexit.i.loopexit.i ], [ 1.000000e+00, %PYTHAG.exit708.i.i ]
  %indvars.iv.next1086.i.i = add nuw nsw i64 %indvars.iv1085.i.i, 1 ; 6 uses
  %i.bfo = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next1086.i.i
  %i.bfp = load double, ptr %i.bfo, align 8, !tbaa !117 ; 2 uses
  %i.bfq = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next1086.i.i
  %i.bfr = load double, ptr %i.bfq, align 8, !tbaa !117 ; 2 uses
  %i.bfs = fmul reassoc nsz arcp contract afn double %i.bfp, %.8893.i.i ; 3 uses
  %i.bft = fmul reassoc nsz arcp contract afn double %i.bfp, %.0680891.i.i ; 2 uses
  %i.bfu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.0679892.i.i) ; 4 uses
  %i.bfv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bfs) ; 4 uses
  %i.bfw = fcmp reassoc nsz arcp contract afn ogt double %i.bfu, %i.bfv
  br i1 %i.bfw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph896.i.i
  %i.bfx = fdiv reassoc nsz arcp contract afn double %i.bfv, %i.bfu ; 2 uses
  %i.bfy = fmul reassoc nsz arcp contract afn double %i.bfx, %i.bfx
  %i.bfz = fadd reassoc nsz arcp contract afn double %i.bfy, 1.000000e+00
  %i.bga = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bfz)
  %i.bgb = fmul reassoc nsz arcp contract afn double %i.bga, %i.bfu
  br label %.lr.ph886.preheader.i.i

bb.af:                                            ; preds = %.lr.ph896.i.i
  %i.bgc = fcmp reassoc nsz arcp contract afn ueq double %i.bfs, 0.000000e+00
  br i1 %i.bgc, label %.lr.ph886.preheader.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bgd = fdiv reassoc nsz arcp contract afn double %i.bfu, %i.bfv ; 2 uses
  %i.bge = fmul reassoc nsz arcp contract afn double %i.bgd, %i.bgd
  %i.bgf = fadd reassoc nsz arcp contract afn double %i.bge, 1.000000e+00
  %i.bgg = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bgf)
  %i.bgh = fmul reassoc nsz arcp contract afn double %i.bgg, %i.bfv
  br label %.lr.ph886.preheader.i.i

.lr.ph886.preheader.i.i:                          ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i709.i.i = phi nsz double [ %i.bgb, %bb.ae ], [ %i.bgh, %bb.ag ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %i.bgi = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv1085.i.i
  store double %.0.i709.i.i, ptr %i.bgi, align 8, !tbaa !117
  %10 = insertelement <2 x double> poison, double %i.bfs, i64 0
  %11 = insertelement <2 x double> %10, double %.0679892.i.i, i64 1
  %12 = insertelement <2 x double> poison, double %.0.i709.i.i, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv reassoc nsz arcp contract afn <2 x double> %11, %13 ; 8 uses
  %invariant.gep1221.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv1085.i.i ; 3 uses
  %invariant.gep1223.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv.next1086.i.i ; 3 uses
  br i1 %i.mx, label %.lr.ph886.i.i.epil.preheader, label %.lr.ph886.preheader.i.i.new

.lr.ph886.preheader.i.i.new:                      ; preds = %.lr.ph886.preheader.i.i
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %16 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph886.i.i

._crit_edge887.i.i.unr-lcssa:                     ; preds = %.lr.ph886.i.i
  br i1 %lcmp.mod2097.not, label %._crit_edge887.i.i, label %.lr.ph886.i.i.epil.preheader

.lr.ph886.i.i.epil.preheader:                     ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.preheader.i.i
  %indvars.iv1075.i.i.epil.init = phi i64 [ 0, %.lr.ph886.preheader.i.i ], [ %indvars.iv.next1076.i.i.1, %._crit_edge887.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2098)
  %i.bgj = mul nuw nsw i64 %indvars.iv1075.i.i.epil.init, %i.ml ; 2 uses
  %gep1222.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bgj ; 2 uses
  %gep1222.i.i.epil.a = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bgj
  %17 = load double, ptr %gep1222.i.i.epil, align 8, !tbaa !117
  %i.bgk = load double, ptr %gep1222.i.i.epil.a, align 8, !tbaa !117
  %18 = insertelement <2 x double> poison, double %i.bgk, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fmul reassoc nsz arcp contract afn <2 x double> %19, %14 ; 2 uses
  %21 = insertelement <2 x double> poison, double %17, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %24 = fmul reassoc nsz arcp contract afn <2 x double> %22, %23 ; 2 uses
  %25 = fadd reassoc nsz arcp contract afn <2 x double> %20, %24
  %26 = fsub reassoc nsz arcp contract afn <2 x double> %20, %24
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <2 x i32> <i32 0, i32 3>
  store <2 x double> %27, ptr %gep1222.i.i.epil, align 8, !tbaa !117
  br label %._crit_edge887.i.i

._crit_edge887.i.i:                               ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.i.i.epil.preheader
  %28 = extractelement <2 x double> %14, i64 1    ; 4 uses
  %i.bgl = fmul reassoc nsz arcp contract afn double %28, %.0673894.i.i
  %29 = extractelement <2 x double> %14, i64 0    ; 4 uses
  %i.bgm = fmul reassoc nsz arcp contract afn double %29, %i.bft
  %i.bgn = fadd reassoc nsz arcp contract afn double %i.bgl, %i.bgm ; 2 uses
  %i.bgo = fmul reassoc nsz arcp contract afn double %28, %i.bft
  %i.bgp = fmul reassoc nsz arcp contract afn double %29, %.0673894.i.i
  %i.bgq = fsub reassoc nsz arcp contract afn double %i.bgo, %i.bgp ; 2 uses
  %i.bgr = fmul reassoc nsz arcp contract afn double %29, %i.bfr ; 3 uses
  %i.bgs = fmul reassoc nsz arcp contract afn double %28, %i.bfr ; 2 uses
  %i.bgt = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bgn) ; 4 uses
  %i.bgu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bgr) ; 4 uses
  %i.bgv = fcmp reassoc nsz arcp contract afn ogt double %i.bgt, %i.bgu
  br i1 %i.bgv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge887.i.i
  %i.bgw = fdiv reassoc nsz arcp contract afn double %i.bgu, %i.bgt ; 2 uses
  %i.bgx = fmul reassoc nsz arcp contract afn double %i.bgw, %i.bgw
  %i.bgy = fadd reassoc nsz arcp contract afn double %i.bgx, 1.000000e+00
  %i.bgz = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bgy)
  %i.bha = fmul reassoc nsz arcp contract afn double %i.bgz, %i.bgt
  br label %.lr.ph889.i.i.lver.check

bb.ai:                                            ; preds = %._crit_edge887.i.i
  %i.bhb = fcmp reassoc nsz arcp contract afn ueq double %i.bgr, 0.000000e+00
  br i1 %i.bhb, label %.lr.ph889.i.i.lver.check, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bhc = fdiv reassoc nsz arcp contract afn double %i.bgt, %i.bgu ; 2 uses
  %i.bhd = fmul reassoc nsz arcp contract afn double %i.bhc, %i.bhc
  %i.bhe = fadd reassoc nsz arcp contract afn double %i.bhd, 1.000000e+00
  %i.bhf = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bhe)
  %i.bhg = fmul reassoc nsz arcp contract afn double %i.bhf, %i.bgu
  br label %.lr.ph889.i.i.lver.check

.lr.ph889.i.i.lver.check:                         ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i711.i.i = phi nsz double [ %i.bha, %bb.ah ], [ %i.bhg, %bb.aj ], [ 0.000000e+00, %bb.ai ] ; 3 uses
  %i.bhh = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv1085.i.i
  store double %.0.i711.i.i, ptr %i.bhh, align 8, !tbaa !117
  %i.bhi = fcmp reassoc nsz arcp contract afn une double %.0.i711.i.i, 0.000000e+00 ; 2 uses
  %i.bhj = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i711.i.i ; 2 uses
  %i.bhk = fmul reassoc nsz arcp contract afn double %i.bhj, %i.bgn
  %i.bhl = fmul reassoc nsz arcp contract afn double %i.bhj, %i.bgr
  %.1681.i.i = select nsz i1 %i.bhi, double %i.bhk, double %28 ; 15 uses
  %.9.i.i = select nsz i1 %i.bhi, double %i.bhl, double %29 ; 15 uses
  %invariant.gep1225.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv1085.i.i ; 7 uses
  %invariant.gep1227.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv.next1086.i.i ; 6 uses
  br i1 %ident.check1912.not, label %.lr.ph889.i.i.ph, label %.lr.ph889.i.i.lver.orig.preheader

.lr.ph889.i.i.lver.orig.preheader:                ; preds = %.lr.ph889.i.i.lver.check
  br i1 %i.hu, label %.lr.ph889.i.i.lver.orig.epil.preheader, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.lver.orig:                          ; preds = %.lr.ph889.i.i.lver.orig.preheader, %.lr.ph889.i.i.lver.orig
  %indvars.iv1080.i.i.lver.orig = phi i64 [ %indvars.iv.next1081.i.i.lver.orig.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ] ; 3 uses
  %niter2106 = phi i64 [ %niter2106.next.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ]
  %i.bhm = mul nsw i64 %indvars.iv1080.i.i.lver.orig, %i.gs ; 2 uses
  %gep1226.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bhm ; 2 uses
  %i.bhn = load double, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bhm ; 2 uses
  %i.bho = load double, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %i.bhp = fmul reassoc nsz arcp contract afn double %i.bhn, %.1681.i.i
  %i.bhq = fmul reassoc nsz arcp contract afn double %i.bho, %.9.i.i
  %i.bhr = fadd reassoc nsz arcp contract afn double %i.bhq, %i.bhp
  store double %i.bhr, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117
  %i.bhs = fmul reassoc nsz arcp contract afn double %i.bho, %.1681.i.i
  %i.bht = fmul reassoc nsz arcp contract afn double %i.bhn, %.9.i.i
  %i.bhu = fsub reassoc nsz arcp contract afn double %i.bhs, %i.bht
  store double %i.bhu, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig = or disjoint i64 %indvars.iv1080.i.i.lver.orig, 1
  %i.bhv = mul nsw i64 %indvars.iv.next1081.i.i.lver.orig, %i.gs ; 2 uses
  %gep1226.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bhv ; 2 uses
  %i.bhw = load double, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bhv ; 2 uses
  %i.bhx = load double, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %i.bhy = fmul reassoc nsz arcp contract afn double %i.bhw, %.1681.i.i
  %i.bhz = fmul reassoc nsz arcp contract afn double %i.bhx, %.9.i.i
  %i.bia = fadd reassoc nsz arcp contract afn double %i.bhz, %i.bhy
  store double %i.bia, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117
  %i.bib = fmul reassoc nsz arcp contract afn double %i.bhx, %.1681.i.i
  %i.bic = fmul reassoc nsz arcp contract afn double %i.bhw, %.9.i.i
  %i.bid = fsub reassoc nsz arcp contract afn double %i.bib, %i.bic
  store double %i.bid, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig.1 = add nuw nsw i64 %indvars.iv1080.i.i.lver.orig, 2 ; 2 uses
  %niter2106.next.1 = add i64 %niter2106, 2       ; 2 uses
  %niter2106.ncmp.1 = icmp eq i64 %niter2106.next.1, %unroll_iter2105
  br i1 %niter2106.ncmp.1, label %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.ph:                                 ; preds = %.lr.ph889.i.i.lver.check
  %load_initial = load double, ptr %invariant.gep1225.i.i, align 8 ; 2 uses
  br i1 %i.hv, label %.lr.ph889.i.i.epil.preheader, label %.lr.ph889.i.i

.lr.ph886.i.i:                                    ; preds = %.lr.ph886.i.i, %.lr.ph886.preheader.i.i.new
  %indvars.iv1075.i.i = phi i64 [ 0, %.lr.ph886.preheader.i.i.new ], [ %indvars.iv.next1076.i.i.1, %.lr.ph886.i.i ] ; 3 uses
  %niter2100 = phi i64 [ 0, %.lr.ph886.preheader.i.i.new ], [ %niter2100.next.1, %.lr.ph886.i.i ]
  %i.bie = mul nuw nsw i64 %indvars.iv1075.i.i, %i.ml ; 2 uses
  %gep1222.i.i = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bie ; 2 uses
  %gep1222.i.i.a = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bie
  %30 = load double, ptr %gep1222.i.i, align 8, !tbaa !117
  %i.bif = load double, ptr %gep1222.i.i.a, align 8, !tbaa !117
  %31 = insertelement <2 x double> poison, double %i.bif, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  %33 = fmul reassoc nsz arcp contract afn <2 x double> %32, %14 ; 2 uses
  %34 = insertelement <2 x double> poison, double %30, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = fmul reassoc nsz arcp contract afn <2 x double> %35, %15 ; 2 uses
  %37 = fadd reassoc nsz arcp contract afn <2 x double> %33, %36
  %38 = fsub reassoc nsz arcp contract afn <2 x double> %33, %36
  %39 = shufflevector <2 x double> %37, <2 x double> %38, <2 x i32> <i32 0, i32 3>
  store <2 x double> %39, ptr %gep1222.i.i, align 8, !tbaa !117
  %indvars.iv.next1076.i.i = or disjoint i64 %indvars.iv1075.i.i, 1
  %i.big = mul nuw nsw i64 %indvars.iv.next1076.i.i, %i.ml ; 2 uses
  %gep1222.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.big ; 2 uses
  %gep1222.i.i.1.a = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.big
  %40 = load double, ptr %gep1222.i.i.1, align 8, !tbaa !117
  %i.bih = load double, ptr %gep1222.i.i.1.a, align 8, !tbaa !117
  %41 = insertelement <2 x double> poison, double %i.bih, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = fmul reassoc nsz arcp contract afn <2 x double> %42, %14 ; 2 uses
  %44 = insertelement <2 x double> poison, double %40, i64 0
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = fmul reassoc nsz arcp contract afn <2 x double> %45, %16 ; 2 uses
  %47 = fadd reassoc nsz arcp contract afn <2 x double> %43, %46
  %48 = fsub reassoc nsz arcp contract afn <2 x double> %43, %46
  %49 = shufflevector <2 x double> %47, <2 x double> %48, <2 x i32> <i32 0, i32 3>
  store <2 x double> %49, ptr %gep1222.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1076.i.i.1 = add nuw nsw i64 %indvars.iv1075.i.i, 2 ; 2 uses
  %niter2100.next.1 = add i64 %niter2100, 2       ; 2 uses
  %niter2100.ncmp.1 = icmp eq i64 %niter2100.next.1, %unroll_iter2099
  br i1 %niter2100.ncmp.1, label %._crit_edge887.i.i.unr-lcssa, label %.lr.ph886.i.i

.lr.ph889.i.i:                                    ; preds = %.lr.ph889.i.i.ph, %.lr.ph889.i.i
  %store_forwarded = phi double [ %i.bix, %.lr.ph889.i.i ], [ %load_initial, %.lr.ph889.i.i.ph ] ; 2 uses
  %indvars.iv1080.i.i = phi i64 [ %indvars.iv.next1081.i.i.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ] ; 3 uses
  %niter2112 = phi i64 [ %niter2112.next.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ]
  %i.bii = mul nuw nsw i64 %indvars.iv1080.i.i, %i.gs ; 2 uses
  %gep1226.i.i = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bii
  %gep1228.i.i = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bii ; 2 uses
  %i.bij = load double, ptr %gep1228.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bik = fmul reassoc nsz arcp contract afn double %store_forwarded, %.1681.i.i
  %i.bil = fmul reassoc nsz arcp contract afn double %i.bij, %.9.i.i
  %i.bim = fadd reassoc nsz arcp contract afn double %i.bil, %i.bik
  store double %i.bim, ptr %gep1226.i.i, align 8, !tbaa !117
  %i.bin = fmul reassoc nsz arcp contract afn double %i.bij, %.1681.i.i
  %i.bio = fmul reassoc nsz arcp contract afn double %store_forwarded, %.9.i.i
  %i.bip = fsub reassoc nsz arcp contract afn double %i.bin, %i.bio ; 3 uses
  store double %i.bip, ptr %gep1228.i.i, align 8, !tbaa !117
  %indvars.iv.next1081.i.i = or disjoint i64 %indvars.iv1080.i.i, 1
  %i.biq = mul nuw nsw i64 %indvars.iv.next1081.i.i, %i.gs ; 2 uses
  %gep1226.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.biq
  %gep1228.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.biq ; 2 uses
  %i.bir = load double, ptr %gep1228.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bis = fmul reassoc nsz arcp contract afn double %i.bip, %.1681.i.i
  %i.bit = fmul reassoc nsz arcp contract afn double %i.bir, %.9.i.i
  %i.biu = fadd reassoc nsz arcp contract afn double %i.bit, %i.bis
  store double %i.biu, ptr %gep1226.i.i.1, align 8, !tbaa !117
  %i.biv = fmul reassoc nsz arcp contract afn double %i.bir, %.1681.i.i
  %i.biw = fmul reassoc nsz arcp contract afn double %i.bip, %.9.i.i
  %i.bix = fsub reassoc nsz arcp contract afn double %i.biv, %i.biw ; 3 uses
  store double %i.bix, ptr %gep1228.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.1 = add nuw nsw i64 %indvars.iv1080.i.i, 2 ; 2 uses
  %niter2112.next.1 = add i64 %niter2112, 2       ; 2 uses
  %niter2112.ncmp.1 = icmp eq i64 %niter2112.next.1, %unroll_iter2111
  br i1 %niter2112.ncmp.1, label %.loopexit.i.loopexit.i.loopexit.unr-lcssa, label %.lr.ph889.i.i

._crit_edge897.i.i:                               ; preds = %.loopexit.i.loopexit.i, %PYTHAG.exit708.i.i
  %.0679.lcssa.i.i = phi double [ %i.beq, %PYTHAG.exit708.i.i ], [ %i.bfk, %.loopexit.i.loopexit.i ] ; 2 uses
  %.0673.lcssa.i.i = phi double [ %i.bdk, %PYTHAG.exit708.i.i ], [ %i.bfn, %.loopexit.i.loopexit.i ]
  store double 0.000000e+00, ptr %i.azd, align 8, !tbaa !117
  store double %.0679.lcssa.i.i, ptr %i.axy, align 8, !tbaa !117
  store double %.0673.lcssa.i.i, ptr %i.aya, align 8, !tbaa !117
  %i.biy = add nuw nsw i32 %.0631900.i.i, 1
  br label %.preheader730.i.i

.thread721.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph903.i.i
  br i1 %lcmp.mod2117.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil.preheader

.lr.ph903.i.i.epil.preheader:                     ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.preheader.i.i
  %indvars.iv1090.i.i.epil.init = phi i64 [ 0, %.lr.ph903.preheader.i.i ], [ %indvars.iv.next1091.i.i.7, %.thread721.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2118)
  br label %.lr.ph903.i.i.epil

.lr.ph903.i.i.epil:                               ; preds = %.lr.ph903.i.i.epil, %.lr.ph903.i.i.epil.preheader
  %indvars.iv1090.i.i.epil = phi i64 [ %indvars.iv1090.i.i.epil.init, %.lr.ph903.i.i.epil.preheader ], [ %indvars.iv.next1091.i.i.epil, %.lr.ph903.i.i.epil ] ; 2 uses
  %epil.iter2116 = phi i64 [ 0, %.lr.ph903.i.i.epil.preheader ], [ %epil.iter2116.next, %.lr.ph903.i.i.epil ]
  %i.biz = mul nuw nsw i64 %indvars.iv1090.i.i.epil, %i.ml
  %gep1230.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.biz ; 2 uses
  %i.bja = load double, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %i.bjb = fneg reassoc nsz arcp contract afn double %i.bja
  store double %i.bjb, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.epil = add nuw nsw i64 %indvars.iv1090.i.i.epil, 1
  %epil.iter2116.next = add i64 %epil.iter2116, 1 ; 2 uses
  %epil.iter2116.cmp.not = icmp eq i64 %epil.iter2116.next, %xtraiter2115
  br i1 %epil.iter2116.cmp.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil, !llvm.loop !101

.thread721.i.i:                                   ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.i.i.epil, %bb.z
  %indvars.iv.next1072.i.i = add nsw i32 %indvars.iv1071.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.axz, label %.critedge.i.i, label %.preheader731.i.i

bb.ak:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef 30) #17
  tail call void @free(ptr noundef nonnull %i.ob) #17
  br label %dsvd.exit.i

.critedge.i.i:                                    ; preds = %.thread721.i.i, %bb.s
  tail call void @free(ptr noundef %i.ob) #17
  br label %dsvd.exit.i

dsvd.exit.i:                                      ; preds = %.critedge.i.i, %bb.ak, %bb.r
  %i.bjc = load double, ptr %i.mt, align 8, !tbaa !117
  %i.bjd = fcmp reassoc nsz arcp contract afn olt double %i.bjc, 1.000000e-03
  br i1 %i.bjd, label %._crit_edge553, label %bb.al

bb.al:                                            ; preds = %dsvd.exit.i
  %i.bje = tail call noalias ptr @malloc(i64 noundef %i.gt) #15 ; 8 uses
  br i1 %.not422530, label %.lr.ph544, label %iter.check988

iter.check988:                                    ; preds = %bb.al, %._crit_edge.us.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %._crit_edge.us.i ], [ 0, %bb.al ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv123.i ; 11 uses
  br i1 %or.cond1925, label %vector.main.loop.iter.check962, label %vec.epilog.scalar.ph989.preheader

vector.main.loop.iter.check962:                   ; preds = %iter.check988
  br i1 %min.iters.check963, label %vec.epilog.ph992, label %vector.body966

vector.body966:                                   ; preds = %vector.main.loop.iter.check962, %vector.body966
  %index967 = phi i64 [ %index.next980, %vector.body966 ], [ 0, %vector.main.loop.iter.check962 ] ; 3 uses
  %vec.phi968 = phi <4 x double> [ %i.bjr, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi969 = phi <4 x double> [ %i.bjs, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi970 = phi <4 x double> [ %i.bjt, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi971 = phi <4 x double> [ %i.bju, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %i.bjf = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index967 ; 4 uses
  %i.bjg = getelementptr i8, ptr %i.bjf, i64 32
  %i.bjh = getelementptr i8, ptr %i.bjf, i64 64
  %i.bji = getelementptr i8, ptr %i.bjf, i64 96
  %wide.load972 = load <4 x double>, ptr %i.bjf, align 8, !tbaa !117
  %wide.load973 = load <4 x double>, ptr %i.bjg, align 8, !tbaa !117
  %wide.load974 = load <4 x double>, ptr %i.bjh, align 8, !tbaa !117
  %wide.load975 = load <4 x double>, ptr %i.bji, align 8, !tbaa !117
  %i.bjj = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %index967 ; 4 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 32
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjj, i64 64
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjj, i64 96
  %wide.load976 = load <4 x double>, ptr %i.bjj, align 8, !tbaa !117
  %wide.load977 = load <4 x double>, ptr %i.bjk, align 8, !tbaa !117
  %wide.load978 = load <4 x double>, ptr %i.bjl, align 8, !tbaa !117
  %wide.load979 = load <4 x double>, ptr %i.bjm, align 8, !tbaa !117
  %i.bjn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load976, %wide.load972
  %i.bjo = fmul reassoc nsz arcp contract afn <4 x double> %wide.load977, %wide.load973
  %i.bjp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load978, %wide.load974
  %i.bjq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load979, %wide.load975
  %i.bjr = fadd reassoc nsz arcp contract afn <4 x double> %i.bjn, %vec.phi968 ; 2 uses
  %i.bjs = fadd reassoc nsz arcp contract afn <4 x double> %i.bjo, %vec.phi969 ; 2 uses
  %i.bjt = fadd reassoc nsz arcp contract afn <4 x double> %i.bjp, %vec.phi970 ; 2 uses
  %i.bju = fadd reassoc nsz arcp contract afn <4 x double> %i.bjq, %vec.phi971 ; 2 uses
  %index.next980 = add nuw i64 %index967, 16      ; 2 uses
  %i.bjv = icmp eq i64 %index.next980, %n.vec965
  br i1 %i.bjv, label %middle.block981, label %vector.body966, !llvm.loop !102

middle.block981:                                  ; preds = %vector.body966
  %bin.rdx982 = fadd reassoc nsz arcp contract afn <4 x double> %i.bjs, %i.bjr
  %bin.rdx983 = fadd reassoc nsz arcp contract afn <4 x double> %i.bjt, %bin.rdx982
  %bin.rdx984 = fadd reassoc nsz arcp contract afn <4 x double> %i.bju, %bin.rdx983
  %i.bjw = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx984) ; 3 uses
  br i1 %cmp.n985, label %._crit_edge.us.i, label %vec.epilog.iter.check990

vec.epilog.iter.check990:                         ; preds = %middle.block981
  br i1 %min.epilog.iters.check991, label %vec.epilog.scalar.ph989.preheader, label %vec.epilog.ph992, !prof !121

vec.epilog.ph992:                                 ; preds = %vector.main.loop.iter.check962, %vec.epilog.iter.check990
  %vec.epilog.resume.val986 = phi i64 [ %n.vec965, %vec.epilog.iter.check990 ], [ 0, %vector.main.loop.iter.check962 ]
  %bc.merge.rdx987 = phi double [ %i.bjw, %vec.epilog.iter.check990 ], [ 0.000000e+00, %vector.main.loop.iter.check962 ]
  %i.bjx = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx987, i64 0
  br label %vec.epilog.vector.body994

vec.epilog.vector.body994:                        ; preds = %vec.epilog.vector.body994, %vec.epilog.ph992
  %index995 = phi i64 [ %vec.epilog.resume.val986, %vec.epilog.ph992 ], [ %index.next999, %vec.epilog.vector.body994 ] ; 3 uses
  %vec.phi996 = phi <4 x double> [ %i.bjx, %vec.epilog.ph992 ], [ %i.bkb, %vec.epilog.vector.body994 ]
  %i.bjy = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index995
  %wide.load997 = load <4 x double>, ptr %i.bjy, align 8, !tbaa !117
  %i.bjz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %index995
  %wide.load998 = load <4 x double>, ptr %i.bjz, align 8, !tbaa !117
  %i.bka = fmul reassoc nsz arcp contract afn <4 x double> %wide.load998, %wide.load997
  %i.bkb = fadd reassoc nsz arcp contract afn <4 x double> %i.bka, %vec.phi996 ; 2 uses
  %index.next999 = add nuw i64 %index995, 4       ; 2 uses
  %i.bkc = icmp eq i64 %index.next999, %n.vec993
  br i1 %i.bkc, label %vec.epilog.middle.block1000, label %vec.epilog.vector.body994, !llvm.loop !103

vec.epilog.middle.block1000:                      ; preds = %vec.epilog.vector.body994
  %i.bkd = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bkb) ; 2 uses
  br i1 %cmp.n1001, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989.preheader

vec.epilog.scalar.ph989.preheader:                ; preds = %iter.check988, %vec.epilog.iter.check990, %vec.epilog.middle.block1000
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check988 ], [ %n.vec965, %vec.epilog.iter.check990 ], [ %n.vec993, %vec.epilog.middle.block1000 ] ; 4 uses
  %.ph1928 = phi double [ 0.000000e+00, %iter.check988 ], [ %i.bjw, %vec.epilog.iter.check990 ], [ %i.bkd, %vec.epilog.middle.block1000 ] ; 2 uses
  %i.bke = sub nsw i64 %i.fc, %indvars.iv.i.ph
  %xtraiter2121 = and i64 %i.bke, 7               ; 2 uses
  %lcmp.mod2122.not = icmp eq i64 %xtraiter2121, 0
  br i1 %lcmp.mod2122.not, label %vec.epilog.scalar.ph989.prol.loopexit, label %vec.epilog.scalar.ph989.prol

vec.epilog.scalar.ph989.prol:                     ; preds = %vec.epilog.scalar.ph989.preheader, %vec.epilog.scalar.ph989.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph989.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph989.preheader ] ; 3 uses
  %i.bkf = phi double [ %i.bkl, %vec.epilog.scalar.ph989.prol ], [ %.ph1928, %vec.epilog.scalar.ph989.preheader ]
  %prol.iter2123 = phi i64 [ %prol.iter2123.next, %vec.epilog.scalar.ph989.prol ], [ 0, %vec.epilog.scalar.ph989.preheader ]
  %i.bkg = mul nsw i64 %indvars.iv.i.prol, %i.gs
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bkg
  %i.bkh = load double, ptr %gep.i.prol, align 8, !tbaa !117
  %i.bki = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv.i.prol
  %i.bkj = load double, ptr %i.bki, align 8, !tbaa !117
  %i.bkk = fmul reassoc nsz arcp contract afn double %i.bkj, %i.bkh
  %i.bkl = fadd reassoc nsz arcp contract afn double %i.bkk, %i.bkf ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter2123.next = add i64 %prol.iter2123, 1 ; 2 uses
  %prol.iter2123.cmp.not = icmp eq i64 %prol.iter2123.next, %xtraiter2121
  br i1 %prol.iter2123.cmp.not, label %vec.epilog.scalar.ph989.prol.loopexit, label %vec.epilog.scalar.ph989.prol, !llvm.loop !104

vec.epilog.scalar.ph989.prol.loopexit:            ; preds = %vec.epilog.scalar.ph989.prol, %vec.epilog.scalar.ph989.preheader
  %.lcssa1999.unr = phi double [ poison, %vec.epilog.scalar.ph989.preheader ], [ %i.bkl, %vec.epilog.scalar.ph989.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph989.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph989.prol ]
  %.unr = phi double [ %.ph1928, %vec.epilog.scalar.ph989.preheader ], [ %i.bkl, %vec.epilog.scalar.ph989.prol ]
  %i.bkm = sub nsw i64 %indvars.iv.i.ph, %i.fc
  %i.bkn = icmp ugt i64 %i.bkm, -8
  br i1 %i.bkn, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989

vec.epilog.scalar.ph989:                          ; preds = %vec.epilog.scalar.ph989.prol.loopexit, %vec.epilog.scalar.ph989
end_hunk_0
