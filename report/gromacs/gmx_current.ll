Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_current?download=true
inline.NumInlined: 251
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z11gmx_currentiPPc:bb.a
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !24 ; 2 uses
  %i.abd = getelementptr inbounds [12 x i8], ptr %i.yv, i64 %indvars.iv.next.i336.i.1 ; 2 uses
  %i.abe = load <2 x float>, ptr %i.abd, align 4, !tbaa !24
  %i.abf = insertelement <2 x float> poison, float %i.abc, i64 0
  %i.abg = shufflevector <2 x float> %i.abf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abh = fmul <2 x float> %i.abg, %i.abe
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !24
  %i.abk = fmul float %i.abc, %i.abj
  %i.abl = fadd <2 x float> %i.aaz, %i.abh
  %i.abm = fadd float %i.aba, %i.abk
  %indvars.iv.next.i336.i.2 = add nsw i64 %indvars.iv.i335.i, 3 ; 2 uses
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i336.i.2
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !24 ; 2 uses
  %i.abp = getelementptr inbounds [12 x i8], ptr %i.yv, i64 %indvars.iv.next.i336.i.2 ; 2 uses
  %i.abq = load <2 x float>, ptr %i.abp, align 4, !tbaa !24
  %i.abr = insertelement <2 x float> poison, float %i.abo, i64 0
  %i.abs = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abt = fmul <2 x float> %i.abs, %i.abq
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !24
  %i.abw = fmul float %i.abo, %i.abv
  %i.abx = fadd <2 x float> %i.abl, %i.abt        ; 2 uses
  %i.aby = fadd float %i.abm, %i.abw              ; 2 uses
  %indvars.iv.next.i336.i.3 = add nsw i64 %indvars.iv.i335.i, 4 ; 2 uses
  %exitcond.not.i337.i.3 = icmp eq i64 %indvars.iv.next.i336.i.3, %wide.trip.count.i334.i
  br i1 %exitcond.not.i337.i.3, label %._crit_edge.i338.i, label %.lr.ph.i.i, !llvm.loop !55

._crit_edge.i338.i:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.lcssa871 = phi <2 x float> [ %.lcssa871.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.abx, %.lr.ph.i.i ] ; 2 uses
  %.lcssa870 = phi float [ %.lcssa870.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.aby, %.lr.ph.i.i ] ; 2 uses
  store <2 x float> %.lcssa871, ptr %i.b, align 8, !tbaa !24
  store float %.lcssa870, ptr %i.rp, align 8, !tbaa !24
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i338.i, %bb.co
  %i.abz = phi float [ %.lcssa870, %._crit_edge.i338.i ], [ 0.000000e+00, %bb.co ]
  %i.aca = phi <2 x float> [ %.lcssa871, %._crit_edge.i338.i ], [ zeroinitializer, %bb.co ]
  br i1 %i.qp, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.acb = sext i32 %i.zc to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.acb
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !24 ; 2 uses
  %i.ace = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.acf = shufflevector <2 x float> %i.ace, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acg = fmul <2 x float> %i.aca, %i.acf
  %i.ach = fmul float %i.abz, %i.acd
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
          to label %.noexc230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc230:                                        ; preds = %bb.cr
  %i.aci = sext i32 %i.zc to i64
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.aci
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !24 ; 2 uses
  %i.acl = load <2 x float>, ptr %i.c, align 8, !tbaa !24
  %i.acm = insertelement <2 x float> poison, float %i.ack, i64 0
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aco = fmul <2 x float> %i.acn, %i.acl
  %i.acp = load float, ptr %i.rq, align 8, !tbaa !24
  %i.acq = fmul float %i.ack, %i.acp
  br label %bb.cs

bb.cs:                                            ; preds = %.noexc230, %bb.cq
  %storemerge.i.i = phi float [ %i.ach, %bb.cq ], [ %i.acq, %.noexc230 ] ; 2 uses
  %i.acr = phi <2 x float> [ %i.acg, %bb.cq ], [ %i.aco, %.noexc230 ] ; 2 uses
  store <2 x float> %i.acr, ptr %i.b, align 8, !tbaa !24
  store float %storemerge.i.i, ptr %i.rp, align 8, !tbaa !24
  %i.acs = load float, ptr %i.yx, align 4, !tbaa !24
  %i.act = fadd float %storemerge.i.i, %i.acs
  %i.acu = load <2 x float>, ptr %i.yw, align 4, !tbaa !24
  %i.acv = fadd <2 x float> %i.acr, %i.acu
  store <2 x float> %i.acv, ptr %i.yw, align 4, !tbaa !24
  store float %i.act, ptr %i.yx, align 4, !tbaa !24
  %exitcond17.not.i.i = icmp eq i64 %indvars.iv.next14.i.i, %wide.trip.count16.i.i
  br i1 %exitcond17.not.i.i, label %_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i, label %bb.co, !llvm.loop !56

_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i: ; preds = %bb.cs, %.noexc229
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.rr, label %.lr.ph549.i, label %._crit_edge.i210

.lr.ph549.i:                                      ; preds = %_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i
  %i.acw = load ptr, ptr %i.rs, align 8, !tbaa !134 ; 3 uses
  %i.acx = load ptr, ptr %i.ri, align 8, !tbaa !131 ; 3 uses
  %i.acy = getelementptr inbounds nuw [12 x i8], ptr %.1498.i, i64 %indvar.i ; 7 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 6 uses
  br i1 %i.ry, label %.epil.preheader, label %.lr.ph549.i.new

.lr.ph549.i.new:                                  ; preds = %.lr.ph549.i, %.lr.ph549.i.new
  %indvars.iv599.i = phi i64 [ %indvars.iv.next600.i.1, %.lr.ph549.i.new ], [ 0, %.lr.ph549.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph549.i.new ], [ 0, %.lr.ph549.i ]
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv599.i
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !10
  %i.adc = sext i32 %i.adb to i64                 ; 2 uses
  %i.add = getelementptr inbounds [36 x i8], ptr %i.acw, i64 %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !113 ; 2 uses
  %i.adg = getelementptr inbounds [12 x i8], ptr %i.acx, i64 %i.adc ; 3 uses
  %i.adh = load <2 x float>, ptr %i.adg, align 4, !tbaa !24
  %i.adi = insertelement <2 x float> poison, float %i.adf, i64 0
  %i.adj = shufflevector <2 x float> %i.adi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adk = fmul <2 x float> %i.adj, %i.adh        ; 2 uses
  store <2 x float> %i.adk, ptr %i.adg, align 4, !tbaa !24
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 8 ; 2 uses
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !24
  %i.adn = fmul float %i.adf, %i.adm              ; 2 uses
  store float %i.adn, ptr %i.adl, align 4, !tbaa !24
  %i.ado = load float, ptr %i.acz, align 4, !tbaa !24
  %i.adp = fadd float %i.adn, %i.ado
  %i.adq = load <2 x float>, ptr %i.acy, align 4, !tbaa !24
  %i.adr = fadd <2 x float> %i.adk, %i.adq
  store <2 x float> %i.adr, ptr %i.acy, align 4, !tbaa !24
  store float %i.adp, ptr %i.acz, align 4, !tbaa !24
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv599.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !10
  %i.adv = sext i32 %i.adu to i64                 ; 2 uses
  %i.adw = getelementptr inbounds [36 x i8], ptr %i.acw, i64 %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !113 ; 2 uses
  %i.adz = getelementptr inbounds [12 x i8], ptr %i.acx, i64 %i.adv ; 3 uses
  %i.aea = load <2 x float>, ptr %i.adz, align 4, !tbaa !24
  %i.aeb = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aec = shufflevector <2 x float> %i.aeb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aed = fmul <2 x float> %i.aec, %i.aea        ; 2 uses
  store <2 x float> %i.aed, ptr %i.adz, align 4, !tbaa !24
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 8 ; 2 uses
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !24
  %i.aeg = fmul float %i.ady, %i.aef              ; 2 uses
  store float %i.aeg, ptr %i.aee, align 4, !tbaa !24
  %i.aeh = load float, ptr %i.acz, align 4, !tbaa !24
  %i.aei = fadd float %i.aeg, %i.aeh
  %i.aej = load <2 x float>, ptr %i.acy, align 4, !tbaa !24
  %i.aek = fadd <2 x float> %i.aed, %i.aej
  store <2 x float> %i.aek, ptr %i.acy, align 4, !tbaa !24
  store float %i.aei, ptr %i.acz, align 4, !tbaa !24
  %indvars.iv.next600.i.1 = add nuw nsw i64 %indvars.iv599.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i210.loopexit.unr-lcssa, label %.lr.ph549.i.new, !llvm.loop !57

._crit_edge.i210.loopexit.unr-lcssa:              ; preds = %.lr.ph549.i.new
  br i1 %lcmp.mod932.not, label %._crit_edge.i210, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i210.loopexit.unr-lcssa, %.lr.ph549.i
  %indvars.iv599.i.epil.init = phi i64 [ 0, %.lr.ph549.i ], [ %indvars.iv.next600.i.1, %._crit_edge.i210.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod933)
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv599.i.epil.init
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !10
  %i.aen = sext i32 %i.aem to i64                 ; 2 uses
  %i.aeo = getelementptr inbounds [36 x i8], ptr %i.acw, i64 %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !113 ; 2 uses
  %i.aer = getelementptr inbounds [12 x i8], ptr %i.acx, i64 %i.aen ; 3 uses
  %i.aes = load <2 x float>, ptr %i.aer, align 4, !tbaa !24
  %i.aet = insertelement <2 x float> poison, float %i.aeq, i64 0
  %i.aeu = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aev = fmul <2 x float> %i.aeu, %i.aes        ; 2 uses
  store <2 x float> %i.aev, ptr %i.aer, align 4, !tbaa !24
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aer, i64 8 ; 2 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !24
  %i.aey = fmul float %i.aeq, %i.aex              ; 2 uses
  store float %i.aey, ptr %i.aew, align 4, !tbaa !24
  %i.aez = load float, ptr %i.acz, align 4, !tbaa !24
  %i.afa = fadd float %i.aey, %i.aez
  %i.afb = load <2 x float>, ptr %i.acy, align 4, !tbaa !24
  %i.afc = fadd <2 x float> %i.aev, %i.afb
  store <2 x float> %i.afc, ptr %i.acy, align 4, !tbaa !24
  store float %i.afa, ptr %i.acz, align 4, !tbaa !24
  br label %._crit_edge.i210

._crit_edge.i210:                                 ; preds = %.epil.preheader, %._crit_edge.i210.loopexit.unr-lcssa, %_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i
  %i.afd = srem i32 %i.sd, %i.qy
  %i.afe = icmp eq i32 %i.afd, 0
  br i1 %i.afe, label %.preheader508.i, label %.loopexit509.i

.preheader508.i:                                  ; preds = %._crit_edge.i210
  %i.aff = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %min.iters.check753 = icmp ult i64 %indvar.i, 7
  br i1 %min.iters.check753, label %scalar.ph752.preheader, label %vector.memcheck754

vector.memcheck754:                               ; preds = %.preheader508.i
  %i.afh = shl i64 %indvar.i, 2
  %i.afi = add i64 %i.afh, 4                      ; 2 uses
  %i.afj = getelementptr i8, ptr %.1488.i, i64 %i.afi ; 3 uses
  %i.afk = getelementptr i8, ptr %.1.i, i64 %i.afi ; 3 uses
  %i.afl = mul i64 %indvar.i, 12
  %i.afm = getelementptr i8, ptr %.1486.i, i64 %i.afl
  %i.afn = getelementptr i8, ptr %i.afm, i64 12   ; 2 uses
  %bound0755 = icmp ult ptr %.1488.i, %i.afk
  %bound1756 = icmp ult ptr %.1.i, %i.afj
  %found.conflict757 = and i1 %bound0755, %bound1756
  %bound0758 = icmp ult ptr %.1488.i, %i.afn
  %bound1759 = icmp ult ptr %i.yw, %i.afj
  %bound1762 = icmp ult ptr %.1486.i, %i.afj
  %i.afo = or i1 %bound1759, %bound1762
  %i.afp = and i1 %bound0758, %i.afo
  %conflict.rdx764 = or i1 %found.conflict757, %i.afp
  %bound0765 = icmp ult ptr %.1.i, %i.afn
  %bound1766 = icmp ult ptr %i.yw, %i.afk
  %bound1769 = icmp ult ptr %.1486.i, %i.afk
  %i.afq = or i1 %bound1766, %bound1769
  %i.afr = and i1 %bound0765, %i.afq
  %conflict.rdx771 = or i1 %conflict.rdx764, %i.afr
  br i1 %conflict.rdx771, label %scalar.ph752.preheader, label %vector.ph772

vector.ph772:                                     ; preds = %vector.memcheck754
  %n.vec773 = and i64 %indvar.next.i, -8          ; 3 uses
  %i.afs = sub i64 %indvar.i, %n.vec773
  %i.aft = load float, ptr %i.yw, align 4, !tbaa !24, !alias.scope !135
  %broadcast.splatinsert780 = insertelement <8 x float> poison, float %i.aft, i64 0
  %broadcast.splat781 = shufflevector <8 x float> %broadcast.splatinsert780, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afu = load float, ptr %i.aff, align 4, !tbaa !24, !alias.scope !135
  %broadcast.splatinsert782 = insertelement <8 x float> poison, float %i.afu, i64 0
  %broadcast.splat783 = shufflevector <8 x float> %broadcast.splatinsert782, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afv = load float, ptr %i.afg, align 4, !tbaa !24, !alias.scope !135
  %broadcast.splatinsert784 = insertelement <8 x float> poison, float %i.afv, i64 0
  %broadcast.splat785 = shufflevector <8 x float> %broadcast.splatinsert784, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body774

vector.body774:                                   ; preds = %vector.body774, %vector.ph772
  %index775 = phi i64 [ 0, %vector.ph772 ], [ %index.next787, %vector.body774 ] ; 4 uses
  %i.afw = sub i64 %indvar.i, %index775
  %i.afx = getelementptr inbounds nuw [12 x i8], ptr %.1486.i, i64 %i.afw
  %i.afy = getelementptr inbounds i8, ptr %i.afx, i64 -84
  %wide.vec = load <24 x float>, ptr %i.afy, align 4, !tbaa !24, !alias.scope !136 ; 3 uses
  %reverse = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 21, i32 18, i32 15, i32 12, i32 9, i32 6, i32 3, i32 0>
  %reverse777 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 22, i32 19, i32 16, i32 13, i32 10, i32 7, i32 4, i32 1>
  %reverse779 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 23, i32 20, i32 17, i32 14, i32 11, i32 8, i32 5, i32 2>
  %i.afz = fsub <8 x float> %broadcast.splat781, %reverse ; 2 uses
  %i.aga = fsub <8 x float> %broadcast.splat783, %reverse777 ; 2 uses
  %i.agb = fsub <8 x float> %broadcast.splat785, %reverse779 ; 2 uses
  %i.agc = fmul <8 x float> %i.aga, %i.aga
  %i.agd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.afz, <8 x float> %i.afz, <8 x float> %i.agc)
  %i.age = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agb, <8 x float> %i.agb, <8 x float> %i.agd)
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %index775 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.agf, align 4, !tbaa !24, !alias.scope !137, !noalias !138
  %i.agg = fadd <8 x float> %wide.load, %i.age
  store <8 x float> %i.agg, ptr %i.agf, align 4, !tbaa !24, !alias.scope !137, !noalias !138
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %index775 ; 2 uses
  %wide.load786 = load <8 x float>, ptr %i.agh, align 4, !tbaa !24, !alias.scope !139, !noalias !140
  %i.agi = fadd <8 x float> %wide.load786, splat (float 1.000000e+00)
  store <8 x float> %i.agi, ptr %i.agh, align 4, !tbaa !24, !alias.scope !139, !noalias !140
  %index.next787 = add nuw i64 %index775, 8       ; 2 uses
  %i.agj = icmp eq i64 %index.next787, %n.vec773
  br i1 %i.agj, label %middle.block788, label %vector.body774, !llvm.loop !63

middle.block788:                                  ; preds = %vector.body774
  %cmp.n789 = icmp eq i64 %indvar.next.i, %n.vec773
  br i1 %cmp.n789, label %.loopexit509.i, label %scalar.ph752.preheader

scalar.ph752.preheader:                           ; preds = %vector.memcheck754, %.preheader508.i, %middle.block788
  %indvars.iv604.i.ph = phi i64 [ %indvar.i, %vector.memcheck754 ], [ %indvar.i, %.preheader508.i ], [ %i.afs, %middle.block788 ]
  br label %scalar.ph752

scalar.ph752:                                     ; preds = %scalar.ph752.preheader, %scalar.ph752
  %indvars.iv604.i = phi i64 [ %indvars.iv.next605.i, %scalar.ph752 ], [ %indvars.iv604.i.ph, %scalar.ph752.preheader ] ; 4 uses
  %i.agk = getelementptr inbounds nuw [12 x i8], ptr %.1486.i, i64 %indvars.iv604.i ; 3 uses
  %i.agl = load float, ptr %i.yw, align 4, !tbaa !24
  %i.agm = load float, ptr %i.agk, align 4, !tbaa !24
  %i.agn = fsub float %i.agl, %i.agm              ; 2 uses
  %i.ago = load float, ptr %i.aff, align 4, !tbaa !24
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !24
  %i.agr = fsub float %i.ago, %i.agq              ; 2 uses
  %i.ags = load float, ptr %i.afg, align 4, !tbaa !24
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !24
  %i.agv = fsub float %i.ags, %i.agu              ; 2 uses
  %i.agw = fmul float %i.agr, %i.agr
  %i.agx = call float @llvm.fmuladd.f32(float %i.agn, float %i.agn, float %i.agw)
  %i.agy = call noundef float @llvm.fmuladd.f32(float %i.agv, float %i.agv, float %i.agx)
  %i.agz = sub nuw nsw i64 %indvar.i, %indvars.iv604.i ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %i.agz ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !24
  %i.ahc = fadd float %i.ahb, %i.agy
  store float %i.ahc, ptr %i.aha, align 4, !tbaa !24
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.agz ; 2 uses
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !24
  %i.ahf = fadd float %i.ahe, 1.000000e+00
  store float %i.ahf, ptr %i.ahd, align 4, !tbaa !24
  %indvars.iv.next605.i = add nsw i64 %indvars.iv604.i, -1
  %i.ahg = icmp sgt i64 %indvars.iv604.i, 0
  br i1 %i.ahg, label %scalar.ph752, label %.loopexit509.i, !llvm.loop !64

.loopexit509.i:                                   ; preds = %scalar.ph752, %middle.block788, %._crit_edge.i210
  %i.ahh = load i8, ptr %i.rt, align 8, !tbaa !124, !range !125, !noundef !126
  %i.ahi = trunc nuw i8 %i.ahh to i1
  br i1 %i.ahi, label %bb.ct, label %bb.dh

bb.ct:                                            ; preds = %.loopexit509.i
  %.not322.i = icmp slt i32 %.0303.i, %.0308.i
  br i1 %.not322.i, label %.noexc234, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahj = add nsw i32 %.0308.i, 100              ; 3 uses
  %i.ahk = sext i32 %i.ahj to i64                 ; 4 uses
  %i.ahl = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.59, i32 noundef 545, ptr noundef %.0482.i, i64 noundef range(i64 -2147483548, 2147483648) %i.ahk, i64 noundef 4)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc231:                                        ; preds = %bb.cu
  br i1 %i.bu, label %bb.cv, label %.noexc232

bb.cv:                                            ; preds = %.noexc231
  %i.ahm = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.59, i32 noundef 548, ptr noundef %.0499.i, i64 noundef range(i64 -2147483548, 2147483648) %i.ahk, i64 noundef 4)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.cv, %.noexc231
  %.1500.i = phi ptr [ %.0499.i, %.noexc231 ], [ %i.ahm, %bb.cv ] ; 2 uses
  %i.ahn = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.59, i32 noundef 550, ptr noundef %.0491.i, i64 noundef range(i64 -2147483548, 2147483648) %i.ahk, i64 noundef 12)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc233:                                        ; preds = %.noexc232
  br i1 %i.bt, label %bb.cw, label %.noexc234

bb.cw:                                            ; preds = %.noexc233
  %i.aho = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.59, i32 noundef 553, ptr noundef %.0505.i, i64 noundef range(i64 -2147483548, 2147483648) %i.ahk, i64 noundef 4)
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc234:                                        ; preds = %bb.cw, %.noexc233, %bb.ct
  %.1506.i = phi ptr [ %.0505.i, %bb.ct ], [ %.0505.i, %.noexc233 ], [ %i.aho, %bb.cw ] ; 3 uses
  %.2501.i = phi ptr [ %.0499.i, %bb.ct ], [ %.1500.i, %.noexc233 ], [ %.1500.i, %bb.cw ] ; 3 uses
  %.1492.i = phi ptr [ %.0491.i, %bb.ct ], [ %i.ahn, %.noexc233 ], [ %i.ahn, %bb.cw ] ; 4 uses
  %.1483.i = phi ptr [ %.0482.i, %bb.ct ], [ %i.ahl, %.noexc233 ], [ %i.ahl, %bb.cw ] ; 3 uses
  %.1309.i = phi i32 [ %.0308.i, %bb.ct ], [ %i.ahj, %.noexc233 ], [ %i.ahj, %bb.cw ]
  %i.ahp = load float, ptr %i.ta, align 4, !tbaa !24 ; 2 uses
  %i.ahq = fcmp ugt float %i.ahp, %i.qu
  %spec.select.i = select i1 %i.ahq, i32 %.0.i, i32 %.0303.i
  %i.ahr = fcmp ugt float %i.ahp, %i.qv
  %.1288.i = select i1 %i.ahr, i32 %.0287.i, i32 %.0303.i
  %i.ahs = sext i32 %.0303.i to i64               ; 7 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %.1483.i, i64 %i.ahs
  store i32 %i.sd, ptr %i.aht, align 4, !tbaa !10
  %i.ahu = getelementptr inbounds [12 x i8], ptr %.1492.i, i64 %i.ahs ; 7 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ahu, align 4, !tbaa !24
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8 ; 5 uses
  store float 0.000000e+00, ptr %i.ahw, align 4, !tbaa !24
  br i1 %i.bt, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc234
  %i.ahx = getelementptr inbounds [4 x i8], ptr %.1506.i, i64 %i.ahs
  store float 0.000000e+00, ptr %i.ahx, align 4, !tbaa !24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.noexc234
  br i1 %i.bu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ahy = getelementptr inbounds [4 x i8], ptr %.2501.i, i64 %i.ahs
  store float 0.000000e+00, ptr %i.ahy, align 4, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %i.rr, label %.lr.ph553.i, label %._crit_edge554.i

.lr.ph553.i:                                      ; preds = %bb.da
  %i.ahz = load ptr, ptr %i.ru, align 8, !tbaa !141
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %.lr.ph553.i
  %indvars.iv607.i = phi i64 [ 0, %.lr.ph553.i ], [ %indvars.iv.next608.i, %bb.db ] ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv607.i
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !10
  %i.aic = sext i32 %i.aib to i64                 ; 3 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.aic
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !24 ; 2 uses
  %i.aif = getelementptr inbounds [12 x i8], ptr %i.ahz, i64 %i.aic ; 5 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  %i.aih = load <2 x float>, ptr %i.aif, align 4, !tbaa !24
  %i.aii = insertelement <2 x float> poison, float %i.aie, i64 0
  %i.aij = shufflevector <2 x float> %i.aii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aik = fmul <2 x float> %i.aij, %i.aih        ; 2 uses
  store <2 x float> %i.aik, ptr %i.aif, align 4, !tbaa !24
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aif, i64 8 ; 3 uses
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !24
  %i.ain = fmul float %i.aie, %i.aim              ; 2 uses
  store float %i.ain, ptr %i.ail, align 4, !tbaa !24
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.aic
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !24 ; 2 uses
  %i.aiq = fmul float %i.ain, %i.aip              ; 2 uses
  store float %i.aiq, ptr %i.ail, align 4, !tbaa !24
  %i.air = insertelement <2 x float> poison, float %i.aip, i64 0
  %i.ais = shufflevector <2 x float> %i.air, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ait = fmul <2 x float> %i.aik, %i.ais        ; 3 uses
  %i.aiu = extractelement <2 x float> %i.ait, i64 0
  store float %i.aiu, ptr %i.aif, align 4, !tbaa !24
  %i.aiv = extractelement <2 x float> %i.ait, i64 1
  store float %i.aiv, ptr %i.aig, align 4, !tbaa !24
  %i.aiw = load <2 x float>, ptr %i.ahu, align 4, !tbaa !24
  %i.aix = fadd <2 x float> %i.ait, %i.aiw
  %i.aiy = load float, ptr %i.ahw, align 4, !tbaa !24
  %i.aiz = fadd float %i.aiq, %i.aiy
  store <2 x float> %i.aix, ptr %i.ahu, align 4, !tbaa !24
  store float %i.aiz, ptr %i.ahw, align 4, !tbaa !24
  %indvars.iv.next608.i = add nuw nsw i64 %indvars.iv607.i, 1 ; 2 uses
  %exitcond611.not.i = icmp eq i64 %indvars.iv.next608.i, %wide.trip.count602.i
  br i1 %exitcond611.not.i, label %._crit_edge554.i, label %bb.db, !llvm.loop !65

._crit_edge554.i:                                 ; preds = %bb.db, %bb.da
  %i.aja = load float, ptr %i.ta, align 4, !tbaa !24
end_hunk_0
begin_hunk_1_@_Z9save_freePKcS0_iPv

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { cold nounwind }
attributes #22 = { cold }

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
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!12, !12, i64 0}
!17 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !13, i64 8, !6, i64 16}
!21 = !{!20, !12, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!19, !12, i64 0}
!27 = !{!13, !13, i64 0}
!28 = !{!20, !13, i64 8}
!29 = !{!15, !14, i64 0}
!30 = !{!15, !14, i64 8}
!31 = !{!15, !14, i64 16}
!32 = distinct !{!32, !106}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, i1 false, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !25, !116, !117}
!39 = distinct !{!39, !25, !116}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !25, !116, !117}
!52 = distinct !{!52, !106}
!53 = distinct !{!53, !25, !116}
!54 = distinct !{!54, !106}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, i1 false, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = distinct !{!62, !58}
!63 = distinct !{!63, !25, !116, !117}
!64 = distinct !{!64, !25, !116}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25, !116, !117}
!71 = distinct !{!71, !25, !116, !117}
!72 = distinct !{!72, !106}
!73 = distinct !{!73, !25, !116}
!74 = !{!"_ZTS7PbcType", !6, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !15, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !77, i64 0}
!79 = !{!"_ZTS8t_filenm", !7, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !78, i64 32}
!80 = !{!79, !7, i64 0}
!81 = !{!79, !13, i64 24}
!82 = !{!79, !12, i64 8}
!83 = !{!79, !12, i64 16}
!84 = !{!"p1 _ZTS16gmx_output_env_t", !11, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"any p2 pointer", !11, i64 0}
!87 = !{!"p2 omnipotent char", !86, i64 0}
!88 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!89 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !6, i64 0}
!90 = !{!"_ZTS6t_idef", !7, i64 0, !7, i64 4, !11, i64 8, !88, i64 16, !23, i64 24, !88, i64 32, !88, i64 40, !89, i64 48, !7, i64 2328}
!91 = !{!"p1 _ZTS6t_atom", !11, i64 0}
!92 = !{!"any p3 pointer", !86, i64 0}
!93 = !{!"p3 omnipotent char", !92, i64 0}
!94 = !{!"p1 _ZTS9t_resinfo", !11, i64 0}
!95 = !{!"p1 _ZTS9t_pdbinfo", !11, i64 0}
!96 = !{!"bool", !6, i64 0}
!97 = !{!"_ZTS7t_atoms", !7, i64 0, !91, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !7, i64 40, !94, i64 48, !95, i64 56, !96, i64 64, !96, i64 65, !96, i64 66, !96, i64 67, !96, i64 68}
!98 = !{!"p1 int", !11, i64 0}
!99 = !{!"_ZTS7t_block", !7, i64 0, !98, i64 8, !7, i64 16}
!100 = !{!"p1 _ZTS8t_symbuf", !11, i64 0}
!101 = !{!"_ZTS8t_symtab", !7, i64 0, !100, i64 8}
!102 = !{!"_ZTS10t_topology", !87, i64 0, !90, i64 8, !97, i64 2344, !99, i64 2416, !96, i64 2440, !101, i64 2448}
!103 = !{!102, !7, i64 2344}
!104 = !{!91, !91, i64 0}
!105 = !{!98, !98, i64 0}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"short", !6, i64 0}
!108 = !{!"_ZTS12ParticleType", !6, i64 0}
!109 = !{!"_ZTS6t_atom", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !107, i64 16, !107, i64 18, !108, i64 20, !7, i64 24, !7, i64 28, !6, i64 32}
!110 = !{!109, !23, i64 0}
!111 = !{!35}
!112 = !{!37, !36}
!113 = !{!109, !23, i64 4}
!114 = !{!37}
!115 = !{!36}
!116 = !{!"llvm.loop.isvectorized", i32 1}
!117 = !{!"llvm.loop.unroll.runtime.disable"}
!118 = !{!99, !98, i64 8}
!119 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"p1 _ZTS7t_atoms", !11, i64 0}
!122 = !{!"p1 float", !11, i64 0}
!123 = !{!"_ZTS10t_trxframe", !7, i64 0, !96, i64 4, !7, i64 8, !96, i64 12, !13, i64 16, !96, i64 24, !23, i64 28, !96, i64 32, !96, i64 33, !23, i64 36, !7, i64 40, !96, i64 44, !121, i64 48, !96, i64 56, !23, i64 60, !96, i64 64, !122, i64 72, !96, i64 80, !122, i64 88, !96, i64 96, !122, i64 104, !96, i64 112, !6, i64 116, !96, i64 152, !74, i64 156, !96, i64 160, !98, i64 168}
!124 = !{!123, !96, i64 80}
!125 = !{i8 0, i8 2}
!126 = !{}
!127 = !{!96, !96, i64 0}
!128 = !{!"p1 _ZTS11t_trxstatus", !11, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!123, !7, i64 8}
!131 = !{!123, !122, i64 72}
!132 = !{!49}
!133 = !{!50}
!134 = !{!102, !91, i64 2352}
!135 = !{!59}
!136 = !{!60}
!137 = !{!61}
!138 = !{!62, !59, !60}
!139 = !{!62}
!140 = !{!59, !60}
!141 = !{!123, !122, i64 88}
!142 = !{!"branch_weights", i32 4, i32 12}
!143 = distinct !{!143, !25, !144}
!144 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
