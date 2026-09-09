Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SkeletonMeshBuilder?download=true
inline.NumInlined: 487
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp19SkeletonMeshBuilder14CreateGeometryEPK6aiNode:bb.a
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcw, i64 %i.bcy
  store i8 0, ptr %i.bcz, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit, %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bda = getelementptr inbounds nuw i8, ptr %1, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.bda, i64 64, i1 false)
  %i.bdb = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bbn, ptr noundef nonnull align 4 dereferenceable(64) %i.bdb, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.0175.in1406 = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %.01751407 = load ptr, ptr %.0175.in1406, align 8 ; 2 uses
  %.not1801408 = icmp eq ptr %.01751407, null
  br i1 %.not1801408, label %._crit_edge, label %.lr.ph1410

.lr.ph1410:                                       ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bbm, i64 1072 ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bbm, i64 1088 ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bbm, i64 1104 ; 2 uses
  br label %bb.gu

._crit_edge:                                      ; preds = %bb.gu, %_ZN8aiStringaSERKS_.exit
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bbm, i64 1028
  store i32 %i.bbl, ptr %i.bdf, align 4
  %i.bdg = shl i64 %i.bbk, 3
  %i.bdh = and i64 %i.bdg, 34359738360            ; 2 uses
  %i.bdi = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bdh) #11 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bdi, i8 0, i64 %i.bdh, i1 false)
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bbm, i64 1048 ; 6 uses
  store ptr %i.bdi, ptr %i.bdj, align 8
  %wide.trip.count = and i64 %i.bbk, 4294967295
  %i.bdk = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.bbk, 3                   ; 3 uses
  %i.bdl = icmp ult i64 %i.bdk, 3
  br i1 %i.bdl, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %i.bbk, 4294967292
  br label %bb.gw

bb.gu:                                            ; preds = %.lr.ph1410, %bb.gu
  %.01751409 = phi ptr [ %.01751407, %.lr.ph1410 ], [ %.0175, %bb.gu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.bdm = getelementptr inbounds nuw i8, ptr %.01751409, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.bdm, i64 64, i1 false)
  %i.bdn = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 4 uses
  %.sroa.12920.0..sroa_idx921 = getelementptr inbounds nuw i8, ptr %i.bdn, i64 16
  %.sroa.20.0..sroa_idx930 = getelementptr inbounds nuw i8, ptr %i.bdn, i64 32
  %.sroa.28.0..sroa_idx938 = getelementptr inbounds nuw i8, ptr %i.bdn, i64 48
  %i.bdo = load <4 x float>, ptr %i.bdn, align 4  ; 4 uses
  %i.bdp = load <4 x float>, ptr %i.bbn, align 8  ; 4 uses
  %i.bdq = load <4 x float>, ptr %i.bdc, align 8  ; 4 uses
  %i.bdr = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bds = fmul <4 x float> %i.bdr, %i.bdq
  %i.bdt = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdp, <4 x float> %i.bdt, <4 x float> %i.bds)
  %i.bdv = load <4 x float>, ptr %i.bdd, align 8  ; 4 uses
  %i.bdw = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bdx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdv, <4 x float> %i.bdw, <4 x float> %i.bdu)
  %i.bdy = load <4 x float>, ptr %i.bde, align 8  ; 4 uses
  %i.bdz = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdy, <4 x float> %i.bdz, <4 x float> %i.bdx)
  %i.beb = load <4 x float>, ptr %.sroa.12920.0..sroa_idx921, align 4 ; 4 uses
  %i.bec = shufflevector <4 x float> %i.beb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bed = fmul <4 x float> %i.bec, %i.bdq
  %i.bee = shufflevector <4 x float> %i.beb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bef = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdp, <4 x float> %i.bee, <4 x float> %i.bed)
  %i.beg = shufflevector <4 x float> %i.beb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.beh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdv, <4 x float> %i.beg, <4 x float> %i.bef)
  %i.bei = shufflevector <4 x float> %i.beb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdy, <4 x float> %i.bei, <4 x float> %i.beh)
  %i.bek = load <4 x float>, ptr %.sroa.20.0..sroa_idx930, align 4 ; 4 uses
  %i.bel = shufflevector <4 x float> %i.bek, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bem = fmul <4 x float> %i.bel, %i.bdq
  %i.ben = shufflevector <4 x float> %i.bek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.beo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdp, <4 x float> %i.ben, <4 x float> %i.bem)
  %i.bep = shufflevector <4 x float> %i.bek, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.beq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdv, <4 x float> %i.bep, <4 x float> %i.beo)
  %i.ber = shufflevector <4 x float> %i.bek, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bes = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdy, <4 x float> %i.ber, <4 x float> %i.beq)
  %i.bet = load <4 x float>, ptr %.sroa.28.0..sroa_idx938, align 4 ; 4 uses
  %i.beu = shufflevector <4 x float> %i.bet, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bev = fmul <4 x float> %i.beu, %i.bdq
  %i.bew = shufflevector <4 x float> %i.bet, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdp, <4 x float> %i.bew, <4 x float> %i.bev)
  %i.bey = shufflevector <4 x float> %i.bet, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdv, <4 x float> %i.bey, <4 x float> %i.bex)
  %i.bfa = shufflevector <4 x float> %i.bet, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bfb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bdy, <4 x float> %i.bfa, <4 x float> %i.bez)
  store <4 x float> %i.bea, ptr %i.bbn, align 8
  store <4 x float> %i.bej, ptr %i.bdc, align 8
  store <4 x float> %i.bes, ptr %i.bdd, align 8
  store <4 x float> %i.bfb, ptr %i.bde, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.0175.in = getelementptr inbounds nuw i8, ptr %.01751409, i64 1096
  %.0175 = load ptr, ptr %.0175.in, align 8       ; 2 uses
  %.not180 = icmp eq ptr %.0175, null
  br i1 %.not180, label %._crit_edge, label %bb.gu, !llvm.loop !152

.unr-lcssa:                                       ; preds = %bb.gw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %._crit_edge
  %indvars.iv1469.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next1470.3, %.unr-lcssa ]
  %lcmp.mod1906 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1906)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %.epil.preheader
  %indvars.iv1469.epil = phi i64 [ %indvars.iv1469.epil.init, %.epil.preheader ], [ %indvars.iv.next1470.epil, %bb.gv ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.gv ]
  %i.bfc = trunc nuw i64 %indvars.iv1469.epil to i32
  %i.bfd = add i32 %i.bfc, %i.h
  %i.bfe = load ptr, ptr %i.bdj, align 8
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %i.bfe, i64 %indvars.iv1469.epil ; 2 uses
  store i32 %i.bfd, ptr %i.bff, align 4
  %.sroa_idx906.epil = getelementptr inbounds nuw i8, ptr %i.bff, i64 4
  store i32 1065353216, ptr %.sroa_idx906.epil, align 4
  %indvars.iv.next1470.epil = add nuw nsw i64 %indvars.iv1469.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.gv, !llvm.loop !153

.epilog-lcssa:                                    ; preds = %bb.gv, %.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.bbn, i64 64, i1 false)
  %i.bfg = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.bfh = load <8 x float>, ptr %i.bfg, align 4  ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfg, i64 32
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfg, i64 36
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfg, i64 40
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfg, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bfi = and i64 %i.g, 4294967295               ; 2 uses
  %i.bfj = load ptr, ptr %i.a, align 8
  %i.bfk = load ptr, ptr %0, align 8              ; 2 uses
  %i.bfl = ptrtoint ptr %i.bfj to i64
  %i.bfm = ptrtoint ptr %i.bfk to i64
  %i.bfn = sub i64 %i.bfl, %i.bfm
  %i.bfo = sdiv exact i64 %i.bfn, 12
  %i.bfp = icmp ugt i64 %i.bfo, %i.bfi
  br i1 %i.bfp, label %.lr.ph1414.preheader, label %.loopexit

.lr.ph1414.preheader:                             ; preds = %.epilog-lcssa
  %i.bfq = shufflevector <8 x float> %i.bfh, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bfr = shufflevector <8 x float> %i.bfh, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bfs = shufflevector <8 x float> %i.bfh, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.bft = shufflevector <8 x float> %i.bfh, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  br label %.lr.ph1414

bb.gw:                                            ; preds = %bb.gw, %._crit_edge.new
  %indvars.iv1469 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next1470.3, %bb.gw ] ; 6 uses
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.3, %bb.gw ]
  %i.bfu = trunc nuw i64 %indvars.iv1469 to i32
  %i.bfv = add i32 %i.bfu, %i.h
  %i.bfw = load ptr, ptr %i.bdj, align 8
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %i.bfw, i64 %indvars.iv1469 ; 2 uses
  store i32 %i.bfv, ptr %i.bfx, align 4
  %.sroa_idx906 = getelementptr inbounds nuw i8, ptr %i.bfx, i64 4
  store i32 1065353216, ptr %.sroa_idx906, align 4
  %indvars.iv.next1470 = or disjoint i64 %indvars.iv1469, 1 ; 2 uses
  %i.bfy = trunc nuw i64 %indvars.iv.next1470 to i32
  %i.bfz = add i32 %i.bfy, %i.h
  %i.bga = load ptr, ptr %i.bdj, align 8
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bga, i64 %indvars.iv.next1470 ; 2 uses
  store i32 %i.bfz, ptr %i.bgb, align 4
  %.sroa_idx906.1 = getelementptr inbounds nuw i8, ptr %i.bgb, i64 4
  store i32 1065353216, ptr %.sroa_idx906.1, align 4
  %indvars.iv.next1470.1 = or disjoint i64 %indvars.iv1469, 2 ; 2 uses
  %i.bgc = trunc nuw i64 %indvars.iv.next1470.1 to i32
  %i.bgd = add i32 %i.bgc, %i.h
  %i.bge = load ptr, ptr %i.bdj, align 8
  %i.bgf = getelementptr inbounds nuw [8 x i8], ptr %i.bge, i64 %indvars.iv.next1470.1 ; 2 uses
  store i32 %i.bgd, ptr %i.bgf, align 4
  %.sroa_idx906.2 = getelementptr inbounds nuw i8, ptr %i.bgf, i64 4
  store i32 1065353216, ptr %.sroa_idx906.2, align 4
  %indvars.iv.next1470.2 = or disjoint i64 %indvars.iv1469, 3 ; 2 uses
  %i.bgg = trunc nuw i64 %indvars.iv.next1470.2 to i32
  %i.bgh = add i32 %i.bgg, %i.h
  %i.bgi = load ptr, ptr %i.bdj, align 8
  %i.bgj = getelementptr inbounds nuw [8 x i8], ptr %i.bgi, i64 %indvars.iv.next1470.2 ; 2 uses
  store i32 %i.bgh, ptr %i.bgj, align 4
  %.sroa_idx906.3 = getelementptr inbounds nuw i8, ptr %i.bgj, i64 4
  store i32 1065353216, ptr %.sroa_idx906.3, align 4
  %indvars.iv.next1470.3 = add nuw nsw i64 %indvars.iv1469, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.gw, !llvm.loop !154

.lr.ph1414:                                       ; preds = %.lr.ph1414.preheader, %.lr.ph1414
  %i.bgk = phi ptr [ %i.bgz, %.lr.ph1414 ], [ %i.bfk, %.lr.ph1414.preheader ]
  %i.bgl = phi i64 [ %i.bgx, %.lr.ph1414 ], [ %i.bfi, %.lr.ph1414.preheader ]
  %.01731412 = phi i32 [ %i.bgw, %.lr.ph1414 ], [ %i.h, %.lr.ph1414.preheader ]
  %i.bgm = getelementptr inbounds nuw [12 x i8], ptr %i.bgk, i64 %i.bgl ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bgm, i64 4
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8 ; 2 uses
  %6 = load float, ptr %5, align 4                ; 2 uses
  %7 = load float, ptr %i.bgm, align 4            ; 2 uses
  %i.bgo = load float, ptr %i.bgn, align 4        ; 2 uses
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgp = fmul <2 x float> %i.bfq, %9
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %i.bgq = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfr, <2 x float> %i.bgq, <2 x float> %i.bgp)
  %11 = insertelement <2 x float> poison, float %i.bgo, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfs, <2 x float> %12, <2 x float> %i.bgr)
  %14 = fadd <2 x float> %i.bft, %13
  %i.bgs = fmul float %.sroa.12.0.copyload, %6
  %i.bgt = call float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %7, float %i.bgs)
  %i.bgu = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload, float %i.bgo, float %i.bgt)
  %i.bgv = fadd float %.sroa.14.0.copyload, %i.bgu
  store <2 x float> %14, ptr %i.bgm, align 4
  store float %i.bgv, ptr %i.bgn, align 4
  %i.bgw = add i32 %.01731412, 1                  ; 2 uses
  %i.bgx = zext i32 %i.bgw to i64                 ; 2 uses
  %i.bgy = load ptr, ptr %i.a, align 8
  %i.bgz = load ptr, ptr %0, align 8              ; 2 uses
  %i.bha = ptrtoint ptr %i.bgy to i64
  %i.bhb = ptrtoint ptr %i.bgz to i64
  %i.bhc = sub i64 %i.bha, %i.bhb
  %i.bhd = sdiv exact i64 %i.bhc, 12
  %i.bhe = icmp ugt i64 %i.bhd, %i.bgx
  br i1 %i.bhe, label %.lr.ph1414, label %.loopexit, !llvm.loop !155

.loopexit:                                        ; preds = %.lr.ph1414, %.epilog-lcssa, %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit897
  %i.bhf = load i32, ptr %i.i, align 8
  %.not1420 = icmp eq i32 %i.bhf, 0
  br i1 %.not1420, label %._crit_edge1418, label %.lr.ph1417

.lr.ph1417:                                       ; preds = %.loopexit
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.gx

._crit_edge1418:                                  ; preds = %bb.gx, %.loopexit
  ret void

bb.gx:                                            ; preds = %.lr.ph1417, %bb.gx
  %indvars.iv1472 = phi i64 [ 0, %.lr.ph1417 ], [ %indvars.iv.next1473, %bb.gx ] ; 2 uses
  %i.bhh = load ptr, ptr %i.bhg, align 8
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bhh, i64 %indvars.iv1472
  %i.bhj = load ptr, ptr %i.bhi, align 8
  call void @_ZN6Assimp19SkeletonMeshBuilder14CreateGeometryEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %i.bhj)
  %indvars.iv.next1473 = add nuw nsw i64 %indvars.iv1472, 1 ; 2 uses
  %i.bhk = load i32, ptr %i.i, align 8
  %i.bhl = zext i32 %i.bhk to i64
  %i.bhm = icmp samesign ult i64 %indvars.iv.next1473, %i.bhl
  br i1 %i.bhm, label %bb.gx, label %._crit_edge1418, !llvm.loop !156
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #11 ; 13 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(196) %i.h, i8 0, i64 196, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %0, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12                  ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  store i32 %i.p, ptr %i.b, align 4
  %i.q = and i64 %i.o, 4294967295                 ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 12                 ; 4 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #11 ; 4 uses
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %.loopexit70, label %.loopexit70.loopexit

.loopexit70.loopexit:                             ; preds = %bb.a
  %i.u = add nsw i64 %i.r, -12                    ; 2 uses
  %i.v = urem i64 %i.u, 12
  %i.w = sub nuw nsw i64 %i.u, %i.v
  %i.x = add nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.x, i1 false)
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %bb.a
  store ptr %i.s, ptr %i.d, align 8
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 12
  br i1 %i.ad, label %bb.b, label %bb.c, !prof !208

bb.b:                                             ; preds = %.loopexit70
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.y, i64 %i.ac, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.c:                                             ; preds = %.loopexit70
  %i.ae = icmp eq i64 %i.ac, 12
  br i1 %i.ae, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #11 ; 5 uses
  %i.ag = icmp eq i32 %i.p, 0
  br i1 %i.ag, label %.loopexit69, label %.loopexit69.loopexit

.loopexit69.loopexit:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ah = add nsw i64 %i.r, -12                   ; 2 uses
  %i.ai = urem i64 %i.ah, 12
  %i.aj = sub nuw nsw i64 %i.ah, %i.ai
  %i.ak = add nsw i64 %i.aj, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 0, i64 %i.ak, i1 false)
  br label %.loopexit69

.loopexit69:                                      ; preds = %.loopexit69.loopexit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.af, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 12                ; 4 uses
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  store i32 %i.au, ptr %i.c, align 8
  %i.av = and i64 %i.at, 4294967295               ; 5 uses
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = or disjoint i64 %i.aw, 8
  %i.ay = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ax) #11 ; 2 uses
  store i64 %i.av, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 5 uses
  %i.ba = icmp eq i64 %i.av, 0
  br i1 %i.ba, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit69
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.av
  %i.bc = add nuw nsw i64 %i.av, 1152921504606846975
  %i.bd = and i64 %i.bc, 1152921504606846975
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %i.be = phi ptr [ %i.bg, %.prol.preheader ], [ %i.az, %bb.e ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !206

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.az, %bb.e ], [ %i.bg, %.prol.preheader ]
  %i.bh = icmp samesign ult i64 %i.bd, 7
  br i1 %i.bh, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bi = phi ptr [ %i.by, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr null, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i32 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  store ptr null, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store i32 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  store i32 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bb
  br i1 %i.bz, label %.loopexit, label %.new

end_hunk_0
