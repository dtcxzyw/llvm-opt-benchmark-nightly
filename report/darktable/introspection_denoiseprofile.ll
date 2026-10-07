Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_denoiseprofile?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@process:bb.a
  %i.acx = select <2 x i1> %i.acw, <2 x float> %i.acv, <2 x float> zeroinitializer
  %i.acy = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.acx, <2 x float> %i.abn)
  %i.acz = insertelement <4 x float> poison, float %i.acs, i64 2
  %i.ada = shufflevector <2 x float> %i.acq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adb = shufflevector <4 x float> %i.acz, <4 x float> %i.ada, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.adc = shufflevector <2 x float> %i.acy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.add = shufflevector <4 x float> %i.adc, <4 x float> %i.adb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ade = fmul reassoc nsz arcp contract afn <4 x float> %i.add, splat (float 2.000000e+00)
  %i.adf = fmul reassoc nsz arcp contract afn <4 x float> %i.ade, %i.acg
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.04247.i.i
  store <4 x float> %i.adf, ptr %i.adg, align 16, !tbaa !34, !alias.scope !328, !nontemporal !313
  %i.adh = or disjoint i64 %.04247.i.i, 4         ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adh ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load <2 x float>, ptr %i.adj, align 4, !tbaa !12
  %i.adl = fmul reassoc nsz arcp contract afn <2 x float> %i.adk, %i.ach
  %i.adm = fadd reassoc nsz arcp contract afn <2 x float> %i.adl, %i.abz ; 2 uses
  %i.adn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adm, zeroinitializer
  %i.ado = select <2 x i1> %i.adn, <2 x float> %i.adm, <2 x float> zeroinitializer ; 2 uses
  %i.adp = extractelement <2 x float> %i.ado, i64 0
  %i.adq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adp, float %i.abp)
  %i.adr = load <2 x float>, ptr %i.adi, align 4, !tbaa !12
  %i.ads = fmul reassoc nsz arcp contract afn <2 x float> %i.adr, %i.aci
  %i.adt = fadd reassoc nsz arcp contract afn <2 x float> %i.ads, %i.abz ; 2 uses
  %i.adu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adt, zeroinitializer
  %i.adv = select <2 x i1> %i.adu, <2 x float> %i.adt, <2 x float> zeroinitializer
  %i.adw = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.adv, <2 x float> %i.abn)
  %i.adx = insertelement <4 x float> poison, float %i.adq, i64 2
  %i.ady = shufflevector <2 x float> %i.ado, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adz = shufflevector <4 x float> %i.adx, <4 x float> %i.ady, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.aea = shufflevector <2 x float> %i.adw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> %i.adz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aec = fmul reassoc nsz arcp contract afn <4 x float> %i.aeb, splat (float 2.000000e+00)
  %i.aed = fmul reassoc nsz arcp contract afn <4 x float> %i.aec, %i.acj
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.adh
  store <4 x float> %i.aed, ptr %i.aee, align 16, !tbaa !34, !alias.scope !328, !nontemporal !313
  %i.aef = add nuw i64 %.04247.i.i, 8             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %precondition.exit.sink.split.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %bb.ai
  %i.aeg = fmul reassoc nsz arcp contract afn float %i.xt, %i.th
  %i.aeh = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.tc
  %i.aei = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aeg) ; 2 uses
  %i.aej = fmul reassoc nsz arcp contract afn float %i.aei, %i.aeh
  %i.aek = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.st
  %i.ael = insertelement <2 x float> poison, float %i.aei, i64 0
  %i.aem = shufflevector <2 x float> %i.ael, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = fmul reassoc nsz arcp contract afn <2 x float> %i.aem, %i.aek
  %i.aeo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xh
  %i.aep = shufflevector <4 x float> %i.uc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aeq = insertelement <2 x float> %i.aep, float %.sroa.1362.0.i, i64 0
  %i.aer = insertelement <2 x float> poison, float %i.aeo, i64 0 ; 2 uses
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aet = shufflevector <4 x float> %i.uc, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.aeu = insertelement <2 x float> %i.aet, float %.sroa.860.0.i, i64 0
  %i.aev = fmul reassoc nsz arcp contract afn <2 x float> %i.aeu, %i.aes
  %i.aew = shufflevector <4 x float> %i.uc, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aex = insertelement <2 x float> %i.aew, float %.sroa.058.0.i, i64 0
  %i.aey = fmul reassoc nsz arcp contract afn <2 x float> %i.aex, %i.aes
  %i.aez = insertelement <2 x float> poison, float %i.ya, i64 0
  %i.afa = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aej
  %i.afc = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aen
  %i.afd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xh
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i205.i
  %.02832.i.i = phi i64 [ 0, %.lr.ph.i205.i ], [ %i.agn, %bb.aj ] ; 3 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832.i.i ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 8
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !12
  %i.afh = fadd reassoc nsz arcp contract afn float %i.afg, %i.ya ; 2 uses
  %i.afi = fcmp reassoc nsz arcp contract afn ogt float %i.afh, 0.000000e+00
  %spec.select.2.i208.i = select reassoc nsz arcp contract afn i1 %i.afi, float %i.afh, float 0.000000e+00
  %i.afj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %spec.select.2.i208.i, float %i.abp)
  %i.afk = fmul reassoc nsz arcp contract afn float %i.afj, 2.000000e+00
  %i.afl = fmul reassoc nsz arcp contract afn float %i.afk, %i.afb ; 3 uses
  %i.afm = load <2 x float>, ptr %i.afe, align 4, !tbaa !12
  %i.afn = fadd reassoc nsz arcp contract afn <2 x float> %i.afm, %i.afa ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afn, zeroinitializer
  %i.afp = select <2 x i1> %i.afo, <2 x float> %i.afn, <2 x float> zeroinitializer
  %i.afq = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.afp, <2 x float> %i.abn)
  %i.afr = fmul reassoc nsz arcp contract afn <2 x float> %i.afq, splat (float 2.000000e+00)
  %i.afs = fmul reassoc nsz arcp contract afn <2 x float> %i.afr, %i.afc ; 4 uses
  %i.aft = shufflevector <2 x float> %i.afs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afu = fmul reassoc nsz arcp contract afn <2 x float> %i.aft, %i.aev
  %i.afv = fmul reassoc nsz arcp contract afn <2 x float> %i.afs, %i.aey
  %i.afw = fadd reassoc nsz arcp contract afn <2 x float> %i.afv, %i.afu
  %i.afx = insertelement <2 x float> poison, float %i.afl, i64 0
  %i.afy = fmul reassoc nsz arcp contract afn <2 x float> %i.afx, %i.aer
  %i.afz = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aga = fmul reassoc nsz arcp contract afn <2 x float> %i.afz, %i.aeq
  %i.agb = fadd reassoc nsz arcp contract afn <2 x float> %i.afw, %i.aga
  %i.agc = shufflevector <2 x float> %i.agb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agd = extractelement <2 x float> %i.afs, i64 1 ; 2 uses
  %i.age = fmul reassoc nsz arcp contract afn float %i.uf, %i.agd
  %i.agf = extractelement <2 x float> %i.afs, i64 0 ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %i.afl, %i.agf
  %i.agg = fmul reassoc nsz arcp contract afn float %i.ud, %reass.add
  %i.agh = fadd reassoc nsz arcp contract afn float %i.agg, %i.age
  %i.agi = fmul reassoc nsz arcp contract afn float %i.agh, %i.afd
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %i.agc, float %i.agi, i64 2
  %i.agj = fadd reassoc nsz arcp contract afn float %i.agd, %i.agf
  %i.agk = fadd reassoc nsz arcp contract afn float %i.agj, %i.afl
  %i.agl = fmul reassoc nsz arcp contract afn float %i.agk, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.agl, i64 3
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.02832.i.i
  store <4 x float> %.sroa.0.12.vec.insert.i.i, ptr %i.agm, align 16, !tbaa !34, !alias.scope !329, !nontemporal !313
  %i.agn = add nuw i64 %.02832.i.i, 4             ; 2 uses
  %i.ago = icmp ult i64 %i.agn, %i.abr
  br i1 %i.ago, label %bb.aj, label %precondition.exit.sink.split.i

precondition.exit.sink.split.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.agp = and i64 %i.aca, 4
  %lcmp.mod.not.not = icmp eq i64 %i.agp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %precondition.exit.sink.split.i

.lr.ph.i.i.epil.preheader:                        ; preds = %precondition.exit.sink.split.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.04247.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.aef, %precondition.exit.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i64 %i.acc to i1
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.epil.init ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load <2 x float>, ptr %i.agr, align 4, !tbaa !12
  %i.agt = fdiv reassoc nsz arcp contract afn <2 x float> %i.ags, %i.xp
  %i.agu = fadd reassoc nsz arcp contract afn <2 x float> %i.agt, %i.abz ; 2 uses
  %i.agv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.agu, zeroinitializer
  %i.agw = select <2 x i1> %i.agv, <2 x float> %i.agu, <2 x float> zeroinitializer ; 2 uses
  %i.agx = extractelement <2 x float> %i.agw, i64 0
  %i.agy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.agx, float %i.abp)
  %i.agz = load <2 x float>, ptr %i.agq, align 4, !tbaa !12
  %i.aha = fdiv reassoc nsz arcp contract afn <2 x float> %i.agz, %i.xm
  %i.ahb = fadd reassoc nsz arcp contract afn <2 x float> %i.aha, %i.abz ; 2 uses
  %i.ahc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ahb, zeroinitializer
  %i.ahd = select <2 x i1> %i.ahc, <2 x float> %i.ahb, <2 x float> zeroinitializer
  %i.ahe = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ahd, <2 x float> %i.abn)
  %i.ahf = insertelement <4 x float> poison, float %i.agy, i64 2
  %i.ahg = shufflevector <2 x float> %i.agw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ahh = shufflevector <4 x float> %i.ahf, <4 x float> %i.ahg, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ahi = shufflevector <2 x float> %i.ahe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahj = shufflevector <4 x float> %i.ahi, <4 x float> %i.ahh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ahk = fmul reassoc nsz arcp contract afn <4 x float> %i.ahj, splat (float 2.000000e+00)
  %i.ahl = fdiv reassoc nsz arcp contract afn <4 x float> %i.ahk, %i.abx
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.04247.i.i.epil.init
  store <4 x float> %i.ahl, ptr %i.ahm, align 16, !tbaa !34, !alias.scope !328, !nontemporal !313
  br label %precondition.exit.sink.split.i

precondition.exit.sink.split.i:                   ; preds = %bb.aj, %.lr.ph.i.i.epil.preheader, %precondition.exit.sink.split.i.loopexit.unr-lcssa, %bb.ai, %bb.ah
  call void @llvm.x86.sse.sfence()
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !304
  br label %precondition.exit.i

precondition.exit.i:                              ; preds = %.preheader.i202.i, %middle.block, %precondition.exit.sink.split.i, %bb.af
  %i.ahn = phi ptr [ %i.yj, %bb.af ], [ %.pre, %precondition.exit.sink.split.i ], [ %i.yj, %middle.block ], [ %i.yj, %.preheader.i202.i ] ; 3 uses
  %i.aho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !330, !noalias !331
  %.not.i209.i = icmp eq ptr %i.aho, null
  br i1 %.not.i209.i, label %debug_dump_PFM.exit.i, label %bb.ak

bb.ak:                                            ; preds = %precondition.exit.i
  %i.ahp = load ptr, ptr %i.ra, align 8, !tbaa !293, !noalias !331
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 644
  %.val.i.i = load i32, ptr %i.ahq, align 4, !tbaa !301, !noalias !331
  %i.ahr = and i32 %.val.i.i, 2
  %.not5.i.i = icmp eq i32 %i.ahr, 0
  br i1 %.not5.i.i, label %debug_dump_PFM.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !331
  %i.ahs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.104, i32 noundef 0) #18, !noalias !331 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.e, ptr noundef %i.ahn, i32 noundef %i.qm, i32 noundef %i.qo, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !331
  %.pre.i26 = load ptr, ptr %i.g, align 8, !tbaa !304
  br label %debug_dump_PFM.exit.i

debug_dump_PFM.exit.i:                            ; preds = %bb.al, %bb.ak, %precondition.exit.i
  %i.aht = phi ptr [ %i.ahn, %precondition.exit.i ], [ %i.ahn, %bb.ak ], [ %.pre.i26, %bb.al ] ; 2 uses
  %i.ahu = load ptr, ptr %i.h, align 8, !tbaa !304
  call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef %i.qp, i64 noundef %i.qq, i64 noundef 4) #18
  br i1 %i.pg, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %debug_dump_PFM.exit.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.w, i64 228
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.w, <4 x i64> <i64 144, i64 172, i64 200, i64 116>
  %i.ahy = uitofp reassoc nsz arcp contract afn i64 %i.qr to float
  %i.ahz = fadd reassoc nsz arcp contract afn float %i.ahy, -1.000000e+00 ; 2 uses
  %i.aia = zext nneg i32 %.0178.lcssa.i to i64    ; 2 uses
  %i.aib = insertelement <2 x float> poison, float %i.ahz, i64 0
  %i.aic = shufflevector <2 x float> %i.aib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aid = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aic
  %i.aie = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ahz
  br label %bb.am

.preheader.i:                                     ; preds = %variance_stabilizing_xform.exit.i, %debug_dump_PFM.exit.i
  %.0181.lcssa.i = phi ptr [ %i.aht, %debug_dump_PFM.exit.i ], [ %.018041.i, %variance_stabilizing_xform.exit.i ] ; 13 uses
  %i.aif = shl i64 %i.qr, 2                       ; 9 uses
  %.not46.i = icmp eq i64 %i.aif, 0
  br i1 %.not46.i, label %._crit_edge.i, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.preheader.i
  %i.aig = mul nsw i64 %i.qq, %i.qp
  %i.aih = shl i64 %i.aig, 4                      ; 2 uses
  %i.aii = getelementptr i8, ptr %3, i64 %i.aih
  %i.aij = getelementptr i8, ptr %.0181.lcssa.i, i64 %i.aih
  %bound0153 = icmp ult ptr %3, %i.aij
  %bound1154 = icmp ult ptr %.0181.lcssa.i, %i.aii
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck152
  %min.iters.check156 = icmp ult i64 %i.aif, 32
  br i1 %min.iters.check156, label %vec.epilog.vector.body.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %vector.main.loop.iter.check
  %n.vec158 = and i64 %i.aif, -32                 ; 4 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.ph157, %vector.body159
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next168, %vector.body159 ] ; 3 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %index160 ; 4 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 32
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aik, i64 64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aik, i64 96
  %wide.load = load <8 x float>, ptr %i.aik, align 4, !tbaa !12, !alias.scope !332
  %wide.load161 = load <8 x float>, ptr %i.ail, align 4, !tbaa !12, !alias.scope !332
  %wide.load162 = load <8 x float>, ptr %i.aim, align 4, !tbaa !12, !alias.scope !332
  %wide.load163 = load <8 x float>, ptr %i.ain, align 4, !tbaa !12, !alias.scope !332
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index160 ; 5 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 32 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aio, i64 64 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 96 ; 2 uses
  %wide.load164 = load <8 x float>, ptr %i.aio, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %wide.load165 = load <8 x float>, ptr %i.aip, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %wide.load166 = load <8 x float>, ptr %i.aiq, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %wide.load167 = load <8 x float>, ptr %i.air, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %i.ais = fadd reassoc nsz arcp contract afn <8 x float> %wide.load164, %wide.load
  %i.ait = fadd reassoc nsz arcp contract afn <8 x float> %wide.load165, %wide.load161
  %i.aiu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load166, %wide.load162
  %i.aiv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load167, %wide.load163
  store <8 x float> %i.ais, ptr %i.aio, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  store <8 x float> %i.ait, ptr %i.aip, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  store <8 x float> %i.aiu, ptr %i.aiq, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  store <8 x float> %i.aiv, ptr %i.air, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %index.next168 = add nuw i64 %index160, 32      ; 2 uses
  %i.aiw = icmp eq i64 %index.next168, %n.vec158
  br i1 %i.aiw, label %middle.block169, label %vector.body159, !llvm.loop !278

middle.block169:                                  ; preds = %vector.body159
  %cmp.n170 = icmp eq i64 %i.aif, %n.vec158
  br i1 %cmp.n170, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block169
  %i.aix = and i64 %i.qr, 7
  %min.epilog.iters.check = icmp eq i64 %i.aix, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.i.preheader, label %vec.epilog.vector.body.preheader, !prof !334

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index172.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec158, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph44.i.preheader:                             ; preds = %vector.memcheck152, %vec.epilog.iter.check
  %.043.i.ph = phi i64 [ %n.vec158, %vec.epilog.iter.check ], [ 0, %vector.memcheck152 ] ; 3 uses
  %xtraiter284 = and i64 %i.aif, 4                ; 2 uses
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i.prol
  %.043.i.prol = phi i64 [ %i.ajd, %.lr.ph44.i.prol ], [ %.043.i.ph, %.lr.ph44.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.i.preheader ]
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %.043.i.prol
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !12
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.043.i.prol ; 2 uses
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !12
  %i.ajc = fadd reassoc nsz arcp contract afn float %i.ajb, %i.aiz
  store float %i.ajc, ptr %i.aja, align 4, !tbaa !12
  %i.ajd = add nuw i64 %.043.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter284
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !279

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %.043.i.unr = phi i64 [ %.043.i.ph, %.lr.ph44.i.preheader ], [ %i.ajd, %.lr.ph44.i.prol ]
  %i.aje = sub i64 %.043.i.ph, %i.aif
  %i.ajf = icmp ugt i64 %i.aje, -8
  br i1 %i.ajf, label %._crit_edge.i, label %.lr.ph44.i

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index172 = phi i64 [ %index.next175, %vec.epilog.vector.body ], [ %index172.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %index172
  %wide.load173 = load <4 x float>, ptr %i.ajg, align 4, !tbaa !12, !alias.scope !332
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index172 ; 2 uses
  %wide.load174 = load <4 x float>, ptr %i.ajh, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %i.aji = fadd reassoc nsz arcp contract afn <4 x float> %wide.load174, %wide.load173
  store <4 x float> %i.aji, ptr %i.ajh, align 4, !tbaa !12, !alias.scope !333, !noalias !332
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.ajj = icmp eq i64 %index.next175, %i.aif
  br i1 %i.ajj, label %._crit_edge.i, label %vec.epilog.vector.body, !llvm.loop !280

bb.am:                                            ; preds = %variance_stabilizing_xform.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %variance_stabilizing_xform.exit.i ] ; 3 uses
  %.018041.i = phi ptr [ %i.ahu, %.lr.ph.i ], [ %.018140.i, %variance_stabilizing_xform.exit.i ] ; 4 uses
  %.018140.i = phi ptr [ %i.aht, %.lr.ph.i ], [ %.018041.i, %variance_stabilizing_xform.exit.i ] ; 2 uses
  %i.ajk = trunc nuw nsw i64 %indvars.iv.i to i32 ; 5 uses
  %i.ajl = uitofp nsz nneg i32 %i.ajk to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.ajm = load ptr, ptr %i.f, align 8, !tbaa !304
  %i.ajn = fmul reassoc nnan nsz arcp contract afn float %i.ajl, -2.000000e+00
  %i.ajo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3F05DD98, float %i.ajn)
  call void @eaw_dn_decompose(ptr noundef %.018041.i, ptr noundef %.018140.i, ptr noundef %i.ajm, ptr noundef nonnull %i.m, i32 noundef %i.ajk, float noundef %i.ajo, i32 noundef %i.qm, i32 noundef %i.qo) #18
  %i.ajp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !330, !noalias !335
  %.not.i210.i = icmp eq ptr %i.ajp, null
  br i1 %.not.i210.i, label %debug_dump_PFM.exit217.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ajq = load ptr, ptr %i.ra, align 8, !tbaa !293, !noalias !336
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 644
  %.val.i211.i = load i32, ptr %i.ajr, align 4, !tbaa !301, !noalias !336
  %i.ajs = and i32 %.val.i211.i, 2
  %.not5.i212.i = icmp eq i32 %i.ajs, 0
  br i1 %.not5.i212.i, label %debug_dump_PFM.exit217.i, label %debug_dump_PFM.exit213.i

debug_dump_PFM.exit213.i:                         ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !336
  %i.ajt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.105, i32 noundef %i.ajk) #18, !noalias !336 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.d, ptr noundef %.018041.i, i32 noundef %i.qm, i32 noundef %i.qo, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !336
  %.pr.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !330, !noalias !337
  %i.aju = icmp eq ptr %.pr.pre.i, null
  br i1 %i.aju, label %debug_dump_PFM.exit217.i, label %debug_dump_PFM.exit213.thread.i

debug_dump_PFM.exit213.thread.i:                  ; preds = %debug_dump_PFM.exit213.i
  %.pre110 = load ptr, ptr %i.ra, align 8, !tbaa !293, !noalias !337
  %.phi.trans.insert = getelementptr i8, ptr %.pre110, i64 644
  %.val.i215.i.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !301, !noalias !337
  %.pre112 = and i32 %.val.i215.i.pre, 2
  %i.ajv = icmp eq i32 %.pre112, 0
  br i1 %i.ajv, label %debug_dump_PFM.exit217.i, label %bb.ao

bb.ao:                                            ; preds = %debug_dump_PFM.exit213.thread.i
  %i.ajw = load ptr, ptr %i.f, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !337
  %i.ajx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 256, ptr noundef nonnull @.str.106, i32 noundef %i.ajk) #18, !noalias !337 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.c, ptr noundef %i.ajw, i32 noundef %i.qm, i32 noundef %i.qo, i32 noundef 16, ptr noundef nonnull @.str.107) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !337
  br label %debug_dump_PFM.exit217.i

debug_dump_PFM.exit217.i:                         ; preds = %bb.an, %bb.ao, %debug_dump_PFM.exit213.thread.i, %debug_dump_PFM.exit213.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_wavelets.boost, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  %i.ajy = load float, ptr %i.m, align 16, !tbaa !12
  %i.ajz = load <2 x float>, ptr %i.ahv, align 4, !tbaa !12
  %i.aka = xor i64 %indvars.iv.i, -1
  %i.akb = add nsw i64 %i.aka, %i.aia             ; 2 uses
  %i.akc = load i32, ptr %i.xa, align 8, !tbaa !137
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %debug_dump_PFM.exit217.i
  %i.ake = getelementptr inbounds [4 x i8], <4 x ptr> %i.ahx, i64 %i.akb
  %i.akf = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ake, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !12 ; 3 uses
  %i.akg = fmul reassoc nsz arcp contract afn <4 x float> %i.akf, %i.akf
  %i.akh = shufflevector <4 x float> %i.akf, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.aki = insertelement <2 x float> %i.akh, float 1.000000e+00, i64 1 ; 2 uses
  %i.akj = fmul reassoc nsz arcp contract afn <2 x float> %i.aki, %i.aki
  %i.akk = shufflevector <2 x float> %i.akj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.akl = fmul reassoc nsz arcp contract afn <4 x float> %i.akk, <float 1.280000e+02, float 1.280000e+02, float 1.280000e+02, float 0.000000e+00>
  %i.akm = fmul reassoc nsz arcp contract afn <4 x float> %i.akg, %i.akl
  br label %variance_stabilizing_xform.exit.i

bb.aq:                                            ; preds = %debug_dump_PFM.exit217.i
  %i.akn = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %i.akb
  %i.ako = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.akn, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <8 x float> poison), !tbaa !12
  %i.akp = shufflevector <8 x float> %i.ako, <8 x float> <float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison>, <4 x i32> <i32 0, i32 7, i32 7, i32 11> ; 2 uses
  %i.akq = fmul reassoc nsz arcp contract afn <4 x float> %i.akp, %i.akp
  %i.akr = fmul reassoc nsz arcp contract afn <4 x float> %i.akq, <float 3.200000e+01, float 3.200000e+01, float 3.200000e+01, float 0.000000e+00>
  br label %variance_stabilizing_xform.exit.i

variance_stabilizing_xform.exit.i:                ; preds = %bb.aq, %bb.ap
  %i.aks = phi <4 x float> [ %i.akm, %bb.ap ], [ %i.akr, %bb.aq ]
  %i.akt = fmul reassoc nsz arcp contract afn <2 x float> %i.ajz, %i.aid
  %i.aku = call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float f0x3F05DD98, i32 %i.ajk) ; 2 uses
  %i.akv = fmul reassoc nsz arcp contract afn float %i.aku, %i.aku ; 3 uses
  %i.akw = insertelement <2 x float> poison, float %i.akv, i64 0
  %i.akx = shufflevector <2 x float> %i.akw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aky = fsub reassoc nsz arcp contract afn <2 x float> %i.akt, %i.akx ; 2 uses
  %i.akz = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aky, splat (float f0x358637BD)
  %i.ala = select <2 x i1> %i.akz, <2 x float> splat (float f0x358637BD), <2 x float> %i.aky
  %i.alb = fmul reassoc nsz arcp contract afn float %i.ajy, %i.aie
  %i.alc = fsub reassoc nsz arcp contract afn float %i.alb, %i.akv ; 2 uses
  %i.ald = fcmp reassoc nsz arcp contract afn olt float %i.alc, f0x358637BD
  %i.ale = select reassoc nsz arcp contract afn i1 %i.ald, float f0x358637BD, float %i.alc
  %i.alf = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ale)
  %i.alg = insertelement <4 x float> poison, float %i.akv, i64 0
  %i.alh = shufflevector <4 x float> %i.alg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ali = fmul reassoc nsz arcp contract afn <4 x float> %i.aks, %i.alh
  %i.alj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.alf, i64 0
  %i.alk = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ala)
  %i.all = shufflevector <2 x float> %i.alk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alm = shufflevector <4 x float> %i.alj, <4 x float> %i.all, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aln = fdiv reassoc nsz arcp contract afn <4 x float> %i.ali, %i.alm
  store <4 x float> %i.aln, ptr %i.o, align 16, !tbaa !12
  %i.alo = load ptr, ptr %i.f, align 8, !tbaa !304
  call void @eaw_synthesize(ptr noundef %3, ptr noundef %3, ptr noundef %i.alo, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, i32 noundef %i.qm, i32 noundef %i.qo) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aia
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.am

._crit_edge.i:                                    ; preds = %vec.epilog.vector.body, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block169, %.preheader.i
  %i.alp = load i32, ptr %i.yh, align 4, !tbaa !134
  %.not197.i = icmp eq i32 %i.alp, 0
  br i1 %.not197.i, label %bb.ar, label %bb.as

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %.043.i = phi i64 [ %i.anl, %.lr.ph44.i ], [ %.043.i.unr, %.lr.ph44.i.prol.loopexit ] ; 10 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %.043.i
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !12
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.043.i ; 2 uses
  %i.alt = load float, ptr %i.als, align 4, !tbaa !12
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alt, %i.alr
  store float %i.alu, ptr %i.als, align 4, !tbaa !12
  %i.alv = add nuw i64 %.043.i, 1                 ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.alv
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !12
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.alv ; 2 uses
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !12
  %i.ama = fadd reassoc nsz arcp contract afn float %i.alz, %i.alx
  store float %i.ama, ptr %i.aly, align 4, !tbaa !12
  %i.amb = add nuw i64 %.043.i, 2                 ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amb
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !12
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amb ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !12
  %i.amg = fadd reassoc nsz arcp contract afn float %i.amf, %i.amd
  store float %i.amg, ptr %i.ame, align 4, !tbaa !12
  %i.amh = add nuw i64 %.043.i, 3                 ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amh
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !12
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amh ; 2 uses
  %i.aml = load float, ptr %i.amk, align 4, !tbaa !12
  %i.amm = fadd reassoc nsz arcp contract afn float %i.aml, %i.amj
  store float %i.amm, ptr %i.amk, align 4, !tbaa !12
  %i.amn = add nuw i64 %.043.i, 4                 ; 2 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amn
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !12
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amn ; 2 uses
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !12
  %i.ams = fadd reassoc nsz arcp contract afn float %i.amr, %i.amp
  store float %i.ams, ptr %i.amq, align 4, !tbaa !12
  %i.amt = add nuw i64 %.043.i, 5                 ; 2 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amt
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !12
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amt ; 2 uses
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !12
  %i.amy = fadd reassoc nsz arcp contract afn float %i.amx, %i.amv
  store float %i.amy, ptr %i.amw, align 4, !tbaa !12
  %i.amz = add nuw i64 %.043.i, 6                 ; 2 uses
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.amz
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !12
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amz ; 2 uses
  %i.and = load float, ptr %i.anc, align 4, !tbaa !12
  %i.ane = fadd reassoc nsz arcp contract afn float %i.and, %i.anb
  store float %i.ane, ptr %i.anc, align 4, !tbaa !12
  %i.anf = add nuw i64 %.043.i, 7                 ; 2 uses
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %.0181.lcssa.i, i64 %i.anf
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !12
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.anf ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !12
  %i.ank = fadd reassoc nsz arcp contract afn float %i.anj, %i.anh
  store float %i.ank, ptr %i.ani, align 4, !tbaa !12
  %i.anl = add nuw i64 %.043.i, 8                 ; 2 uses
  %exitcond48.not.i.7 = icmp eq i64 %i.anl, %i.aif
  br i1 %exitcond48.not.i.7, label %._crit_edge.i, label %.lr.ph44.i, !llvm.loop !285

bb.ar:                                            ; preds = %._crit_edge.i
  call fastcc void @backtransform(ptr noundef %3, i32 noundef %i.qm, i32 noundef %i.qo, ptr noundef %i.k, ptr noundef %i.l)
  br label %backtransform_Y0U0V0.exit.i

bb.as:                                            ; preds = %._crit_edge.i
  %i.anm = load i32, ptr %i.xa, align 8, !tbaa !137
  %i.ann = icmp eq i32 %i.anm, 0
  %i.ano = load float, ptr %i.xs, align 4, !tbaa !12
  %i.anp = fmul reassoc nsz arcp contract afn float %i.ano, %i.th ; 2 uses
  %i.anq = load float, ptr %i.xz, align 8, !tbaa !12 ; 5 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ans = load float, ptr %i.anr, align 8, !tbaa !323
  %i.ant = fpext reassoc nsz arcp contract afn float %i.ans to double
  %i.anu = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ol)
  %i.anv = fpext reassoc nsz arcp contract afn float %i.anu to double
  %i.anw = fmul reassoc nsz arcp contract afn double %i.anv, 5.000000e-01
  %i.anx = fsub reassoc nsz arcp contract afn double %i.ant, %i.anw
  %i.any = fptrunc reassoc nsz arcp contract afn double %i.anx to float ; 3 uses
  br i1 %i.ann, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @backtransform_v2(ptr noundef %3, i32 noundef %i.qm, i32 noundef %i.qo, float noundef %i.anp, ptr noundef %i.j, float noundef %i.anq, float noundef %i.any, ptr noundef %i.i)
  br label %backtransform_Y0U0V0.exit.i

bb.au:                                            ; preds = %bb.as
  %i.anz = insertelement <2 x float> poison, float %i.any, i64 0
  %i.aoa = shufflevector <2 x float> %i.anz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aob = fmul reassoc nsz arcp contract afn <2 x float> %i.xm, %i.aoa ; 3 uses
  %i.aoc = fmul reassoc nsz arcp contract afn float %i.xq, %i.any ; 2 uses
  %i.aod = fmul reassoc nsz arcp contract afn <2 x float> %i.st, splat (float 5.000000e-01)
  %i.aoe = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aod
  %i.aof = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aoe ; 5 uses
  %i.aog = fmul reassoc nsz arcp contract afn float %i.tc, 5.000000e-01
  %i.aoh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aog
  %i.aoi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aoh ; 6 uses
  %i.aoj = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.anp)
  %i.aok = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.st
  %i.aol = fmul reassoc nsz arcp contract afn float %i.aoj, 2.500000e-01 ; 2 uses
  %i.aom = insertelement <2 x float> poison, float %i.aol, i64 0
  %i.aon = shufflevector <2 x float> %i.aom, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoo = fmul reassoc nsz arcp contract afn <2 x float> %i.aon, %i.aok ; 3 uses
  %i.aop = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.tc
  %i.aoq = fmul reassoc nsz arcp contract afn float %i.aol, %i.aop ; 2 uses
  %i.aor = shl nsw i64 %i.qp, 2
  %i.aos = mul i64 %i.aor, %i.qq                  ; 2 uses
  %.not.i218.i = icmp eq i64 %i.aos, 0
  br i1 %.not.i218.i, label %backtransform_Y0U0V0.exit.i, label %.preheader49.preheader.i.preheader.i

.preheader49.preheader.i.preheader.i:             ; preds = %bb.au
  %i.aot = fneg reassoc nsz arcp contract afn float %i.anq ; 2 uses
  %factor.op.fmul79 = fmul reassoc nsz arcp contract afn float %.sroa.13.0.i, %i.xh ; 2 uses
  %factor.op.fmul81 = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, %i.xh ; 2 uses
  %factor.op.fmul83 = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, %i.xh ; 2 uses
  %factor.op.fmul85 = fmul reassoc nsz arcp contract afn float %.sroa.32.0.i, %i.xh ; 2 uses
  %factor.op.fmul87 = fmul reassoc nsz arcp contract afn float %.sroa.22.0.i, %i.xh ; 2 uses
  %factor.op.fmul89 = fmul reassoc nsz arcp contract afn float %.sroa.27.0.i, %i.xh ; 2 uses
  %factor.op.fmul91 = fmul reassoc nsz arcp contract afn float %.sroa.51.0.i, %i.xh ; 2 uses
  %factor.op.fmul93 = fmul reassoc nsz arcp contract afn float %.sroa.41.0.i, %i.xh ; 2 uses
  %factor.op.fmul95 = fmul reassoc nsz arcp contract afn float %.sroa.46.0.i, %i.xh ; 2 uses
  %i.aou = add i64 %i.aif, -4                     ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.aou, 32
  br i1 %min.iters.check179, label %.preheader49.preheader.i.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.preheader49.preheader.i.preheader.i
  %i.aov = lshr exact i64 %i.aou, 2
  %i.aow = add nuw nsw i64 %i.aov, 1              ; 2 uses
  %i.aox = and i64 %i.aow, 7                      ; 2 uses
  %i.aoy = icmp eq i64 %i.aox, 0
  %i.aoz = select i1 %i.aoy, i64 8, i64 %i.aox
  %n.vec181 = sub nsw i64 %i.aow, %i.aoz          ; 2 uses
  %i.apa = shl i64 %n.vec181, 2
  %broadcast.splatinsert182 = insertelement <8 x float> poison, float %i.aot, i64 0
  %broadcast.splat183 = shufflevector <8 x float> %broadcast.splatinsert182, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %factor.op.fmul79, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert186 = insertelement <8 x float> poison, float %factor.op.fmul81, i64 0
  %broadcast.splat187 = shufflevector <8 x float> %broadcast.splatinsert186, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <8 x float> poison, float %factor.op.fmul83, i64 0
  %broadcast.splat189 = shufflevector <8 x float> %broadcast.splatinsert188, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert190 = insertelement <8 x float> poison, float %factor.op.fmul85, i64 0
  %broadcast.splat191 = shufflevector <8 x float> %broadcast.splatinsert190, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <8 x float> poison, float %factor.op.fmul87, i64 0
  %broadcast.splat193 = shufflevector <8 x float> %broadcast.splatinsert192, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> poison, float %factor.op.fmul89, i64 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <8 x float> poison, float %factor.op.fmul91, i64 0
  %broadcast.splat197 = shufflevector <8 x float> %broadcast.splatinsert196, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <8 x float> poison, float %factor.op.fmul93, i64 0
  %broadcast.splat199 = shufflevector <8 x float> %broadcast.splatinsert198, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <8 x float> poison, float %factor.op.fmul95, i64 0
  %broadcast.splat201 = shufflevector <8 x float> %broadcast.splatinsert200, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat203 = shufflevector <2 x float> %i.aob, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat205 = shufflevector <2 x float> %i.aoo, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat207 = shufflevector <2 x float> %i.aob, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat209 = shufflevector <2 x float> %i.aoo, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert210 = insertelement <8 x float> poison, float %i.aoc, i64 0
  %broadcast.splat211 = shufflevector <8 x float> %broadcast.splatinsert210, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <8 x float> poison, float %i.aoq, i64 0
  %broadcast.splat213 = shufflevector <8 x float> %broadcast.splatinsert212, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <8 x float> poison, float %i.anq, i64 0 ; 2 uses
  %broadcast.splat215 = shufflevector <8 x float> %broadcast.splatinsert214, <8 x float> poison, <8 x i32> zeroinitializer
  %i.apb = extractelement <2 x float> %i.aof, i64 0 ; 4 uses
  %i.apc = extractelement <2 x float> %i.aof, i64 1 ; 4 uses
  %i.apd = insertelement <4 x float> poison, float %i.aoi, i64 0
  %i.ape = shufflevector <4 x float> %i.apd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apf = shufflevector <2 x float> %i.aof, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.apg = shufflevector <2 x float> %i.aof, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aph = shufflevector <8 x float> %broadcast.splatinsert214, <8 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph180
  %index217 = phi i64 [ 0, %vector.ph180 ], [ %index.next223, %vector.body216 ] ; 2 uses
  %.idx = shl nuw i64 %index217, 4
  %i.api = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %wide.vec218 = load <32 x float>, ptr %i.api, align 4, !tbaa !12 ; 3 uses
  %strided.vec219 = shufflevector <32 x float> %wide.vec218, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec220 = shufflevector <32 x float> %wide.vec218, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec221 = shufflevector <32 x float> %wide.vec218, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.apj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec219, %broadcast.splat187
  %i.apk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec220, %broadcast.splat189
  %i.apl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec221, %broadcast.splat185
  %i.apm = fadd reassoc nsz arcp contract afn <8 x float> %i.apk, %i.apj
  %i.apn = fadd reassoc nsz arcp contract afn <8 x float> %i.apm, %i.apl ; 2 uses
  %i.apo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec219, %broadcast.splat193
  %i.app = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec220, %broadcast.splat195
  %i.apq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec221, %broadcast.splat191
  %i.apr = fadd reassoc nsz arcp contract afn <8 x float> %i.app, %i.apo
  %i.aps = fadd reassoc nsz arcp contract afn <8 x float> %i.apr, %i.apq ; 2 uses
  %i.apt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec219, %broadcast.splat199
  %i.apu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec220, %broadcast.splat201
  %i.apv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec221, %broadcast.splat197
  %i.apw = fadd reassoc nsz arcp contract afn <8 x float> %i.apu, %i.apt
  %i.apx = fadd reassoc nsz arcp contract afn <8 x float> %i.apw, %i.apv ; 2 uses
  %i.apy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.apn, zeroinitializer
  %i.apz = select reassoc nsz arcp contract afn <8 x i1> %i.apy, <8 x float> %i.apn, <8 x float> zeroinitializer ; 3 uses
  %i.aqa = fmul reassoc nsz arcp contract afn <8 x float> %i.apz, %i.apz
  %i.aqb = fadd reassoc nsz arcp contract afn <8 x float> %i.aqa, %broadcast.splat203 ; 2 uses
  %i.aqc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aqb, zeroinitializer
  %i.aqd = select reassoc nsz arcp contract afn <8 x i1> %i.aqc, <8 x float> %i.aqb, <8 x float> zeroinitializer
  %i.aqe = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.aqd)
  %i.aqf = fadd reassoc nsz arcp contract afn <8 x float> %i.aqe, %i.apz
  %i.aqg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat205, %i.aqf ; 5 uses
  %i.aqh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aps, zeroinitializer
  %i.aqi = select reassoc nsz arcp contract afn <8 x i1> %i.aqh, <8 x float> %i.aps, <8 x float> zeroinitializer ; 3 uses
  %i.aqj = fmul reassoc nsz arcp contract afn <8 x float> %i.aqi, %i.aqi
  %i.aqk = fadd reassoc nsz arcp contract afn <8 x float> %i.aqj, %broadcast.splat207 ; 2 uses
  %i.aql = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aqk, zeroinitializer
  %i.aqm = select reassoc nsz arcp contract afn <8 x i1> %i.aql, <8 x float> %i.aqk, <8 x float> zeroinitializer
  %i.aqn = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.aqm)
  %i.aqo = fadd reassoc nsz arcp contract afn <8 x float> %i.aqn, %i.aqi
  %i.aqp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat209, %i.aqo ; 5 uses
  %i.aqq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.apx, zeroinitializer
  %i.aqr = select reassoc nsz arcp contract afn <8 x i1> %i.aqq, <8 x float> %i.apx, <8 x float> zeroinitializer ; 3 uses
  %i.aqs = fmul reassoc nsz arcp contract afn <8 x float> %i.aqr, %i.aqr
  %i.aqt = fadd reassoc nsz arcp contract afn <8 x float> %i.aqs, %broadcast.splat211 ; 2 uses
  %i.aqu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aqt, zeroinitializer
  %i.aqv = select reassoc nsz arcp contract afn <8 x i1> %i.aqu, <8 x float> %i.aqt, <8 x float> zeroinitializer
  %i.aqw = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.aqv)
  %i.aqx = fadd reassoc nsz arcp contract afn <8 x float> %i.aqw, %i.aqr
  %i.aqy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat213, %i.aqx ; 5 uses
  %i.aqz = extractelement <8 x float> %i.aqg, i64 0
  %i.ara = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aqz, float %i.apb)
  %i.arb = extractelement <8 x float> %i.aqg, i64 1
  %i.arc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.arb, float %i.apb)
  %i.ard = extractelement <8 x float> %i.aqg, i64 2
  %i.are = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ard, float %i.apb)
  %i.arf = shufflevector <8 x float> %i.aqg, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.arg = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.arf, <4 x float> %i.apg)
  %i.arh = extractelement <8 x float> %i.aqg, i64 7
  %i.ari = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.arh, float %i.apb)
  %i.arj = insertelement <8 x float> poison, float %i.ara, i64 0
  %i.ark = insertelement <8 x float> %i.arj, float %i.arc, i64 1
  %i.arl = insertelement <8 x float> %i.ark, float %i.are, i64 2
  %i.arm = shufflevector <4 x float> %i.arg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arn = shufflevector <8 x float> %i.arl, <8 x float> %i.arm, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.aro = insertelement <8 x float> %i.arn, float %i.ari, i64 7
  %i.arp = extractelement <8 x float> %i.aqp, i64 0
  %i.arq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.arp, float %i.apc)
  %i.arr = extractelement <8 x float> %i.aqp, i64 1
  %i.ars = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.arr, float %i.apc)
  %i.art = extractelement <8 x float> %i.aqp, i64 2
  %i.aru = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.art, float %i.apc)
  %i.arv = shufflevector <8 x float> %i.aqp, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.arw = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.arv, <4 x float> %i.apf)
  %i.arx = extractelement <8 x float> %i.aqp, i64 7
  %i.ary = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.arx, float %i.apc)
  %i.arz = insertelement <8 x float> poison, float %i.arq, i64 0
  %i.asa = insertelement <8 x float> %i.arz, float %i.ars, i64 1
  %i.asb = insertelement <8 x float> %i.asa, float %i.aru, i64 2
  %i.asc = shufflevector <4 x float> %i.arw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asd = shufflevector <8 x float> %i.asb, <8 x float> %i.asc, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ase = insertelement <8 x float> %i.asd, float %i.ary, i64 7
  %i.asf = extractelement <8 x float> %i.aqy, i64 0
  %i.asg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.asf, float %i.aoi)
  %i.ash = extractelement <8 x float> %i.aqy, i64 1
  %i.asi = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ash, float %i.aoi)
  %i.asj = extractelement <8 x float> %i.aqy, i64 2
  %i.ask = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.asj, float %i.aoi)
  %i.asl = shufflevector <8 x float> %i.aqy, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.asm = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.asl, <4 x float> %i.ape)
  %i.asn = extractelement <8 x float> %i.aqy, i64 7
  %i.aso = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.asn, float %i.aoi)
  %i.asp = insertelement <8 x float> poison, float %i.asg, i64 0
  %i.asq = insertelement <8 x float> %i.asp, float %i.asi, i64 1
  %i.asr = insertelement <8 x float> %i.asq, float %i.ask, i64 2
  %i.ass = shufflevector <4 x float> %i.asm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ast = shufflevector <8 x float> %i.asr, <8 x float> %i.ass, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.asu = insertelement <8 x float> %i.ast, float %i.aso, i64 7
  %i.asv = fsub reassoc nsz arcp contract afn <8 x float> %i.asu, %broadcast.splat215
  %i.asw = shufflevector <8 x float> %i.aro, <8 x float> %i.ase, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.asx = fsub reassoc nsz arcp contract afn <16 x float> %i.asw, %i.aph
  %i.asy = shufflevector <8 x float> %i.asv, <8 x float> %broadcast.splat183, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec222 = shufflevector <16 x float> %i.asx, <16 x float> %i.asy, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec222, ptr %i.api, align 4, !tbaa !12
  %index.next223 = add nuw i64 %index217, 8       ; 2 uses
  %i.asz = icmp eq i64 %index.next223, %n.vec181
  br i1 %i.asz, label %.preheader49.preheader.i.i.preheader, label %vector.body216, !llvm.loop !286

.preheader49.preheader.i.i.preheader:             ; preds = %vector.body216, %.preheader49.preheader.i.preheader.i
  %.04653.i.i.ph = phi i64 [ 0, %.preheader49.preheader.i.preheader.i ], [ %i.apa, %vector.body216 ]
  %i.ata = insertelement <2 x float> poison, float %i.anq, i64 0
  %i.atb = shufflevector <2 x float> %i.ata, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader49.preheader.i.i

.preheader49.preheader.i.i:                       ; preds = %.preheader49.preheader.i.i.preheader, %.preheader49.preheader.i.i
  %.04653.i.i = phi i64 [ %i.aug, %.preheader49.preheader.i.i ], [ %.04653.i.i.ph, %.preheader49.preheader.i.i.preheader ] ; 2 uses
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04653.i.i ; 5 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 4
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atc, i64 8 ; 2 uses
  %i.atf = load float, ptr %i.atc, align 4, !tbaa !12 ; 3 uses
  %.reass82 = fmul reassoc nsz arcp contract afn float %i.atf, %factor.op.fmul81
  %i.atg = load float, ptr %i.atd, align 4, !tbaa !12 ; 3 uses
  %.reass84 = fmul reassoc nsz arcp contract afn float %i.atg, %factor.op.fmul83
  %i.ath = load float, ptr %i.ate, align 4, !tbaa !12 ; 3 uses
  %.reass88 = fmul reassoc nsz arcp contract afn float %i.atf, %factor.op.fmul87
  %.reass90 = fmul reassoc nsz arcp contract afn float %i.atg, %factor.op.fmul89
  %.reass94 = fmul reassoc nsz arcp contract afn float %i.atf, %factor.op.fmul93
  %.reass96 = fmul reassoc nsz arcp contract afn float %i.atg, %factor.op.fmul95
  %.reass92 = fmul reassoc nsz arcp contract afn float %i.ath, %factor.op.fmul91
  %reass.add51 = fadd reassoc nsz arcp contract afn float %.reass96, %.reass94
  %reass.add52 = fadd reassoc nsz arcp contract afn float %reass.add51, %.reass92 ; 2 uses
  %i.ati = fcmp reassoc nsz arcp contract afn ogt float %reass.add52, 0.000000e+00
  %spec.select.2.i222.i = select reassoc nsz arcp contract afn i1 %i.ati, float %reass.add52, float 0.000000e+00 ; 3 uses
  %i.atj = fmul reassoc nsz arcp contract afn float %spec.select.2.i222.i, %spec.select.2.i222.i
  %i.atk = fadd reassoc nsz arcp contract afn float %i.atj, %i.aoc ; 2 uses
  %i.atl = fcmp reassoc nsz arcp contract afn ogt float %i.atk, 0.000000e+00
  %i.atm = select reassoc nsz arcp contract afn i1 %i.atl, float %i.atk, float 0.000000e+00
  %i.atn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.atm)
  %i.ato = fadd reassoc nsz arcp contract afn float %i.atn, %spec.select.2.i222.i
  %i.atp = fmul reassoc nsz arcp contract afn float %i.aoq, %i.ato
  %i.atq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.atp, float %i.aoi)
  %.reass80 = fmul reassoc nsz arcp contract afn float %i.ath, %factor.op.fmul79
  %reass.add45 = fadd reassoc nsz arcp contract afn float %.reass84, %.reass82
  %reass.add46 = fadd reassoc nsz arcp contract afn float %reass.add45, %.reass80
  %.reass86 = fmul reassoc nsz arcp contract afn float %i.ath, %factor.op.fmul85
  %reass.add48 = fadd reassoc nsz arcp contract afn float %.reass90, %.reass88
  %reass.add49 = fadd reassoc nsz arcp contract afn float %reass.add48, %.reass86
  %i.atr = insertelement <2 x float> poison, float %reass.add46, i64 0
  %i.ats = insertelement <2 x float> %i.atr, float %reass.add49, i64 1 ; 2 uses
  %i.att = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ats, zeroinitializer
end_hunk_0
