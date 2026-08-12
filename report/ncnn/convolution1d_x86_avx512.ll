inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %niter845.ncmp.3, label %.loopexit2592.loopexit.i.unr-lcssa, label %.lr.ph3234.i, !llvm.loop !261

.loopexit2592.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3234.i
  br i1 %lcmp.mod840.not, label %.loopexit2592.loopexit.i, label %.lr.ph3234.i.epil.preheader

.lr.ph3234.i.epil.preheader:                      ; preds = %.loopexit2592.loopexit.i.unr-lcssa, %.lr.ph3234.i.preheader
  %.013313232.i.epil.init = phi ptr [ %gep3262.i, %.lr.ph3234.i.preheader ], [ %i.dfm, %.loopexit2592.loopexit.i.unr-lcssa ]
  %.1713983231.i.epil.init = phi ptr [ %.1613973250.i, %.lr.ph3234.i.preheader ], [ %i.dfn, %.loopexit2592.loopexit.i.unr-lcssa ]
  %.124983230.i.epil.init = phi <4 x float> [ %.024973249.i, %.lr.ph3234.i.preheader ], [ %i.dfl, %.loopexit2592.loopexit.i.unr-lcssa ]
  %.125033229.i.epil.init = phi <4 x float> [ %.025023248.i, %.lr.ph3234.i.preheader ], [ %i.dfk, %.loopexit2592.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod843)
  br label %.lr.ph3234.i.epil

.lr.ph3234.i.epil:                                ; preds = %.lr.ph3234.i.epil, %.lr.ph3234.i.epil.preheader
  %.013313232.i.epil = phi ptr [ %i.dfu, %.lr.ph3234.i.epil ], [ %.013313232.i.epil.init, %.lr.ph3234.i.epil.preheader ] ; 2 uses
  %.1713983231.i.epil = phi ptr [ %i.dfv, %.lr.ph3234.i.epil ], [ %.1713983231.i.epil.init, %.lr.ph3234.i.epil.preheader ] ; 3 uses
  %.124983230.i.epil = phi <4 x float> [ %i.dft, %.lr.ph3234.i.epil ], [ %.124983230.i.epil.init, %.lr.ph3234.i.epil.preheader ]
  %.125033229.i.epil = phi <4 x float> [ %i.dfs, %.lr.ph3234.i.epil ], [ %.125033229.i.epil.init, %.lr.ph3234.i.epil.preheader ]
  %epil.iter839 = phi i32 [ %epil.iter839.next, %.lr.ph3234.i.epil ], [ 0, %.lr.ph3234.i.epil.preheader ]
  %i.dfo = load <4 x float>, ptr %.013313232.i.epil, align 16, !tbaa !50 ; 2 uses
  %i.dfp = load <4 x float>, ptr %.1713983231.i.epil, align 16, !tbaa !50
  %i.dfq = getelementptr inbounds nuw i8, ptr %.1713983231.i.epil, i64 16
  %i.dfr = load <4 x float>, ptr %i.dfq, align 16, !tbaa !50
  %i.dfs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dfo, <4 x float> nofpclass(nan inf) %i.dfp, <4 x float> nofpclass(nan inf) %.125033229.i.epil) ; 2 uses
  %i.dft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dfo, <4 x float> nofpclass(nan inf) %i.dfr, <4 x float> nofpclass(nan inf) %.124983230.i.epil) ; 2 uses
  %i.dfu = getelementptr inbounds [4 x i8], ptr %.013313232.i.epil, i64 %i.dds
  %i.dfv = getelementptr inbounds nuw i8, ptr %.1713983231.i.epil, i64 32
  %epil.iter839.next = add i32 %epil.iter839, 1   ; 2 uses
  %epil.iter839.cmp.not = icmp eq i32 %epil.iter839.next, %xtraiter838
  br i1 %epil.iter839.cmp.not, label %.loopexit2592.loopexit.i, label %.lr.ph3234.i.epil, !llvm.loop !262

.loopexit2592.loopexit.i:                         ; preds = %.lr.ph3234.i.epil, %.loopexit2592.loopexit.i.unr-lcssa
  %.lcssa674 = phi <4 x float> [ %i.dfk, %.loopexit2592.loopexit.i.unr-lcssa ], [ %i.dfs, %.lr.ph3234.i.epil ]
  %.lcssa673 = phi <4 x float> [ %i.dfl, %.loopexit2592.loopexit.i.unr-lcssa ], [ %i.dft, %.lr.ph3234.i.epil ]
  %scevgep3863.i = getelementptr i8, ptr %.1613973250.i, i64 32
  %scevgep3864.i = getelementptr i8, ptr %scevgep3863.i, i64 %i.ded
  br label %.loopexit2590.i

.loopexit2592.i:                                  ; preds = %bb.bb
  br i1 %brmerge3521.i, label %.loopexit2590.i, label %.lr.ph3244.i.preheader

.lr.ph3244.i.preheader:                           ; preds = %.loopexit2592.i
  br i1 %i.dee, label %.lr.ph3244.i.epil.preheader, label %.lr.ph3244.i

.lr.ph3244.i:                                     ; preds = %.lr.ph3244.i.preheader, %.lr.ph3244.i
  %.213333242.i = phi ptr [ %i.dhe, %.lr.ph3244.i ], [ %gep3262.i, %.lr.ph3244.i.preheader ] ; 5 uses
  %.1914003241.i = phi ptr [ %i.dhf, %.lr.ph3244.i ], [ %.1613973250.i, %.lr.ph3244.i.preheader ] ; 5 uses
  %.325003240.i = phi <4 x float> [ %i.dhd, %.lr.ph3244.i ], [ %.024973249.i, %.lr.ph3244.i.preheader ]
  %.325053239.i = phi <4 x float> [ %i.dhc, %.lr.ph3244.i ], [ %.025023248.i, %.lr.ph3244.i.preheader ]
  %niter837 = phi i32 [ %niter837.next.1, %.lr.ph3244.i ], [ 0, %.lr.ph3244.i.preheader ]
  %i.dfw = getelementptr inbounds [4 x i8], ptr %.213333242.i, i64 %i.ddw
  %i.dfx = load float, ptr %i.dfw, align 4, !tbaa !110
  %i.dfy = getelementptr inbounds [4 x i8], ptr %.213333242.i, i64 %i.ddy
  %i.dfz = load float, ptr %i.dfy, align 4, !tbaa !110
  %i.dga = getelementptr inbounds [4 x i8], ptr %.213333242.i, i64 %i.ddz
  %i.dgb = load float, ptr %i.dga, align 4, !tbaa !110
  %i.dgc = load float, ptr %.213333242.i, align 4, !tbaa !110
  %i.dgd = insertelement <4 x float> poison, float %i.dgc, i64 0
  %i.dge = insertelement <4 x float> %i.dgd, float %i.dgb, i64 1
  %i.dgf = insertelement <4 x float> %i.dge, float %i.dfz, i64 2
  %i.dgg = insertelement <4 x float> %i.dgf, float %i.dfx, i64 3 ; 2 uses
  %i.dgh = load <4 x float>, ptr %.1914003241.i, align 16, !tbaa !50
  %i.dgi = getelementptr inbounds nuw i8, ptr %.1914003241.i, i64 16
  %i.dgj = load <4 x float>, ptr %i.dgi, align 16, !tbaa !50
  %i.dgk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dgg, <4 x float> nofpclass(nan inf) %i.dgh, <4 x float> nofpclass(nan inf) %.325053239.i)
  %i.dgl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dgg, <4 x float> nofpclass(nan inf) %i.dgj, <4 x float> nofpclass(nan inf) %.325003240.i)
  %i.dgm = getelementptr inbounds [4 x i8], ptr %.213333242.i, i64 %i.dea ; 5 uses
  %i.dgn = getelementptr inbounds nuw i8, ptr %.1914003241.i, i64 32
  %i.dgo = getelementptr inbounds [4 x i8], ptr %i.dgm, i64 %i.ddw
  %i.dgp = load float, ptr %i.dgo, align 4, !tbaa !110
  %i.dgq = getelementptr inbounds [4 x i8], ptr %i.dgm, i64 %i.ddy
  %i.dgr = load float, ptr %i.dgq, align 4, !tbaa !110
  %i.dgs = getelementptr inbounds [4 x i8], ptr %i.dgm, i64 %i.ddz
  %i.dgt = load float, ptr %i.dgs, align 4, !tbaa !110
  %i.dgu = load float, ptr %i.dgm, align 4, !tbaa !110
  %i.dgv = insertelement <4 x float> poison, float %i.dgu, i64 0
  %i.dgw = insertelement <4 x float> %i.dgv, float %i.dgt, i64 1
  %i.dgx = insertelement <4 x float> %i.dgw, float %i.dgr, i64 2
  %i.dgy = insertelement <4 x float> %i.dgx, float %i.dgp, i64 3 ; 2 uses
  %i.dgz = load <4 x float>, ptr %i.dgn, align 16, !tbaa !50
  %i.dha = getelementptr inbounds nuw i8, ptr %.1914003241.i, i64 48
  %i.dhb = load <4 x float>, ptr %i.dha, align 16, !tbaa !50
  %i.dhc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dgy, <4 x float> nofpclass(nan inf) %i.dgz, <4 x float> nofpclass(nan inf) %i.dgk) ; 3 uses
  %i.dhd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dgy, <4 x float> nofpclass(nan inf) %i.dhb, <4 x float> nofpclass(nan inf) %i.dgl) ; 3 uses
  %i.dhe = getelementptr inbounds [4 x i8], ptr %i.dgm, i64 %i.dea ; 2 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %.1914003241.i, i64 64 ; 2 uses
  %niter837.next.1 = add nuw nsw i32 %niter837, 2 ; 2 uses
  %niter837.ncmp.1 = icmp eq i32 %niter837.next.1, %unroll_iter836
  br i1 %niter837.ncmp.1, label %.loopexit2590.loopexit.i.unr-lcssa, label %.lr.ph3244.i, !llvm.loop !263

.loopexit2590.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3244.i
  br i1 %lcmp.mod832.not, label %.loopexit2590.loopexit.i, label %.lr.ph3244.i.epil.preheader

.lr.ph3244.i.epil.preheader:                      ; preds = %.loopexit2590.loopexit.i.unr-lcssa, %.lr.ph3244.i.preheader
  %.213333242.i.epil.init = phi ptr [ %gep3262.i, %.lr.ph3244.i.preheader ], [ %i.dhe, %.loopexit2590.loopexit.i.unr-lcssa ] ; 4 uses
  %.1914003241.i.epil.init = phi ptr [ %.1613973250.i, %.lr.ph3244.i.preheader ], [ %i.dhf, %.loopexit2590.loopexit.i.unr-lcssa ] ; 2 uses
  %.325003240.i.epil.init = phi <4 x float> [ %.024973249.i, %.lr.ph3244.i.preheader ], [ %i.dhd, %.loopexit2590.loopexit.i.unr-lcssa ]
  %.325053239.i.epil.init = phi <4 x float> [ %.025023248.i, %.lr.ph3244.i.preheader ], [ %i.dhc, %.loopexit2590.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod835)
  %i.dhg = getelementptr inbounds [4 x i8], ptr %.213333242.i.epil.init, i64 %i.ddw
  %i.dhh = load float, ptr %i.dhg, align 4, !tbaa !110
  %i.dhi = getelementptr inbounds [4 x i8], ptr %.213333242.i.epil.init, i64 %i.ddy
  %i.dhj = load float, ptr %i.dhi, align 4, !tbaa !110
  %i.dhk = getelementptr inbounds [4 x i8], ptr %.213333242.i.epil.init, i64 %i.ddz
  %i.dhl = load float, ptr %i.dhk, align 4, !tbaa !110
  %i.dhm = load float, ptr %.213333242.i.epil.init, align 4, !tbaa !110
  %i.dhn = insertelement <4 x float> poison, float %i.dhm, i64 0
  %i.dho = insertelement <4 x float> %i.dhn, float %i.dhl, i64 1
  %i.dhp = insertelement <4 x float> %i.dho, float %i.dhj, i64 2
  %i.dhq = insertelement <4 x float> %i.dhp, float %i.dhh, i64 3 ; 2 uses
  %i.dhr = load <4 x float>, ptr %.1914003241.i.epil.init, align 16, !tbaa !50
  %i.dhs = getelementptr inbounds nuw i8, ptr %.1914003241.i.epil.init, i64 16
  %i.dht = load <4 x float>, ptr %i.dhs, align 16, !tbaa !50
  %i.dhu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dhq, <4 x float> nofpclass(nan inf) %i.dhr, <4 x float> nofpclass(nan inf) %.325053239.i.epil.init)
  %i.dhv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dhq, <4 x float> nofpclass(nan inf) %i.dht, <4 x float> nofpclass(nan inf) %.325003240.i.epil.init)
  br label %.loopexit2590.loopexit.i

.loopexit2590.loopexit.i:                         ; preds = %.loopexit2590.loopexit.i.unr-lcssa, %.lr.ph3244.i.epil.preheader
  %.lcssa672 = phi <4 x float> [ %i.dhc, %.loopexit2590.loopexit.i.unr-lcssa ], [ %i.dhu, %.lr.ph3244.i.epil.preheader ]
  %.lcssa671 = phi <4 x float> [ %i.dhd, %.loopexit2590.loopexit.i.unr-lcssa ], [ %i.dhv, %.lr.ph3244.i.epil.preheader ]
  %scevgep3866.i = getelementptr i8, ptr %.1613973250.i, i64 32
  %scevgep3867.i = getelementptr i8, ptr %scevgep3866.i, i64 %i.ded
  br label %.loopexit2590.i

.loopexit2590.i:                                  ; preds = %.loopexit2590.loopexit.i, %.loopexit2592.i, %.loopexit2592.loopexit.i, %.preheader2591.i
  %.42506.i = phi nsz <4 x float> [ %.025023248.i, %.loopexit2592.i ], [ %.lcssa672, %.loopexit2590.loopexit.i ], [ %.lcssa674, %.loopexit2592.loopexit.i ], [ %.025023248.i, %.preheader2591.i ] ; 2 uses
  %.42501.i = phi nsz <4 x float> [ %.024973249.i, %.loopexit2592.i ], [ %.lcssa671, %.loopexit2590.loopexit.i ], [ %.lcssa673, %.loopexit2592.loopexit.i ], [ %.024973249.i, %.preheader2591.i ] ; 2 uses
  %.201401.i = phi ptr [ %.1613973250.i, %.loopexit2592.i ], [ %scevgep3867.i, %.loopexit2590.loopexit.i ], [ %scevgep3864.i, %.loopexit2592.loopexit.i ], [ %.1613973250.i, %.preheader2591.i ] ; 2 uses
  %i.dhw = add nuw nsw i32 %.213783251.i, 4       ; 3 uses
  %i.dhx = or disjoint i32 %i.dhw, 3
  %i.dhy = icmp slt i32 %i.dhx, %i.avq
  br i1 %i.dhy, label %bb.bb, label %._crit_edge3254.i, !llvm.loop !264

._crit_edge3254.i:                                ; preds = %.loopexit2590.i, %._crit_edge3220.i
  %.02502.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3220.i ], [ %.42506.i, %.loopexit2590.i ] ; 4 uses
  %.02497.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3220.i ], [ %.42501.i, %.loopexit2590.i ] ; 4 uses
  %.161397.lcssa.i = phi ptr [ %.91390.lcssa.i, %._crit_edge3220.i ], [ %.201401.i, %.loopexit2590.i ] ; 2 uses
  %.21378.lcssa.i = phi i32 [ %.11377.lcssa.i, %._crit_edge3220.i ], [ %i.dhw, %.loopexit2590.i ] ; 3 uses
  %i.dhz = shufflevector <4 x float> %i.cxy, <4 x float> %i.cye, <2 x i32> <i32 3, i32 7>
  %i.dia = shufflevector <4 x float> %i.cxy, <4 x float> %i.cye, <2 x i32> <i32 1, i32 5>
  %i.dib = fadd fast <2 x float> %i.dhz, %i.dia
  %i.dic = fadd fast <2 x float> %i.dib, %i.cqe
  %i.did = shufflevector <4 x float> %i.cxy, <4 x float> %i.cye, <2 x i32> <i32 2, i32 6>
  %i.die = shufflevector <4 x float> %i.cxy, <4 x float> %i.cye, <2 x i32> <i32 0, i32 4>
  %i.dif = fadd fast <2 x float> %i.did, %i.die
  %i.dig = fadd fast <2 x float> %i.dic, %i.dif
  %i.dih = shufflevector <4 x float> %i.ddg, <4 x float> %i.ddj, <2 x i32> <i32 3, i32 7>
  %i.dii = shufflevector <4 x float> %i.ddg, <4 x float> %i.ddj, <2 x i32> <i32 1, i32 5>
  %i.dij = fadd fast <2 x float> %i.dih, %i.dii
  %i.dik = fadd fast <2 x float> %i.dig, %i.dij
  %i.dil = shufflevector <4 x float> %i.ddg, <4 x float> %i.ddj, <2 x i32> <i32 2, i32 6>
  %i.dim = shufflevector <4 x float> %i.ddg, <4 x float> %i.ddj, <2 x i32> <i32 0, i32 4>
  %i.din = fadd fast <2 x float> %i.dil, %i.dim
  %i.dio = fadd fast <2 x float> %i.dik, %i.din
  %i.dip = shufflevector <4 x float> %.02502.lcssa.i, <4 x float> %.02497.lcssa.i, <2 x i32> <i32 3, i32 7>
  %i.diq = shufflevector <4 x float> %.02502.lcssa.i, <4 x float> %.02497.lcssa.i, <2 x i32> <i32 1, i32 5>
  %i.dir = fadd fast <2 x float> %i.dip, %i.diq
  %i.dis = fadd fast <2 x float> %i.dio, %i.dir
  %i.dit = shufflevector <4 x float> %.02502.lcssa.i, <4 x float> %.02497.lcssa.i, <2 x i32> <i32 2, i32 6>
  %i.diu = shufflevector <4 x float> %.02502.lcssa.i, <4 x float> %.02497.lcssa.i, <2 x i32> <i32 0, i32 4>
  %i.div = fadd fast <2 x float> %i.dit, %i.diu
  %i.diw = fadd fast <2 x float> %i.dis, %i.div   ; 3 uses
  %i.dix = or disjoint i32 %.21378.lcssa.i, 1
  %i.diy = icmp slt i32 %i.dix, %i.avq
  br i1 %i.diy, label %.lr.ph3279.i, label %.preheader2604.i

.lr.ph3279.i:                                     ; preds = %._crit_edge3254.i
  %i.diz = mul nsw i64 %indvars.iv3882.i, %i.cpw
  %invariant.gep3286.i = getelementptr [4 x i8], ptr %i.cpx, i64 %i.diz
  %i.dja = load i32, ptr %i.e, align 4
  %i.djb = sext i32 %i.dja to i64                 ; 3 uses
  %i.djc = load i32, ptr %i.b, align 4
  %i.djd = sext i32 %i.djc to i64                 ; 2 uses
  br i1 %i.cpr, label %.lr.ph3269.us.preheader.i, label %._crit_edge3308.i

.lr.ph3269.us.preheader.i:                        ; preds = %.lr.ph3279.i
  %i.dje = zext i32 %.21378.lcssa.i to i64
  br label %.lr.ph3269.us.i

.lr.ph3269.us.i:                                  ; preds = %._crit_edge3270.us.i, %.lr.ph3269.us.preheader.i
  %indvars.iv3873.i = phi i64 [ %i.dje, %.lr.ph3269.us.preheader.i ], [ %indvars.iv.next3874.i, %._crit_edge3270.us.i ] ; 2 uses
  %.2114023276.us.i = phi ptr [ %.161397.lcssa.i, %.lr.ph3269.us.preheader.i ], [ %scevgep3871.i, %._crit_edge3270.us.i ] ; 3 uses
  %i.djf = phi <2 x float> [ %i.diw, %.lr.ph3269.us.preheader.i ], [ %.lcssa676, %._crit_edge3270.us.i ] ; 2 uses
  %.reass3285.us.i = mul i64 %factor.op.mul3179.i, %indvars.iv3873.i
  %gep3287.us.i = getelementptr i8, ptr %invariant.gep3286.i, i64 %.reass3285.us.i ; 2 uses
  br i1 %i.cqb, label %.epil.preheader846, label %.lr.ph3269.us.i.new

.lr.ph3269.us.i.new:                              ; preds = %.lr.ph3269.us.i, %.lr.ph3269.us.i.new
  %.013283266.us.i = phi ptr [ %i.dkl, %.lr.ph3269.us.i.new ], [ %gep3287.us.i, %.lr.ph3269.us.i ] ; 3 uses
  %.2214033265.us.i = phi ptr [ %i.dkm, %.lr.ph3269.us.i.new ], [ %.2114023276.us.i, %.lr.ph3269.us.i ] ; 5 uses
  %i.djg = phi <2 x float> [ %i.dkk, %.lr.ph3269.us.i.new ], [ %i.djf, %.lr.ph3269.us.i ]
  %niter853 = phi i32 [ %niter853.next.1, %.lr.ph3269.us.i.new ], [ 0, %.lr.ph3269.us.i ]
  %i.djh = load float, ptr %.013283266.us.i, align 4, !tbaa !110
  %i.dji = getelementptr inbounds [4 x i8], ptr %.013283266.us.i, i64 %i.djb
  %i.djj = load float, ptr %i.dji, align 4, !tbaa !110
  %i.djk = getelementptr inbounds nuw i8, ptr %.2214033265.us.i, i64 8
  %i.djl = load <2 x float>, ptr %.2214033265.us.i, align 4, !tbaa !110
  %i.djm = insertelement <2 x float> poison, float %i.djh, i64 0
  %i.djn = shufflevector <2 x float> %i.djm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.djo = fmul fast <2 x float> %i.djl, %i.djn
  %i.djp = fadd fast <2 x float> %i.djg, %i.djo
  %i.djq = load <2 x float>, ptr %i.djk, align 4, !tbaa !110
  %i.djr = insertelement <2 x float> poison, float %i.djj, i64 0
  %i.djs = shufflevector <2 x float> %i.djr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.djt = fmul fast <2 x float> %i.djq, %i.djs
  %i.dju = fadd fast <2 x float> %i.djt, %i.djp
  %i.djv = getelementptr inbounds [4 x i8], ptr %.013283266.us.i, i64 %i.djd ; 3 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %.2214033265.us.i, i64 16
  %i.djx = load float, ptr %i.djv, align 4, !tbaa !110
  %i.djy = getelementptr inbounds [4 x i8], ptr %i.djv, i64 %i.djb
  %i.djz = load float, ptr %i.djy, align 4, !tbaa !110
  %i.dka = getelementptr inbounds nuw i8, ptr %.2214033265.us.i, i64 24
  %i.dkb = load <2 x float>, ptr %i.djw, align 4, !tbaa !110
  %i.dkc = insertelement <2 x float> poison, float %i.djx, i64 0
  %i.dkd = shufflevector <2 x float> %i.dkc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dke = fmul fast <2 x float> %i.dkb, %i.dkd
  %i.dkf = fadd fast <2 x float> %i.dju, %i.dke
  %i.dkg = load <2 x float>, ptr %i.dka, align 4, !tbaa !110
  %i.dkh = insertelement <2 x float> poison, float %i.djz, i64 0
  %i.dki = shufflevector <2 x float> %i.dkh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dkj = fmul fast <2 x float> %i.dkg, %i.dki
  %i.dkk = fadd fast <2 x float> %i.dkj, %i.dkf   ; 3 uses
  %i.dkl = getelementptr inbounds [4 x i8], ptr %i.djv, i64 %i.djd ; 2 uses
  %i.dkm = getelementptr inbounds nuw i8, ptr %.2214033265.us.i, i64 32 ; 2 uses
  %niter853.next.1 = add nuw nsw i32 %niter853, 2 ; 2 uses
  %niter853.ncmp.1 = icmp eq i32 %niter853.next.1, %unroll_iter852
  br i1 %niter853.ncmp.1, label %._crit_edge3270.us.i.unr-lcssa, label %.lr.ph3269.us.i.new, !llvm.loop !265

._crit_edge3270.us.i.unr-lcssa:                   ; preds = %.lr.ph3269.us.i.new
  br i1 %lcmp.mod849.not, label %._crit_edge3270.us.i, label %.epil.preheader846

.epil.preheader846:                               ; preds = %._crit_edge3270.us.i.unr-lcssa, %.lr.ph3269.us.i
  %.013283266.us.i.epil.init = phi ptr [ %gep3287.us.i, %.lr.ph3269.us.i ], [ %i.dkl, %._crit_edge3270.us.i.unr-lcssa ] ; 2 uses
  %.2214033265.us.i.epil.init = phi ptr [ %.2114023276.us.i, %.lr.ph3269.us.i ], [ %i.dkm, %._crit_edge3270.us.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ %i.djf, %.lr.ph3269.us.i ], [ %i.dkk, %._crit_edge3270.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod851)
  %i.dkn = load float, ptr %.013283266.us.i.epil.init, align 4, !tbaa !110
  %i.dko = getelementptr inbounds [4 x i8], ptr %.013283266.us.i.epil.init, i64 %i.djb
  %i.dkp = load float, ptr %i.dko, align 4, !tbaa !110
  %i.dkq = getelementptr inbounds nuw i8, ptr %.2214033265.us.i.epil.init, i64 8
  %i.dkr = load <2 x float>, ptr %.2214033265.us.i.epil.init, align 4, !tbaa !110
  %i.dks = insertelement <2 x float> poison, float %i.dkn, i64 0
  %i.dkt = shufflevector <2 x float> %i.dks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dku = fmul fast <2 x float> %i.dkr, %i.dkt
  %i.dkv = fadd fast <2 x float> %.epil.init, %i.dku
  %i.dkw = load <2 x float>, ptr %i.dkq, align 4, !tbaa !110
  %i.dkx = insertelement <2 x float> poison, float %i.dkp, i64 0
  %i.dky = shufflevector <2 x float> %i.dkx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dkz = fmul fast <2 x float> %i.dkw, %i.dky
  %i.dla = fadd fast <2 x float> %i.dkz, %i.dkv
  br label %._crit_edge3270.us.i

._crit_edge3270.us.i:                             ; preds = %._crit_edge3270.us.i.unr-lcssa, %.epil.preheader846
  %.lcssa676 = phi <2 x float> [ %i.dkk, %._crit_edge3270.us.i.unr-lcssa ], [ %i.dla, %.epil.preheader846 ] ; 2 uses
  %scevgep3870.i = getelementptr i8, ptr %.2114023276.us.i, i64 16
  %scevgep3871.i = getelementptr i8, ptr %scevgep3870.i, i64 %i.cpu ; 2 uses
  %indvars.iv.next3874.i = add nuw nsw i64 %indvars.iv3873.i, 2 ; 2 uses
  %i.dlb = trunc i64 %indvars.iv.next3874.i to i32 ; 2 uses
  %i.dlc = or i32 %i.dlb, 1
  %i.dld = icmp slt i32 %i.dlc, %i.avq
  br i1 %i.dld, label %.lr.ph3269.us.i, label %.preheader2604.i, !llvm.loop !266

.preheader2604.i:                                 ; preds = %._crit_edge3270.us.i, %._crit_edge3254.i
  %.211402.lcssa.i = phi ptr [ %.161397.lcssa.i, %._crit_edge3254.i ], [ %scevgep3871.i, %._crit_edge3270.us.i ]
  %.31379.lcssa.i = phi i32 [ %.21378.lcssa.i, %._crit_edge3254.i ], [ %i.dlb, %._crit_edge3270.us.i ] ; 2 uses
  %i.dle = phi <2 x float> [ %i.diw, %._crit_edge3254.i ], [ %.lcssa676, %._crit_edge3270.us.i ] ; 3 uses
  %i.dlf = icmp slt i32 %.31379.lcssa.i, %i.avq
  br i1 %i.dlf, label %.lr.ph3307.i, label %._crit_edge3308.i

.lr.ph3307.i:                                     ; preds = %.preheader2604.i
  %i.dlg = mul nsw i64 %indvars.iv3882.i, %i.cpw
  %invariant.gep3313.i = getelementptr [4 x i8], ptr %i.cpx, i64 %i.dlg
  %i.dlh = load i32, ptr %i.b, align 4
  %i.dli = sext i32 %i.dlh to i64                 ; 5 uses
  br i1 %i.cpr, label %.lr.ph3298.us.preheader.i, label %._crit_edge3308.i

.lr.ph3298.us.preheader.i:                        ; preds = %.lr.ph3307.i
  %i.dlj = zext i32 %.31379.lcssa.i to i64
  br label %.lr.ph3298.us.i

.lr.ph3298.us.i:                                  ; preds = %._crit_edge3299.us.i, %.lr.ph3298.us.preheader.i
  %indvars.iv3879.i = phi i64 [ %i.dlj, %.lr.ph3298.us.preheader.i ], [ %indvars.iv.next3880.i, %._crit_edge3299.us.i ] ; 2 uses
  %.2314043305.us.i = phi ptr [ %.211402.lcssa.i, %.lr.ph3298.us.preheader.i ], [ %scevgep3877.i, %._crit_edge3299.us.i ] ; 3 uses
  %i.dlk = phi <2 x float> [ %i.dle, %.lr.ph3298.us.preheader.i ], [ %.lcssa678, %._crit_edge3299.us.i ] ; 2 uses
  %.reass3312.us.i = mul i64 %factor.op.mul3179.i, %indvars.iv3879.i
  %gep3314.us.i = getelementptr i8, ptr %invariant.gep3313.i, i64 %.reass3312.us.i ; 2 uses
  br i1 %i.cqc, label %.epil.preheader854, label %.lr.ph3298.us.i.new

.lr.ph3298.us.i.new:                              ; preds = %.lr.ph3298.us.i, %.lr.ph3298.us.i.new
  %.013263295.us.i = phi ptr [ %i.dmq, %.lr.ph3298.us.i.new ], [ %gep3314.us.i, %.lr.ph3298.us.i ] ; 2 uses
  %.2414053294.us.i = phi ptr [ %i.dmr, %.lr.ph3298.us.i.new ], [ %.2314043305.us.i, %.lr.ph3298.us.i ] ; 5 uses
  %i.dll = phi <2 x float> [ %i.dmp, %.lr.ph3298.us.i.new ], [ %i.dlk, %.lr.ph3298.us.i ]
  %niter863 = phi i32 [ %niter863.next.3, %.lr.ph3298.us.i.new ], [ 0, %.lr.ph3298.us.i ]
  %i.dlm = load float, ptr %.013263295.us.i, align 4, !tbaa !110
  %i.dln = load <2 x float>, ptr %.2414053294.us.i, align 4, !tbaa !110
  %i.dlo = insertelement <2 x float> poison, float %i.dlm, i64 0
  %i.dlp = shufflevector <2 x float> %i.dlo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dlq = fmul fast <2 x float> %i.dln, %i.dlp
  %i.dlr = fadd fast <2 x float> %i.dlq, %i.dll
  %i.dls = getelementptr inbounds [4 x i8], ptr %.013263295.us.i, i64 %i.dli ; 2 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %.2414053294.us.i, i64 8
  %i.dlu = load float, ptr %i.dls, align 4, !tbaa !110
  %i.dlv = load <2 x float>, ptr %i.dlt, align 4, !tbaa !110
  %i.dlw = insertelement <2 x float> poison, float %i.dlu, i64 0
  %i.dlx = shufflevector <2 x float> %i.dlw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dly = fmul fast <2 x float> %i.dlv, %i.dlx
  %i.dlz = fadd fast <2 x float> %i.dly, %i.dlr
  %i.dma = getelementptr inbounds [4 x i8], ptr %i.dls, i64 %i.dli ; 2 uses
  %i.dmb = getelementptr inbounds nuw i8, ptr %.2414053294.us.i, i64 16
  %i.dmc = load float, ptr %i.dma, align 4, !tbaa !110
  %i.dmd = load <2 x float>, ptr %i.dmb, align 4, !tbaa !110
  %i.dme = insertelement <2 x float> poison, float %i.dmc, i64 0
  %i.dmf = shufflevector <2 x float> %i.dme, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dmg = fmul fast <2 x float> %i.dmd, %i.dmf
  %i.dmh = fadd fast <2 x float> %i.dmg, %i.dlz
  %i.dmi = getelementptr inbounds [4 x i8], ptr %i.dma, i64 %i.dli ; 2 uses
  %i.dmj = getelementptr inbounds nuw i8, ptr %.2414053294.us.i, i64 24
  %i.dmk = load float, ptr %i.dmi, align 4, !tbaa !110
  %i.dml = load <2 x float>, ptr %i.dmj, align 4, !tbaa !110
  %i.dmm = insertelement <2 x float> poison, float %i.dmk, i64 0
  %i.dmn = shufflevector <2 x float> %i.dmm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dmo = fmul fast <2 x float> %i.dml, %i.dmn
  %i.dmp = fadd fast <2 x float> %i.dmo, %i.dmh   ; 3 uses
  %i.dmq = getelementptr inbounds [4 x i8], ptr %i.dmi, i64 %i.dli ; 2 uses
  %i.dmr = getelementptr inbounds nuw i8, ptr %.2414053294.us.i, i64 32 ; 2 uses
  %niter863.next.3 = add nuw nsw i32 %niter863, 4 ; 2 uses
  %niter863.ncmp.3 = icmp eq i32 %niter863.next.3, %unroll_iter862
  br i1 %niter863.ncmp.3, label %._crit_edge3299.us.i.unr-lcssa, label %.lr.ph3298.us.i.new, !llvm.loop !267

._crit_edge3299.us.i.unr-lcssa:                   ; preds = %.lr.ph3298.us.i.new
  br i1 %lcmp.mod859.not, label %._crit_edge3299.us.i, label %.epil.preheader854

.epil.preheader854:                               ; preds = %._crit_edge3299.us.i.unr-lcssa, %.lr.ph3298.us.i
  %.013263295.us.i.epil.init = phi ptr [ %gep3314.us.i, %.lr.ph3298.us.i ], [ %i.dmq, %._crit_edge3299.us.i.unr-lcssa ]
  %.2414053294.us.i.epil.init = phi ptr [ %.2314043305.us.i, %.lr.ph3298.us.i ], [ %i.dmr, %._crit_edge3299.us.i.unr-lcssa ]
  %.epil.init858 = phi <2 x float> [ %i.dlk, %.lr.ph3298.us.i ], [ %i.dmp, %._crit_edge3299.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod861)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader854
  %.013263295.us.i.epil = phi ptr [ %.013263295.us.i.epil.init, %.epil.preheader854 ], [ %i.dmz, %bb.bc ] ; 2 uses
  %.2414053294.us.i.epil = phi ptr [ %.2414053294.us.i.epil.init, %.epil.preheader854 ], [ %i.dna, %bb.bc ] ; 2 uses
  %i.dms = phi <2 x float> [ %.epil.init858, %.epil.preheader854 ], [ %i.dmy, %bb.bc ]
  %epil.iter856 = phi i32 [ 0, %.epil.preheader854 ], [ %epil.iter856.next, %bb.bc ]
  %i.dmt = load float, ptr %.013263295.us.i.epil, align 4, !tbaa !110
  %i.dmu = load <2 x float>, ptr %.2414053294.us.i.epil, align 4, !tbaa !110
  %i.dmv = insertelement <2 x float> poison, float %i.dmt, i64 0
  %i.dmw = shufflevector <2 x float> %i.dmv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dmx = fmul fast <2 x float> %i.dmu, %i.dmw
  %i.dmy = fadd fast <2 x float> %i.dmx, %i.dms   ; 2 uses
  %i.dmz = getelementptr inbounds [4 x i8], ptr %.013263295.us.i.epil, i64 %i.dli
  %i.dna = getelementptr inbounds nuw i8, ptr %.2414053294.us.i.epil, i64 8
  %epil.iter856.next = add i32 %epil.iter856, 1   ; 2 uses
  %epil.iter856.cmp.not = icmp eq i32 %epil.iter856.next, %xtraiter855
  br i1 %epil.iter856.cmp.not, label %._crit_edge3299.us.i, label %bb.bc, !llvm.loop !268

._crit_edge3299.us.i:                             ; preds = %bb.bc, %._crit_edge3299.us.i.unr-lcssa
  %.lcssa678 = phi <2 x float> [ %i.dmp, %._crit_edge3299.us.i.unr-lcssa ], [ %i.dmy, %bb.bc ] ; 2 uses
  %scevgep3876.i = getelementptr i8, ptr %.2314043305.us.i, i64 8
  %scevgep3877.i = getelementptr i8, ptr %scevgep3876.i, i64 %i.cpv
  %indvars.iv.next3880.i = add nuw nsw i64 %indvars.iv3879.i, 1 ; 2 uses
  %i.dnb = trunc nuw i64 %indvars.iv.next3880.i to i32
  %i.dnc = icmp sgt i32 %i.avq, %i.dnb
  br i1 %i.dnc, label %.lr.ph3298.us.i, label %._crit_edge3308.i, !llvm.loop !269

._crit_edge3308.i:                                ; preds = %._crit_edge3299.us.i, %.lr.ph3279.i, %.lr.ph3307.i, %.preheader2604.i
  %i.dnd = phi <2 x float> [ %i.dle, %.preheader2604.i ], [ %i.dle, %.lr.ph3307.i ], [ %i.diw, %.lr.ph3279.i ], [ %.lcssa678, %._crit_edge3299.us.i ] ; 12 uses
  switch i32 %i.awe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2552.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2555.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2558.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2561.i
    i32 6, label %bb.bd
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2552.i: ; preds = %._crit_edge3308.i
  %i.dne = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dnd, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2555.i: ; preds = %._crit_edge3308.i
  %i.dnf = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.dng = load float, ptr %i.dnf, align 4, !tbaa !110
  %i.dnh = fcmp fast ogt <2 x float> %i.dnd, zeroinitializer
  %i.dni = insertelement <2 x float> poison, float %i.dng, i64 0
  %i.dnj = shufflevector <2 x float> %i.dni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dnk = select <2 x i1> %i.dnh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dnj
  %i.dnl = fmul fast <2 x float> %i.dnk, %i.dnd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i: ; preds = %._crit_edge3308.i
  %i.dnm = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.dnn = load float, ptr %i.dnm, align 4, !tbaa !110 ; 2 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dnm, i64 4
  %i.dnp = load float, ptr %i.dno, align 4, !tbaa !110 ; 4 uses
  %i.dnq = extractelement <2 x float> %i.dnd, i64 0
  %.02289.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dnq, float %i.dnn) ; 2 uses
  %i.dnr = fcmp fast ogt float %.02289.i, %i.dnp
  %.122902551.i = select i1 %i.dnr, float %i.dnp, float %.02289.i
  %i.dns = extractelement <2 x float> %i.dnd, i64 1
  %.02291.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dns, float %i.dnn) ; 2 uses
  %i.dnt = fcmp fast ogt float %.02291.i, %i.dnp
  %i.dnu = insertelement <2 x float> poison, float %.122902551.i, i64 0
  %i.dnv = insertelement <2 x float> %i.dnu, float %.02291.i, i64 1 ; 2 uses
  br i1 %i.dnt, label %bb.bg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2558.i: ; preds = %._crit_edge3308.i
  %i.dnw = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dnd, <2 x float> splat (float f0x42B0C0A5))
  %i.dnx = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dnw, <2 x float> splat (float f0xC2B0C0A5))
  %i.dny = fneg fast <2 x float> %i.dnx
  %i.dnz = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dny)
  %i.doa = fadd fast <2 x float> %i.dnz, splat (float 1.000000e+00)
  %i.dob = fdiv fast <2 x float> splat (float 1.000000e+00), %i.doa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2561.i: ; preds = %._crit_edge3308.i
  %i.doc = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dnd)
  %i.dod = fadd fast <2 x float> %i.doc, splat (float 1.000000e+00)
  %i.doe = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.dod)
  %i.dof = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.doe)
  %i.dog = fmul fast <2 x float> %i.dof, %i.dnd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

bb.bd:                                            ; preds = %._crit_edge3308.i
  %i.doh = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.doi = load float, ptr %i.doh, align 4, !tbaa !110 ; 5 uses
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doh, i64 4
  %i.dok = load float, ptr %i.doj, align 4, !tbaa !110 ; 3 uses
  %i.dol = fneg fast float %i.dok
  %i.dom = fdiv fast float %i.dol, %i.doi         ; 4 uses
  %i.don = extractelement <2 x float> %i.dnd, i64 0 ; 5 uses
  %i.doo = fcmp fast olt float %i.don, %i.dom
  br i1 %i.doo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dop = fdiv fast float 1.000000e+00, %i.doi
  %i.doq = fadd fast float %i.dom, %i.dop
  %i.dor = fcmp fast ogt float %i.don, %i.doq
  br i1 %i.dor, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dos = fmul fast float %i.doi, %i.don
  %i.dot = fadd fast float %i.dos, %i.dok
  %i.dou = fmul fast float %i.dot, %i.don
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i

bb.bg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i
  %i.dov = insertelement <2 x float> %i.dnv, float %i.dnp, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

end_hunk_0
begin_hunk_1_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %lcmp.mod910 = trunc i32 %i.edb to i1
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.i, %.lr.ph3442.i
  %.212883440.i = phi i32 [ %.11287.lcssa.i, %.lr.ph3442.i ], [ %i.egk, %.loopexit.i ] ; 2 uses
  %.1613073439.i = phi ptr [ %.91300.lcssa.i, %.lr.ph3442.i ], [ %.201311.i, %.loopexit.i ] ; 7 uses
  %.023203438.i = phi <4 x float> [ zeroinitializer, %.lr.ph3442.i ], [ %.42324.i, %.loopexit.i ] ; 5 uses
  %i.eds = sdiv i32 %.212883440.i, %i.ck
  %i.edt = sext i32 %i.eds to i64
  %.reass3448.i = mul i64 %factor.op.mul3381.i, %i.edt
  %gep3450.i = getelementptr i8, ptr %invariant.gep3449.i, i64 %.reass3448.i ; 4 uses
  br i1 %brmerge3536.i, label %.loopexit2576.i, label %.lr.ph3427.i.preheader

.lr.ph3427.i.preheader:                           ; preds = %bb.bq
  br i1 %i.edq, label %.lr.ph3427.i.epil.preheader, label %.lr.ph3427.i

.lr.ph3427.i:                                     ; preds = %.lr.ph3427.i.preheader, %.lr.ph3427.i
  %.012393425.i = phi ptr [ %i.eem, %.lr.ph3427.i ], [ %gep3450.i, %.lr.ph3427.i.preheader ] ; 2 uses
  %.1713083424.i = phi ptr [ %i.een, %.lr.ph3427.i ], [ %.1613073439.i, %.lr.ph3427.i.preheader ] ; 5 uses
  %.123213423.i = phi <4 x float> [ %i.eel, %.lr.ph3427.i ], [ %.023203438.i, %.lr.ph3427.i.preheader ]
  %niter905 = phi i32 [ %niter905.next.3, %.lr.ph3427.i ], [ 0, %.lr.ph3427.i.preheader ]
  %i.edu = load <4 x float>, ptr %.012393425.i, align 16, !tbaa !50
  %i.edv = load <4 x float>, ptr %.1713083424.i, align 16, !tbaa !50
  %i.edw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edu, <4 x float> nofpclass(nan inf) %i.edv, <4 x float> nofpclass(nan inf) %.123213423.i)
  %i.edx = getelementptr inbounds [4 x i8], ptr %.012393425.i, i64 %i.edf ; 2 uses
  %i.edy = getelementptr inbounds nuw i8, ptr %.1713083424.i, i64 16
  %i.edz = load <4 x float>, ptr %i.edx, align 16, !tbaa !50
  %i.eea = load <4 x float>, ptr %i.edy, align 16, !tbaa !50
  %i.eeb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edz, <4 x float> nofpclass(nan inf) %i.eea, <4 x float> nofpclass(nan inf) %i.edw)
  %i.eec = getelementptr inbounds [4 x i8], ptr %i.edx, i64 %i.edf ; 2 uses
  %i.eed = getelementptr inbounds nuw i8, ptr %.1713083424.i, i64 32
  %i.eee = load <4 x float>, ptr %i.eec, align 16, !tbaa !50
  %i.eef = load <4 x float>, ptr %i.eed, align 16, !tbaa !50
  %i.eeg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eee, <4 x float> nofpclass(nan inf) %i.eef, <4 x float> nofpclass(nan inf) %i.eeb)
  %i.eeh = getelementptr inbounds [4 x i8], ptr %i.eec, i64 %i.edf ; 2 uses
  %i.eei = getelementptr inbounds nuw i8, ptr %.1713083424.i, i64 48
  %i.eej = load <4 x float>, ptr %i.eeh, align 16, !tbaa !50
  %i.eek = load <4 x float>, ptr %i.eei, align 16, !tbaa !50
  %i.eel = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eej, <4 x float> nofpclass(nan inf) %i.eek, <4 x float> nofpclass(nan inf) %i.eeg) ; 3 uses
  %i.eem = getelementptr inbounds [4 x i8], ptr %i.eeh, i64 %i.edf ; 2 uses
  %i.een = getelementptr inbounds nuw i8, ptr %.1713083424.i, i64 64 ; 2 uses
  %niter905.next.3 = add nuw nsw i32 %niter905, 4 ; 2 uses
  %niter905.ncmp.3 = icmp eq i32 %niter905.next.3, %unroll_iter904
  br i1 %niter905.ncmp.3, label %.loopexit2576.thread.i.unr-lcssa, label %.lr.ph3427.i, !llvm.loop !285

.loopexit2576.thread.i.unr-lcssa:                 ; preds = %.lr.ph3427.i
  br i1 %lcmp.mod901.not, label %.loopexit2576.thread.i, label %.lr.ph3427.i.epil.preheader

.lr.ph3427.i.epil.preheader:                      ; preds = %.loopexit2576.thread.i.unr-lcssa, %.lr.ph3427.i.preheader
  %.012393425.i.epil.init = phi ptr [ %gep3450.i, %.lr.ph3427.i.preheader ], [ %i.eem, %.loopexit2576.thread.i.unr-lcssa ]
  %.1713083424.i.epil.init = phi ptr [ %.1613073439.i, %.lr.ph3427.i.preheader ], [ %i.een, %.loopexit2576.thread.i.unr-lcssa ]
  %.123213423.i.epil.init = phi <4 x float> [ %.023203438.i, %.lr.ph3427.i.preheader ], [ %i.eel, %.loopexit2576.thread.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod903)
  br label %.lr.ph3427.i.epil

.lr.ph3427.i.epil:                                ; preds = %.lr.ph3427.i.epil, %.lr.ph3427.i.epil.preheader
  %.012393425.i.epil = phi ptr [ %i.eer, %.lr.ph3427.i.epil ], [ %.012393425.i.epil.init, %.lr.ph3427.i.epil.preheader ] ; 2 uses
  %.1713083424.i.epil = phi ptr [ %i.ees, %.lr.ph3427.i.epil ], [ %.1713083424.i.epil.init, %.lr.ph3427.i.epil.preheader ] ; 2 uses
  %.123213423.i.epil = phi <4 x float> [ %i.eeq, %.lr.ph3427.i.epil ], [ %.123213423.i.epil.init, %.lr.ph3427.i.epil.preheader ]
  %epil.iter900 = phi i32 [ %epil.iter900.next, %.lr.ph3427.i.epil ], [ 0, %.lr.ph3427.i.epil.preheader ]
  %i.eeo = load <4 x float>, ptr %.012393425.i.epil, align 16, !tbaa !50
  %i.eep = load <4 x float>, ptr %.1713083424.i.epil, align 16, !tbaa !50
  %i.eeq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eeo, <4 x float> nofpclass(nan inf) %i.eep, <4 x float> nofpclass(nan inf) %.123213423.i.epil) ; 2 uses
  %i.eer = getelementptr inbounds [4 x i8], ptr %.012393425.i.epil, i64 %i.edf
  %i.ees = getelementptr inbounds nuw i8, ptr %.1713083424.i.epil, i64 16
  %epil.iter900.next = add i32 %epil.iter900, 1   ; 2 uses
  %epil.iter900.cmp.not = icmp eq i32 %epil.iter900.next, %xtraiter899
  br i1 %epil.iter900.cmp.not, label %.loopexit2576.thread.i, label %.lr.ph3427.i.epil, !llvm.loop !286

.loopexit2576.thread.i:                           ; preds = %.lr.ph3427.i.epil, %.loopexit2576.thread.i.unr-lcssa
  %.lcssa650 = phi <4 x float> [ %i.eel, %.loopexit2576.thread.i.unr-lcssa ], [ %i.eeq, %.lr.ph3427.i.epil ]
  %scevgep3913.i = getelementptr i8, ptr %.1613073439.i, i64 16
  %scevgep3914.i = getelementptr i8, ptr %scevgep3913.i, i64 %i.edp
  br label %.loopexit.i

.loopexit2576.i:                                  ; preds = %bb.bq
  br i1 %brmerge3539.i, label %.loopexit.i, label %.lr.ph3435.i.preheader

.lr.ph3435.i.preheader:                           ; preds = %.loopexit2576.i
  br i1 %i.edr, label %.lr.ph3435.i.epil.preheader, label %.lr.ph3435.i

.lr.ph3435.i:                                     ; preds = %.lr.ph3435.i.preheader, %.lr.ph3435.i
  %.23433.i = phi ptr [ %i.efv, %.lr.ph3435.i ], [ %gep3450.i, %.lr.ph3435.i.preheader ] ; 5 uses
  %.1913103432.i = phi ptr [ %i.efw, %.lr.ph3435.i ], [ %.1613073439.i, %.lr.ph3435.i.preheader ] ; 3 uses
  %.323233431.i = phi <4 x float> [ %i.efu, %.lr.ph3435.i ], [ %.023203438.i, %.lr.ph3435.i.preheader ]
  %niter912 = phi i32 [ %niter912.next.1, %.lr.ph3435.i ], [ 0, %.lr.ph3435.i.preheader ]
  %i.eet = getelementptr inbounds [4 x i8], ptr %.23433.i, i64 %i.edi
  %i.eeu = load float, ptr %i.eet, align 4, !tbaa !110
  %i.eev = getelementptr inbounds [4 x i8], ptr %.23433.i, i64 %i.edk
  %i.eew = load float, ptr %i.eev, align 4, !tbaa !110
  %i.eex = getelementptr inbounds [4 x i8], ptr %.23433.i, i64 %i.edl
  %i.eey = load float, ptr %i.eex, align 4, !tbaa !110
  %i.eez = load float, ptr %.23433.i, align 4, !tbaa !110
  %i.efa = insertelement <4 x float> poison, float %i.eez, i64 0
  %i.efb = insertelement <4 x float> %i.efa, float %i.eey, i64 1
  %i.efc = insertelement <4 x float> %i.efb, float %i.eew, i64 2
  %i.efd = insertelement <4 x float> %i.efc, float %i.eeu, i64 3
  %i.efe = load <4 x float>, ptr %.1913103432.i, align 16, !tbaa !50
  %i.eff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efd, <4 x float> nofpclass(nan inf) %i.efe, <4 x float> nofpclass(nan inf) %.323233431.i)
  %i.efg = getelementptr inbounds [4 x i8], ptr %.23433.i, i64 %i.edm ; 5 uses
  %i.efh = getelementptr inbounds nuw i8, ptr %.1913103432.i, i64 16
  %i.efi = getelementptr inbounds [4 x i8], ptr %i.efg, i64 %i.edi
  %i.efj = load float, ptr %i.efi, align 4, !tbaa !110
  %i.efk = getelementptr inbounds [4 x i8], ptr %i.efg, i64 %i.edk
  %i.efl = load float, ptr %i.efk, align 4, !tbaa !110
  %i.efm = getelementptr inbounds [4 x i8], ptr %i.efg, i64 %i.edl
  %i.efn = load float, ptr %i.efm, align 4, !tbaa !110
  %i.efo = load float, ptr %i.efg, align 4, !tbaa !110
  %i.efp = insertelement <4 x float> poison, float %i.efo, i64 0
  %i.efq = insertelement <4 x float> %i.efp, float %i.efn, i64 1
  %i.efr = insertelement <4 x float> %i.efq, float %i.efl, i64 2
  %i.efs = insertelement <4 x float> %i.efr, float %i.efj, i64 3
  %i.eft = load <4 x float>, ptr %i.efh, align 16, !tbaa !50
  %i.efu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efs, <4 x float> nofpclass(nan inf) %i.eft, <4 x float> nofpclass(nan inf) %i.eff) ; 3 uses
  %i.efv = getelementptr inbounds [4 x i8], ptr %i.efg, i64 %i.edm ; 2 uses
  %i.efw = getelementptr inbounds nuw i8, ptr %.1913103432.i, i64 32 ; 2 uses
  %niter912.next.1 = add nuw nsw i32 %niter912, 2 ; 2 uses
  %niter912.ncmp.1 = icmp eq i32 %niter912.next.1, %unroll_iter911
  br i1 %niter912.ncmp.1, label %.loopexit.loopexit.i.unr-lcssa, label %.lr.ph3435.i, !llvm.loop !287

.loopexit.loopexit.i.unr-lcssa:                   ; preds = %.lr.ph3435.i
  br i1 %lcmp.mod908.not, label %.loopexit.loopexit.i, label %.lr.ph3435.i.epil.preheader

.lr.ph3435.i.epil.preheader:                      ; preds = %.loopexit.loopexit.i.unr-lcssa, %.lr.ph3435.i.preheader
  %.23433.i.epil.init = phi ptr [ %gep3450.i, %.lr.ph3435.i.preheader ], [ %i.efv, %.loopexit.loopexit.i.unr-lcssa ] ; 4 uses
  %.1913103432.i.epil.init = phi ptr [ %.1613073439.i, %.lr.ph3435.i.preheader ], [ %i.efw, %.loopexit.loopexit.i.unr-lcssa ]
  %.323233431.i.epil.init = phi <4 x float> [ %.023203438.i, %.lr.ph3435.i.preheader ], [ %i.efu, %.loopexit.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod910)
  %i.efx = getelementptr inbounds [4 x i8], ptr %.23433.i.epil.init, i64 %i.edi
  %i.efy = load float, ptr %i.efx, align 4, !tbaa !110
  %i.efz = getelementptr inbounds [4 x i8], ptr %.23433.i.epil.init, i64 %i.edk
  %i.ega = load float, ptr %i.efz, align 4, !tbaa !110
  %i.egb = getelementptr inbounds [4 x i8], ptr %.23433.i.epil.init, i64 %i.edl
  %i.egc = load float, ptr %i.egb, align 4, !tbaa !110
  %i.egd = load float, ptr %.23433.i.epil.init, align 4, !tbaa !110
  %i.ege = insertelement <4 x float> poison, float %i.egd, i64 0
  %i.egf = insertelement <4 x float> %i.ege, float %i.egc, i64 1
  %i.egg = insertelement <4 x float> %i.egf, float %i.ega, i64 2
  %i.egh = insertelement <4 x float> %i.egg, float %i.efy, i64 3
  %i.egi = load <4 x float>, ptr %.1913103432.i.epil.init, align 16, !tbaa !50
  %i.egj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egh, <4 x float> nofpclass(nan inf) %i.egi, <4 x float> nofpclass(nan inf) %.323233431.i.epil.init)
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit.loopexit.i.unr-lcssa, %.lr.ph3435.i.epil.preheader
  %.lcssa651 = phi <4 x float> [ %i.efu, %.loopexit.loopexit.i.unr-lcssa ], [ %i.egj, %.lr.ph3435.i.epil.preheader ]
  %scevgep3916.i = getelementptr i8, ptr %.1613073439.i, i64 16
  %scevgep3917.i = getelementptr i8, ptr %scevgep3916.i, i64 %i.edp
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit2576.i, %.loopexit2576.thread.i
  %.42324.i = phi nsz <4 x float> [ %.023203438.i, %.loopexit2576.i ], [ %.lcssa651, %.loopexit.loopexit.i ], [ %.lcssa650, %.loopexit2576.thread.i ] ; 2 uses
  %.201311.i = phi ptr [ %.1613073439.i, %.loopexit2576.i ], [ %scevgep3917.i, %.loopexit.loopexit.i ], [ %scevgep3914.i, %.loopexit2576.thread.i ] ; 2 uses
  %i.egk = add nuw nsw i32 %.212883440.i, 4       ; 3 uses
  %i.egl = or disjoint i32 %i.egk, 3
  %i.egm = icmp slt i32 %i.egl, %i.cm
  br i1 %i.egm, label %bb.bq, label %._crit_edge3443.i, !llvm.loop !288

._crit_edge3443.i:                                ; preds = %.loopexit.i, %._crit_edge3415.i
  %.02320.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3415.i ], [ %.42324.i, %.loopexit.i ] ; 2 uses
  %.161307.lcssa.i = phi ptr [ %.91300.lcssa.i, %._crit_edge3415.i ], [ %.201311.i, %.loopexit.i ] ; 2 uses
  %.21288.lcssa.i = phi i32 [ %.11287.lcssa.i, %._crit_edge3415.i ], [ %i.egk, %.loopexit.i ] ; 3 uses
  %i.egn = shufflevector <4 x float> %.02320.lcssa.i, <4 x float> %i.ecw, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ego = shufflevector <4 x float> %.02320.lcssa.i, <4 x float> %i.ecw, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.egp = fadd fast <4 x float> %i.egn, %i.ego
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.dyb, <4 x float> %i.egp)
  %op.rdx641 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01316.i, <8 x float> %i.dyc)
  %op.rdx642 = fadd fast float %op.rdx, %op.rdx641 ; 3 uses
  %i.egq = or disjoint i32 %.21288.lcssa.i, 1
  %i.egr = icmp slt i32 %i.egq, %i.cm
  br i1 %i.egr, label %.lr.ph3464.i, label %.preheader2588.i

.lr.ph3464.i:                                     ; preds = %._crit_edge3443.i
  %i.egs = mul nsw i64 %indvars.iv3932.i, %i.dqn
  %invariant.gep3470.i = getelementptr [4 x i8], ptr %i.dqo, i64 %i.egs
  %i.egt = load i32, ptr %i.e, align 4
  %i.egu = sext i32 %i.egt to i64                 ; 3 uses
  %i.egv = load i32, ptr %i.b, align 4
  %i.egw = sext i32 %i.egv to i64                 ; 2 uses
  br i1 %i.dqi, label %.lr.ph3456.us.preheader.i, label %._crit_edge3488.i

.lr.ph3456.us.preheader.i:                        ; preds = %.lr.ph3464.i
  %i.egx = zext i32 %.21288.lcssa.i to i64
  br label %.lr.ph3456.us.i

.lr.ph3456.us.i:                                  ; preds = %._crit_edge3457.us.i, %.lr.ph3456.us.preheader.i
  %indvars.iv3923.i = phi i64 [ %i.egx, %.lr.ph3456.us.preheader.i ], [ %indvars.iv.next3924.i, %._crit_edge3457.us.i ] ; 2 uses
  %.2113123461.us.i = phi ptr [ %.161307.lcssa.i, %.lr.ph3456.us.preheader.i ], [ %scevgep3921.i, %._crit_edge3457.us.i ] ; 3 uses
  %.113173460.us.i = phi float [ %op.rdx642, %.lr.ph3456.us.preheader.i ], [ %.lcssa653, %._crit_edge3457.us.i ] ; 2 uses
  %.reass3469.us.i = mul i64 %factor.op.mul3381.i, %indvars.iv3923.i
  %gep3471.us.i = getelementptr i8, ptr %invariant.gep3470.i, i64 %.reass3469.us.i ; 2 uses
  br i1 %i.dqs, label %.epil.preheader913, label %.lr.ph3456.us.i.new

.lr.ph3456.us.i.new:                              ; preds = %.lr.ph3456.us.i, %.lr.ph3456.us.i.new
  %.012363453.us.i = phi ptr [ %i.ehu, %.lr.ph3456.us.i.new ], [ %gep3471.us.i, %.lr.ph3456.us.i ] ; 3 uses
  %.2213133452.us.i = phi ptr [ %i.ehv, %.lr.ph3456.us.i.new ], [ %.2113123461.us.i, %.lr.ph3456.us.i ] ; 5 uses
  %.213183451.us.i = phi float [ %i.eht, %.lr.ph3456.us.i.new ], [ %.113173460.us.i, %.lr.ph3456.us.i ]
  %niter920 = phi i32 [ %niter920.next.1, %.lr.ph3456.us.i.new ], [ 0, %.lr.ph3456.us.i ]
  %i.egy = load float, ptr %.012363453.us.i, align 4, !tbaa !110
  %i.egz = load float, ptr %.2213133452.us.i, align 4, !tbaa !110
  %i.eha = fmul fast float %i.egz, %i.egy
  %i.ehb = fadd fast float %.213183451.us.i, %i.eha
  %i.ehc = getelementptr inbounds [4 x i8], ptr %.012363453.us.i, i64 %i.egu
  %i.ehd = load float, ptr %i.ehc, align 4, !tbaa !110
  %i.ehe = getelementptr inbounds nuw i8, ptr %.2213133452.us.i, i64 4
  %i.ehf = load float, ptr %i.ehe, align 4, !tbaa !110
  %i.ehg = fmul fast float %i.ehf, %i.ehd
  %i.ehh = fadd fast float %i.ehg, %i.ehb
  %i.ehi = getelementptr inbounds [4 x i8], ptr %.012363453.us.i, i64 %i.egw ; 3 uses
  %i.ehj = getelementptr inbounds nuw i8, ptr %.2213133452.us.i, i64 8
  %i.ehk = load float, ptr %i.ehi, align 4, !tbaa !110
  %i.ehl = load float, ptr %i.ehj, align 4, !tbaa !110
  %i.ehm = fmul fast float %i.ehl, %i.ehk
  %i.ehn = fadd fast float %i.ehh, %i.ehm
  %i.eho = getelementptr inbounds [4 x i8], ptr %i.ehi, i64 %i.egu
  %i.ehp = load float, ptr %i.eho, align 4, !tbaa !110
  %i.ehq = getelementptr inbounds nuw i8, ptr %.2213133452.us.i, i64 12
  %i.ehr = load float, ptr %i.ehq, align 4, !tbaa !110
  %i.ehs = fmul fast float %i.ehr, %i.ehp
  %i.eht = fadd fast float %i.ehs, %i.ehn         ; 3 uses
  %i.ehu = getelementptr inbounds [4 x i8], ptr %i.ehi, i64 %i.egw ; 2 uses
  %i.ehv = getelementptr inbounds nuw i8, ptr %.2213133452.us.i, i64 16 ; 2 uses
  %niter920.next.1 = add nuw nsw i32 %niter920, 2 ; 2 uses
  %niter920.ncmp.1 = icmp eq i32 %niter920.next.1, %unroll_iter919
  br i1 %niter920.ncmp.1, label %._crit_edge3457.us.i.unr-lcssa, label %.lr.ph3456.us.i.new, !llvm.loop !289

._crit_edge3457.us.i.unr-lcssa:                   ; preds = %.lr.ph3456.us.i.new
  br i1 %lcmp.mod916.not, label %._crit_edge3457.us.i, label %.epil.preheader913

.epil.preheader913:                               ; preds = %._crit_edge3457.us.i.unr-lcssa, %.lr.ph3456.us.i
  %.012363453.us.i.epil.init = phi ptr [ %gep3471.us.i, %.lr.ph3456.us.i ], [ %i.ehu, %._crit_edge3457.us.i.unr-lcssa ] ; 2 uses
  %.2213133452.us.i.epil.init = phi ptr [ %.2113123461.us.i, %.lr.ph3456.us.i ], [ %i.ehv, %._crit_edge3457.us.i.unr-lcssa ] ; 2 uses
  %.213183451.us.i.epil.init = phi float [ %.113173460.us.i, %.lr.ph3456.us.i ], [ %i.eht, %._crit_edge3457.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod918)
  %i.ehw = load float, ptr %.012363453.us.i.epil.init, align 4, !tbaa !110
  %i.ehx = load float, ptr %.2213133452.us.i.epil.init, align 4, !tbaa !110
  %i.ehy = fmul fast float %i.ehx, %i.ehw
  %i.ehz = fadd fast float %.213183451.us.i.epil.init, %i.ehy
  %i.eia = getelementptr inbounds [4 x i8], ptr %.012363453.us.i.epil.init, i64 %i.egu
  %i.eib = load float, ptr %i.eia, align 4, !tbaa !110
  %i.eic = getelementptr inbounds nuw i8, ptr %.2213133452.us.i.epil.init, i64 4
  %i.eid = load float, ptr %i.eic, align 4, !tbaa !110
  %i.eie = fmul fast float %i.eid, %i.eib
  %i.eif = fadd fast float %i.eie, %i.ehz
  br label %._crit_edge3457.us.i

._crit_edge3457.us.i:                             ; preds = %._crit_edge3457.us.i.unr-lcssa, %.epil.preheader913
  %.lcssa653 = phi float [ %i.eht, %._crit_edge3457.us.i.unr-lcssa ], [ %i.eif, %.epil.preheader913 ] ; 2 uses
  %scevgep3920.i = getelementptr i8, ptr %.2113123461.us.i, i64 8
  %scevgep3921.i = getelementptr i8, ptr %scevgep3920.i, i64 %i.dql ; 2 uses
  %indvars.iv.next3924.i = add nuw nsw i64 %indvars.iv3923.i, 2 ; 2 uses
  %i.eig = trunc i64 %indvars.iv.next3924.i to i32 ; 2 uses
  %i.eih = or i32 %i.eig, 1
  %i.eii = icmp slt i32 %i.eih, %i.cm
  br i1 %i.eii, label %.lr.ph3456.us.i, label %.preheader2588.i, !llvm.loop !290

.preheader2588.i:                                 ; preds = %._crit_edge3457.us.i, %._crit_edge3443.i
  %.11317.lcssa.i = phi float [ %op.rdx642, %._crit_edge3443.i ], [ %.lcssa653, %._crit_edge3457.us.i ] ; 3 uses
  %.211312.lcssa.i = phi ptr [ %.161307.lcssa.i, %._crit_edge3443.i ], [ %scevgep3921.i, %._crit_edge3457.us.i ]
  %.31289.lcssa.i = phi i32 [ %.21288.lcssa.i, %._crit_edge3443.i ], [ %i.eig, %._crit_edge3457.us.i ] ; 2 uses
  %i.eij = icmp slt i32 %.31289.lcssa.i, %i.cm
  br i1 %i.eij, label %.lr.ph3487.i, label %._crit_edge3488.i

.lr.ph3487.i:                                     ; preds = %.preheader2588.i
  %i.eik = mul nsw i64 %indvars.iv3932.i, %i.dqn
  %invariant.gep3492.i = getelementptr [4 x i8], ptr %i.dqo, i64 %i.eik
  %i.eil = load i32, ptr %i.b, align 4
  %i.eim = sext i32 %i.eil to i64                 ; 5 uses
  br i1 %i.dqi, label %.lr.ph3480.us.preheader.i, label %._crit_edge3488.i

.lr.ph3480.us.preheader.i:                        ; preds = %.lr.ph3487.i
  %i.ein = zext i32 %.31289.lcssa.i to i64
  br label %.lr.ph3480.us.i

.lr.ph3480.us.i:                                  ; preds = %._crit_edge3481.us.i, %.lr.ph3480.us.preheader.i
  %indvars.iv3929.i = phi i64 [ %i.ein, %.lr.ph3480.us.preheader.i ], [ %indvars.iv.next3930.i, %._crit_edge3481.us.i ] ; 2 uses
  %.2313143485.us.i = phi ptr [ %.211312.lcssa.i, %.lr.ph3480.us.preheader.i ], [ %scevgep3927.i, %._crit_edge3481.us.i ] ; 3 uses
  %.313193484.us.i = phi float [ %.11317.lcssa.i, %.lr.ph3480.us.preheader.i ], [ %.lcssa655, %._crit_edge3481.us.i ] ; 2 uses
  %.reass3491.us.i = mul i64 %factor.op.mul3381.i, %indvars.iv3929.i
  %gep3493.us.i = getelementptr i8, ptr %invariant.gep3492.i, i64 %.reass3491.us.i ; 2 uses
  br i1 %i.dqt, label %.epil.preheader921, label %.lr.ph3480.us.i.new

.lr.ph3480.us.i.new:                              ; preds = %.lr.ph3480.us.i, %.lr.ph3480.us.i.new
  %.012343477.us.i = phi ptr [ %i.ejk, %.lr.ph3480.us.i.new ], [ %gep3493.us.i, %.lr.ph3480.us.i ] ; 2 uses
  %.2413153476.us.i = phi ptr [ %i.ejl, %.lr.ph3480.us.i.new ], [ %.2313143485.us.i, %.lr.ph3480.us.i ] ; 5 uses
  %.413203475.us.i = phi float [ %i.ejj, %.lr.ph3480.us.i.new ], [ %.313193484.us.i, %.lr.ph3480.us.i ]
  %niter928 = phi i32 [ %niter928.next.3, %.lr.ph3480.us.i.new ], [ 0, %.lr.ph3480.us.i ]
  %i.eio = load float, ptr %.012343477.us.i, align 4, !tbaa !110
  %i.eip = load float, ptr %.2413153476.us.i, align 4, !tbaa !110
  %i.eiq = fmul fast float %i.eip, %i.eio
  %i.eir = fadd fast float %i.eiq, %.413203475.us.i
  %i.eis = getelementptr inbounds [4 x i8], ptr %.012343477.us.i, i64 %i.eim ; 2 uses
  %i.eit = getelementptr inbounds nuw i8, ptr %.2413153476.us.i, i64 4
  %i.eiu = load float, ptr %i.eis, align 4, !tbaa !110
  %i.eiv = load float, ptr %i.eit, align 4, !tbaa !110
  %i.eiw = fmul fast float %i.eiv, %i.eiu
  %i.eix = fadd fast float %i.eiw, %i.eir
  %i.eiy = getelementptr inbounds [4 x i8], ptr %i.eis, i64 %i.eim ; 2 uses
  %i.eiz = getelementptr inbounds nuw i8, ptr %.2413153476.us.i, i64 8
  %i.eja = load float, ptr %i.eiy, align 4, !tbaa !110
  %i.ejb = load float, ptr %i.eiz, align 4, !tbaa !110
  %i.ejc = fmul fast float %i.ejb, %i.eja
  %i.ejd = fadd fast float %i.ejc, %i.eix
  %i.eje = getelementptr inbounds [4 x i8], ptr %i.eiy, i64 %i.eim ; 2 uses
  %i.ejf = getelementptr inbounds nuw i8, ptr %.2413153476.us.i, i64 12
  %i.ejg = load float, ptr %i.eje, align 4, !tbaa !110
  %i.ejh = load float, ptr %i.ejf, align 4, !tbaa !110
  %i.eji = fmul fast float %i.ejh, %i.ejg
  %i.ejj = fadd fast float %i.eji, %i.ejd         ; 3 uses
  %i.ejk = getelementptr inbounds [4 x i8], ptr %i.eje, i64 %i.eim ; 2 uses
  %i.ejl = getelementptr inbounds nuw i8, ptr %.2413153476.us.i, i64 16 ; 2 uses
  %niter928.next.3 = add nuw nsw i32 %niter928, 4 ; 2 uses
  %niter928.ncmp.3 = icmp eq i32 %niter928.next.3, %unroll_iter927
  br i1 %niter928.ncmp.3, label %._crit_edge3481.us.i.unr-lcssa, label %.lr.ph3480.us.i.new, !llvm.loop !291

._crit_edge3481.us.i.unr-lcssa:                   ; preds = %.lr.ph3480.us.i.new
  br i1 %lcmp.mod924.not, label %._crit_edge3481.us.i, label %.epil.preheader921

.epil.preheader921:                               ; preds = %._crit_edge3481.us.i.unr-lcssa, %.lr.ph3480.us.i
  %.012343477.us.i.epil.init = phi ptr [ %gep3493.us.i, %.lr.ph3480.us.i ], [ %i.ejk, %._crit_edge3481.us.i.unr-lcssa ]
  %.2413153476.us.i.epil.init = phi ptr [ %.2313143485.us.i, %.lr.ph3480.us.i ], [ %i.ejl, %._crit_edge3481.us.i.unr-lcssa ]
  %.413203475.us.i.epil.init = phi float [ %.313193484.us.i, %.lr.ph3480.us.i ], [ %i.ejj, %._crit_edge3481.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod926)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader921
  %.012343477.us.i.epil = phi ptr [ %.012343477.us.i.epil.init, %.epil.preheader921 ], [ %i.ejq, %bb.br ] ; 2 uses
  %.2413153476.us.i.epil = phi ptr [ %.2413153476.us.i.epil.init, %.epil.preheader921 ], [ %i.ejr, %bb.br ] ; 2 uses
  %.413203475.us.i.epil = phi float [ %.413203475.us.i.epil.init, %.epil.preheader921 ], [ %i.ejp, %bb.br ]
  %epil.iter923 = phi i32 [ 0, %.epil.preheader921 ], [ %epil.iter923.next, %bb.br ]
  %i.ejm = load float, ptr %.012343477.us.i.epil, align 4, !tbaa !110
  %i.ejn = load float, ptr %.2413153476.us.i.epil, align 4, !tbaa !110
  %i.ejo = fmul fast float %i.ejn, %i.ejm
  %i.ejp = fadd fast float %i.ejo, %.413203475.us.i.epil ; 2 uses
  %i.ejq = getelementptr inbounds [4 x i8], ptr %.012343477.us.i.epil, i64 %i.eim
  %i.ejr = getelementptr inbounds nuw i8, ptr %.2413153476.us.i.epil, i64 4
  %epil.iter923.next = add i32 %epil.iter923, 1   ; 2 uses
  %epil.iter923.cmp.not = icmp eq i32 %epil.iter923.next, %xtraiter922
  br i1 %epil.iter923.cmp.not, label %._crit_edge3481.us.i, label %bb.br, !llvm.loop !292

._crit_edge3481.us.i:                             ; preds = %bb.br, %._crit_edge3481.us.i.unr-lcssa
  %.lcssa655 = phi float [ %i.ejj, %._crit_edge3481.us.i.unr-lcssa ], [ %i.ejp, %bb.br ] ; 2 uses
  %scevgep3926.i = getelementptr i8, ptr %.2313143485.us.i, i64 4
  %scevgep3927.i = getelementptr i8, ptr %scevgep3926.i, i64 %i.dqm
  %indvars.iv.next3930.i = add nuw nsw i64 %indvars.iv3929.i, 1 ; 2 uses
  %i.ejs = trunc nuw i64 %indvars.iv.next3930.i to i32
  %i.ejt = icmp sgt i32 %i.cm, %i.ejs
  br i1 %i.ejt, label %.lr.ph3480.us.i, label %._crit_edge3488.i, !llvm.loop !293

._crit_edge3488.i:                                ; preds = %._crit_edge3481.us.i, %.lr.ph3464.i, %.lr.ph3487.i, %.preheader2588.i
  %.31319.lcssa.i = phi float [ %.11317.lcssa.i, %.preheader2588.i ], [ %.11317.lcssa.i, %.lr.ph3487.i ], [ %op.rdx642, %.lr.ph3464.i ], [ %.lcssa655, %._crit_edge3481.us.i ] ; 13 uses
  switch i32 %i.coi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bs
    i32 2, label %bb.bt
    i32 3, label %bb.bu
    i32 4, label %bb.bw
    i32 5, label %bb.bx
    i32 6, label %bb.by
  ]

bb.bs:                                            ; preds = %._crit_edge3488.i
  %i.eju = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31319.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bt:                                            ; preds = %._crit_edge3488.i
  %i.ejv = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ejw = load float, ptr %i.ejv, align 4, !tbaa !110
  %i.ejx = fcmp fast ogt float %.31319.lcssa.i, 0.000000e+00
  %i.ejy = select fast i1 %i.ejx, float 1.000000e+00, float %i.ejw
  %i.ejz = fmul fast float %i.ejy, %.31319.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bu:                                            ; preds = %._crit_edge3488.i
  %i.eka = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.ekb = load float, ptr %i.eka, align 4, !tbaa !110
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.eka, i64 4
  %i.ekd = load float, ptr %i.ekc, align 4, !tbaa !110 ; 2 uses
  %.02293.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.31319.lcssa.i, float %i.ekb) ; 2 uses
  %i.eke = fcmp fast ogt float %.02293.i, %i.ekd
  br i1 %i.eke, label %bb.bv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bv:                                            ; preds = %bb.bu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bw:                                            ; preds = %._crit_edge3488.i
  %.sroa.speculated2035.i = call nnan ninf nsz float @llvm.minnum.f32(float %.31319.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2035.i, float f0xC2B0C0A5)
  %i.ekf = fneg fast float %.sroa.speculated.i
  %i.ekg = call fast float @llvm.exp.f32(float %i.ekf)
  %i.ekh = fadd fast float %i.ekg, 1.000000e+00
  %i.eki = fdiv fast float 1.000000e+00, %i.ekh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bx:                                            ; preds = %._crit_edge3488.i
  %i.ekj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31319.lcssa.i)
  %i.ekk = fadd fast float %i.ekj, 1.000000e+00
  %i.ekl = call fast float @llvm.log.f32(float %i.ekk)
  %i.ekm = call fast float @llvm.tanh.f32(float %i.ekl)
  %i.ekn = fmul fast float %i.ekm, %.31319.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.by:                                            ; preds = %._crit_edge3488.i
  %i.eko = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.ekp = load float, ptr %i.eko, align 4, !tbaa !110 ; 3 uses
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.eko, i64 4
  %i.ekr = load float, ptr %i.ekq, align 4, !tbaa !110 ; 2 uses
  %i.eks = fneg fast float %i.ekr
  %i.ekt = fdiv fast float %i.eks, %i.ekp         ; 2 uses
  %i.eku = fcmp fast olt float %.31319.lcssa.i, %i.ekt
  br i1 %i.eku, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ekv = fdiv fast float 1.000000e+00, %i.ekp
  %i.ekw = fadd fast float %i.ekt, %i.ekv
  %i.ekx = fcmp fast ogt float %.31319.lcssa.i, %i.ekw
  br i1 %i.ekx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.eky = fmul fast float %i.ekp, %.31319.lcssa.i
  %i.ekz = fadd fast float %i.eky, %i.ekr
  %i.ela = fmul fast float %i.ekz, %.31319.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %._crit_edge3488.i
  %.12294.i = phi nsz float [ %.31319.lcssa.i, %._crit_edge3488.i ], [ %i.eju, %bb.bs ], [ %i.ejz, %bb.bt ], [ %i.ekd, %bb.bv ], [ %.02293.i, %bb.bu ], [ %i.eki, %bb.bw ], [ %i.ekn, %bb.bx ], [ %i.ela, %bb.ca ], [ %.31319.lcssa.i, %bb.bz ], [ 0.000000e+00, %bb.by ]
  store float %.12294.i, ptr %.013223495.i, align 4, !tbaa !110
  %i.elb = getelementptr inbounds nuw i8, ptr %.013223495.i, i64 4
  %indvars.iv.next3933.i = add nuw nsw i64 %indvars.iv3932.i, 1 ; 2 uses
  %exitcond3936.not.i = icmp eq i64 %indvars.iv.next3933.i, %wide.trip.count3935.i
  br i1 %exitcond3936.not.i, label %._crit_edge3499.i, label %bb.bj, !llvm.loop !294

_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge3499.i, %._crit_edge3332.split.i, %.lr.ph3508.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit42.thread

_ZNK4ncnn3Mat5emptyEv.exit42.thread:              ; preds = %bb.j, %bb.d, %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit42
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit42 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit ], [ -100, %bb.d ], [ -100, %bb.j ]
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.eim = bitcast <8 x i16> %i.eil to <4 x float>
  %i.ein = getelementptr inbounds nuw i8, ptr %.1714043623, i64 24
  %i.eio = load i64, ptr %i.ein, align 1, !tbaa !50
  %i.eip = insertelement <2 x i64> poison, i64 %i.eio, i64 0
  %i.eiq = bitcast <2 x i64> %i.eip to <8 x i16>
  %i.eir = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eiq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eis = bitcast <8 x i16> %i.eir to <4 x float>
  %i.eit = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eih, <4 x float> nofpclass(nan inf) %i.eim, <4 x float> nofpclass(nan inf) %i.ehz) ; 3 uses
  %i.eiu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eih, <4 x float> nofpclass(nan inf) %i.eis, <4 x float> nofpclass(nan inf) %i.eia) ; 3 uses
  %i.eiv = getelementptr inbounds [2 x i8], ptr %i.eib, i64 %i.egu ; 2 uses
  %i.eiw = getelementptr inbounds nuw i8, ptr %.1714043623, i64 32 ; 2 uses
  %niter4896.next.1 = add nuw nsw i32 %niter4896, 2 ; 2 uses
  %niter4896.ncmp.1 = icmp eq i32 %niter4896.next.1, %unroll_iter4895
  br i1 %niter4896.ncmp.1, label %.loopexit2984.loopexit.unr-lcssa, label %.lr.ph3626, !llvm.loop !463

.loopexit2984.loopexit.unr-lcssa:                 ; preds = %.lr.ph3626
  br i1 %lcmp.mod4891.not, label %.loopexit2984.loopexit, label %.lr.ph3626.epil.preheader

.lr.ph3626.epil.preheader:                        ; preds = %.loopexit2984.loopexit.unr-lcssa, %.lr.ph3626.preheader
  %.013373624.epil.init = phi ptr [ %gep3654, %.lr.ph3626.preheader ], [ %i.eiv, %.loopexit2984.loopexit.unr-lcssa ]
  %.1714043623.epil.init = phi ptr [ %.1614033642, %.lr.ph3626.preheader ], [ %i.eiw, %.loopexit2984.loopexit.unr-lcssa ] ; 2 uses
  %.129213622.epil.init = phi <4 x float> [ %.029203641, %.lr.ph3626.preheader ], [ %i.eit, %.loopexit2984.loopexit.unr-lcssa ]
  %.129263621.epil.init = phi <4 x float> [ %.029253640, %.lr.ph3626.preheader ], [ %i.eiu, %.loopexit2984.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4894)
  %i.eix = load i64, ptr %.013373624.epil.init, align 1, !tbaa !50
  %i.eiy = insertelement <2 x i64> poison, i64 %i.eix, i64 0
  %i.eiz = bitcast <2 x i64> %i.eiy to <8 x i16>
  %i.eja = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eiz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejb = bitcast <8 x i16> %i.eja to <4 x float> ; 2 uses
  %i.ejc = load i64, ptr %.1714043623.epil.init, align 1, !tbaa !50
  %i.ejd = insertelement <2 x i64> poison, i64 %i.ejc, i64 0
  %i.eje = bitcast <2 x i64> %i.ejd to <8 x i16>
  %i.ejf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eje, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejg = bitcast <8 x i16> %i.ejf to <4 x float>
  %i.ejh = getelementptr inbounds nuw i8, ptr %.1714043623.epil.init, i64 8
  %i.eji = load i64, ptr %i.ejh, align 1, !tbaa !50
  %i.ejj = insertelement <2 x i64> poison, i64 %i.eji, i64 0
  %i.ejk = bitcast <2 x i64> %i.ejj to <8 x i16>
  %i.ejl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejm = bitcast <8 x i16> %i.ejl to <4 x float>
  %i.ejn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejb, <4 x float> nofpclass(nan inf) %i.ejg, <4 x float> nofpclass(nan inf) %.129213622.epil.init)
  %i.ejo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejb, <4 x float> nofpclass(nan inf) %i.ejm, <4 x float> nofpclass(nan inf) %.129263621.epil.init)
  br label %.loopexit2984.loopexit

.loopexit2984.loopexit:                           ; preds = %.loopexit2984.loopexit.unr-lcssa, %.lr.ph3626.epil.preheader
  %.lcssa4795 = phi <4 x float> [ %i.eit, %.loopexit2984.loopexit.unr-lcssa ], [ %i.ejn, %.lr.ph3626.epil.preheader ]
  %.lcssa4794 = phi <4 x float> [ %i.eiu, %.loopexit2984.loopexit.unr-lcssa ], [ %i.ejo, %.lr.ph3626.epil.preheader ]
  %scevgep4255 = getelementptr i8, ptr %.1614033642, i64 16
  %scevgep4256 = getelementptr i8, ptr %scevgep4255, i64 %i.ehf
  br label %.loopexit2982

.loopexit2984:                                    ; preds = %bb.as
  br i1 %brmerge3913, label %.loopexit2982, label %.lr.ph3636

.lr.ph3636:                                       ; preds = %.loopexit2984, %.lr.ph3636
  %.013353635 = phi i32 [ %i.ekv, %.lr.ph3636 ], [ 0, %.loopexit2984 ]
  %.213393634 = phi ptr [ %i.ekt, %.lr.ph3636 ], [ %gep3654, %.loopexit2984 ] ; 5 uses
  %.1914063633 = phi ptr [ %i.eku, %.lr.ph3636 ], [ %.1614033642, %.loopexit2984 ] ; 3 uses
  %.329233632 = phi <4 x float> [ %i.ekr, %.lr.ph3636 ], [ %.029203641, %.loopexit2984 ]
  %.329283631 = phi <4 x float> [ %i.eks, %.lr.ph3636 ], [ %.029253640, %.loopexit2984 ]
  %i.ejp = getelementptr inbounds [2 x i8], ptr %.213393634, i64 %i.egy
  %i.ejq = load i16, ptr %i.ejp, align 2, !tbaa !350
  %i.ejr = getelementptr inbounds [2 x i8], ptr %.213393634, i64 %i.eha
  %i.ejs = load i16, ptr %i.ejr, align 2, !tbaa !350
  %i.ejt = getelementptr inbounds [2 x i8], ptr %.213393634, i64 %i.ehb
  %i.eju = load i16, ptr %i.ejt, align 2, !tbaa !350
  %i.ejv = load i16, ptr %.213393634, align 2, !tbaa !350
  %i.ejw = zext i16 %i.ejq to i32
  %i.ejx = zext i16 %i.ejs to i32
  %i.ejy = zext i16 %i.eju to i32
  %i.ejz = zext i16 %i.ejv to i32
  %i.eka = insertelement <4 x i32> poison, i32 %i.ejz, i64 0
  %i.ekb = insertelement <4 x i32> %i.eka, i32 %i.ejy, i64 1
  %i.ekc = insertelement <4 x i32> %i.ekb, i32 %i.ejx, i64 2
  %i.ekd = insertelement <4 x i32> %i.ekc, i32 %i.ejw, i64 3
  %i.eke = shl nuw <4 x i32> %i.ekd, splat (i32 16)
  %i.ekf = bitcast <4 x i32> %i.eke to <4 x float> ; 2 uses
  %i.ekg = load i64, ptr %.1914063633, align 1, !tbaa !50
  %i.ekh = insertelement <2 x i64> poison, i64 %i.ekg, i64 0
  %i.eki = bitcast <2 x i64> %i.ekh to <8 x i16>
  %i.ekj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eki, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekk = bitcast <8 x i16> %i.ekj to <4 x float>
  %i.ekl = getelementptr inbounds nuw i8, ptr %.1914063633, i64 8
  %i.ekm = load i64, ptr %i.ekl, align 1, !tbaa !50
  %i.ekn = insertelement <2 x i64> poison, i64 %i.ekm, i64 0
  %i.eko = bitcast <2 x i64> %i.ekn to <8 x i16>
  %i.ekp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eko, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekq = bitcast <8 x i16> %i.ekp to <4 x float>
  %i.ekr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekf, <4 x float> nofpclass(nan inf) %i.ekk, <4 x float> nofpclass(nan inf) %.329233632) ; 2 uses
  %i.eks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekf, <4 x float> nofpclass(nan inf) %i.ekq, <4 x float> nofpclass(nan inf) %.329283631) ; 2 uses
  %i.ekt = getelementptr inbounds [2 x i8], ptr %.213393634, i64 %i.ehc
  %i.eku = getelementptr inbounds nuw i8, ptr %.1914063633, i64 16
  %i.ekv = add nuw nsw i32 %.013353635, 1         ; 2 uses
  %exitcond4260.not = icmp eq i32 %i.ekv, %i.egq
  br i1 %exitcond4260.not, label %.loopexit2982.loopexit, label %.lr.ph3636, !llvm.loop !464

.loopexit2982.loopexit:                           ; preds = %.lr.ph3636
  %scevgep4258 = getelementptr i8, ptr %.1614033642, i64 16
  %scevgep4259 = getelementptr i8, ptr %scevgep4258, i64 %i.ehf
  br label %.loopexit2982

.loopexit2982:                                    ; preds = %.preheader2983, %.loopexit2984.loopexit, %.loopexit2982.loopexit, %.loopexit2984
  %.42929 = phi nsz <4 x float> [ %.029253640, %.loopexit2984 ], [ %i.eks, %.loopexit2982.loopexit ], [ %.lcssa4794, %.loopexit2984.loopexit ], [ %.029253640, %.preheader2983 ] ; 2 uses
  %.42924 = phi nsz <4 x float> [ %.029203641, %.loopexit2984 ], [ %i.ekr, %.loopexit2982.loopexit ], [ %.lcssa4795, %.loopexit2984.loopexit ], [ %.029203641, %.preheader2983 ] ; 2 uses
  %.201407 = phi ptr [ %.1614033642, %.loopexit2984 ], [ %scevgep4259, %.loopexit2982.loopexit ], [ %scevgep4256, %.loopexit2984.loopexit ], [ %.1614033642, %.preheader2983 ] ; 2 uses
  %i.ekw = add nuw nsw i32 %.213843643, 4         ; 3 uses
  %i.ekx = or disjoint i32 %i.ekw, 3
  %i.eky = icmp slt i32 %i.ekx, %i.bhw
  br i1 %i.eky, label %bb.as, label %._crit_edge3646, !llvm.loop !465

._crit_edge3646:                                  ; preds = %.loopexit2982, %._crit_edge3612
  %.02925.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3612 ], [ %.42929, %.loopexit2982 ] ; 4 uses
  %.02920.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3612 ], [ %.42924, %.loopexit2982 ] ; 4 uses
  %.161403.lcssa = phi ptr [ %.91396.lcssa, %._crit_edge3612 ], [ %.201407, %.loopexit2982 ] ; 3 uses
  %.21384.lcssa = phi i32 [ %.11383.lcssa, %._crit_edge3612 ], [ %i.ekw, %.loopexit2982 ] ; 6 uses
  %i.ekz = shufflevector <4 x float> %i.eav, <4 x float> %i.ebb, <2 x i32> <i32 3, i32 7>
  %i.ela = shufflevector <4 x float> %i.eav, <4 x float> %i.ebb, <2 x i32> <i32 1, i32 5>
  %i.elb = fadd fast <2 x float> %i.ekz, %i.ela
  %i.elc = fadd fast <2 x float> %i.elb, %i.dqy
  %i.eld = shufflevector <4 x float> %i.eav, <4 x float> %i.ebb, <2 x i32> <i32 2, i32 6>
  %i.ele = shufflevector <4 x float> %i.eav, <4 x float> %i.ebb, <2 x i32> <i32 0, i32 4>
  %i.elf = fadd fast <2 x float> %i.eld, %i.ele
  %i.elg = fadd fast <2 x float> %i.elc, %i.elf
  %i.elh = shufflevector <4 x float> %i.ege, <4 x float> %i.egh, <2 x i32> <i32 3, i32 7>
  %i.eli = shufflevector <4 x float> %i.ege, <4 x float> %i.egh, <2 x i32> <i32 1, i32 5>
  %i.elj = fadd fast <2 x float> %i.elh, %i.eli
  %i.elk = fadd fast <2 x float> %i.elg, %i.elj
  %i.ell = shufflevector <4 x float> %i.ege, <4 x float> %i.egh, <2 x i32> <i32 2, i32 6>
  %i.elm = shufflevector <4 x float> %i.ege, <4 x float> %i.egh, <2 x i32> <i32 0, i32 4>
  %i.eln = fadd fast <2 x float> %i.ell, %i.elm
  %i.elo = fadd fast <2 x float> %i.elk, %i.eln
  %i.elp = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 3, i32 7>
  %i.elq = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 1, i32 5>
  %i.elr = fadd fast <2 x float> %i.elp, %i.elq
  %i.els = fadd fast <2 x float> %i.elo, %i.elr
  %i.elt = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 2, i32 6>
  %i.elu = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 0, i32 4>
  %i.elv = fadd fast <2 x float> %i.elt, %i.elu
  %i.elw = fadd fast <2 x float> %i.els, %i.elv   ; 3 uses
  %i.elx = or disjoint i32 %.21384.lcssa, 1
  %i.ely = icmp slt i32 %i.elx, %i.bhw
  br i1 %i.ely, label %.lr.ph3671, label %.preheader2996

.lr.ph3671:                                       ; preds = %._crit_edge3646
  %i.elz = load ptr, ptr %0, align 8, !tbaa !18
  %i.ema = load i32, ptr %i.p, align 4, !tbaa !179
  %i.emb = sext i32 %i.ema to i64
  %i.emc = load i64, ptr %i.big, align 8, !tbaa !49
  %factor.op.mul3676 = mul i64 %i.emc, %i.emb
  %i.emd = mul nsw i64 %indvars.iv4274, %i.dqv
  %invariant.gep3678 = getelementptr [2 x i8], ptr %i.elz, i64 %i.emd
  %i.eme = load i32, ptr %i.e, align 4
  %i.emf = sext i32 %i.eme to i64
  %i.emg = load i32, ptr %i.b, align 4
  %i.emh = sext i32 %i.emg to i64
  br i1 %i.dqq, label %.lr.ph3661.us.preheader, label %.lr.ph3671.split.preheader

.lr.ph3671.split.preheader:                       ; preds = %.lr.ph3671
  %i.emi = add i32 %.21384.lcssa, 2
  %i.emj = add i32 %.21384.lcssa, 3
  %smax4261 = call i32 @llvm.smax.i32(i32 %i.bhw, i32 %i.emj)
  %i.emk = add i32 %smax4261, -2
  %i.eml = sub i32 %i.emk, %.21384.lcssa
  %i.emm = and i32 %i.eml, -2
  %i.emn = add i32 %i.emi, %i.emm
  br label %.preheader2996

.lr.ph3661.us.preheader:                          ; preds = %.lr.ph3671
  %i.emo = zext i32 %.21384.lcssa to i64
  br label %.lr.ph3661.us

.lr.ph3661.us:                                    ; preds = %.lr.ph3661.us.preheader, %._crit_edge3662.us
  %indvars.iv4265 = phi i64 [ %i.emo, %.lr.ph3661.us.preheader ], [ %indvars.iv.next4266, %._crit_edge3662.us ] ; 2 uses
  %.2114083668.us = phi ptr [ %.161403.lcssa, %.lr.ph3661.us.preheader ], [ %scevgep4263, %._crit_edge3662.us ] ; 2 uses
  %i.emp = phi <2 x float> [ %i.elw, %.lr.ph3661.us.preheader ], [ %i.enq, %._crit_edge3662.us ]
  %.reass3677.us = mul i64 %factor.op.mul3676, %indvars.iv4265
  %gep3679.us = getelementptr i8, ptr %invariant.gep3678, i64 %.reass3677.us
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph3661.us, %bb.at
  %.013333659.us = phi i32 [ 0, %.lr.ph3661.us ], [ %i.ent, %bb.at ]
  %.013343658.us = phi ptr [ %gep3679.us, %.lr.ph3661.us ], [ %i.enr, %bb.at ] ; 3 uses
  %.2214093657.us = phi ptr [ %.2114083668.us, %.lr.ph3661.us ], [ %i.ens, %bb.at ] ; 3 uses
  %i.emq = phi <2 x float> [ %i.emp, %.lr.ph3661.us ], [ %i.enq, %bb.at ]
  %i.emr = load i16, ptr %.013343658.us, align 2, !tbaa !350
  %i.ems = zext i16 %i.emr to i32
  %i.emt = shl nuw i32 %i.ems, 16
  %i.emu = getelementptr inbounds [2 x i8], ptr %.013343658.us, i64 %i.emf
  %i.emv = load i16, ptr %i.emu, align 2, !tbaa !350
  %i.emw = zext i16 %i.emv to i32
  %i.emx = shl nuw i32 %i.emw, 16
  %i.emy = getelementptr inbounds nuw i8, ptr %.2214093657.us, i64 4
  %i.emz = load <2 x i16>, ptr %.2214093657.us, align 2, !tbaa !350
  %i.ena = zext <2 x i16> %i.emz to <2 x i32>
  %i.enb = shl nuw <2 x i32> %i.ena, splat (i32 16)
  %i.enc = bitcast <2 x i32> %i.enb to <2 x float>
  %i.end = insertelement <2 x i32> poison, i32 %i.emt, i64 0
  %i.ene = bitcast <2 x i32> %i.end to <2 x float>
  %i.enf = shufflevector <2 x float> %i.ene, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eng = fmul fast <2 x float> %i.enf, %i.enc
  %i.enh = fadd fast <2 x float> %i.emq, %i.eng
  %i.eni = load <2 x i16>, ptr %i.emy, align 2, !tbaa !350
  %i.enj = zext <2 x i16> %i.eni to <2 x i32>
  %i.enk = shl nuw <2 x i32> %i.enj, splat (i32 16)
  %i.enl = bitcast <2 x i32> %i.enk to <2 x float>
  %i.enm = insertelement <2 x i32> poison, i32 %i.emx, i64 0
  %i.enn = bitcast <2 x i32> %i.enm to <2 x float>
  %i.eno = shufflevector <2 x float> %i.enn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.enp = fmul fast <2 x float> %i.eno, %i.enl
  %i.enq = fadd fast <2 x float> %i.enp, %i.enh   ; 3 uses
  %i.enr = getelementptr inbounds [2 x i8], ptr %.013343658.us, i64 %i.emh
  %i.ens = getelementptr inbounds nuw i8, ptr %.2214093657.us, i64 8
  %i.ent = add nuw nsw i32 %.013333659.us, 1      ; 2 uses
  %exitcond4264.not = icmp eq i32 %i.ent, %i.dqp
  br i1 %exitcond4264.not, label %._crit_edge3662.us, label %bb.at, !llvm.loop !466

._crit_edge3662.us:                               ; preds = %bb.at
  %scevgep4262 = getelementptr i8, ptr %.2114083668.us, i64 8
  %scevgep4263 = getelementptr i8, ptr %scevgep4262, i64 %i.dqt ; 2 uses
  %indvars.iv.next4266 = add nuw nsw i64 %indvars.iv4265, 2 ; 3 uses
  %i.enu = trunc i64 %indvars.iv.next4266 to i32
  %i.env = or i32 %i.enu, 1
  %i.enw = icmp slt i32 %i.env, %i.bhw
  br i1 %i.enw, label %.lr.ph3661.us, label %.preheader2996.loopexit, !llvm.loop !467

.preheader2996.loopexit:                          ; preds = %._crit_edge3662.us
  %i.enx = trunc nuw i64 %indvars.iv.next4266 to i32
  br label %.preheader2996

.preheader2996:                                   ; preds = %.lr.ph3671.split.preheader, %.preheader2996.loopexit, %._crit_edge3646
  %.211408.lcssa = phi ptr [ %.161403.lcssa, %._crit_edge3646 ], [ %scevgep4263, %.preheader2996.loopexit ], [ %.161403.lcssa, %.lr.ph3671.split.preheader ]
  %.31385.lcssa = phi i32 [ %.21384.lcssa, %._crit_edge3646 ], [ %i.enx, %.preheader2996.loopexit ], [ %i.emn, %.lr.ph3671.split.preheader ] ; 2 uses
  %i.eny = phi <2 x float> [ %i.elw, %._crit_edge3646 ], [ %i.enq, %.preheader2996.loopexit ], [ %i.elw, %.lr.ph3671.split.preheader ] ; 3 uses
  %i.enz = icmp slt i32 %.31385.lcssa, %i.bhw
  br i1 %i.enz, label %.lr.ph3699, label %._crit_edge3700

.lr.ph3699:                                       ; preds = %.preheader2996
  %i.eoa = load ptr, ptr %0, align 8, !tbaa !18
  %i.eob = load i32, ptr %i.p, align 4, !tbaa !179
  %i.eoc = sext i32 %i.eob to i64
  %i.eod = load i64, ptr %i.big, align 8, !tbaa !49
  %factor.op.mul3703 = mul i64 %i.eod, %i.eoc
  %i.eoe = mul nsw i64 %indvars.iv4274, %i.dqv
  %invariant.gep3705 = getelementptr [2 x i8], ptr %i.eoa, i64 %i.eoe
  %i.eof = load i32, ptr %i.b, align 4
  %i.eog = sext i32 %i.eof to i64                 ; 2 uses
  br i1 %i.dqq, label %.lr.ph3690.us.preheader, label %._crit_edge3700

.lr.ph3690.us.preheader:                          ; preds = %.lr.ph3699
  %i.eoh = zext i32 %.31385.lcssa to i64
  br label %.lr.ph3690.us

.lr.ph3690.us:                                    ; preds = %.lr.ph3690.us.preheader, %._crit_edge3691.us
  %indvars.iv4271 = phi i64 [ %i.eoh, %.lr.ph3690.us.preheader ], [ %indvars.iv.next4272, %._crit_edge3691.us ] ; 2 uses
  %.2314103697.us = phi ptr [ %.211408.lcssa, %.lr.ph3690.us.preheader ], [ %scevgep4269, %._crit_edge3691.us ] ; 3 uses
  %i.eoi = phi <2 x float> [ %i.eny, %.lr.ph3690.us.preheader ], [ %.lcssa4798, %._crit_edge3691.us ] ; 2 uses
  %.reass3704.us = mul i64 %factor.op.mul3703, %indvars.iv4271
  %gep3706.us = getelementptr i8, ptr %invariant.gep3705, i64 %.reass3704.us ; 2 uses
  br i1 %i.dqw, label %.epil.preheader4897, label %.lr.ph3690.us.new

.lr.ph3690.us.new:                                ; preds = %.lr.ph3690.us, %.lr.ph3690.us.new
  %.013323687.us = phi ptr [ %i.epk, %.lr.ph3690.us.new ], [ %gep3706.us, %.lr.ph3690.us ] ; 2 uses
  %.2414113686.us = phi ptr [ %i.epl, %.lr.ph3690.us.new ], [ %.2314103697.us, %.lr.ph3690.us ] ; 3 uses
  %i.eoj = phi <2 x float> [ %i.epj, %.lr.ph3690.us.new ], [ %i.eoi, %.lr.ph3690.us ]
  %niter4903 = phi i32 [ %niter4903.next.1, %.lr.ph3690.us.new ], [ 0, %.lr.ph3690.us ]
  %i.eok = load i16, ptr %.013323687.us, align 2, !tbaa !350
  %i.eol = zext i16 %i.eok to i32
  %i.eom = shl nuw i32 %i.eol, 16
  %i.eon = load <2 x i16>, ptr %.2414113686.us, align 2, !tbaa !350
  %i.eoo = zext <2 x i16> %i.eon to <2 x i32>
  %i.eop = shl nuw <2 x i32> %i.eoo, splat (i32 16)
  %i.eoq = bitcast <2 x i32> %i.eop to <2 x float>
  %i.eor = insertelement <2 x i32> poison, i32 %i.eom, i64 0
  %i.eos = bitcast <2 x i32> %i.eor to <2 x float>
  %i.eot = shufflevector <2 x float> %i.eos, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eou = fmul fast <2 x float> %i.eot, %i.eoq
  %i.eov = fadd fast <2 x float> %i.eou, %i.eoj
  %i.eow = getelementptr inbounds [2 x i8], ptr %.013323687.us, i64 %i.eog ; 2 uses
  %i.eox = getelementptr inbounds nuw i8, ptr %.2414113686.us, i64 4
  %i.eoy = load i16, ptr %i.eow, align 2, !tbaa !350
  %i.eoz = zext i16 %i.eoy to i32
  %i.epa = shl nuw i32 %i.eoz, 16
  %i.epb = load <2 x i16>, ptr %i.eox, align 2, !tbaa !350
  %i.epc = zext <2 x i16> %i.epb to <2 x i32>
  %i.epd = shl nuw <2 x i32> %i.epc, splat (i32 16)
  %i.epe = bitcast <2 x i32> %i.epd to <2 x float>
  %i.epf = insertelement <2 x i32> poison, i32 %i.epa, i64 0
  %i.epg = bitcast <2 x i32> %i.epf to <2 x float>
  %i.eph = shufflevector <2 x float> %i.epg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epi = fmul fast <2 x float> %i.eph, %i.epe
  %i.epj = fadd fast <2 x float> %i.epi, %i.eov   ; 3 uses
  %i.epk = getelementptr inbounds [2 x i8], ptr %i.eow, i64 %i.eog ; 2 uses
  %i.epl = getelementptr inbounds nuw i8, ptr %.2414113686.us, i64 8 ; 2 uses
  %niter4903.next.1 = add nuw nsw i32 %niter4903, 2 ; 2 uses
  %niter4903.ncmp.1 = icmp eq i32 %niter4903.next.1, %unroll_iter4902
  br i1 %niter4903.ncmp.1, label %._crit_edge3691.us.unr-lcssa, label %.lr.ph3690.us.new, !llvm.loop !468

._crit_edge3691.us.unr-lcssa:                     ; preds = %.lr.ph3690.us.new
  br i1 %lcmp.mod4899.not, label %._crit_edge3691.us, label %.epil.preheader4897

.epil.preheader4897:                              ; preds = %._crit_edge3691.us.unr-lcssa, %.lr.ph3690.us
  %.013323687.us.epil.init = phi ptr [ %gep3706.us, %.lr.ph3690.us ], [ %i.epk, %._crit_edge3691.us.unr-lcssa ]
  %.2414113686.us.epil.init = phi ptr [ %.2314103697.us, %.lr.ph3690.us ], [ %i.epl, %._crit_edge3691.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.eoi, %.lr.ph3690.us ], [ %i.epj, %._crit_edge3691.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4901)
  %i.epm = load i16, ptr %.013323687.us.epil.init, align 2, !tbaa !350
  %i.epn = zext i16 %i.epm to i32
  %i.epo = shl nuw i32 %i.epn, 16
  %i.epp = load <2 x i16>, ptr %.2414113686.us.epil.init, align 2, !tbaa !350
  %i.epq = zext <2 x i16> %i.epp to <2 x i32>
  %i.epr = shl nuw <2 x i32> %i.epq, splat (i32 16)
  %i.eps = bitcast <2 x i32> %i.epr to <2 x float>
  %i.ept = insertelement <2 x i32> poison, i32 %i.epo, i64 0
  %i.epu = bitcast <2 x i32> %i.ept to <2 x float>
  %i.epv = shufflevector <2 x float> %i.epu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epw = fmul fast <2 x float> %i.epv, %i.eps
  %i.epx = fadd fast <2 x float> %i.epw, %.epil.init
  br label %._crit_edge3691.us

._crit_edge3691.us:                               ; preds = %._crit_edge3691.us.unr-lcssa, %.epil.preheader4897
  %.lcssa4798 = phi <2 x float> [ %i.epj, %._crit_edge3691.us.unr-lcssa ], [ %i.epx, %.epil.preheader4897 ] ; 2 uses
  %scevgep4268 = getelementptr i8, ptr %.2314103697.us, i64 4
  %scevgep4269 = getelementptr i8, ptr %scevgep4268, i64 %i.dqu
  %indvars.iv.next4272 = add nuw nsw i64 %indvars.iv4271, 1 ; 2 uses
  %i.epy = trunc nuw i64 %indvars.iv.next4272 to i32
  %i.epz = icmp sgt i32 %i.bhw, %i.epy
  br i1 %i.epz, label %.lr.ph3690.us, label %._crit_edge3700, !llvm.loop !469

._crit_edge3700:                                  ; preds = %._crit_edge3691.us, %.lr.ph3699, %.preheader2996
  %i.eqa = phi <2 x float> [ %i.eny, %.preheader2996 ], [ %i.eny, %.lr.ph3699 ], [ %.lcssa4798, %._crit_edge3691.us ] ; 12 uses
  switch i32 %i.bil, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2949
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2952
    i32 6, label %bb.au
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943: ; preds = %._crit_edge3700
  %i.eqb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eqa, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946: ; preds = %._crit_edge3700
  %i.eqc = load ptr, ptr %8, align 8, !tbaa !18
  %i.eqd = load float, ptr %i.eqc, align 4, !tbaa !110
  %i.eqe = fcmp fast ogt <2 x float> %i.eqa, zeroinitializer
  %i.eqf = insertelement <2 x float> poison, float %i.eqd, i64 0
  %i.eqg = shufflevector <2 x float> %i.eqf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eqh = select <2 x i1> %i.eqe, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eqg
  %i.eqi = fmul fast <2 x float> %i.eqh, %i.eqa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940: ; preds = %._crit_edge3700
  %i.eqj = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.eqk = load float, ptr %i.eqj, align 4, !tbaa !110 ; 2 uses
  %i.eql = getelementptr inbounds nuw i8, ptr %i.eqj, i64 4
  %i.eqm = load float, ptr %i.eql, align 4, !tbaa !110 ; 4 uses
  %i.eqn = extractelement <2 x float> %i.eqa, i64 0
  %.02680 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqn, float %i.eqk) ; 2 uses
  %i.eqo = fcmp fast ogt float %.02680, %i.eqm
  %.126812942 = select i1 %i.eqo, float %i.eqm, float %.02680
  %i.eqp = extractelement <2 x float> %i.eqa, i64 1
  %.02682 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqp, float %i.eqk) ; 2 uses
  %i.eqq = fcmp fast ogt float %.02682, %i.eqm
  %i.eqr = insertelement <2 x float> poison, float %.126812942, i64 0
  %i.eqs = insertelement <2 x float> %i.eqr, float %.02682, i64 1 ; 2 uses
  br i1 %i.eqq, label %bb.ax, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2949: ; preds = %._crit_edge3700
  %i.eqt = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eqa, <2 x float> splat (float f0x42B0C0A5))
  %i.equ = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eqt, <2 x float> splat (float f0xC2B0C0A5))
  %i.eqv = fneg fast <2 x float> %i.equ
  %i.eqw = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.eqv)
  %i.eqx = fadd fast <2 x float> %i.eqw, splat (float 1.000000e+00)
  %i.eqy = fdiv fast <2 x float> splat (float 1.000000e+00), %i.eqx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2952: ; preds = %._crit_edge3700
  %i.eqz = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.eqa)
  %i.era = fadd fast <2 x float> %i.eqz, splat (float 1.000000e+00)
  %i.erb = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.era)
  %i.erc = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.erb)
  %i.erd = fmul fast <2 x float> %i.erc, %i.eqa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

bb.au:                                            ; preds = %._crit_edge3700
  %i.ere = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.erf = load float, ptr %i.ere, align 4, !tbaa !110 ; 5 uses
  %i.erg = getelementptr inbounds nuw i8, ptr %i.ere, i64 4
  %i.erh = load float, ptr %i.erg, align 4, !tbaa !110 ; 3 uses
  %i.eri = fneg fast float %i.erh
  %i.erj = fdiv fast float %i.eri, %i.erf         ; 4 uses
  %i.erk = extractelement <2 x float> %i.eqa, i64 0 ; 5 uses
  %i.erl = fcmp fast olt float %i.erk, %i.erj
  br i1 %i.erl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.erm = fdiv fast float 1.000000e+00, %i.erf
  %i.ern = fadd fast float %i.erj, %i.erm
  %i.ero = fcmp fast ogt float %i.erk, %i.ern
  br i1 %i.ero, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.erp = fmul fast float %i.erf, %i.erk
  %i.erq = fadd fast float %i.erp, %i.erh
  %i.err = fmul fast float %i.erq, %i.erk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread

bb.ax:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.fhd = zext i32 %i.fhc to i64
  %i.fhe = shl nuw nsw i64 %i.fhd, 3              ; 2 uses
  %brmerge3928 = select i1 %i.dpg, i1 true, i1 %i.fgr
  %brmerge3931 = select i1 %i.dpe, i1 true, i1 %i.fgr
  %xtraiter4904 = and i32 %i.fgq, 1
  %i.fhf = icmp eq i32 %i.fhc, 0
  %unroll_iter4908 = and i32 %i.fgq, 2147483646
  %lcmp.mod4905.not = icmp eq i32 %xtraiter4904, 0
  %lcmp.mod4907 = trunc i32 %i.fgq to i1
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph3834, %.loopexit
  %.212943832 = phi i32 [ %.11293.lcssa, %.lr.ph3834 ], [ %i.fjt, %.loopexit ] ; 2 uses
  %.1613133831 = phi ptr [ %.91306.lcssa, %.lr.ph3834 ], [ %.201317, %.loopexit ] ; 6 uses
  %.027763830 = phi <4 x float> [ zeroinitializer, %.lr.ph3834 ], [ %.42780, %.loopexit ] ; 4 uses
  %i.fhg = sdiv i32 %.212943832, %i.l
  %i.fhh = sext i32 %i.fhg to i64
  %.reass3840 = mul i64 %factor.op.mul3839, %i.fhh
  %gep3842 = getelementptr i8, ptr %invariant.gep3841, i64 %.reass3840 ; 3 uses
  br i1 %brmerge3928, label %.loopexit2968, label %.lr.ph3819.preheader

.lr.ph3819.preheader:                             ; preds = %bb.bh
  br i1 %i.fhf, label %.lr.ph3819.epil.preheader, label %.lr.ph3819

.lr.ph3819:                                       ; preds = %.lr.ph3819.preheader, %.lr.ph3819
  %.012453817 = phi ptr [ %i.fig, %.lr.ph3819 ], [ %gep3842, %.lr.ph3819.preheader ] ; 2 uses
  %.1713143816 = phi ptr [ %i.fih, %.lr.ph3819 ], [ %.1613133831, %.lr.ph3819.preheader ] ; 3 uses
  %.127773815 = phi <4 x float> [ %i.fif, %.lr.ph3819 ], [ %.027763830, %.lr.ph3819.preheader ]
  %niter4909 = phi i32 [ %niter4909.next.1, %.lr.ph3819 ], [ 0, %.lr.ph3819.preheader ]
  %i.fhi = load i64, ptr %.012453817, align 1, !tbaa !50
  %i.fhj = insertelement <2 x i64> poison, i64 %i.fhi, i64 0
  %i.fhk = bitcast <2 x i64> %i.fhj to <8 x i16>
  %i.fhl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhm = bitcast <8 x i16> %i.fhl to <4 x float>
  %i.fhn = load i64, ptr %.1713143816, align 1, !tbaa !50
  %i.fho = insertelement <2 x i64> poison, i64 %i.fhn, i64 0
  %i.fhp = bitcast <2 x i64> %i.fho to <8 x i16>
  %i.fhq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhr = bitcast <8 x i16> %i.fhq to <4 x float>
  %i.fhs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhm, <4 x float> nofpclass(nan inf) %i.fhr, <4 x float> nofpclass(nan inf) %.127773815)
  %i.fht = getelementptr inbounds [2 x i8], ptr %.012453817, i64 %i.fgu ; 2 uses
  %i.fhu = getelementptr inbounds nuw i8, ptr %.1713143816, i64 8
  %i.fhv = load i64, ptr %i.fht, align 1, !tbaa !50
  %i.fhw = insertelement <2 x i64> poison, i64 %i.fhv, i64 0
  %i.fhx = bitcast <2 x i64> %i.fhw to <8 x i16>
  %i.fhy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhz = bitcast <8 x i16> %i.fhy to <4 x float>
  %i.fia = load i64, ptr %i.fhu, align 1, !tbaa !50
  %i.fib = insertelement <2 x i64> poison, i64 %i.fia, i64 0
  %i.fic = bitcast <2 x i64> %i.fib to <8 x i16>
  %i.fid = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fie = bitcast <8 x i16> %i.fid to <4 x float>
  %i.fif = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhz, <4 x float> nofpclass(nan inf) %i.fie, <4 x float> nofpclass(nan inf) %i.fhs) ; 3 uses
  %i.fig = getelementptr inbounds [2 x i8], ptr %i.fht, i64 %i.fgu ; 2 uses
  %i.fih = getelementptr inbounds nuw i8, ptr %.1713143816, i64 16 ; 2 uses
  %niter4909.next.1 = add nuw nsw i32 %niter4909, 2 ; 2 uses
  %niter4909.ncmp.1 = icmp eq i32 %niter4909.next.1, %unroll_iter4908
  br i1 %niter4909.ncmp.1, label %.loopexit2968.thread.unr-lcssa, label %.lr.ph3819, !llvm.loop !481

.loopexit2968.thread.unr-lcssa:                   ; preds = %.lr.ph3819
  br i1 %lcmp.mod4905.not, label %.loopexit2968.thread, label %.lr.ph3819.epil.preheader

.lr.ph3819.epil.preheader:                        ; preds = %.loopexit2968.thread.unr-lcssa, %.lr.ph3819.preheader
  %.012453817.epil.init = phi ptr [ %gep3842, %.lr.ph3819.preheader ], [ %i.fig, %.loopexit2968.thread.unr-lcssa ]
  %.1713143816.epil.init = phi ptr [ %.1613133831, %.lr.ph3819.preheader ], [ %i.fih, %.loopexit2968.thread.unr-lcssa ]
  %.127773815.epil.init = phi <4 x float> [ %.027763830, %.lr.ph3819.preheader ], [ %i.fif, %.loopexit2968.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4907)
  %i.fii = load i64, ptr %.012453817.epil.init, align 1, !tbaa !50
  %i.fij = insertelement <2 x i64> poison, i64 %i.fii, i64 0
  %i.fik = bitcast <2 x i64> %i.fij to <8 x i16>
  %i.fil = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fim = bitcast <8 x i16> %i.fil to <4 x float>
  %i.fin = load i64, ptr %.1713143816.epil.init, align 1, !tbaa !50
  %i.fio = insertelement <2 x i64> poison, i64 %i.fin, i64 0
  %i.fip = bitcast <2 x i64> %i.fio to <8 x i16>
  %i.fiq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fir = bitcast <8 x i16> %i.fiq to <4 x float>
  %i.fis = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fim, <4 x float> nofpclass(nan inf) %i.fir, <4 x float> nofpclass(nan inf) %.127773815.epil.init)
  br label %.loopexit2968.thread

.loopexit2968.thread:                             ; preds = %.loopexit2968.thread.unr-lcssa, %.lr.ph3819.epil.preheader
  %.lcssa4772 = phi <4 x float> [ %i.fif, %.loopexit2968.thread.unr-lcssa ], [ %i.fis, %.lr.ph3819.epil.preheader ]
  %scevgep4305 = getelementptr i8, ptr %.1613133831, i64 8
  %scevgep4306 = getelementptr i8, ptr %scevgep4305, i64 %i.fhe
  br label %.loopexit

.loopexit2968:                                    ; preds = %bb.bh
  br i1 %brmerge3931, label %.loopexit, label %.lr.ph3827

.lr.ph3827:                                       ; preds = %.loopexit2968, %.lr.ph3827
  %.012433826 = phi i32 [ %i.fjs, %.lr.ph3827 ], [ 0, %.loopexit2968 ]
  %.23825 = phi ptr [ %i.fjq, %.lr.ph3827 ], [ %gep3842, %.loopexit2968 ] ; 5 uses
  %.1913163824 = phi ptr [ %i.fjr, %.lr.ph3827 ], [ %.1613133831, %.loopexit2968 ] ; 2 uses
  %.327793823 = phi <4 x float> [ %i.fjp, %.lr.ph3827 ], [ %.027763830, %.loopexit2968 ]
  %i.fit = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fgx
  %i.fiu = load i16, ptr %i.fit, align 2, !tbaa !350
  %i.fiv = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fgz
  %i.fiw = load i16, ptr %i.fiv, align 2, !tbaa !350
  %i.fix = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fha
  %i.fiy = load i16, ptr %i.fix, align 2, !tbaa !350
  %i.fiz = load i16, ptr %.23825, align 2, !tbaa !350
  %i.fja = zext i16 %i.fiu to i32
  %i.fjb = zext i16 %i.fiw to i32
  %i.fjc = zext i16 %i.fiy to i32
  %i.fjd = zext i16 %i.fiz to i32
  %i.fje = insertelement <4 x i32> poison, i32 %i.fjd, i64 0
  %i.fjf = insertelement <4 x i32> %i.fje, i32 %i.fjc, i64 1
  %i.fjg = insertelement <4 x i32> %i.fjf, i32 %i.fjb, i64 2
  %i.fjh = insertelement <4 x i32> %i.fjg, i32 %i.fja, i64 3
  %i.fji = shl nuw <4 x i32> %i.fjh, splat (i32 16)
  %i.fjj = bitcast <4 x i32> %i.fji to <4 x float>
  %i.fjk = load i64, ptr %.1913163824, align 1, !tbaa !50
  %i.fjl = insertelement <2 x i64> poison, i64 %i.fjk, i64 0
  %i.fjm = bitcast <2 x i64> %i.fjl to <8 x i16>
  %i.fjn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fjm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fjo = bitcast <8 x i16> %i.fjn to <4 x float>
  %i.fjp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fjj, <4 x float> nofpclass(nan inf) %i.fjo, <4 x float> nofpclass(nan inf) %.327793823) ; 2 uses
  %i.fjq = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fhb
  %i.fjr = getelementptr inbounds nuw i8, ptr %.1913163824, i64 8
  %i.fjs = add nuw nsw i32 %.012433826, 1         ; 2 uses
  %exitcond4310.not = icmp eq i32 %i.fjs, %i.fgq
  br i1 %exitcond4310.not, label %.loopexit.loopexit, label %.lr.ph3827, !llvm.loop !482

.loopexit.loopexit:                               ; preds = %.lr.ph3827
  %scevgep4308 = getelementptr i8, ptr %.1613133831, i64 8
  %scevgep4309 = getelementptr i8, ptr %scevgep4308, i64 %i.fhe
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit2968.thread, %.loopexit.loopexit, %.loopexit2968
  %.42780 = phi nsz <4 x float> [ %.027763830, %.loopexit2968 ], [ %i.fjp, %.loopexit.loopexit ], [ %.lcssa4772, %.loopexit2968.thread ] ; 2 uses
  %.201317 = phi ptr [ %.1613133831, %.loopexit2968 ], [ %scevgep4309, %.loopexit.loopexit ], [ %scevgep4306, %.loopexit2968.thread ] ; 2 uses
  %i.fjt = add nuw nsw i32 %.212943832, 4         ; 3 uses
  %i.fju = or disjoint i32 %i.fjt, 3
  %i.fjv = icmp slt i32 %i.fju, %i.o
  br i1 %i.fjv, label %bb.bh, label %._crit_edge3835, !llvm.loop !483

._crit_edge3835:                                  ; preds = %.loopexit, %._crit_edge3807
  %.02776.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3807 ], [ %.42780, %.loopexit ] ; 2 uses
  %.161313.lcssa = phi ptr [ %.91306.lcssa, %._crit_edge3807 ], [ %.201317, %.loopexit ] ; 3 uses
  %.21294.lcssa = phi i32 [ %.11293.lcssa, %._crit_edge3807 ], [ %i.fjt, %.loopexit ] ; 6 uses
  %i.fjw = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.fgh, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.fjx = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.fgh, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.fjy = fadd fast <4 x float> %i.fjw, %i.fjx
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fby, <4 x float> %i.fjy)
  %op.rdx4763 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01322, <8 x float> %i.fbz)
  %op.rdx4764 = fadd fast float %op.rdx, %op.rdx4763 ; 3 uses
  %i.fjz = or disjoint i32 %.21294.lcssa, 1
  %i.fka = icmp slt i32 %i.fjz, %i.o
  br i1 %i.fka, label %.lr.ph3856, label %.preheader2980

.lr.ph3856:                                       ; preds = %._crit_edge3835
  %i.fkb = load ptr, ptr %0, align 8, !tbaa !18
  %i.fkc = load i32, ptr %i.p, align 4, !tbaa !179
  %i.fkd = sext i32 %i.fkc to i64
  %i.fke = load i64, ptr %i.dpa, align 8, !tbaa !49
  %factor.op.mul3860 = mul i64 %i.fke, %i.fkd
  %i.fkf = mul nsw i64 %indvars.iv4324, %i.etn
  %invariant.gep3862 = getelementptr [2 x i8], ptr %i.fkb, i64 %i.fkf
  %i.fkg = load i32, ptr %i.e, align 4
  %i.fkh = sext i32 %i.fkg to i64
  %i.fki = load i32, ptr %i.b, align 4
  %i.fkj = sext i32 %i.fki to i64
  br i1 %i.eti, label %.lr.ph3848.us.preheader, label %.lr.ph3856.split.preheader

.lr.ph3856.split.preheader:                       ; preds = %.lr.ph3856
  %i.fkk = add i32 %.21294.lcssa, 2
  %i.fkl = add i32 %.21294.lcssa, 3
  %smax4311 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.fkl)
  %i.fkm = add i32 %smax4311, -2
  %i.fkn = sub i32 %i.fkm, %.21294.lcssa
  %i.fko = and i32 %i.fkn, -2
  %i.fkp = add i32 %i.fkk, %i.fko
  br label %.preheader2980

.lr.ph3848.us.preheader:                          ; preds = %.lr.ph3856
  %i.fkq = zext i32 %.21294.lcssa to i64
  br label %.lr.ph3848.us

.lr.ph3848.us:                                    ; preds = %.lr.ph3848.us.preheader, %._crit_edge3849.us
  %indvars.iv4315 = phi i64 [ %i.fkq, %.lr.ph3848.us.preheader ], [ %indvars.iv.next4316, %._crit_edge3849.us ] ; 2 uses
  %.2113183853.us = phi ptr [ %.161313.lcssa, %.lr.ph3848.us.preheader ], [ %scevgep4313, %._crit_edge3849.us ] ; 2 uses
  %.113233852.us = phi float [ %op.rdx4764, %.lr.ph3848.us.preheader ], [ %i.flm, %._crit_edge3849.us ]
  %.reass3861.us = mul i64 %factor.op.mul3860, %indvars.iv4315
  %gep3863.us = getelementptr i8, ptr %invariant.gep3862, i64 %.reass3861.us
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph3848.us, %bb.bi
  %.012413846.us = phi i32 [ 0, %.lr.ph3848.us ], [ %i.flp, %bb.bi ]
  %.012423845.us = phi ptr [ %gep3863.us, %.lr.ph3848.us ], [ %i.fln, %bb.bi ] ; 3 uses
  %.2213193844.us = phi ptr [ %.2113183853.us, %.lr.ph3848.us ], [ %i.flo, %bb.bi ] ; 3 uses
  %.213243843.us = phi float [ %.113233852.us, %.lr.ph3848.us ], [ %i.flm, %bb.bi ]
  %i.fkr = load i16, ptr %.012423845.us, align 2, !tbaa !350
  %i.fks = zext i16 %i.fkr to i32
  %i.fkt = shl nuw i32 %i.fks, 16
  %i.fku = bitcast i32 %i.fkt to float
  %i.fkv = load i16, ptr %.2213193844.us, align 2, !tbaa !350
  %i.fkw = zext i16 %i.fkv to i32
  %i.fkx = shl nuw i32 %i.fkw, 16
  %i.fky = bitcast i32 %i.fkx to float
  %i.fkz = fmul fast float %i.fky, %i.fku
  %i.fla = fadd fast float %.213243843.us, %i.fkz
  %i.flb = getelementptr inbounds [2 x i8], ptr %.012423845.us, i64 %i.fkh
  %i.flc = load i16, ptr %i.flb, align 2, !tbaa !350
  %i.fld = zext i16 %i.flc to i32
  %i.fle = shl nuw i32 %i.fld, 16
  %i.flf = bitcast i32 %i.fle to float
  %i.flg = getelementptr inbounds nuw i8, ptr %.2213193844.us, i64 2
  %i.flh = load i16, ptr %i.flg, align 2, !tbaa !350
  %i.fli = zext i16 %i.flh to i32
  %i.flj = shl nuw i32 %i.fli, 16
  %i.flk = bitcast i32 %i.flj to float
  %i.fll = fmul fast float %i.flk, %i.flf
  %i.flm = fadd fast float %i.fll, %i.fla         ; 3 uses
  %i.fln = getelementptr inbounds [2 x i8], ptr %.012423845.us, i64 %i.fkj
  %i.flo = getelementptr inbounds nuw i8, ptr %.2213193844.us, i64 4
  %i.flp = add nuw nsw i32 %.012413846.us, 1      ; 2 uses
  %exitcond4314.not = icmp eq i32 %i.flp, %i.eth
  br i1 %exitcond4314.not, label %._crit_edge3849.us, label %bb.bi, !llvm.loop !484

._crit_edge3849.us:                               ; preds = %bb.bi
  %scevgep4312 = getelementptr i8, ptr %.2113183853.us, i64 4
  %scevgep4313 = getelementptr i8, ptr %scevgep4312, i64 %i.etl ; 2 uses
  %indvars.iv.next4316 = add nuw nsw i64 %indvars.iv4315, 2 ; 3 uses
  %i.flq = trunc i64 %indvars.iv.next4316 to i32
  %i.flr = or i32 %i.flq, 1
  %i.fls = icmp slt i32 %i.flr, %i.o
  br i1 %i.fls, label %.lr.ph3848.us, label %.preheader2980.loopexit, !llvm.loop !485

.preheader2980.loopexit:                          ; preds = %._crit_edge3849.us
  %i.flt = trunc nuw i64 %indvars.iv.next4316 to i32
  br label %.preheader2980

.preheader2980:                                   ; preds = %.lr.ph3856.split.preheader, %.preheader2980.loopexit, %._crit_edge3835
  %.11323.lcssa = phi float [ %op.rdx4764, %._crit_edge3835 ], [ %i.flm, %.preheader2980.loopexit ], [ %op.rdx4764, %.lr.ph3856.split.preheader ] ; 3 uses
  %.211318.lcssa = phi ptr [ %.161313.lcssa, %._crit_edge3835 ], [ %scevgep4313, %.preheader2980.loopexit ], [ %.161313.lcssa, %.lr.ph3856.split.preheader ]
  %.31295.lcssa = phi i32 [ %.21294.lcssa, %._crit_edge3835 ], [ %i.flt, %.preheader2980.loopexit ], [ %i.fkp, %.lr.ph3856.split.preheader ] ; 2 uses
  %i.flu = icmp slt i32 %.31295.lcssa, %i.o
  br i1 %i.flu, label %.lr.ph3879, label %._crit_edge3880

.lr.ph3879:                                       ; preds = %.preheader2980
  %i.flv = load ptr, ptr %0, align 8, !tbaa !18
  %i.flw = load i32, ptr %i.p, align 4, !tbaa !179
  %i.flx = sext i32 %i.flw to i64
  %i.fly = load i64, ptr %i.dpa, align 8, !tbaa !49
  %factor.op.mul3882 = mul i64 %i.fly, %i.flx
  %i.flz = mul nsw i64 %indvars.iv4324, %i.etn
  %invariant.gep3884 = getelementptr [2 x i8], ptr %i.flv, i64 %i.flz
  %i.fma = load i32, ptr %i.b, align 4
  %i.fmb = sext i32 %i.fma to i64                 ; 2 uses
  br i1 %i.eti, label %.lr.ph3872.us.preheader, label %._crit_edge3880

.lr.ph3872.us.preheader:                          ; preds = %.lr.ph3879
  %i.fmc = zext i32 %.31295.lcssa to i64
  br label %.lr.ph3872.us

.lr.ph3872.us:                                    ; preds = %.lr.ph3872.us.preheader, %._crit_edge3873.us
  %indvars.iv4321 = phi i64 [ %i.fmc, %.lr.ph3872.us.preheader ], [ %indvars.iv.next4322, %._crit_edge3873.us ] ; 2 uses
  %.2313203877.us = phi ptr [ %.211318.lcssa, %.lr.ph3872.us.preheader ], [ %scevgep4319, %._crit_edge3873.us ] ; 3 uses
  %.313253876.us = phi float [ %.11323.lcssa, %.lr.ph3872.us.preheader ], [ %.lcssa4776, %._crit_edge3873.us ] ; 2 uses
  %.reass3883.us = mul i64 %factor.op.mul3882, %indvars.iv4321
  %gep3885.us = getelementptr i8, ptr %invariant.gep3884, i64 %.reass3883.us ; 2 uses
  br i1 %i.eto, label %.epil.preheader4910, label %.lr.ph3872.us.new

.lr.ph3872.us.new:                                ; preds = %.lr.ph3872.us, %.lr.ph3872.us.new
  %.012403869.us = phi ptr [ %i.fmz, %.lr.ph3872.us.new ], [ %gep3885.us, %.lr.ph3872.us ] ; 2 uses
  %.2413213868.us = phi ptr [ %i.fna, %.lr.ph3872.us.new ], [ %.2313203877.us, %.lr.ph3872.us ] ; 3 uses
  %.413263867.us = phi float [ %i.fmy, %.lr.ph3872.us.new ], [ %.313253876.us, %.lr.ph3872.us ]
  %niter4916 = phi i32 [ %niter4916.next.1, %.lr.ph3872.us.new ], [ 0, %.lr.ph3872.us ]
  %i.fmd = load i16, ptr %.012403869.us, align 2, !tbaa !350
  %i.fme = zext i16 %i.fmd to i32
  %i.fmf = shl nuw i32 %i.fme, 16
  %i.fmg = bitcast i32 %i.fmf to float
  %i.fmh = load i16, ptr %.2413213868.us, align 2, !tbaa !350
  %i.fmi = zext i16 %i.fmh to i32
  %i.fmj = shl nuw i32 %i.fmi, 16
  %i.fmk = bitcast i32 %i.fmj to float
  %i.fml = fmul fast float %i.fmk, %i.fmg
  %i.fmm = fadd fast float %i.fml, %.413263867.us
  %i.fmn = getelementptr inbounds [2 x i8], ptr %.012403869.us, i64 %i.fmb ; 2 uses
  %i.fmo = getelementptr inbounds nuw i8, ptr %.2413213868.us, i64 2
  %i.fmp = load i16, ptr %i.fmn, align 2, !tbaa !350
  %i.fmq = zext i16 %i.fmp to i32
  %i.fmr = shl nuw i32 %i.fmq, 16
  %i.fms = bitcast i32 %i.fmr to float
  %i.fmt = load i16, ptr %i.fmo, align 2, !tbaa !350
  %i.fmu = zext i16 %i.fmt to i32
  %i.fmv = shl nuw i32 %i.fmu, 16
  %i.fmw = bitcast i32 %i.fmv to float
  %i.fmx = fmul fast float %i.fmw, %i.fms
  %i.fmy = fadd fast float %i.fmx, %i.fmm         ; 3 uses
  %i.fmz = getelementptr inbounds [2 x i8], ptr %i.fmn, i64 %i.fmb ; 2 uses
  %i.fna = getelementptr inbounds nuw i8, ptr %.2413213868.us, i64 4 ; 2 uses
  %niter4916.next.1 = add nuw nsw i32 %niter4916, 2 ; 2 uses
  %niter4916.ncmp.1 = icmp eq i32 %niter4916.next.1, %unroll_iter4915
  br i1 %niter4916.ncmp.1, label %._crit_edge3873.us.unr-lcssa, label %.lr.ph3872.us.new, !llvm.loop !486

._crit_edge3873.us.unr-lcssa:                     ; preds = %.lr.ph3872.us.new
  br i1 %lcmp.mod4912.not, label %._crit_edge3873.us, label %.epil.preheader4910

.epil.preheader4910:                              ; preds = %._crit_edge3873.us.unr-lcssa, %.lr.ph3872.us
  %.012403869.us.epil.init = phi ptr [ %gep3885.us, %.lr.ph3872.us ], [ %i.fmz, %._crit_edge3873.us.unr-lcssa ]
  %.2413213868.us.epil.init = phi ptr [ %.2313203877.us, %.lr.ph3872.us ], [ %i.fna, %._crit_edge3873.us.unr-lcssa ]
  %.413263867.us.epil.init = phi float [ %.313253876.us, %.lr.ph3872.us ], [ %i.fmy, %._crit_edge3873.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4914)
  %i.fnb = load i16, ptr %.012403869.us.epil.init, align 2, !tbaa !350
  %i.fnc = zext i16 %i.fnb to i32
  %i.fnd = shl nuw i32 %i.fnc, 16
  %i.fne = bitcast i32 %i.fnd to float
  %i.fnf = load i16, ptr %.2413213868.us.epil.init, align 2, !tbaa !350
  %i.fng = zext i16 %i.fnf to i32
  %i.fnh = shl nuw i32 %i.fng, 16
  %i.fni = bitcast i32 %i.fnh to float
  %i.fnj = fmul fast float %i.fni, %i.fne
  %i.fnk = fadd fast float %i.fnj, %.413263867.us.epil.init
  br label %._crit_edge3873.us

._crit_edge3873.us:                               ; preds = %._crit_edge3873.us.unr-lcssa, %.epil.preheader4910
  %.lcssa4776 = phi float [ %i.fmy, %._crit_edge3873.us.unr-lcssa ], [ %i.fnk, %.epil.preheader4910 ] ; 2 uses
  %scevgep4318 = getelementptr i8, ptr %.2313203877.us, i64 2
  %scevgep4319 = getelementptr i8, ptr %scevgep4318, i64 %i.etm
  %indvars.iv.next4322 = add nuw nsw i64 %indvars.iv4321, 1 ; 2 uses
  %i.fnl = trunc nuw i64 %indvars.iv.next4322 to i32
  %i.fnm = icmp sgt i32 %i.o, %i.fnl
  br i1 %i.fnm, label %.lr.ph3872.us, label %._crit_edge3880, !llvm.loop !487

._crit_edge3880:                                  ; preds = %._crit_edge3873.us, %.lr.ph3879, %.preheader2980
  %.31325.lcssa = phi float [ %.11323.lcssa, %.preheader2980 ], [ %.11323.lcssa, %.lr.ph3879 ], [ %.lcssa4776, %._crit_edge3873.us ] ; 13 uses
  switch i32 %i.dph, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %bb.bl
    i32 4, label %bb.bn
    i32 5, label %bb.bo
    i32 6, label %bb.bp
  ]

bb.bj:                                            ; preds = %._crit_edge3880
  %i.fnn = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31325.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge3880
  %i.fno = load ptr, ptr %8, align 8, !tbaa !18
  %i.fnp = load float, ptr %i.fno, align 4, !tbaa !110
  %i.fnq = fcmp fast ogt float %.31325.lcssa, 0.000000e+00
  %i.fnr = select fast i1 %i.fnq, float 1.000000e+00, float %i.fnp
  %i.fns = fmul fast float %i.fnr, %.31325.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge3880
  %i.fnt = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.fnu = load float, ptr %i.fnt, align 4, !tbaa !110
  %i.fnv = getelementptr inbounds nuw i8, ptr %i.fnt, i64 4
  %i.fnw = load float, ptr %i.fnv, align 4, !tbaa !110 ; 2 uses
  %.02684 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31325.lcssa, float %i.fnu) ; 2 uses
  %i.fnx = fcmp fast ogt float %.02684, %i.fnw
  br i1 %i.fnx, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %bb.bl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bn:                                            ; preds = %._crit_edge3880
  %.sroa.speculated2426 = call nnan ninf nsz float @llvm.minnum.f32(float %.31325.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2426, float f0xC2B0C0A5)
  %i.fny = fneg fast float %.sroa.speculated
  %i.fnz = call fast float @llvm.exp.f32(float %i.fny)
  %i.foa = fadd fast float %i.fnz, 1.000000e+00
  %i.fob = fdiv fast float 1.000000e+00, %i.foa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bo:                                            ; preds = %._crit_edge3880
  %i.foc = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31325.lcssa)
  %i.fod = fadd fast float %i.foc, 1.000000e+00
  %i.foe = call fast float @llvm.log.f32(float %i.fod)
  %i.fof = call fast float @llvm.tanh.f32(float %i.foe)
  %i.fog = fmul fast float %i.fof, %.31325.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bp:                                            ; preds = %._crit_edge3880
  %i.foh = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.foi = load float, ptr %i.foh, align 4, !tbaa !110 ; 3 uses
  %i.foj = getelementptr inbounds nuw i8, ptr %i.foh, i64 4
  %i.fok = load float, ptr %i.foj, align 4, !tbaa !110 ; 2 uses
  %i.fol = fneg fast float %i.fok
  %i.fom = fdiv fast float %i.fol, %i.foi         ; 2 uses
  %i.fon = fcmp fast olt float %.31325.lcssa, %i.fom
  br i1 %i.fon, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.foo = fdiv fast float 1.000000e+00, %i.foi
  %i.fop = fadd fast float %i.fom, %i.foo
  %i.foq = fcmp fast ogt float %.31325.lcssa, %i.fop
  br i1 %i.foq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.for = fmul fast float %i.foi, %.31325.lcssa
  %i.fos = fadd fast float %i.for, %i.fok
  %i.fot = fmul fast float %i.fos, %.31325.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bp, %._crit_edge3880, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bq, %bb.br
  %.12685 = phi nsz float [ %.31325.lcssa, %._crit_edge3880 ], [ %i.fnn, %bb.bj ], [ %i.fns, %bb.bk ], [ %i.fnw, %bb.bm ], [ %.02684, %bb.bl ], [ %i.fob, %bb.bn ], [ %i.fog, %bb.bo ], [ %i.fot, %bb.br ], [ %.31325.lcssa, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %i.fou = bitcast float %.12685 to i32
  %i.fov = lshr i32 %i.fou, 16
  %i.fow = trunc nuw i32 %i.fov to i16
  store i16 %i.fow, ptr %.013283887, align 2, !tbaa !350
  %i.fox = getelementptr inbounds nuw i8, ptr %.013283887, i64 2
  %indvars.iv.next4325 = add nuw nsw i64 %indvars.iv4324, 1 ; 2 uses
  %exitcond4328.not = icmp eq i64 %indvars.iv.next4325, %wide.trip.count4327
  br i1 %exitcond4328.not, label %._crit_edge3891, label %bb.ba, !llvm.loop !488

bb.bs:                                            ; preds = %._crit_edge3901.split, %bb.b
  ret void
}
end_hunk_3
