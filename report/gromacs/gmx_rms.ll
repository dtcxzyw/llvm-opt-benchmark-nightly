Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_rms?download=true
inline.NumInlined: 401
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_Z7gmx_rmsiPPc:bb.a
  %i.bcq = load float, ptr %i.bco, align 4, !tbaa !18
  store float %i.bcq, ptr %i.bcp, align 4, !tbaa !18
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bco, i64 4
  %i.bcs = load float, ptr %i.bcr, align 4, !tbaa !18
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcp, i64 4
  store float %i.bcs, ptr %i.bct, align 4, !tbaa !18
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %i.bcv = load float, ptr %i.bcu, align 4, !tbaa !18
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  store float %i.bcv, ptr %i.bcw, align 4, !tbaa !18
  %indvars.iv.next1913.prol = add nuw nsw i64 %indvars.iv1912.prol, 1 ; 2 uses
  %prol.iter2826.next = add i64 %prol.iter2826, 1 ; 2 uses
  %prol.iter2826.cmp.not = icmp eq i64 %prol.iter2826.next, %xtraiter2824
  br i1 %prol.iter2826.cmp.not, label %scalar.ph2587.prol.loopexit, label %scalar.ph2587.prol, !llvm.loop !92

scalar.ph2587.prol.loopexit:                      ; preds = %scalar.ph2587.prol, %scalar.ph2587.preheader
  %indvars.iv1912.unr = phi i64 [ %indvars.iv1912.ph, %scalar.ph2587.preheader ], [ %indvars.iv.next1913.prol, %scalar.ph2587.prol ]
  %i.bcx = sub nsw i64 %indvars.iv1912.ph, %wide.trip.count1865
  %i.bcy = icmp ugt i64 %i.bcx, -4
  br i1 %i.bcy, label %._crit_edge1624, label %scalar.ph2587

._crit_edge1624:                                  ; preds = %scalar.ph2587.prol.loopexit, %scalar.ph2587, %middle.block2603, %.preheader1448
  %i.bcz = load ptr, ptr %i.bcc, align 8, !tbaa !167
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.3734, ptr noundef %.01397, ptr noundef %i.bcz, ptr noundef %.214101630)
          to label %bb.hd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

scalar.ph2587:                                    ; preds = %scalar.ph2587.prol.loopexit, %scalar.ph2587
  %indvars.iv1912 = phi i64 [ %indvars.iv.next1913.3, %scalar.ph2587 ], [ %indvars.iv1912.unr, %scalar.ph2587.prol.loopexit ] ; 6 uses
  %i.bda = getelementptr inbounds nuw [12 x i8], ptr %i.bci, i64 %indvars.iv1912 ; 3 uses
  %i.bdb = getelementptr inbounds nuw [12 x i8], ptr %.214101630, i64 %indvars.iv1912 ; 3 uses
  %i.bdc = load float, ptr %i.bda, align 4, !tbaa !18
  store float %i.bdc, ptr %i.bdb, align 4, !tbaa !18
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !18
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdb, i64 4
  store float %i.bde, ptr %i.bdf, align 4, !tbaa !18
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !18
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdb, i64 8
  store float %i.bdh, ptr %i.bdi, align 4, !tbaa !18
  %indvars.iv.next1913 = add nuw nsw i64 %indvars.iv1912, 1 ; 2 uses
  %i.bdj = getelementptr inbounds nuw [12 x i8], ptr %i.bci, i64 %indvars.iv.next1913 ; 3 uses
  %i.bdk = getelementptr inbounds nuw [12 x i8], ptr %.214101630, i64 %indvars.iv.next1913 ; 3 uses
  %i.bdl = load float, ptr %i.bdj, align 4, !tbaa !18
  store float %i.bdl, ptr %i.bdk, align 4, !tbaa !18
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdj, i64 4
  %i.bdn = load float, ptr %i.bdm, align 4, !tbaa !18
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdk, i64 4
  store float %i.bdn, ptr %i.bdo, align 4, !tbaa !18
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdj, i64 8
  %i.bdq = load float, ptr %i.bdp, align 4, !tbaa !18
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdk, i64 8
  store float %i.bdq, ptr %i.bdr, align 4, !tbaa !18
  %indvars.iv.next1913.1 = add nuw nsw i64 %indvars.iv1912, 2 ; 2 uses
  %i.bds = getelementptr inbounds nuw [12 x i8], ptr %i.bci, i64 %indvars.iv.next1913.1 ; 3 uses
  %i.bdt = getelementptr inbounds nuw [12 x i8], ptr %.214101630, i64 %indvars.iv.next1913.1 ; 3 uses
  %i.bdu = load float, ptr %i.bds, align 4, !tbaa !18
  store float %i.bdu, ptr %i.bdt, align 4, !tbaa !18
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bds, i64 4
  %i.bdw = load float, ptr %i.bdv, align 4, !tbaa !18
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdt, i64 4
  store float %i.bdw, ptr %i.bdx, align 4, !tbaa !18
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bds, i64 8
  %i.bdz = load float, ptr %i.bdy, align 4, !tbaa !18
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8
  store float %i.bdz, ptr %i.bea, align 4, !tbaa !18
  %indvars.iv.next1913.2 = add nuw nsw i64 %indvars.iv1912, 3 ; 2 uses
  %i.beb = getelementptr inbounds nuw [12 x i8], ptr %i.bci, i64 %indvars.iv.next1913.2 ; 3 uses
  %i.bec = getelementptr inbounds nuw [12 x i8], ptr %.214101630, i64 %indvars.iv.next1913.2 ; 3 uses
  %i.bed = load float, ptr %i.beb, align 4, !tbaa !18
  store float %i.bed, ptr %i.bec, align 4, !tbaa !18
  %i.bee = getelementptr inbounds nuw i8, ptr %i.beb, i64 4
  %i.bef = load float, ptr %i.bee, align 4, !tbaa !18
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bec, i64 4
  store float %i.bef, ptr %i.beg, align 4, !tbaa !18
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beb, i64 8
  %i.bei = load float, ptr %i.beh, align 4, !tbaa !18
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  store float %i.bei, ptr %i.bej, align 4, !tbaa !18
  %indvars.iv.next1913.3 = add nuw nsw i64 %indvars.iv1912, 4 ; 2 uses
  %exitcond1916.not.3 = icmp eq i64 %indvars.iv.next1913.3, %wide.trip.count1915
  br i1 %exitcond1916.not.3, label %._crit_edge1624, label %scalar.ph2587, !llvm.loop !93

bb.hc:                                            ; preds = %bb.hb
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %.41407, i64 %indvars.iv1922
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !167
  br label %bb.hd

bb.hd:                                            ; preds = %._crit_edge1624, %bb.hc
  %.31411 = phi ptr [ %.214101630, %._crit_edge1624 ], [ %i.bel, %bb.hc ] ; 5 uses
  br i1 %.0806, label %bb.he, label %bb.hi

bb.he:                                            ; preds = %bb.hd
  %i.bem = icmp samesign ult i64 %indvars.iv1927, %indvars.iv1922
  %or.cond936 = select i1 %i.ast, i1 true, i1 %i.bem
  br i1 %or.cond936, label %bb.hf, label %bb.hh

bb.hf:                                            ; preds = %bb.he
  %i.ben = load i32, ptr %i.kr, align 4, !tbaa !10
  %i.beo = load ptr, ptr %i.bcc, align 8, !tbaa !167
  %i.bep = invoke noundef float @_Z16calc_similar_indbiPKiPKfPA3_fS4_(i1 noundef zeroext %i.aju, i32 noundef %i.ben, ptr noundef %.01412, ptr noundef %.01398, ptr noundef %i.beo, ptr noundef %.31411)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.hg:                                            ; preds = %bb.hf
  %i.beq = load ptr, ptr %i.bcd, align 8, !tbaa !167
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.beq, i64 %indvars.iv1922
  store float %i.bep, ptr %i.ber, align 4, !tbaa !18
  %i.bes = fcmp ogt float %i.bep, %.17871632
  %spec.select937 = select i1 %i.bes, float %i.bep, float %.17871632
  %i.bet = fcmp olt float %i.bep, %.27811633
  %.3782 = select i1 %i.bet, float %i.bep, float %.27811633
  %i.beu = fadd float %.17751634, %i.bep
  br label %bb.hi

bb.hh:                                            ; preds = %bb.he
  %i.bev = getelementptr inbounds nuw [8 x i8], ptr %.01421, i64 %indvars.iv1922
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !167
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %i.bew, i64 %indvars.iv1927
  %i.bey = load float, ptr %i.bex, align 4, !tbaa !18
  %i.bez = load ptr, ptr %i.bcd, align 8, !tbaa !167
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %indvars.iv1922
  store float %i.bey, ptr %i.bfa, align 4, !tbaa !18
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hg, %bb.hh, %bb.hd
  %.3789 = phi float [ %spec.select937, %bb.hg ], [ %.17871632, %bb.hh ], [ %.17871632, %bb.hd ] ; 2 uses
  %.4783 = phi float [ %.3782, %bb.hg ], [ %.27811633, %bb.hh ], [ %.27811633, %bb.hd ] ; 2 uses
  %.2776 = phi float [ %i.beu, %bb.hg ], [ %.17751634, %bb.hh ], [ %.17751634, %bb.hd ] ; 2 uses
  br i1 %.0805, label %bb.hj, label %bb.ho

bb.hj:                                            ; preds = %bb.hi
  %.not923 = icmp samesign ule i64 %indvars.iv1927, %indvars.iv1922
  %or.cond939.not = select i1 %i.ast, i1 true, i1 %.not923
  br i1 %or.cond939.not, label %.preheader1447, label %bb.hn

.preheader1447:                                   ; preds = %bb.hj
  br i1 %i.bbi, label %.lr.ph1627, label %._crit_edge1628

.lr.ph1627:                                       ; preds = %.preheader1447
  %i.bfb = load ptr, ptr %i.bcc, align 8, !tbaa !167 ; 2 uses
  br label %bb.hk

bb.hk:                                            ; preds = %.lr.ph1627, %bb.hm
  %indvars.iv1917 = phi i64 [ 0, %.lr.ph1627 ], [ %indvars.iv.next1918, %bb.hm ] ; 3 uses
  %.07641626 = phi float [ 0.000000e+00, %.lr.ph1627 ], [ %i.bhh, %bb.hm ]
  %i.bfc = getelementptr inbounds nuw [4 x i8], ptr %.01416, i64 %indvars.iv1917
  %i.bfd = load i32, ptr %i.bfc, align 4, !tbaa !10
  %i.bfe = sext i32 %i.bfd to i64                 ; 2 uses
  %i.bff = getelementptr inbounds [12 x i8], ptr %i.bfb, i64 %i.bfe ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.01415, i64 %indvars.iv1917
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !10
  %i.bfi = sext i32 %i.bfh to i64                 ; 2 uses
  %i.bfj = getelementptr inbounds [12 x i8], ptr %i.bfb, i64 %i.bfi ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  %i.bfl = load float, ptr %i.bfk, align 4, !tbaa !18
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8
  %i.bfn = load float, ptr %i.bfm, align 4, !tbaa !18
  %i.bfo = getelementptr inbounds [12 x i8], ptr %.31411, i64 %i.bfe ; 2 uses
  %i.bfp = getelementptr inbounds [12 x i8], ptr %.31411, i64 %i.bfi ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8
  %i.bfr = load float, ptr %i.bfq, align 4, !tbaa !18
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfp, i64 8
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !18
  %i.bfu = load <2 x float>, ptr %i.bff, align 4, !tbaa !18 ; 2 uses
  %i.bfv = load <2 x float>, ptr %i.bfj, align 4, !tbaa !18 ; 2 uses
  %i.bfw = load <2 x float>, ptr %i.bfo, align 4, !tbaa !18 ; 2 uses
  %i.bfx = load <2 x float>, ptr %i.bfp, align 4, !tbaa !18 ; 2 uses
  %i.bfy = shufflevector <2 x float> %i.bfu, <2 x float> %i.bfw, <2 x i32> <i32 0, i32 2>
  %i.bfz = shufflevector <2 x float> %i.bfv, <2 x float> %i.bfx, <2 x i32> <i32 0, i32 2>
  %i.bga = fsub <2 x float> %i.bfy, %i.bfz
  %i.bgb = shufflevector <2 x float> %i.bfu, <2 x float> %i.bfw, <2 x i32> <i32 1, i32 3>
  %i.bgc = shufflevector <2 x float> %i.bfv, <2 x float> %i.bfx, <2 x i32> <i32 1, i32 3>
  %i.bgd = fsub <2 x float> %i.bgb, %i.bgc
  %i.bge = insertelement <2 x float> poison, float %i.bfl, i64 0
  %i.bgf = insertelement <2 x float> %i.bge, float %i.bfr, i64 1
  %i.bgg = insertelement <2 x float> poison, float %i.bfn, i64 0
  %i.bgh = insertelement <2 x float> %i.bgg, float %i.bft, i64 1
  %i.bgi = fsub <2 x float> %i.bgf, %i.bgh
  %i.bgj = fpext <2 x float> %i.bga to <2 x double> ; 4 uses
  %i.bgk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgj, <2 x double> %i.bgj, <2 x double> zeroinitializer)
  %i.bgl = fpext <2 x float> %i.bgd to <2 x double> ; 4 uses
  %i.bgm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgl, <2 x double> %i.bgl, <2 x double> %i.bgk)
  %i.bgn = fpext <2 x float> %i.bgi to <2 x double> ; 4 uses
  %i.bgo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgn, <2 x double> %i.bgn, <2 x double> %i.bgm) ; 2 uses
  %shift = shufflevector <2 x double> %i.bgo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bgo, %shift
  %i.bgp = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bgq = fcmp ogt double %i.bgp, 0.000000e+00
  br i1 %i.bgq, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.bgr = extractelement <2 x double> %i.bgj, i64 0
  %i.bgs = extractelement <2 x double> %i.bgj, i64 1
  %i.bgt = call double @llvm.fmuladd.f64(double %i.bgr, double %i.bgs, double 0.000000e+00)
  %i.bgu = extractelement <2 x double> %i.bgl, i64 0
  %i.bgv = extractelement <2 x double> %i.bgl, i64 1
  %i.bgw = call double @llvm.fmuladd.f64(double %i.bgu, double %i.bgv, double %i.bgt)
  %i.bgx = extractelement <2 x double> %i.bgn, i64 0
  %i.bgy = extractelement <2 x double> %i.bgn, i64 1
  %i.bgz = call double @llvm.fmuladd.f64(double %i.bgx, double %i.bgy, double %i.bgw)
  %i.bha = call nnan double @llvm.sqrt.f64(double %i.bgp)
  %i.bhb = fdiv nnan double 1.000000e+00, %i.bha
  %i.bhc = fmul double %i.bgz, %i.bhb
  %i.bhd = fptrunc double %i.bhc to float
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.026.i = phi float [ %i.bhd, %bb.hl ], [ 1.000000e+00, %bb.hk ] ; 3 uses
  %i.bhe = fcmp ogt float %.026.i, 1.000000e+00
  %i.bhf = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.bhf, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.bhe, float 1.000000e+00, float %..026.i
  %i.bhg = call noundef float @acosf(float noundef %.027.i) #20
  %i.bhh = fadd float %.07641626, %i.bhg          ; 2 uses
  %indvars.iv.next1918 = add nuw nsw i64 %indvars.iv1917, 1 ; 2 uses
  %exitcond1921.not = icmp eq i64 %indvars.iv.next1918, %wide.trip.count1920
  br i1 %exitcond1921.not, label %._crit_edge1628.loopexit, label %bb.hk, !llvm.loop !94

._crit_edge1628.loopexit:                         ; preds = %bb.hm
  %i.bhi = fpext float %i.bhh to double
  %i.bhj = fmul double %i.bhi, 1.800000e+02
  br label %._crit_edge1628

._crit_edge1628:                                  ; preds = %._crit_edge1628.loopexit, %.preheader1447
  %.0764.lcssa = phi double [ 0.000000e+00, %.preheader1447 ], [ %i.bhj, %._crit_edge1628.loopexit ]
  %i.bhk = fdiv double %.0764.lcssa, %i.bbk
  %i.bhl = fptrunc double %i.bhk to float         ; 5 uses
  %i.bhm = load ptr, ptr %i.bce, align 8, !tbaa !167
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bhm, i64 %indvars.iv1922
  store float %i.bhl, ptr %i.bhn, align 4, !tbaa !18
  %i.bho = fcmp olt float %.17701635, %i.bhl
  %spec.select940 = select i1 %i.bho, float %i.bhl, float %.17701635
  %i.bhp = fcmp ogt float %.17661636, %i.bhl
  %spec.select949 = select i1 %i.bhp, float %i.bhl, float %.17661636
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hj
  %i.bhq = getelementptr inbounds nuw [8 x i8], ptr %.01420, i64 %indvars.iv1922
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !167
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %indvars.iv1927
  %i.bht = load float, ptr %i.bhs, align 4, !tbaa !18
  %i.bhu = load ptr, ptr %i.bce, align 8, !tbaa !167
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %indvars.iv1922
  store float %i.bht, ptr %i.bhv, align 4, !tbaa !18
  br label %bb.ho

bb.ho:                                            ; preds = %._crit_edge1628, %bb.hi, %bb.hn
  %.3772 = phi float [ %.17701635, %bb.hi ], [ %spec.select940, %._crit_edge1628 ], [ %.17701635, %bb.hn ] ; 2 uses
  %.2767 = phi float [ %.17661636, %bb.hi ], [ %spec.select949, %._crit_edge1628 ], [ %.17661636, %bb.hn ] ; 2 uses
  %indvars.iv.next1923 = add nuw nsw i64 %indvars.iv1922, 1 ; 2 uses
  %exitcond1926.not = icmp eq i64 %indvars.iv.next1923, %wide.trip.count1925
  br i1 %exitcond1926.not, label %._crit_edge1639, label %bb.hb, !llvm.loop !95

._crit_edge1639:                                  ; preds = %bb.ho, %bb.ha
  %.21410.lcssa = phi ptr [ %.114091646, %bb.ha ], [ %.31411, %bb.ho ]
  %.1787.lcssa = phi float [ %.07861647, %bb.ha ], [ %.3789, %bb.ho ] ; 2 uses
  %.2781.lcssa = phi float [ %.17801648, %bb.ha ], [ %.4783, %bb.ho ] ; 2 uses
  %.1775.lcssa = phi float [ %.07741649, %bb.ha ], [ %.2776, %bb.ho ] ; 2 uses
  %.1770.lcssa = phi float [ %.07691650, %bb.ha ], [ %.3772, %bb.ho ] ; 2 uses
  %.1766.lcssa = phi float [ %.07651651, %bb.ha ], [ %.2767, %bb.ho ] ; 2 uses
  %indvars.iv.next1928 = add nuw nsw i64 %indvars.iv1927, 1 ; 2 uses
  %exitcond1933.not = icmp eq i64 %indvars.iv.next1928, %wide.trip.count1932
  br i1 %exitcond1933.not, label %._crit_edge1654, label %bb.gw, !llvm.loop !96

bb.hp:                                            ; preds = %._crit_edge1654
  %i.bhw = sitofp i32 %.1673 to float
  %i.bhx = sitofp i32 %.2 to float
  %i.bhy = fmul nnan float %i.bhw, %i.bhx
  %i.bhz = fdiv float %.0774.lcssa, %i.bhy
  br label %bb.hr

bb.hq:                                            ; preds = %._crit_edge1654
  %i.bia = add nsw i32 %.1673, -1
  %i.bib = mul nsw i32 %i.bia, %.1673
  %i.bic = sitofp i32 %i.bib to double
  %i.bid = fmul nnan double %i.bic, 5.000000e-01
  %i.bie = fpext float %.0774.lcssa to double
  %i.bif = fdiv double %i.bie, %i.bid
  %i.big = fptrunc double %i.bif to float
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.3777 = phi float [ %i.bhz, %bb.hp ], [ %i.big, %bb.hq ]
  %i.bih = load i32, ptr @_ZZ7gmx_rmsiPPcE3avl, align 4 ; 8 uses
  %i.bii = icmp sgt i32 %i.bih, 0
  %or.cond34 = select i1 %.0806, i1 %i.bii, i1 false
  br i1 %or.cond34, label %.preheader1445, label %.loopexit1446

.preheader1445:                                   ; preds = %bb.hr
  %i.bij = icmp sgt i32 %.1673, 1
  br i1 %i.bij, label %.lr.ph1685, label %.loopexit1446

.lr.ph1685:                                       ; preds = %.preheader1445
  %i.bik = add nsw i32 %.1673, -1
  %i.bil = sub nsw i32 0, %i.bih
  %i.bim = add nuw i32 %i.bih, 1
  %i.bin = uitofp i32 %i.bim to double            ; 3 uses
  %wide.trip.count1948 = zext nneg i32 %i.bik to i64
  %wide.trip.count1943 = zext nneg i32 %.1673 to i64
  %i.bio = sub nsw i32 1, %i.bih
  br label %.lr.ph1673.preheader

.loopexit1444:                                    ; preds = %._crit_edge1674.split
  %indvars.iv.next1937 = add nuw nsw i64 %indvars.iv1936, 1
  %exitcond1949.not = icmp eq i64 %indvars.iv.next1946, %wide.trip.count1948
  br i1 %exitcond1949.not, label %.loopexit1446, label %.lr.ph1673.preheader, !llvm.loop !97

.lr.ph1673.preheader:                             ; preds = %.lr.ph1685, %.loopexit1444
  %indvars.iv1945 = phi i64 [ 0, %.lr.ph1685 ], [ %indvars.iv.next1946, %.loopexit1444 ] ; 4 uses
  %indvars.iv1936 = phi i64 [ 1, %.lr.ph1685 ], [ %indvars.iv.next1937, %.loopexit1444 ] ; 2 uses
  %.47901684 = phi float [ 0.000000e+00, %.lr.ph1685 ], [ %spec.select943, %.loopexit1444 ]
  %indvars.iv.next1946 = add nuw nsw i64 %indvars.iv1945, 1 ; 2 uses
  %i.bip = getelementptr inbounds nuw [8 x i8], ptr %.01419, i64 %indvars.iv1945
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !167
  %i.bir = trunc nuw nsw i64 %indvars.iv1945 to i32
  br label %.lr.ph1673

.lr.ph1673:                                       ; preds = %.lr.ph1673.preheader, %._crit_edge1674.split
  %indvars.iv1938 = phi i64 [ %indvars.iv1936, %.lr.ph1673.preheader ], [ %indvars.iv.next1939, %._crit_edge1674.split ] ; 4 uses
  %.57911678 = phi float [ %.47901684, %.lr.ph1673.preheader ], [ %spec.select943, %._crit_edge1674.split ] ; 2 uses
  %i.bis = trunc nuw nsw i64 %indvars.iv1938 to i32 ; 3 uses
  %i.bit = sub nsw i32 %i.bis, %i.bih             ; 3 uses
  %i.biu = icmp sgt i32 %i.bit, -1
  %i.biv = icmp slt i32 %i.bit, %.1673
  %or.cond942.prol = select i1 %i.biu, i1 %i.biv, i1 false
  %i.biw = zext nneg i32 %i.bit to i64
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %.01421, i64 %i.biw
  br label %bb.hs

bb.hs:                                            ; preds = %.lr.ph1673, %..loopexit1443_crit_edge
  %.07441671 = phi i32 [ %i.bil, %.lr.ph1673 ], [ %i.bkp, %..loopexit1443_crit_edge ] ; 4 uses
  %.07561670 = phi float [ 0.000000e+00, %.lr.ph1673 ], [ %.3759, %..loopexit1443_crit_edge ] ; 3 uses
  %.07601669 = phi float [ 0.000000e+00, %.lr.ph1673 ], [ %.3763, %..loopexit1443_crit_edge ] ; 3 uses
  %i.biy = add nsw i32 %.07441671, %i.bir         ; 3 uses
  %i.biz = icmp sgt i32 %i.biy, -1
  %i.bja = icmp slt i32 %i.biy, %.1673
  %or.cond941 = select i1 %i.biz, i1 %i.bja, i1 false
  br i1 %or.cond941, label %.lr.ph1665, label %..loopexit1443_crit_edge

.lr.ph1665:                                       ; preds = %bb.hs
  %i.bjb = call i32 @llvm.abs.i32(i32 %.07441671, i1 true) ; 3 uses
  %i.bjc = zext nneg i32 %i.biy to i64            ; 3 uses
  br i1 %or.cond942.prol, label %bb.ht, label %.lr.ph1665.new

bb.ht:                                            ; preds = %.lr.ph1665
  %.sroa.speculated.prol = call i32 @llvm.umax.i32(i32 %i.bih, i32 %i.bjb)
  %i.bjd = uitofp nneg i32 %.sroa.speculated.prol to double
  %i.bje = fsub double %i.bin, %i.bjd
  %i.bjf = fptrunc double %i.bje to float         ; 2 uses
  %i.bjg = load ptr, ptr %i.bix, align 8, !tbaa !167
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bjg, i64 %i.bjc
  %i.bji = load float, ptr %i.bjh, align 4, !tbaa !18
  %i.bjj = call float @llvm.fmuladd.f32(float %i.bjf, float %i.bji, float %.07601669)
  %i.bjk = fadd float %.07561670, %i.bjf
  br label %.lr.ph1665.new

.lr.ph1665.new:                                   ; preds = %bb.ht, %.lr.ph1665
  %.2762.prol = phi float [ %i.bjj, %bb.ht ], [ %.07601669, %.lr.ph1665 ]
  %.2758.prol = phi float [ %i.bjk, %bb.ht ], [ %.07561670, %.lr.ph1665 ]
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hy, %.lr.ph1665.new
  %.07451663 = phi i32 [ %i.bio, %.lr.ph1665.new ], [ %i.bko, %bb.hy ] ; 4 uses
  %.17571662 = phi float [ %.2758.prol, %.lr.ph1665.new ], [ %.2758.1, %bb.hy ] ; 2 uses
  %.17611661 = phi float [ %.2762.prol, %.lr.ph1665.new ], [ %.2762.1, %bb.hy ] ; 2 uses
  %i.bjl = add nsw i32 %.07451663, %i.bis         ; 3 uses
  %i.bjm = icmp sgt i32 %i.bjl, -1
  %i.bjn = icmp slt i32 %i.bjl, %.1673
  %or.cond942 = select i1 %i.bjm, i1 %i.bjn, i1 false
  br i1 %or.cond942, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.bjo = call i32 @llvm.abs.i32(i32 %.07451663, i1 true)
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.bjo, i32 %i.bjb)
  %i.bjp = uitofp nneg i32 %.sroa.speculated to double
  %i.bjq = fsub double %i.bin, %i.bjp
  %i.bjr = fptrunc double %i.bjq to float         ; 2 uses
  %i.bjs = zext nneg i32 %i.bjl to i64
  %i.bjt = getelementptr inbounds nuw [8 x i8], ptr %.01421, i64 %i.bjs
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !167
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.bjc
  %i.bjw = load float, ptr %i.bjv, align 4, !tbaa !18
  %i.bjx = call float @llvm.fmuladd.f32(float %i.bjr, float %i.bjw, float %.17611661)
  %i.bjy = fadd float %.17571662, %i.bjr
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hu, %bb.hv
  %.2762 = phi float [ %i.bjx, %bb.hv ], [ %.17611661, %bb.hu ] ; 2 uses
  %.2758 = phi float [ %i.bjy, %bb.hv ], [ %.17571662, %bb.hu ] ; 2 uses
  %i.bjz = add i32 %.07451663, 1                  ; 3 uses
  %i.bka = add nsw i32 %i.bjz, %i.bis             ; 3 uses
  %i.bkb = icmp sgt i32 %i.bka, -1
  %i.bkc = icmp slt i32 %i.bka, %.1673
  %or.cond942.1 = select i1 %i.bkb, i1 %i.bkc, i1 false
  br i1 %or.cond942.1, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bkd = call i32 @llvm.abs.i32(i32 %i.bjz, i1 true)
  %.sroa.speculated.1 = call i32 @llvm.umax.i32(i32 %i.bkd, i32 %i.bjb)
  %i.bke = uitofp nneg i32 %.sroa.speculated.1 to double
  %i.bkf = fsub double %i.bin, %i.bke
  %i.bkg = fptrunc double %i.bkf to float         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10filesystem7__cxx114pathC2IA9_cS1_EERKT_NS1_6formatE:bb.a
.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !24
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.f, ptr %i.c, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.h, ptr %i.g, align 1, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %0, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !13
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !13
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #13

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z12orient_princPK7t_atomsiPKiiPA3_fS5_Pf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !30
  store i8 0, ptr %i.p, align 8, !tbaa !13
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !198

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 8
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  store ptr %i.u, ptr %.08.i.i.i, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !30
  store i8 0, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !30
  store i8 0, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store i64 0, ptr %i.ab, align 8, !tbaa !30
  store i8 0, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store i64 0, ptr %i.ae, align 8, !tbaa !30
  store i8 0, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  store i64 0, ptr %i.ah, align 8, !tbaa !30
  store i8 0, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  store i64 0, ptr %i.ak, align 8, !tbaa !30
  store i8 0, ptr %i.aj, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 200
  store i64 0, ptr %i.an, align 8, !tbaa !30
  store i8 0, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 232
  store i64 0, ptr %i.aq, align 8, !tbaa !30
  store i8 0, ptr %i.ap, align 8, !tbaa !13
  %i.ar = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !199

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.as, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !33
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.at = icmp ult i64 %i.n, %1
  br i1 %i.at, label %bb.d, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.au = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 288230376151711743) ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #25 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f ; 3 uses
  %xtraiter48 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i30.prol ], [ %i.ay, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16 ; 2 uses
  store ptr %i.az, ptr %.08.i.i.i31.prol, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !30
  store i8 0, ptr %i.az, align 8, !tbaa !13
  %i.bb = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !200

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ay, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i30.prol ]
  %i.bd = icmp ult i64 %1, 8
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.cc, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 25 uses
  %.057.i.i.i32 = phi i64 [ %i.cb, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16 ; 2 uses
  store ptr %i.be, ptr %.08.i.i.i31, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !30
  store i8 0, ptr %i.be, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i64 0, ptr %i.bi, align 8, !tbaa !30
  store i8 0, ptr %i.bh, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i64 0, ptr %i.bl, align 8, !tbaa !30
  store i8 0, ptr %i.bk, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112 ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store i64 0, ptr %i.bo, align 8, !tbaa !30
  store i8 0, ptr %i.bn, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  store i64 0, ptr %i.br, align 8, !tbaa !30
  store i8 0, ptr %i.bq, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  store i64 0, ptr %i.bu, align 8, !tbaa !30
  store i8 0, ptr %i.bt, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 200
  store i64 0, ptr %i.bx, align 8, !tbaa !30
  store i8 0, ptr %i.bw, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 240 ; 2 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 232
  store i64 0, ptr %i.ca, align 8, !tbaa !30
  store i8 0, ptr %i.bz, align 8, !tbaa !13
  %i.cb = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 256
  %.not.i.i.i33.7 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !199

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ax, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.cp, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.cd, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !205
  %i.ce = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !24, !alias.scope !206 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30, !alias.scope !206 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false), !alias.scope !207
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.ce, ptr %.012.i.i.i, align 8, !tbaa !24, !alias.scope !205
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !13, !alias.scope !206
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !13, !alias.scope !205
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !30, !alias.scope !206
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.cm = phi i64 [ %i.ci, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !30, !alias.scope !205
  store ptr %i.cf, ptr %.0911.i.i.i, align 8, !tbaa !24, !alias.scope !206
  store i64 0, ptr %i.cn, align 8, !tbaa !30, !alias.scope !206
  store i8 0, ptr %i.cf, align 8, !tbaa !13, !alias.scope !206
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i38 = icmp eq ptr %i.cp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37, !llvm.loop !204

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ct) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.f
  store ptr %i.ax, ptr %0, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %1
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.cv, ptr %i.h, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !25}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"float", !6, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !14, i64 8, !6, i64 16}
!24 = !{!23, !12, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!16, !15, i64 0}
!30 = !{!23, !14, i64 8}
!31 = !{!22, !12, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!16, !15, i64 8}
!34 = !{!16, !15, i64 16}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25, !26, !27}
!37 = distinct !{!37, !25, !26, !27}
!38 = distinct !{!38, !25, !27, !26}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25, !26, !27}
!42 = distinct !{!42, !25, !26, !27}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !25, !27, !26}
!46 = distinct !{!46, !25, !26, !27}
!47 = distinct !{!47, !25, !26, !27}
!48 = distinct !{!48, !25, !27, !26}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !25, !26, !27}
!54 = distinct !{!54, !25, !26}
!55 = distinct !{!55, !25, !26, !27}
!56 = distinct !{!56, !25, !27, !26}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25, !26, !27}
!65 = distinct !{!65, !25, !26, !27}
!66 = distinct !{!66, !25, !27, !26}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25, !26, !27}
!83 = distinct !{!83, !25, !26, !27}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !25, !26}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, i1 false, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !25, !26, !27}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !25, !26}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, i1 false, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !25, !26, !27}
!109 = distinct !{!109, !25, !26, !27}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, i1 false, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !25, !26}
!116 = distinct !{!116, !25, !26}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !25}
!124 = !{!"bool", !6, i64 0}
!125 = !{!"_ZTS7t_pargs", !12, i64 0, !124, i64 8, !7, i64 12, !6, i64 16, !12, i64 24}
!126 = !{!125, !12, i64 0}
!127 = !{!125, !124, i64 8}
!128 = !{!125, !7, i64 12}
!129 = !{!125, !12, i64 24}
!130 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !16, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !131, i64 0}
!133 = !{!"_ZTS8t_filenm", !7, i64 0, !12, i64 8, !12, i64 16, !14, i64 24, !132, i64 32}
!134 = !{!133, !7, i64 0}
!135 = !{!133, !14, i64 24}
!136 = !{!133, !12, i64 8}
!137 = !{!133, !12, i64 16}
!138 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!124, !124, i64 0}
!141 = !{i8 0, i8 2}
!142 = !{}
!143 = !{!"any p2 pointer", !11, i64 0}
!144 = !{!"p2 omnipotent char", !143, i64 0}
!145 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!146 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !6, i64 0}
!147 = !{!"_ZTS6t_idef", !7, i64 0, !7, i64 4, !11, i64 8, !145, i64 16, !17, i64 24, !145, i64 32, !145, i64 40, !146, i64 48, !7, i64 2328}
!148 = !{!"p1 _ZTS6t_atom", !11, i64 0}
!149 = !{!"any p3 pointer", !143, i64 0}
!150 = !{!"p3 omnipotent char", !149, i64 0}
!151 = !{!"p1 _ZTS9t_resinfo", !11, i64 0}
!152 = !{!"p1 _ZTS9t_pdbinfo", !11, i64 0}
!153 = !{!"_ZTS7t_atoms", !7, i64 0, !148, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !7, i64 40, !151, i64 48, !152, i64 56, !124, i64 64, !124, i64 65, !124, i64 66, !124, i64 67, !124, i64 68}
end_hunk_1
