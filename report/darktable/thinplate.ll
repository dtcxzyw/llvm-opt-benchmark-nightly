Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thinplate?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@thinplate_match:bb.a
  br i1 %i.on, label %.lr.ph903.i.i.epil.preheader, label %.lr.ph903.i.i

.lr.ph903.i.i:                                    ; preds = %.lr.ph903.preheader.i.i, %.lr.ph903.i.i
  %indvars.iv1090.i.i = phi i64 [ %indvars.iv.next1091.i.i.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ] ; 9 uses
  %niter2122 = phi i64 [ %niter2122.next.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ]
  %i.bdz = mul nuw nsw i64 %indvars.iv1090.i.i, %i.oa
  %gep1230.i.i = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bdz ; 2 uses
  %i.bea = load double, ptr %gep1230.i.i, align 8, !tbaa !117
  %i.beb = fneg reassoc nsz arcp contract afn double %i.bea
  store double %i.beb, ptr %gep1230.i.i, align 8, !tbaa !117
  %indvars.iv.next1091.i.i = or disjoint i64 %indvars.iv1090.i.i, 1
  %i.bec = mul nuw nsw i64 %indvars.iv.next1091.i.i, %i.oa
  %gep1230.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bec ; 2 uses
  %i.bed = load double, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %i.bee = fneg reassoc nsz arcp contract afn double %i.bed
  store double %i.bee, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.1 = or disjoint i64 %indvars.iv1090.i.i, 2
  %i.bef = mul nuw nsw i64 %indvars.iv.next1091.i.i.1, %i.oa
  %gep1230.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bef ; 2 uses
  %i.beg = load double, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %i.beh = fneg reassoc nsz arcp contract afn double %i.beg
  store double %i.beh, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.2 = or disjoint i64 %indvars.iv1090.i.i, 3
  %i.bei = mul nuw nsw i64 %indvars.iv.next1091.i.i.2, %i.oa
  %gep1230.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bei ; 2 uses
  %i.bej = load double, ptr %gep1230.i.i.3, align 8, !tbaa !117
  %i.bek = fneg reassoc nsz arcp contract afn double %i.bej
  store double %i.bek, ptr %gep1230.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.3 = or disjoint i64 %indvars.iv1090.i.i, 4
  %i.bel = mul nuw nsw i64 %indvars.iv.next1091.i.i.3, %i.oa
  %gep1230.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bel ; 2 uses
  %i.bem = load double, ptr %gep1230.i.i.4, align 8, !tbaa !117
  %i.ben = fneg reassoc nsz arcp contract afn double %i.bem
  store double %i.ben, ptr %gep1230.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.4 = or disjoint i64 %indvars.iv1090.i.i, 5
  %i.beo = mul nuw nsw i64 %indvars.iv.next1091.i.i.4, %i.oa
  %gep1230.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.beo ; 2 uses
  %i.bep = load double, ptr %gep1230.i.i.5, align 8, !tbaa !117
  %i.beq = fneg reassoc nsz arcp contract afn double %i.bep
  store double %i.beq, ptr %gep1230.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.5 = or disjoint i64 %indvars.iv1090.i.i, 6
  %i.ber = mul nuw nsw i64 %indvars.iv.next1091.i.i.5, %i.oa
  %gep1230.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.ber ; 2 uses
  %i.bes = load double, ptr %gep1230.i.i.6, align 8, !tbaa !117
  %i.bet = fneg reassoc nsz arcp contract afn double %i.bes
  store double %i.bet, ptr %gep1230.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.6 = or disjoint i64 %indvars.iv1090.i.i, 7
  %i.beu = mul nuw nsw i64 %indvars.iv.next1091.i.i.6, %i.oa
  %gep1230.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.beu ; 2 uses
  %i.bev = load double, ptr %gep1230.i.i.7, align 8, !tbaa !117
  %i.bew = fneg reassoc nsz arcp contract afn double %i.bev
  store double %i.bew, ptr %gep1230.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.7 = add nuw nsw i64 %indvars.iv1090.i.i, 8 ; 2 uses
  %niter2122.next.7 = add i64 %niter2122, 8       ; 2 uses
  %niter2122.ncmp.7 = icmp eq i64 %niter2122.next.7, %unroll_iter2121
  br i1 %niter2122.ncmp.7, label %.thread721.i.i.loopexit.unr-lcssa, label %.lr.ph903.i.i

bb.y:                                             ; preds = %.loopexit729.i.i
  %i.bex = icmp eq i32 %.0631900.i.i, 30
  br i1 %i.bex, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bey = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.lcssa862.i.i
  %i.bez = load double, ptr %i.bey, align 8, !tbaa !117 ; 5 uses
  %i.bfa = load double, ptr %i.azq, align 8, !tbaa !117 ; 4 uses
  %i.bfb = load double, ptr %i.azr, align 8, !tbaa !117 ; 2 uses
  %i.bfc = fsub reassoc nsz arcp contract afn double %i.bfa, %i.bdu
  %i.bfd = fadd reassoc nsz arcp contract afn double %i.bfa, %i.bdu
  %i.bfe = fmul reassoc nsz arcp contract afn double %i.bfc, %i.bfd
  %i.bff = fsub reassoc nsz arcp contract afn double %i.bfb, %i.azu
  %i.bfg = fadd reassoc nsz arcp contract afn double %i.bfb, %i.azu
  %i.bfh = fmul reassoc nsz arcp contract afn double %i.bff, %i.bfg
  %i.bfi = fadd reassoc nsz arcp contract afn double %i.bfh, %i.bfe
  %i.bfj = fmul reassoc nsz arcp contract afn double %i.azu, 2.000000e+00
  %i.bfk = fmul reassoc nsz arcp contract afn double %i.bfj, %i.bfa
  %i.bfl = fdiv reassoc nsz arcp contract afn double %i.bfi, %i.bfk ; 5 uses
  %i.bfm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bfl) ; 3 uses
  %i.bfn = fcmp reassoc nsz arcp contract afn ogt double %i.bfm, 1.000000e+00
  br i1 %i.bfn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bfo = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bfm ; 2 uses
  %i.bfp = fmul reassoc nsz arcp contract afn double %i.bfo, %i.bfo
  %i.bfq = fadd reassoc nsz arcp contract afn double %i.bfp, 1.000000e+00
  %i.bfr = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bfq)
  %i.bfs = fmul reassoc nsz arcp contract afn double %i.bfr, %i.bfm
  br label %PYTHAG.exit708.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bft = fmul reassoc nsz arcp contract afn double %i.bfl, %i.bfl
  %i.bfu = fadd reassoc nsz arcp contract afn double %i.bft, 1.000000e+00
  %i.bfv = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bfu)
  br label %PYTHAG.exit708.i.i

PYTHAG.exit708.i.i:                               ; preds = %bb.ab, %bb.aa
  %.0.i707.i.i = phi nsz double [ %i.bfs, %bb.aa ], [ %i.bfv, %bb.ab ]
  %i.bfw = fsub reassoc nsz arcp contract afn double %i.bez, %i.bdu
  %i.bfx = fadd reassoc nsz arcp contract afn double %i.bez, %i.bdu
  %i.bfy = fmul reassoc nsz arcp contract afn double %i.bfw, %i.bfx
  %i.bfz = tail call reassoc nsz arcp contract afn noundef double @llvm.copysign.f64(double %.0.i707.i.i, double %i.bfl)
  %i.bga = fadd reassoc nsz arcp contract afn double %i.bfz, %i.bfl
  %i.bgb = fdiv reassoc nsz arcp contract afn double %i.bfa, %i.bga
  %i.bgc = fsub reassoc nsz arcp contract afn double %i.bgb, %i.azu
  %i.bgd = fmul reassoc nsz arcp contract afn double %i.bgc, %i.azu
  %i.bge = fadd reassoc nsz arcp contract afn double %i.bgd, %i.bfy
  %i.bgf = fdiv reassoc nsz arcp contract afn double %i.bge, %i.bez ; 2 uses
  %.not695.not890.i.i = icmp sgt i64 %indvars.iv1095.i.i, %i.bat
  br i1 %.not695.not890.i.i, label %.lr.ph896.i.i, label %._crit_edge897.i.i

.loopexit.i.loopexit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph889.i.i
  br i1 %lcmp.mod2111.not, label %.loopexit.i.loopexit.i, label %.lr.ph889.i.i.epil.preheader

.lr.ph889.i.i.epil.preheader:                     ; preds = %.loopexit.i.loopexit.i.loopexit.unr-lcssa, %.lr.ph889.i.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph889.i.i.ph ], [ %i.bkm, %.loopexit.i.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv1080.i.i.epil.init = phi i64 [ 0, %.lr.ph889.i.i.ph ], [ %indvars.iv.next1081.i.i.1, %.loopexit.i.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2112)
  %i.bgg = mul nuw nsw i64 %indvars.iv1080.i.i.epil.init, %i.ih ; 2 uses
  %gep1226.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bgg
  %gep1228.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bgg ; 2 uses
  %i.bgh = load double, ptr %gep1228.i.i.epil, align 8, !tbaa !117 ; 2 uses
  %i.bgi = fmul reassoc nsz arcp contract afn double %store_forwarded.epil.init, %.1681.i.i
  %i.bgj = fmul reassoc nsz arcp contract afn double %i.bgh, %.9.i.i
  %i.bgk = fadd reassoc nsz arcp contract afn double %i.bgj, %i.bgi
  store double %i.bgk, ptr %gep1226.i.i.epil, align 8, !tbaa !117
  %i.bgl = fmul reassoc nsz arcp contract afn double %i.bgh, %.1681.i.i
  %i.bgm = fmul reassoc nsz arcp contract afn double %store_forwarded.epil.init, %.9.i.i
  %i.bgn = fsub reassoc nsz arcp contract afn double %i.bgl, %i.bgm
  store double %i.bgn, ptr %gep1228.i.i.epil, align 8, !tbaa !117
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i.loopexit1926.unr-lcssa:    ; preds = %.lr.ph889.i.i.lver.orig
  br i1 %lcmp.mod2105.not, label %.loopexit.i.loopexit.i, label %.lr.ph889.i.i.lver.orig.epil.preheader

.lr.ph889.i.i.lver.orig.epil.preheader:           ; preds = %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, %.lr.ph889.i.i.lver.orig.preheader
  %indvars.iv1080.i.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph889.i.i.lver.orig.preheader ], [ %indvars.iv.next1081.i.i.lver.orig.1, %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2106)
  %i.bgo = mul nsw i64 %indvars.iv1080.i.i.lver.orig.epil.init, %i.ih ; 2 uses
  %gep1226.i.i.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bgo ; 2 uses
  %i.bgp = load double, ptr %gep1226.i.i.lver.orig.epil, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bgo ; 2 uses
  %i.bgq = load double, ptr %gep1228.i.i.lver.orig.epil, align 8, !tbaa !117 ; 2 uses
  %i.bgr = fmul reassoc nsz arcp contract afn double %i.bgp, %.1681.i.i
  %i.bgs = fmul reassoc nsz arcp contract afn double %i.bgq, %.9.i.i
  %i.bgt = fadd reassoc nsz arcp contract afn double %i.bgs, %i.bgr
  store double %i.bgt, ptr %gep1226.i.i.lver.orig.epil, align 8, !tbaa !117
  %i.bgu = fmul reassoc nsz arcp contract afn double %i.bgq, %.1681.i.i
  %i.bgv = fmul reassoc nsz arcp contract afn double %i.bgp, %.9.i.i
  %i.bgw = fsub reassoc nsz arcp contract afn double %i.bgu, %i.bgv
  store double %i.bgw, ptr %gep1228.i.i.lver.orig.epil, align 8, !tbaa !117
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph889.i.i.lver.orig.epil.preheader, %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, %.lr.ph889.i.i.epil.preheader, %.loopexit.i.loopexit.i.loopexit.unr-lcssa
  %i.bgx = fmul reassoc nsz arcp contract afn double %.1681.i.i, %i.bif
  %i.bgy = fmul reassoc nsz arcp contract afn double %.9.i.i, %i.bih
  %i.bgz = fadd reassoc nsz arcp contract afn double %i.bgx, %i.bgy ; 2 uses
  %i.bha = fmul reassoc nsz arcp contract afn double %.1681.i.i, %i.bih
  %i.bhb = fmul reassoc nsz arcp contract afn double %.9.i.i, %i.bif
  %i.bhc = fsub reassoc nsz arcp contract afn double %i.bha, %i.bhb ; 2 uses
  %exitcond1089.not.i.i = icmp eq i64 %indvars.iv.next1086.i.i, %indvars.iv1095.i.i
  br i1 %exitcond1089.not.i.i, label %._crit_edge897.i.i, label %.lr.ph896.i.i

.lr.ph896.i.i:                                    ; preds = %PYTHAG.exit708.i.i, %.loopexit.i.loopexit.i
  %indvars.iv1085.i.i = phi i64 [ %indvars.iv.next1086.i.i, %.loopexit.i.loopexit.i ], [ %i.bat, %PYTHAG.exit708.i.i ] ; 5 uses
  %.0673894.i.i = phi double [ %i.bhc, %.loopexit.i.loopexit.i ], [ %i.bez, %PYTHAG.exit708.i.i ] ; 2 uses
  %.8893.i.i = phi double [ %.9.i.i, %.loopexit.i.loopexit.i ], [ 1.000000e+00, %PYTHAG.exit708.i.i ]
  %.0679892.i.i = phi double [ %i.bgz, %.loopexit.i.loopexit.i ], [ %i.bgf, %PYTHAG.exit708.i.i ] ; 2 uses
  %.0680891.i.i = phi double [ %.1681.i.i, %.loopexit.i.loopexit.i ], [ 1.000000e+00, %PYTHAG.exit708.i.i ]
  %indvars.iv.next1086.i.i = add nuw nsw i64 %indvars.iv1085.i.i, 1 ; 6 uses
  %i.bhd = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv.next1086.i.i
  %i.bhe = load double, ptr %i.bhd, align 8, !tbaa !117 ; 2 uses
  %i.bhf = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next1086.i.i
  %i.bhg = load double, ptr %i.bhf, align 8, !tbaa !117 ; 2 uses
  %i.bhh = fmul reassoc nsz arcp contract afn double %i.bhe, %.8893.i.i ; 3 uses
  %i.bhi = fmul reassoc nsz arcp contract afn double %i.bhe, %.0680891.i.i ; 2 uses
  %i.bhj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.0679892.i.i) ; 4 uses
  %i.bhk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bhh) ; 4 uses
  %i.bhl = fcmp reassoc nsz arcp contract afn ogt double %i.bhj, %i.bhk
  br i1 %i.bhl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph896.i.i
  %i.bhm = fdiv reassoc nsz arcp contract afn double %i.bhk, %i.bhj ; 2 uses
  %i.bhn = fmul reassoc nsz arcp contract afn double %i.bhm, %i.bhm
  %i.bho = fadd reassoc nsz arcp contract afn double %i.bhn, 1.000000e+00
  %i.bhp = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bho)
  %i.bhq = fmul reassoc nsz arcp contract afn double %i.bhp, %i.bhj
  br label %.lr.ph886.preheader.i.i

bb.ad:                                            ; preds = %.lr.ph896.i.i
  %i.bhr = fcmp reassoc nsz arcp contract afn ueq double %i.bhh, 0.000000e+00
  br i1 %i.bhr, label %.lr.ph886.preheader.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bhs = fdiv reassoc nsz arcp contract afn double %i.bhj, %i.bhk ; 2 uses
  %i.bht = fmul reassoc nsz arcp contract afn double %i.bhs, %i.bhs
  %i.bhu = fadd reassoc nsz arcp contract afn double %i.bht, 1.000000e+00
  %i.bhv = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bhu)
  %i.bhw = fmul reassoc nsz arcp contract afn double %i.bhv, %i.bhk
  br label %.lr.ph886.preheader.i.i

.lr.ph886.preheader.i.i:                          ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i709.i.i = phi nsz double [ %i.bhq, %bb.ac ], [ %i.bhw, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 3 uses
  %i.bhx = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv1085.i.i
  store double %.0.i709.i.i, ptr %i.bhx, align 8, !tbaa !117
  %10 = fdiv reassoc nsz arcp contract afn double %.0679892.i.i, %.0.i709.i.i ; 10 uses
  %11 = fdiv reassoc nsz arcp contract afn double %i.bhh, %.0.i709.i.i ; 10 uses
  %invariant.gep1221.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1085.i.i ; 3 uses
  %invariant.gep1223.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv.next1086.i.i ; 3 uses
  br i1 %i.om, label %.lr.ph886.i.i.epil.preheader, label %.lr.ph886.i.i

._crit_edge887.i.i.unr-lcssa:                     ; preds = %.lr.ph886.i.i
  br i1 %lcmp.mod2099.not, label %._crit_edge887.i.i, label %.lr.ph886.i.i.epil.preheader

.lr.ph886.i.i.epil.preheader:                     ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.preheader.i.i
  %indvars.iv1075.i.i.epil.init = phi i64 [ 0, %.lr.ph886.preheader.i.i ], [ %indvars.iv.next1076.i.i.1, %._crit_edge887.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2100)
  %i.bhy = mul nuw nsw i64 %indvars.iv1075.i.i.epil.init, %i.oa ; 2 uses
  %gep1222.i.i.epil.a = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bhy ; 2 uses
  %i.bhz = load double, ptr %gep1222.i.i.epil.a, align 8, !tbaa !117 ; 2 uses
  %gep1224.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bhy ; 2 uses
  %12 = load double, ptr %gep1224.i.i.epil, align 8, !tbaa !117 ; 2 uses
  %13 = fmul reassoc nsz arcp contract afn double %i.bhz, %10
  %14 = fmul reassoc nsz arcp contract afn double %12, %11
  %15 = fadd reassoc nsz arcp contract afn double %14, %13
  store double %15, ptr %gep1222.i.i.epil.a, align 8, !tbaa !117
  %16 = fmul reassoc nsz arcp contract afn double %12, %10
  %17 = fmul reassoc nsz arcp contract afn double %i.bhz, %11
  %18 = fsub reassoc nsz arcp contract afn double %16, %17
  store double %18, ptr %gep1224.i.i.epil, align 8, !tbaa !117
  br label %._crit_edge887.i.i

._crit_edge887.i.i:                               ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.i.i.epil.preheader
  %i.bia = fmul reassoc nsz arcp contract afn double %10, %.0673894.i.i
  %i.bib = fmul reassoc nsz arcp contract afn double %11, %i.bhi
  %i.bic = fadd reassoc nsz arcp contract afn double %i.bia, %i.bib ; 2 uses
  %i.bid = fmul reassoc nsz arcp contract afn double %10, %i.bhi
  %i.bie = fmul reassoc nsz arcp contract afn double %11, %.0673894.i.i
  %i.bif = fsub reassoc nsz arcp contract afn double %i.bid, %i.bie ; 2 uses
  %i.big = fmul reassoc nsz arcp contract afn double %11, %i.bhg ; 3 uses
  %i.bih = fmul reassoc nsz arcp contract afn double %10, %i.bhg ; 2 uses
  %i.bii = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bic) ; 4 uses
  %i.bij = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.big) ; 4 uses
  %i.bik = fcmp reassoc nsz arcp contract afn ogt double %i.bii, %i.bij
  br i1 %i.bik, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge887.i.i
  %i.bil = fdiv reassoc nsz arcp contract afn double %i.bij, %i.bii ; 2 uses
  %i.bim = fmul reassoc nsz arcp contract afn double %i.bil, %i.bil
  %i.bin = fadd reassoc nsz arcp contract afn double %i.bim, 1.000000e+00
  %i.bio = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bin)
  %i.bip = fmul reassoc nsz arcp contract afn double %i.bio, %i.bii
  br label %.lr.ph889.i.i.lver.check

bb.ag:                                            ; preds = %._crit_edge887.i.i
  %i.biq = fcmp reassoc nsz arcp contract afn ueq double %i.big, 0.000000e+00
  br i1 %i.biq, label %.lr.ph889.i.i.lver.check, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bir = fdiv reassoc nsz arcp contract afn double %i.bii, %i.bij ; 2 uses
  %i.bis = fmul reassoc nsz arcp contract afn double %i.bir, %i.bir
  %i.bit = fadd reassoc nsz arcp contract afn double %i.bis, 1.000000e+00
  %i.biu = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bit)
  %i.biv = fmul reassoc nsz arcp contract afn double %i.biu, %i.bij
  br label %.lr.ph889.i.i.lver.check

.lr.ph889.i.i.lver.check:                         ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i711.i.i = phi nsz double [ %i.bip, %bb.af ], [ %i.biv, %bb.ah ], [ 0.000000e+00, %bb.ag ] ; 3 uses
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1085.i.i
  store double %.0.i711.i.i, ptr %i.biw, align 8, !tbaa !117
  %i.bix = fcmp reassoc nsz arcp contract afn une double %.0.i711.i.i, 0.000000e+00 ; 2 uses
  %i.biy = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i711.i.i ; 2 uses
  %i.biz = fmul reassoc nsz arcp contract afn double %i.biy, %i.bic
  %i.bja = fmul reassoc nsz arcp contract afn double %i.biy, %i.big
  %.1681.i.i = select nsz i1 %i.bix, double %i.biz, double %10 ; 15 uses
  %.9.i.i = select nsz i1 %i.bix, double %i.bja, double %11 ; 15 uses
  %invariant.gep1225.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1085.i.i ; 7 uses
  %invariant.gep1227.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv.next1086.i.i ; 6 uses
  br i1 %ident.check1912.not, label %.lr.ph889.i.i.ph, label %.lr.ph889.i.i.lver.orig.preheader

.lr.ph889.i.i.lver.orig.preheader:                ; preds = %.lr.ph889.i.i.lver.check
  br i1 %i.jj, label %.lr.ph889.i.i.lver.orig.epil.preheader, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.lver.orig:                          ; preds = %.lr.ph889.i.i.lver.orig.preheader, %.lr.ph889.i.i.lver.orig
  %indvars.iv1080.i.i.lver.orig = phi i64 [ %indvars.iv.next1081.i.i.lver.orig.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ] ; 3 uses
  %niter2108 = phi i64 [ %niter2108.next.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ]
  %i.bjb = mul nsw i64 %indvars.iv1080.i.i.lver.orig, %i.ih ; 2 uses
  %gep1226.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bjb ; 2 uses
  %i.bjc = load double, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bjb ; 2 uses
  %i.bjd = load double, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %i.bje = fmul reassoc nsz arcp contract afn double %i.bjc, %.1681.i.i
  %i.bjf = fmul reassoc nsz arcp contract afn double %i.bjd, %.9.i.i
  %i.bjg = fadd reassoc nsz arcp contract afn double %i.bjf, %i.bje
  store double %i.bjg, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117
  %i.bjh = fmul reassoc nsz arcp contract afn double %i.bjd, %.1681.i.i
  %i.bji = fmul reassoc nsz arcp contract afn double %i.bjc, %.9.i.i
  %i.bjj = fsub reassoc nsz arcp contract afn double %i.bjh, %i.bji
  store double %i.bjj, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig = or disjoint i64 %indvars.iv1080.i.i.lver.orig, 1
  %i.bjk = mul nsw i64 %indvars.iv.next1081.i.i.lver.orig, %i.ih ; 2 uses
  %gep1226.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bjk ; 2 uses
  %i.bjl = load double, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bjk ; 2 uses
  %i.bjm = load double, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %i.bjn = fmul reassoc nsz arcp contract afn double %i.bjl, %.1681.i.i
  %i.bjo = fmul reassoc nsz arcp contract afn double %i.bjm, %.9.i.i
  %i.bjp = fadd reassoc nsz arcp contract afn double %i.bjo, %i.bjn
  store double %i.bjp, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117
  %i.bjq = fmul reassoc nsz arcp contract afn double %i.bjm, %.1681.i.i
  %i.bjr = fmul reassoc nsz arcp contract afn double %i.bjl, %.9.i.i
  %i.bjs = fsub reassoc nsz arcp contract afn double %i.bjq, %i.bjr
  store double %i.bjs, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig.1 = add nuw nsw i64 %indvars.iv1080.i.i.lver.orig, 2 ; 2 uses
  %niter2108.next.1 = add i64 %niter2108, 2       ; 2 uses
  %niter2108.ncmp.1 = icmp eq i64 %niter2108.next.1, %unroll_iter2107
  br i1 %niter2108.ncmp.1, label %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.ph:                                 ; preds = %.lr.ph889.i.i.lver.check
  %load_initial = load double, ptr %invariant.gep1225.i.i, align 8 ; 2 uses
  br i1 %i.jk, label %.lr.ph889.i.i.epil.preheader, label %.lr.ph889.i.i

.lr.ph886.i.i:                                    ; preds = %.lr.ph886.preheader.i.i, %.lr.ph886.i.i
  %indvars.iv1075.i.i = phi i64 [ %indvars.iv.next1076.i.i.1, %.lr.ph886.i.i ], [ 0, %.lr.ph886.preheader.i.i ] ; 3 uses
  %niter2102 = phi i64 [ %niter2102.next.1, %.lr.ph886.i.i ], [ 0, %.lr.ph886.preheader.i.i ]
  %i.bjt = mul nuw nsw i64 %indvars.iv1075.i.i, %i.oa ; 2 uses
  %gep1222.i.i.a = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bjt ; 2 uses
  %i.bju = load double, ptr %gep1222.i.i.a, align 8, !tbaa !117 ; 2 uses
  %gep1224.i.i = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bjt ; 2 uses
  %19 = load double, ptr %gep1224.i.i, align 8, !tbaa !117 ; 2 uses
  %20 = fmul reassoc nsz arcp contract afn double %i.bju, %10
  %21 = fmul reassoc nsz arcp contract afn double %19, %11
  %22 = fadd reassoc nsz arcp contract afn double %21, %20
  store double %22, ptr %gep1222.i.i.a, align 8, !tbaa !117
  %23 = fmul reassoc nsz arcp contract afn double %19, %10
  %24 = fmul reassoc nsz arcp contract afn double %i.bju, %11
  %25 = fsub reassoc nsz arcp contract afn double %23, %24
  store double %25, ptr %gep1224.i.i, align 8, !tbaa !117
  %indvars.iv.next1076.i.i = or disjoint i64 %indvars.iv1075.i.i, 1
  %i.bjv = mul nuw nsw i64 %indvars.iv.next1076.i.i, %i.oa ; 2 uses
  %gep1222.i.i.1.a = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bjv ; 2 uses
  %i.bjw = load double, ptr %gep1222.i.i.1.a, align 8, !tbaa !117 ; 2 uses
  %gep1224.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bjv ; 2 uses
  %26 = load double, ptr %gep1224.i.i.1, align 8, !tbaa !117 ; 2 uses
  %27 = fmul reassoc nsz arcp contract afn double %i.bjw, %10
  %28 = fmul reassoc nsz arcp contract afn double %26, %11
  %29 = fadd reassoc nsz arcp contract afn double %28, %27
  store double %29, ptr %gep1222.i.i.1.a, align 8, !tbaa !117
  %30 = fmul reassoc nsz arcp contract afn double %26, %10
  %31 = fmul reassoc nsz arcp contract afn double %i.bjw, %11
  %32 = fsub reassoc nsz arcp contract afn double %30, %31
  store double %32, ptr %gep1224.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1076.i.i.1 = add nuw nsw i64 %indvars.iv1075.i.i, 2 ; 2 uses
  %niter2102.next.1 = add i64 %niter2102, 2       ; 2 uses
  %niter2102.ncmp.1 = icmp eq i64 %niter2102.next.1, %unroll_iter2101
  br i1 %niter2102.ncmp.1, label %._crit_edge887.i.i.unr-lcssa, label %.lr.ph886.i.i

.lr.ph889.i.i:                                    ; preds = %.lr.ph889.i.i.ph, %.lr.ph889.i.i
  %store_forwarded = phi double [ %i.bkm, %.lr.ph889.i.i ], [ %load_initial, %.lr.ph889.i.i.ph ] ; 2 uses
  %indvars.iv1080.i.i = phi i64 [ %indvars.iv.next1081.i.i.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ] ; 3 uses
  %niter2114 = phi i64 [ %niter2114.next.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ]
  %i.bjx = mul nuw nsw i64 %indvars.iv1080.i.i, %i.ih ; 2 uses
  %gep1226.i.i = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bjx
  %gep1228.i.i = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bjx ; 2 uses
  %i.bjy = load double, ptr %gep1228.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bjz = fmul reassoc nsz arcp contract afn double %store_forwarded, %.1681.i.i
  %i.bka = fmul reassoc nsz arcp contract afn double %i.bjy, %.9.i.i
  %i.bkb = fadd reassoc nsz arcp contract afn double %i.bka, %i.bjz
  store double %i.bkb, ptr %gep1226.i.i, align 8, !tbaa !117
  %i.bkc = fmul reassoc nsz arcp contract afn double %i.bjy, %.1681.i.i
  %i.bkd = fmul reassoc nsz arcp contract afn double %store_forwarded, %.9.i.i
  %i.bke = fsub reassoc nsz arcp contract afn double %i.bkc, %i.bkd ; 3 uses
  store double %i.bke, ptr %gep1228.i.i, align 8, !tbaa !117
  %indvars.iv.next1081.i.i = or disjoint i64 %indvars.iv1080.i.i, 1
  %i.bkf = mul nuw nsw i64 %indvars.iv.next1081.i.i, %i.ih ; 2 uses
  %gep1226.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bkf
  %gep1228.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bkf ; 2 uses
  %i.bkg = load double, ptr %gep1228.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bkh = fmul reassoc nsz arcp contract afn double %i.bke, %.1681.i.i
  %i.bki = fmul reassoc nsz arcp contract afn double %i.bkg, %.9.i.i
  %i.bkj = fadd reassoc nsz arcp contract afn double %i.bki, %i.bkh
  store double %i.bkj, ptr %gep1226.i.i.1, align 8, !tbaa !117
  %i.bkk = fmul reassoc nsz arcp contract afn double %i.bkg, %.1681.i.i
  %i.bkl = fmul reassoc nsz arcp contract afn double %i.bke, %.9.i.i
  %i.bkm = fsub reassoc nsz arcp contract afn double %i.bkk, %i.bkl ; 3 uses
  store double %i.bkm, ptr %gep1228.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.1 = add nuw nsw i64 %indvars.iv1080.i.i, 2 ; 2 uses
  %niter2114.next.1 = add i64 %niter2114, 2       ; 2 uses
  %niter2114.ncmp.1 = icmp eq i64 %niter2114.next.1, %unroll_iter2113
  br i1 %niter2114.ncmp.1, label %.loopexit.i.loopexit.i.loopexit.unr-lcssa, label %.lr.ph889.i.i

._crit_edge897.i.i:                               ; preds = %.loopexit.i.loopexit.i, %PYTHAG.exit708.i.i
  %.0679.lcssa.i.i = phi double [ %i.bgf, %PYTHAG.exit708.i.i ], [ %i.bgz, %.loopexit.i.loopexit.i ] ; 2 uses
  %.0673.lcssa.i.i = phi double [ %i.bez, %PYTHAG.exit708.i.i ], [ %i.bhc, %.loopexit.i.loopexit.i ]
  store double 0.000000e+00, ptr %i.bas, align 8, !tbaa !117
  store double %.0679.lcssa.i.i, ptr %i.azn, align 8, !tbaa !117
  store double %.0673.lcssa.i.i, ptr %i.azp, align 8, !tbaa !117
  %i.bkn = add nuw nsw i32 %.0631900.i.i, 1
  br label %.preheader730.i.i

.thread721.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph903.i.i
  br i1 %lcmp.mod2119.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil.preheader

.lr.ph903.i.i.epil.preheader:                     ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.preheader.i.i
  %indvars.iv1090.i.i.epil.init = phi i64 [ 0, %.lr.ph903.preheader.i.i ], [ %indvars.iv.next1091.i.i.7, %.thread721.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2120)
  br label %.lr.ph903.i.i.epil

.lr.ph903.i.i.epil:                               ; preds = %.lr.ph903.i.i.epil, %.lr.ph903.i.i.epil.preheader
  %indvars.iv1090.i.i.epil = phi i64 [ %indvars.iv1090.i.i.epil.init, %.lr.ph903.i.i.epil.preheader ], [ %indvars.iv.next1091.i.i.epil, %.lr.ph903.i.i.epil ] ; 2 uses
  %epil.iter2118 = phi i64 [ 0, %.lr.ph903.i.i.epil.preheader ], [ %epil.iter2118.next, %.lr.ph903.i.i.epil ]
  %i.bko = mul nuw nsw i64 %indvars.iv1090.i.i.epil, %i.oa
  %gep1230.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bko ; 2 uses
  %i.bkp = load double, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %i.bkq = fneg reassoc nsz arcp contract afn double %i.bkp
  store double %i.bkq, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.epil = add nuw nsw i64 %indvars.iv1090.i.i.epil, 1
  %epil.iter2118.next = add i64 %epil.iter2118, 1 ; 2 uses
  %epil.iter2118.cmp.not = icmp eq i64 %epil.iter2118.next, %xtraiter2117
  br i1 %epil.iter2118.cmp.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil, !llvm.loop !101

.thread721.i.i:                                   ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.i.i.epil, %bb.x
  %indvars.iv.next1072.i.i = add nsw i32 %indvars.iv1071.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.azo, label %.critedge.i.i, label %.preheader731.i.i

bb.ai:                                            ; preds = %bb.y
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef 30) #17
  tail call void @free(ptr noundef nonnull %i.pq) #17
  br label %dsvd.exit.i

.critedge.i.i:                                    ; preds = %.thread721.i.i, %bb.q
  tail call void @free(ptr noundef %i.pq) #17
  br label %dsvd.exit.i

dsvd.exit.i:                                      ; preds = %.critedge.i.i, %bb.ai, %bb.p
  %i.bkr = load double, ptr %i.oi, align 8, !tbaa !117
  %i.bks = fcmp reassoc nsz arcp contract afn olt double %i.bkr, 1.000000e-03
  br i1 %i.bks, label %._crit_edge553, label %bb.aj

bb.aj:                                            ; preds = %dsvd.exit.i
  %i.bkt = tail call noalias ptr @malloc(i64 noundef %i.ii) #15 ; 8 uses
  br i1 %.not422530, label %.lr.ph544, label %iter.check988

iter.check988:                                    ; preds = %bb.aj, %._crit_edge.us.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %._crit_edge.us.i ], [ 0, %bb.aj ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv123.i ; 11 uses
  br i1 %or.cond1925, label %vector.main.loop.iter.check962, label %vec.epilog.scalar.ph989.preheader

vector.main.loop.iter.check962:                   ; preds = %iter.check988
  br i1 %min.iters.check963, label %vec.epilog.ph992, label %vector.body966

vector.body966:                                   ; preds = %vector.main.loop.iter.check962, %vector.body966
  %index967 = phi i64 [ %index.next980, %vector.body966 ], [ 0, %vector.main.loop.iter.check962 ] ; 3 uses
  %vec.phi968 = phi <4 x double> [ %i.blg, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi969 = phi <4 x double> [ %i.blh, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi970 = phi <4 x double> [ %i.bli, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi971 = phi <4 x double> [ %i.blj, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %i.bku = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index967 ; 4 uses
  %i.bkv = getelementptr i8, ptr %i.bku, i64 32
  %i.bkw = getelementptr i8, ptr %i.bku, i64 64
  %i.bkx = getelementptr i8, ptr %i.bku, i64 96
  %wide.load972 = load <4 x double>, ptr %i.bku, align 8, !tbaa !117
  %wide.load973 = load <4 x double>, ptr %i.bkv, align 8, !tbaa !117
  %wide.load974 = load <4 x double>, ptr %i.bkw, align 8, !tbaa !117
  %wide.load975 = load <4 x double>, ptr %i.bkx, align 8, !tbaa !117
  %i.bky = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %index967 ; 4 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 32
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bky, i64 64
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bky, i64 96
  %wide.load976 = load <4 x double>, ptr %i.bky, align 8, !tbaa !117
  %wide.load977 = load <4 x double>, ptr %i.bkz, align 8, !tbaa !117
  %wide.load978 = load <4 x double>, ptr %i.bla, align 8, !tbaa !117
  %wide.load979 = load <4 x double>, ptr %i.blb, align 8, !tbaa !117
  %i.blc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load976, %wide.load972
  %i.bld = fmul reassoc nsz arcp contract afn <4 x double> %wide.load977, %wide.load973
  %i.ble = fmul reassoc nsz arcp contract afn <4 x double> %wide.load978, %wide.load974
  %i.blf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load979, %wide.load975
  %i.blg = fadd reassoc nsz arcp contract afn <4 x double> %i.blc, %vec.phi968 ; 2 uses
  %i.blh = fadd reassoc nsz arcp contract afn <4 x double> %i.bld, %vec.phi969 ; 2 uses
  %i.bli = fadd reassoc nsz arcp contract afn <4 x double> %i.ble, %vec.phi970 ; 2 uses
  %i.blj = fadd reassoc nsz arcp contract afn <4 x double> %i.blf, %vec.phi971 ; 2 uses
  %index.next980 = add nuw i64 %index967, 16      ; 2 uses
  %i.blk = icmp eq i64 %index.next980, %n.vec965
  br i1 %i.blk, label %middle.block981, label %vector.body966, !llvm.loop !102

middle.block981:                                  ; preds = %vector.body966
  %bin.rdx982 = fadd reassoc nsz arcp contract afn <4 x double> %i.blh, %i.blg
  %bin.rdx983 = fadd reassoc nsz arcp contract afn <4 x double> %i.bli, %bin.rdx982
  %bin.rdx984 = fadd reassoc nsz arcp contract afn <4 x double> %i.blj, %bin.rdx983
  %i.bll = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx984) ; 3 uses
  br i1 %cmp.n985, label %._crit_edge.us.i, label %vec.epilog.iter.check990

vec.epilog.iter.check990:                         ; preds = %middle.block981
  br i1 %min.epilog.iters.check991, label %vec.epilog.scalar.ph989.preheader, label %vec.epilog.ph992, !prof !121

vec.epilog.ph992:                                 ; preds = %vector.main.loop.iter.check962, %vec.epilog.iter.check990
  %vec.epilog.resume.val986 = phi i64 [ %n.vec965, %vec.epilog.iter.check990 ], [ 0, %vector.main.loop.iter.check962 ]
  %bc.merge.rdx987 = phi double [ %i.bll, %vec.epilog.iter.check990 ], [ 0.000000e+00, %vector.main.loop.iter.check962 ]
  %i.blm = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx987, i64 0
  br label %vec.epilog.vector.body994

vec.epilog.vector.body994:                        ; preds = %vec.epilog.vector.body994, %vec.epilog.ph992
  %index995 = phi i64 [ %vec.epilog.resume.val986, %vec.epilog.ph992 ], [ %index.next999, %vec.epilog.vector.body994 ] ; 3 uses
  %vec.phi996 = phi <4 x double> [ %i.blm, %vec.epilog.ph992 ], [ %i.blq, %vec.epilog.vector.body994 ]
  %i.bln = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index995
  %wide.load997 = load <4 x double>, ptr %i.bln, align 8, !tbaa !117
  %i.blo = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %index995
  %wide.load998 = load <4 x double>, ptr %i.blo, align 8, !tbaa !117
  %i.blp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load998, %wide.load997
  %i.blq = fadd reassoc nsz arcp contract afn <4 x double> %i.blp, %vec.phi996 ; 2 uses
  %index.next999 = add nuw i64 %index995, 4       ; 2 uses
  %i.blr = icmp eq i64 %index.next999, %n.vec993
  br i1 %i.blr, label %vec.epilog.middle.block1000, label %vec.epilog.vector.body994, !llvm.loop !103

vec.epilog.middle.block1000:                      ; preds = %vec.epilog.vector.body994
  %i.bls = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.blq) ; 2 uses
  br i1 %cmp.n1001, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989.preheader

vec.epilog.scalar.ph989.preheader:                ; preds = %iter.check988, %vec.epilog.iter.check990, %vec.epilog.middle.block1000
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check988 ], [ %n.vec965, %vec.epilog.iter.check990 ], [ %n.vec993, %vec.epilog.middle.block1000 ] ; 4 uses
  %.ph1928 = phi double [ 0.000000e+00, %iter.check988 ], [ %i.bll, %vec.epilog.iter.check990 ], [ %i.bls, %vec.epilog.middle.block1000 ] ; 2 uses
  %i.blt = sub nsw i64 %i.gr, %indvars.iv.i.ph
  %xtraiter2123 = and i64 %i.blt, 7               ; 2 uses
  %lcmp.mod2124.not = icmp eq i64 %xtraiter2123, 0
  br i1 %lcmp.mod2124.not, label %vec.epilog.scalar.ph989.prol.loopexit, label %vec.epilog.scalar.ph989.prol

vec.epilog.scalar.ph989.prol:                     ; preds = %vec.epilog.scalar.ph989.preheader, %vec.epilog.scalar.ph989.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph989.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph989.preheader ] ; 3 uses
  %i.blu = phi double [ %i.bma, %vec.epilog.scalar.ph989.prol ], [ %.ph1928, %vec.epilog.scalar.ph989.preheader ]
  %prol.iter2125 = phi i64 [ %prol.iter2125.next, %vec.epilog.scalar.ph989.prol ], [ 0, %vec.epilog.scalar.ph989.preheader ]
  %i.blv = mul nsw i64 %indvars.iv.i.prol, %i.ih
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.blv
  %i.blw = load double, ptr %gep.i.prol, align 8, !tbaa !117
  %i.blx = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.i.prol
  %i.bly = load double, ptr %i.blx, align 8, !tbaa !117
  %i.blz = fmul reassoc nsz arcp contract afn double %i.bly, %i.blw
  %i.bma = fadd reassoc nsz arcp contract afn double %i.blz, %i.blu ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter2125.next = add i64 %prol.iter2125, 1 ; 2 uses
  %prol.iter2125.cmp.not = icmp eq i64 %prol.iter2125.next, %xtraiter2123
  br i1 %prol.iter2125.cmp.not, label %vec.epilog.scalar.ph989.prol.loopexit, label %vec.epilog.scalar.ph989.prol, !llvm.loop !104

vec.epilog.scalar.ph989.prol.loopexit:            ; preds = %vec.epilog.scalar.ph989.prol, %vec.epilog.scalar.ph989.preheader
  %.lcssa1999.unr = phi double [ poison, %vec.epilog.scalar.ph989.preheader ], [ %i.bma, %vec.epilog.scalar.ph989.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph989.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph989.prol ]
  %.unr = phi double [ %.ph1928, %vec.epilog.scalar.ph989.preheader ], [ %i.bma, %vec.epilog.scalar.ph989.prol ]
  %i.bmb = sub nsw i64 %indvars.iv.i.ph, %i.gr
  %i.bmc = icmp ugt i64 %i.bmb, -8
  br i1 %i.bmc, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989

vec.epilog.scalar.ph989:                          ; preds = %vec.epilog.scalar.ph989.prol.loopexit, %vec.epilog.scalar.ph989
end_hunk_0
