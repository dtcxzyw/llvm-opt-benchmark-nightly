inline.NumInlined: 636
inline.NumDeleted: 122
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN27btMultiBodyConstraintSolver31setupMultiBodyContactConstraintER27btMultiBodySolverConstraintRK9btVector3RKfR15btManifoldPointRK19btContactSolverInfoRfbff:bb.a
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !241
  %i.zv = load float, ptr %2, align 4, !tbaa !66
  %i.zw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !66
  %i.zy = fmul float %i.zp, %i.zx
  %i.zz = call float @llvm.fmuladd.f32(float %i.zv, float %i.zl, float %i.zy)
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !66
  %i.aac = call noundef float @llvm.fmuladd.f32(float %i.aab, float %i.zs, float %i.zz)
  %i.aad = fadd float %i.zu, %i.aac
  br label %.loopexit950

.loopexit950.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod1258.not = icmp eq i64 %xtraiter1257, 0
  br i1 %lcmp.mod1258.not, label %.loopexit950, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit950.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit950.loopexit.unr-lcssa ]
  %.0356958.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.zd, %.loopexit950.loopexit.unr-lcssa ]
  %lcmp.mod1260 = icmp ne i64 %xtraiter1257, 0
  call void @llvm.assume(i1 %lcmp.mod1260)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.0356958.epil = phi float [ %.0356958.epil.init, %.lr.ph.epil.preheader ], [ %i.aai, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv.epil
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !66
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv.epil
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !66
  %i.aai = call float @llvm.fmuladd.f32(float %i.aaf, float %i.aah, float %.0356958.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1257
  br i1 %epil.iter.cmp.not, label %.loopexit950, label %.lr.ph.epil, !llvm.loop !247

.loopexit950:                                     ; preds = %.loopexit950.loopexit.unr-lcssa, %.lr.ph.epil, %bb.cb, %bb.cc, %bb.cd
  %.1357 = phi float [ 0.000000e+00, %bb.cc ], [ %i.aad, %bb.cd ], [ 0.000000e+00, %bb.cb ], [ %i.zd, %.loopexit950.loopexit.unr-lcssa ], [ %i.aai, %.lr.ph.epil ]
  br i1 %.not402, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.loopexit950
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !62 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !75
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !64
  %i.aap = sext i32 %i.aam to i64                 ; 2 uses
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aap ; 5 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !64
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %i.aap ; 5 uses
  %i.aau = icmp sgt i32 %i.aak, -6
  br i1 %i.aau, label %.lr.ph961.preheader, label %.loopexit949

.lr.ph961.preheader:                              ; preds = %bb.ce
  %i.aav = add i32 %i.aak, 5                      ; 2 uses
  %smax983 = call i32 @llvm.smax.i32(i32 %i.aav, i32 0)
  %i.aaw = add nuw i32 %smax983, 1
  %wide.trip.count984 = zext i32 %i.aaw to i64    ; 2 uses
  %xtraiter1261 = and i64 %wide.trip.count984, 3  ; 3 uses
  %i.aax = icmp slt i32 %i.aav, 3
  br i1 %i.aax, label %.lr.ph961.epil.preheader, label %.lr.ph961.preheader.new

.lr.ph961.preheader.new:                          ; preds = %.lr.ph961.preheader
  %unroll_iter1266 = and i64 %wide.trip.count984, 4294967292
  br label %.lr.ph961

.lr.ph961:                                        ; preds = %.lr.ph961, %.lr.ph961.preheader.new
  %indvars.iv980 = phi i64 [ 0, %.lr.ph961.preheader.new ], [ %indvars.iv.next981.3, %.lr.ph961 ] ; 6 uses
  %.0361960 = phi float [ 0.000000e+00, %.lr.ph961.preheader.new ], [ %i.abr, %.lr.ph961 ]
  %niter1267 = phi i64 [ 0, %.lr.ph961.preheader.new ], [ %niter1267.next.3, %.lr.ph961 ]
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv980
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !66
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv980
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !66
  %i.abc = call float @llvm.fmuladd.f32(float %i.aaz, float %i.abb, float %.0361960)
  %indvars.iv.next981 = or disjoint i64 %indvars.iv980, 1 ; 2 uses
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv.next981
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !66
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv.next981
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !66
  %i.abh = call float @llvm.fmuladd.f32(float %i.abe, float %i.abg, float %i.abc)
  %indvars.iv.next981.1 = or disjoint i64 %indvars.iv980, 2 ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv.next981.1
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !66
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv.next981.1
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !66
  %i.abm = call float @llvm.fmuladd.f32(float %i.abj, float %i.abl, float %i.abh)
  %indvars.iv.next981.2 = or disjoint i64 %indvars.iv980, 3 ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv.next981.2
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !66
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv.next981.2
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !66
  %i.abr = call float @llvm.fmuladd.f32(float %i.abo, float %i.abq, float %i.abm) ; 3 uses
  %indvars.iv.next981.3 = add nuw nsw i64 %indvars.iv980, 4 ; 2 uses
  %niter1267.next.3 = add i64 %niter1267, 4       ; 2 uses
  %niter1267.ncmp.3 = icmp eq i64 %niter1267.next.3, %unroll_iter1266
  br i1 %niter1267.ncmp.3, label %.loopexit949.loopexit.unr-lcssa, label %.lr.ph961, !llvm.loop !248

bb.cf:                                            ; preds = %.loopexit950
  %.not423 = icmp eq ptr %i.z, null
  br i1 %.not423, label %.loopexit949, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.abt = load float, ptr %i.abs, align 8, !tbaa !66 ; 2 uses
  %i.abu = fneg float %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !66 ; 2 uses
  %i.abx = fneg float %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.abz = load float, ptr %i.aby, align 8, !tbaa !66 ; 2 uses
  %i.aca = fneg float %i.abz
  %.sroa.16.8.vec.extract911 = extractelement <2 x float> %.sroa.16.2, i64 0 ; 2 uses
  %.sroa.0891.4.vec.extract903 = extractelement <2 x float> %.sroa.0891.2, i64 1 ; 2 uses
  %i.acb = fmul float %.sroa.0891.4.vec.extract903, %i.abz
  %i.acc = call float @llvm.fmuladd.f32(float %i.abx, float %.sroa.16.8.vec.extract911, float %i.acb)
  %.sroa.0891.0.vec.extract895 = extractelement <2 x float> %.sroa.0891.2, i64 0 ; 2 uses
  %i.acd = fmul float %.sroa.16.8.vec.extract911, %i.abt
  %i.ace = call float @llvm.fmuladd.f32(float %i.aca, float %.sroa.0891.0.vec.extract895, float %i.acd)
  %i.acf = fmul float %.sroa.0891.0.vec.extract895, %i.abw
  %i.acg = call float @llvm.fmuladd.f32(float %i.abu, float %.sroa.0891.4.vec.extract903, float %i.acf)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.z, i64 452
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !241
  %i.acj = load float, ptr %2, align 4, !tbaa !66
  %i.ack = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !66
  %i.acm = fmul float %i.ace, %i.acl
  %i.acn = call float @llvm.fmuladd.f32(float %i.acj, float %i.acc, float %i.acm)
  %i.aco = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !66
  %i.acq = call noundef float @llvm.fmuladd.f32(float %i.acp, float %i.acg, float %i.acn)
  %i.acr = fadd float %i.aci, %i.acq
  br label %.loopexit949

.loopexit949.loopexit.unr-lcssa:                  ; preds = %.lr.ph961
  %lcmp.mod1263.not = icmp eq i64 %xtraiter1261, 0
  br i1 %lcmp.mod1263.not, label %.loopexit949, label %.lr.ph961.epil.preheader

.lr.ph961.epil.preheader:                         ; preds = %.loopexit949.loopexit.unr-lcssa, %.lr.ph961.preheader
  %indvars.iv980.epil.init = phi i64 [ 0, %.lr.ph961.preheader ], [ %indvars.iv.next981.3, %.loopexit949.loopexit.unr-lcssa ]
  %.0361960.epil.init = phi float [ 0.000000e+00, %.lr.ph961.preheader ], [ %i.abr, %.loopexit949.loopexit.unr-lcssa ]
  %lcmp.mod1265 = icmp ne i64 %xtraiter1261, 0
  call void @llvm.assume(i1 %lcmp.mod1265)
  br label %.lr.ph961.epil

.lr.ph961.epil:                                   ; preds = %.lr.ph961.epil, %.lr.ph961.epil.preheader
  %indvars.iv980.epil = phi i64 [ %indvars.iv980.epil.init, %.lr.ph961.epil.preheader ], [ %indvars.iv.next981.epil, %.lr.ph961.epil ] ; 3 uses
  %.0361960.epil = phi float [ %.0361960.epil.init, %.lr.ph961.epil.preheader ], [ %i.acw, %.lr.ph961.epil ]
  %epil.iter1262 = phi i64 [ 0, %.lr.ph961.epil.preheader ], [ %epil.iter1262.next, %.lr.ph961.epil ]
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv980.epil
  %i.act = load float, ptr %i.acs, align 4, !tbaa !66
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv980.epil
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !66
  %i.acw = call float @llvm.fmuladd.f32(float %i.act, float %i.acv, float %.0361960.epil) ; 2 uses
  %indvars.iv.next981.epil = add nuw nsw i64 %indvars.iv980.epil, 1
  %epil.iter1262.next = add i64 %epil.iter1262, 1 ; 2 uses
  %epil.iter1262.cmp.not = icmp eq i64 %epil.iter1262.next, %xtraiter1261
  br i1 %epil.iter1262.cmp.not, label %.loopexit949, label %.lr.ph961.epil, !llvm.loop !249

.loopexit949:                                     ; preds = %.loopexit949.loopexit.unr-lcssa, %.lr.ph961.epil, %bb.ce, %bb.cf, %bb.cg
  %.1362 = phi float [ 0.000000e+00, %bb.cf ], [ %i.acr, %bb.cg ], [ 0.000000e+00, %bb.ce ], [ %i.abr, %.loopexit949.loopexit.unr-lcssa ], [ %i.acw, %.lr.ph961.epil ]
  %i.acx = fadd float %.1357, %.1362
  %i.acy = fadd float %i.cf, %i.acx               ; 2 uses
  %i.acz = fcmp ogt float %i.acy, f0x34000000
  br i1 %i.acz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.loopexit949
  %i.ada = load float, ptr %6, align 4, !tbaa !66
  %i.adb = fdiv float %i.ada, %i.acy
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit949, %bb.ch
  %.sink = phi float [ %i.adb, %bb.ch ], [ 0.000000e+00, %.loopexit949 ]
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 3 uses
  store float %.sink, ptr %i.adc, align 4, !tbaa !80
  br i1 %7, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.add = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ade = load float, ptr %i.add, align 8, !tbaa !250
  %i.adf = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !251
  %i.adh = fadd float %i.ade, %i.adg
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.adi = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !215
  %i.adk = and i32 %i.adj, 16
  %.not426 = icmp eq i32 %i.adk, 0
  br i1 %.not426, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.adl = load float, ptr %i.e, align 8, !tbaa !66
  %i.adm = load float, ptr %i.f, align 8, !tbaa !66
  %i.adn = fsub float %i.adl, %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.adp = getelementptr inbounds nuw i8, ptr %4, i64 36
  %14 = load <2 x float>, ptr %i.ado, align 4, !tbaa !66
  %15 = load <2 x float>, ptr %i.adp, align 4, !tbaa !66
  %16 = fsub <2 x float> %14, %15                 ; 2 uses
  %i.adq = load float, ptr %2, align 4, !tbaa !66
  %i.adr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !66
  %17 = extractelement <2 x float> %16, i64 0
  %i.adt = fmul float %17, %i.ads
  %i.adu = call float @llvm.fmuladd.f32(float %i.adn, float %i.adq, float %i.adt)
  %i.adv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !66
  %18 = extractelement <2 x float> %16, i64 1
  %i.adx = call noundef float @llvm.fmuladd.f32(float %18, float %i.adw, float %i.adu)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.cj
  %.0370 = phi float [ %i.adx, %bb.cl ], [ 0.000000e+00, %bb.ck ], [ %i.adh, %bb.cj ] ; 4 uses
  br i1 %.not, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ady = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !62 ; 2 uses
  %i.aea = add i32 %i.adz, 6                      ; 5 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !63
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !64
  %i.aef = sext i32 %i.aec to i64
  %i.aeg = getelementptr inbounds [4 x i8], ptr %i.aee, i64 %i.aef ; 5 uses
  %i.aeh = icmp sgt i32 %i.adz, -6
  br i1 %i.aeh, label %.lr.ph965, label %.loopexit948

.lr.ph965:                                        ; preds = %bb.cn
  %i.aei = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !64 ; 5 uses
  %smax989 = call i32 @llvm.smax.i32(i32 %i.aea, i32 1)
  %wide.trip.count990 = zext nneg i32 %smax989 to i64 ; 2 uses
  %xtraiter1268 = and i64 %wide.trip.count990, 3  ; 3 uses
  %i.aek = icmp slt i32 %i.aea, 4
  br i1 %i.aek, label %.epil.preheader, label %.lr.ph965.new

.lr.ph965.new:                                    ; preds = %.lr.ph965
  %unroll_iter1273 = and i64 %wide.trip.count990, 2147483644
  br label %bb.cp

bb.co:                                            ; preds = %bb.cy
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cp:                                            ; preds = %bb.cp, %.lr.ph965.new
  %indvars.iv986 = phi i64 [ 0, %.lr.ph965.new ], [ %indvars.iv.next987.3, %bb.cp ] ; 6 uses
  %.0366963 = phi float [ 0.000000e+00, %.lr.ph965.new ], [ %i.aff, %bb.cp ]
  %niter1274 = phi i64 [ 0, %.lr.ph965.new ], [ %niter1274.next.3, %bb.cp ]
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %indvars.iv986
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !66
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %indvars.iv986
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !66
  %i.aeq = call float @llvm.fmuladd.f32(float %i.aen, float %i.aep, float %.0366963)
  %indvars.iv.next987 = or disjoint i64 %indvars.iv986, 1 ; 2 uses
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %indvars.iv.next987
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !66
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %indvars.iv.next987
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !66
  %i.aev = call float @llvm.fmuladd.f32(float %i.aes, float %i.aeu, float %i.aeq)
  %indvars.iv.next987.1 = or disjoint i64 %indvars.iv986, 2 ; 2 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %indvars.iv.next987.1
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !66
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %indvars.iv.next987.1
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !66
  %i.afa = call float @llvm.fmuladd.f32(float %i.aex, float %i.aez, float %i.aev)
  %indvars.iv.next987.2 = or disjoint i64 %indvars.iv986, 3 ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %indvars.iv.next987.2
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !66
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %indvars.iv.next987.2
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !66
  %i.aff = call float @llvm.fmuladd.f32(float %i.afc, float %i.afe, float %i.afa) ; 3 uses
  %indvars.iv.next987.3 = add nuw nsw i64 %indvars.iv986, 4 ; 2 uses
  %niter1274.next.3 = add i64 %niter1274, 4       ; 2 uses
  %niter1274.ncmp.3 = icmp eq i64 %niter1274.next.3, %unroll_iter1273
  br i1 %niter1274.ncmp.3, label %.loopexit948.loopexit.unr-lcssa, label %bb.cp, !llvm.loop !252

bb.cq:                                            ; preds = %bb.cm
  %.not427 = icmp eq ptr %i.w, null
  br i1 %.not427, label %.loopexit948, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.afg = getelementptr inbounds nuw i8, ptr %i.w, i64 420
  %i.afh = getelementptr inbounds nuw i8, ptr %i.w, i64 436
  %.sroa.16933.8.vec.extract939 = extractelement <2 x float> %.sroa.16933.2, i64 0 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.w, i64 444
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !66
  %.sroa.0916.4.vec.extract930 = extractelement <2 x float> %.sroa.0916.2, i64 1 ; 2 uses
  %i.afk = fneg float %.sroa.0916.4.vec.extract930 ; 2 uses
  %.sroa.0916.0.vec.extract922 = extractelement <2 x float> %.sroa.0916.2, i64 0 ; 2 uses
  %i.afl = fneg float %.sroa.16933.8.vec.extract939 ; 2 uses
  %i.afm = fneg float %.sroa.0916.0.vec.extract922 ; 2 uses
  %i.afn = load float, ptr %i.afg, align 4, !tbaa !66
  %i.afo = getelementptr inbounds nuw i8, ptr %i.w, i64 424
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !66
  %i.afq = getelementptr inbounds nuw i8, ptr %i.w, i64 428
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !66
  %i.afs = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  %i.aft = getelementptr inbounds nuw i8, ptr %i.w, i64 372
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !66
  %i.afv = getelementptr inbounds nuw i8, ptr %i.w, i64 388
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !66
  %i.afx = getelementptr inbounds nuw i8, ptr %i.w, i64 540
  %i.afy = load <2 x float>, ptr %i.afh, align 4, !tbaa !66
  %i.afz = load <2 x float>, ptr %i.afs, align 4, !tbaa !66 ; 2 uses
  %i.aga = load float, ptr %i.afx, align 4, !tbaa !66 ; 2 uses
  %i.agb = shufflevector <2 x float> %i.afy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agc = insertelement <4 x float> %i.agb, float %i.afj, i64 2 ; 2 uses
  %i.agd = insertelement <4 x float> %i.agc, float %i.afw, i64 3
  %i.age = insertelement <4 x float> poison, float %i.afl, i64 0
  %i.agf = insertelement <4 x float> %i.age, float %i.afm, i64 1
  %i.agg = insertelement <4 x float> %i.agf, float %i.afk, i64 2
  %i.agh = shufflevector <2 x float> %i.afz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.agi = shufflevector <4 x float> %i.agg, <4 x float> %i.agh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.agj = fmul <4 x float> %i.agd, %i.agi
  %i.agk = shufflevector <4 x float> %i.agc, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.agl = insertelement <4 x float> %i.agk, float %i.afu, i64 3
  %i.agm = shufflevector <2 x float> %.sroa.0916.2, <2 x float> %.sroa.16933.2, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.agn = shufflevector <4 x float> %i.agm, <4 x float> %i.agh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ago = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agl, <4 x float> %i.agn, <4 x float> %i.agj) ; 4 uses
  %i.agp = extractelement <4 x float> %i.ago, i64 2
  %i.agq = fadd float %i.agp, %i.afn
  %i.agr = extractelement <4 x float> %i.ago, i64 0
  %i.ags = fadd float %i.afp, %i.agr
  %i.agt = extractelement <4 x float> %i.ago, i64 1
  %i.agu = fadd float %i.agt, %i.afr
  %i.agv = getelementptr inbounds nuw i8, ptr %i.w, i64 404
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !66
  %i.agx = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !66 ; 3 uses
  %i.agz = extractelement <4 x float> %i.ago, i64 3
  %i.aha = call noundef float @llvm.fmuladd.f32(float %i.agw, float %i.agy, float %i.agz)
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !66
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !66
  %i.ahf = fmul float %i.aga, %i.ahe
  %i.ahg = extractelement <2 x float> %i.afz, i64 0 ; 2 uses
  %i.ahh = call float @llvm.fmuladd.f32(float %i.ahc, float %i.ahg, float %i.ahf)
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !66
  %i.ahk = call noundef float @llvm.fmuladd.f32(float %i.ahj, float %i.agy, float %i.ahh)
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.w, i64 380
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !66
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.w, i64 396
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !66
  %i.ahp = fmul float %i.aga, %i.aho
  %i.ahq = call float @llvm.fmuladd.f32(float %i.ahm, float %i.ahg, float %i.ahp)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.w, i64 412
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !66
  %i.aht = call noundef float @llvm.fmuladd.f32(float %i.ahs, float %i.agy, float %i.ahq)
  %i.ahu = load float, ptr %i.au, align 4, !tbaa !66 ; 6 uses
  %i.ahv = fmul float %i.aha, %i.ahu              ; 2 uses
  %i.ahw = fmul float %i.ahk, %i.ahu              ; 2 uses
  %i.ahx = fmul float %i.ahu, %i.aht              ; 2 uses
  %i.ahy = fmul float %i.ahx, %i.afk
  %i.ahz = call float @llvm.fmuladd.f32(float %i.ahw, float %.sroa.16933.8.vec.extract939, float %i.ahy)
  %i.aia = fmul float %i.ahv, %i.afl
  %i.aib = call float @llvm.fmuladd.f32(float %i.ahx, float %.sroa.0916.0.vec.extract922, float %i.aia)
  %i.aic = fmul float %i.ahw, %i.afm
  %i.aid = call float @llvm.fmuladd.f32(float %i.ahv, float %.sroa.0916.4.vec.extract930, float %i.aic)
  %i.aie = fadd float %i.agq, %i.ahz
  %i.aif = fadd float %i.ags, %i.aib
  %i.aig = fadd float %i.agu, %i.aid
  %i.aih = getelementptr inbounds nuw i8, ptr %i.w, i64 520
  %i.aii = getelementptr inbounds nuw i8, ptr %i.w, i64 452
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !241 ; 3 uses
  %i.aik = load float, ptr %i.aih, align 4, !tbaa !66
  %i.ail = fmul float %i.aij, %i.aik
  %i.aim = getelementptr inbounds nuw i8, ptr %i.w, i64 524
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !66
  %i.aio = fmul float %i.aij, %i.ain
  %i.aip = getelementptr inbounds nuw i8, ptr %i.w, i64 528
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !66
  %i.air = fmul float %i.aij, %i.aiq
  %i.ais = fmul float %i.ahu, %i.ail
  %i.ait = fmul float %i.ahu, %i.aio
  %i.aiu = fmul float %i.ahu, %i.air
  %i.aiv = fadd float %i.ais, %i.aie
  %i.aiw = fadd float %i.aif, %i.ait
  %i.aix = fadd float %i.aig, %i.aiu
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aiz = load float, ptr %i.aiy, align 8, !tbaa !66
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !66
  %i.ajc = fmul float %i.aiw, %i.ajb
  %i.ajd = call float @llvm.fmuladd.f32(float %i.aiv, float %i.aiz, float %i.ajc)
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ajf = load float, ptr %i.aje, align 8, !tbaa !66
  %i.ajg = call noundef float @llvm.fmuladd.f32(float %i.aix, float %i.ajf, float %i.ajd)
  %i.ajh = fadd float %i.ajg, 0.000000e+00
  br label %.loopexit948

.loopexit948.loopexit.unr-lcssa:                  ; preds = %bb.cp
  %lcmp.mod1270.not = icmp eq i64 %xtraiter1268, 0
  br i1 %lcmp.mod1270.not, label %.loopexit948, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit948.loopexit.unr-lcssa, %.lr.ph965
  %indvars.iv986.epil.init = phi i64 [ 0, %.lr.ph965 ], [ %indvars.iv.next987.3, %.loopexit948.loopexit.unr-lcssa ]
  %.0366963.epil.init = phi float [ 0.000000e+00, %.lr.ph965 ], [ %i.aff, %.loopexit948.loopexit.unr-lcssa ]
  %lcmp.mod1272 = icmp ne i64 %xtraiter1268, 0
  call void @llvm.assume(i1 %lcmp.mod1272)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.epil.preheader
  %indvars.iv986.epil = phi i64 [ %indvars.iv986.epil.init, %.epil.preheader ], [ %indvars.iv.next987.epil, %bb.cs ] ; 3 uses
  %.0366963.epil = phi float [ %.0366963.epil.init, %.epil.preheader ], [ %i.ajm, %bb.cs ]
  %epil.iter1269 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1269.next, %bb.cs ]
end_hunk_0
