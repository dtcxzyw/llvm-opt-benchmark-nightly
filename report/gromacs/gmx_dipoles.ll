Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit128, %bb.cp, %bb.ct, %.noexc947, %.noexc948, %.noexc949, %.noexc950, %.noexc951, %.noexc952, %.noexc953, %.loopexit100.i, %bb.da, %.noexc956, %.noexc957, %.noexc958, %.noexc959, %.noexc960, %.noexc961, %.noexc962, %.noexc963
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %_ZL19update_slab_dipolesiiPA3_fPfiiS0_S0_.exit, %bb.cq
  br i1 %21, label %bb.ct, label %.loopexit

bb.ct:                                            ; preds = %bb.cs
  %i.ze = load ptr, ptr %i.ap, align 8, !tbaa !128 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #22
  %i.zf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.100, i32 noundef 570, i64 noundef 3, i64 noundef 8)
          to label %.noexc947 unwind label %.loopexit.split-lp ; 8 uses

.noexc947:                                        ; preds = %bb.ct
  %i.zg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.100, i32 noundef 571, i64 noundef 3, i64 noundef 8)
          to label %.noexc948 unwind label %.loopexit.split-lp ; 7 uses

.noexc948:                                        ; preds = %.noexc947
  %i.zh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc949 unwind label %.loopexit.split-lp

.noexc949:                                        ; preds = %.noexc948
  store ptr %i.zh, ptr %i.zf, align 8, !tbaa !147
  %i.zi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc950 unwind label %.loopexit.split-lp

.noexc950:                                        ; preds = %.noexc949
  store ptr %i.zi, ptr %i.zg, align 8, !tbaa !147
  store double 0.000000e+00, ptr %i.z, align 16, !tbaa !149
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 5 uses
  %i.zk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc951 unwind label %.loopexit.split-lp

.noexc951:                                        ; preds = %.noexc950
  store ptr %i.zk, ptr %i.zj, align 8, !tbaa !147
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 8 ; 3 uses
  %i.zm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc952 unwind label %.loopexit.split-lp

.noexc952:                                        ; preds = %.noexc951
  store ptr %i.zm, ptr %i.zl, align 8, !tbaa !147
  store double 0.000000e+00, ptr %i.rp, align 8, !tbaa !149
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zf, i64 16 ; 5 uses
  %i.zo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc953 unwind label %.loopexit.split-lp

.noexc953:                                        ; preds = %.noexc952
  store ptr %i.zo, ptr %i.zn, align 8, !tbaa !147
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zg, i64 16 ; 3 uses
  %i.zq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc954 unwind label %.loopexit.split-lp

.noexc954:                                        ; preds = %.noexc953
  store ptr %i.zq, ptr %i.zp, align 8, !tbaa !147
  store double 0.000000e+00, ptr %i.rq, align 16, !tbaa !149
  br i1 %i.uv, label %.lr.ph.preheader.i941, label %._crit_edge.i

.lr.ph.preheader.i941:                            ; preds = %.noexc954
  %i.zr = sext i32 %i.uo to i64                   ; 4 uses
  %wide.trip.count.i942 = sext i32 %i.uq to i64   ; 3 uses
  %i.zs = sub nsw i64 %wide.trip.count.i942, %i.zr
  %xtraiter203 = and i64 %i.zs, 3                 ; 2 uses
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.lr.ph.i943.prol.loopexit, label %.lr.ph.i943.prol

.lr.ph.i943.prol:                                 ; preds = %.lr.ph.preheader.i941, %.lr.ph.i943.prol
  %.sroa.12171.0.i.prol = phi float [ %i.aad, %.lr.ph.i943.prol ], [ 0.000000e+00, %.lr.ph.preheader.i941 ]
  %indvars.iv.i944.prol = phi i64 [ %indvars.iv.next.i945.prol, %.lr.ph.i943.prol ], [ %i.zr, %.lr.ph.preheader.i941 ] ; 3 uses
  %.0107.i.prol = phi float [ %i.aae, %.lr.ph.i943.prol ], [ 0.000000e+00, %.lr.ph.preheader.i941 ]
  %i.zt = phi <2 x float> [ %i.aaa, %.lr.ph.i943.prol ], [ zeroinitializer, %.lr.ph.preheader.i941 ]
  %prol.iter205 = phi i64 [ %prol.iter205.next, %.lr.ph.i943.prol ], [ 0, %.lr.ph.preheader.i941 ]
  %i.zu = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.i944.prol
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !50 ; 3 uses
  %i.zw = getelementptr inbounds [12 x i8], ptr %i.ze, i64 %indvars.iv.i944.prol ; 2 uses
  %i.zx = load <2 x float>, ptr %i.zw, align 4, !tbaa !12
  %i.zy = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zz, <2 x float> %i.zx, <2 x float> %i.zt) ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !12
  %i.aad = call float @llvm.fmuladd.f32(float %i.zv, float %i.aac, float %.sroa.12171.0.i.prol) ; 3 uses
  %i.aae = fadd float %.0107.i.prol, %i.zv        ; 3 uses
  %indvars.iv.next.i945.prol = add nsw i64 %indvars.iv.i944.prol, 1 ; 2 uses
  %prol.iter205.next = add i64 %prol.iter205, 1   ; 2 uses
  %prol.iter205.cmp.not = icmp eq i64 %prol.iter205.next, %xtraiter203
  br i1 %prol.iter205.cmp.not, label %.lr.ph.i943.prol.loopexit, label %.lr.ph.i943.prol, !llvm.loop !94

.lr.ph.i943.prol.loopexit:                        ; preds = %.lr.ph.i943.prol, %.lr.ph.preheader.i941
  %.lcssa161.unr = phi <2 x float> [ poison, %.lr.ph.preheader.i941 ], [ %i.aaa, %.lr.ph.i943.prol ]
  %.lcssa160.unr = phi float [ poison, %.lr.ph.preheader.i941 ], [ %i.aad, %.lr.ph.i943.prol ]
  %.lcssa159.unr = phi float [ poison, %.lr.ph.preheader.i941 ], [ %i.aae, %.lr.ph.i943.prol ]
  %.sroa.12171.0.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i941 ], [ %i.aad, %.lr.ph.i943.prol ]
  %indvars.iv.i944.unr = phi i64 [ %i.zr, %.lr.ph.preheader.i941 ], [ %indvars.iv.next.i945.prol, %.lr.ph.i943.prol ]
  %.0107.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i941 ], [ %i.aae, %.lr.ph.i943.prol ]
  %.unr206 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i941 ], [ %i.aaa, %.lr.ph.i943.prol ]
  %i.aaf = sub nsw i64 %i.zr, %wide.trip.count.i942
  %i.aag = icmp ugt i64 %i.aaf, -4
  br i1 %i.aag, label %._crit_edge.i, label %.lr.ph.i943

.lr.ph.i943:                                      ; preds = %.lr.ph.i943.prol.loopexit, %.lr.ph.i943
  %.sroa.12171.0.i = phi float [ %i.aby, %.lr.ph.i943 ], [ %.sroa.12171.0.i.unr, %.lr.ph.i943.prol.loopexit ]
  %indvars.iv.i944 = phi i64 [ %indvars.iv.next.i945.3, %.lr.ph.i943 ], [ %indvars.iv.i944.unr, %.lr.ph.i943.prol.loopexit ] ; 6 uses
  %.0107.i = phi float [ %i.abz, %.lr.ph.i943 ], [ %.0107.i.unr, %.lr.ph.i943.prol.loopexit ]
  %i.aah = phi <2 x float> [ %i.abv, %.lr.ph.i943 ], [ %.unr206, %.lr.ph.i943.prol.loopexit ]
  %i.aai = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.i944
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !50 ; 3 uses
  %i.aak = getelementptr inbounds [12 x i8], ptr %i.ze, i64 %indvars.iv.i944 ; 2 uses
  %i.aal = load <2 x float>, ptr %i.aak, align 4, !tbaa !12
  %i.aam = insertelement <2 x float> poison, float %i.aaj, i64 0
  %i.aan = shufflevector <2 x float> %i.aam, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aan, <2 x float> %i.aal, <2 x float> %i.aah)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !12
  %i.aar = call float @llvm.fmuladd.f32(float %i.aaj, float %i.aaq, float %.sroa.12171.0.i)
  %i.aas = fadd float %.0107.i, %i.aaj
  %indvars.iv.next.i945 = add nsw i64 %indvars.iv.i944, 1 ; 2 uses
  %i.aat = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i945
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !50 ; 3 uses
  %i.aav = getelementptr inbounds [12 x i8], ptr %i.ze, i64 %indvars.iv.next.i945 ; 2 uses
  %i.aaw = load <2 x float>, ptr %i.aav, align 4, !tbaa !12
  %i.aax = insertelement <2 x float> poison, float %i.aau, i64 0
  %i.aay = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aay, <2 x float> %i.aaw, <2 x float> %i.aao)
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !12
  %i.abc = call float @llvm.fmuladd.f32(float %i.aau, float %i.abb, float %i.aar)
  %i.abd = fadd float %i.aas, %i.aau
  %indvars.iv.next.i945.1 = add nsw i64 %indvars.iv.i944, 2 ; 2 uses
  %i.abe = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i945.1
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !50 ; 3 uses
  %i.abg = getelementptr inbounds [12 x i8], ptr %i.ze, i64 %indvars.iv.next.i945.1 ; 2 uses
  %i.abh = load <2 x float>, ptr %i.abg, align 4, !tbaa !12
  %i.abi = insertelement <2 x float> poison, float %i.abf, i64 0
  %i.abj = shufflevector <2 x float> %i.abi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abj, <2 x float> %i.abh, <2 x float> %i.aaz)
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !12
  %i.abn = call float @llvm.fmuladd.f32(float %i.abf, float %i.abm, float %i.abc)
  %i.abo = fadd float %i.abd, %i.abf
  %indvars.iv.next.i945.2 = add nsw i64 %indvars.iv.i944, 3 ; 2 uses
  %i.abp = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i945.2
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !50 ; 3 uses
  %i.abr = getelementptr inbounds [12 x i8], ptr %i.ze, i64 %indvars.iv.next.i945.2 ; 2 uses
  %i.abs = load <2 x float>, ptr %i.abr, align 4, !tbaa !12
  %i.abt = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abu = shufflevector <2 x float> %i.abt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abu, <2 x float> %i.abs, <2 x float> %i.abk) ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !12
  %i.aby = call float @llvm.fmuladd.f32(float %i.abq, float %i.abx, float %i.abn) ; 2 uses
  %i.abz = fadd float %i.abo, %i.abq              ; 2 uses
  %indvars.iv.next.i945.3 = add nsw i64 %indvars.iv.i944, 4 ; 2 uses
  %exitcond.not.i946.3 = icmp eq i64 %indvars.iv.next.i945.3, %wide.trip.count.i942
  br i1 %exitcond.not.i946.3, label %._crit_edge.i, label %.lr.ph.i943, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i943.prol.loopexit, %.lr.ph.i943, %.noexc954
  %.sroa.12171.1.i = phi float [ 0.000000e+00, %.noexc954 ], [ %.lcssa160.unr, %.lr.ph.i943.prol.loopexit ], [ %i.aby, %.lr.ph.i943 ]
  %.0.lcssa.i939 = phi float [ 0.000000e+00, %.noexc954 ], [ %.lcssa159.unr, %.lr.ph.i943.prol.loopexit ], [ %i.abz, %.lr.ph.i943 ]
  %i.aca = phi <2 x float> [ zeroinitializer, %.noexc954 ], [ %.lcssa161.unr, %.lr.ph.i943.prol.loopexit ], [ %i.abv, %.lr.ph.i943 ]
  %i.acb = fdiv float 1.000000e+00, %.0.lcssa.i939 ; 2 uses
  %i.acc = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <2 x float> %i.acc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ace = fmul <2 x float> %i.aca, %i.acd
  %i.acf = fmul float %.sroa.12171.1.i, %i.acb
  %i.acg = load ptr, ptr %i.zf, align 8, !tbaa !147 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acg, i8 0, i64 24, i1 false), !tbaa !149
  %i.ach = load ptr, ptr %i.zj, align 8, !tbaa !147 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ach, i8 0, i64 24, i1 false), !tbaa !149
  %i.aci = load ptr, ptr %i.zn, align 8, !tbaa !147 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aci, i8 0, i64 24, i1 false), !tbaa !149
  br i1 %i.uv, label %.lr.ph113.i, label %._crit_edge114.i

.lr.ph113.i:                                      ; preds = %._crit_edge.i
  %i.acj = sext i32 %i.uo to i64
  %wide.trip.count140.i = sext i32 %i.uq to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 16 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 16 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 16 ; 2 uses
  br label %.preheader101.i

.preheader101.i:                                  ; preds = %.preheader101.i, %.lr.ph113.i
  %indvars.iv137.i = phi i64 [ %i.acj, %.lr.ph113.i ], [ %indvars.iv.next138.i, %.preheader101.i ] ; 3 uses
  %i.acn = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv137.i
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !51
  %i.acq = fmul float %i.acp, 1.000000e+02
  %i.acr = getelementptr inbounds [12 x i8], ptr %i.ze, i64 %indvars.iv137.i ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.act = load float, ptr %i.acs, align 4, !tbaa !12
  %i.acu = load <2 x float>, ptr %i.acr, align 4, !tbaa !12
  %i.acv = fsub <2 x float> %i.acu, %i.ace        ; 4 uses
  %i.acw = extractelement <2 x float> %i.acv, i64 0 ; 2 uses
  %i.acx = fpext float %i.acq to double
  %i.acy = fpext <2 x float> %i.acv to <2 x double> ; 5 uses
  %83 = extractelement <2 x double> %i.acy, i64 0
  %84 = fmul double %83, 3.000000e+00             ; 2 uses
  %85 = insertelement <2 x double> poison, double %84, i64 0
  %i.acz = shufflevector <2 x double> %85, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ada = load <2 x double>, ptr %i.acg, align 8, !tbaa !149
  %86 = load double, ptr %i.ack, align 8, !tbaa !149
  %87 = insertelement <2 x double> %i.acy, double %i.acx, i64 0
  %88 = fmul <2 x double> %87, <double 5.000000e-01, double 3.000000e+00> ; 4 uses
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.adb = extractelement <2 x double> %88, i64 0 ; 3 uses
  %90 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %91 = extractelement <2 x double> %88, i64 1
  %foldExtExtBinop = fmul <2 x float> %i.acv, %i.acv
  %i.adc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.add = fsub float %i.act, %i.acf              ; 3 uses
  %i.ade = call float @llvm.fmuladd.f32(float %i.acw, float %i.acw, float %i.adc)
  %i.adf = call noundef float @llvm.fmuladd.f32(float %i.add, float %i.add, float %i.ade)
  %i.adg = fpext float %i.adf to double           ; 2 uses
  %i.adh = fpext float %i.add to double           ; 4 uses
  %i.adi = fneg double %i.adg                     ; 3 uses
  %i.adj = insertelement <2 x double> poison, double %i.adi, i64 0
  %i.adk = fmul double %i.adg, -0.000000e+00      ; 4 uses
  %i.adl = fmul double %i.adh, 3.000000e+00       ; 2 uses
  %i.adm = insertelement <2 x double> %i.adj, double %i.adk, i64 1
  %i.adn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acz, <2 x double> %i.acy, <2 x double> %i.adm)
  %92 = call double @llvm.fmuladd.f64(double %84, double %i.adh, double %i.adk)
  %i.ado = fmul <2 x double> %89, %i.adn
  %i.adp = fmul <2 x double> %i.ado, splat (double f0x39F44F5C45C6DEE9)
  %i.adq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adp, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.ada)
  store <2 x double> %i.adq, ptr %i.acg, align 8, !tbaa !149
  %i.adr = fmul double %i.adb, %92
  %i.ads = fmul double %i.adr, f0x39F44F5C45C6DEE9
  %i.adt = call double @llvm.fmuladd.f64(double %i.ads, double f0x460E457412875905, double %86)
  store double %i.adt, ptr %i.ack, align 8, !tbaa !149
  %i.adu = insertelement <2 x double> poison, double %i.adk, i64 0 ; 2 uses
  %i.adv = insertelement <2 x double> %i.adu, double %i.adi, i64 1
  %i.adw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %90, <2 x double> %i.acy, <2 x double> %i.adv)
  %i.adx = fmul <2 x double> %89, %i.adw
  %i.ady = fmul <2 x double> %i.adx, splat (double f0x39F44F5C45C6DEE9)
  %i.adz = load <2 x double>, ptr %i.ach, align 8, !tbaa !149
  %i.aea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ady, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.adz)
  store <2 x double> %i.aea, ptr %i.ach, align 8, !tbaa !149
  %i.aeb = call double @llvm.fmuladd.f64(double %91, double %i.adh, double %i.adk)
  %i.aec = fmul double %i.adb, %i.aeb
  %i.aed = fmul double %i.aec, f0x39F44F5C45C6DEE9
  %i.aee = load double, ptr %i.acl, align 8, !tbaa !149
  %i.aef = call double @llvm.fmuladd.f64(double %i.aed, double f0x460E457412875905, double %i.aee)
  store double %i.aef, ptr %i.acl, align 8, !tbaa !149
  %93 = insertelement <2 x double> poison, double %i.adl, i64 0
  %94 = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> zeroinitializer
  %95 = shufflevector <2 x double> %i.adu, <2 x double> poison, <2 x i32> zeroinitializer
  %96 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %i.acy, <2 x double> %95)
  %i.aeg = fmul <2 x double> %89, %96
  %i.aeh = fmul <2 x double> %i.aeg, splat (double f0x39F44F5C45C6DEE9)
  %i.aei = load <2 x double>, ptr %i.aci, align 8, !tbaa !149
  %i.aej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.aei)
  store <2 x double> %i.aej, ptr %i.aci, align 8, !tbaa !149
  %i.aek = call double @llvm.fmuladd.f64(double %i.adl, double %i.adh, double %i.adi)
  %i.ael = fmul double %i.adb, %i.aek
  %i.aem = fmul double %i.ael, f0x39F44F5C45C6DEE9
  %i.aen = load double, ptr %i.acm, align 8, !tbaa !149
  %i.aeo = call double @llvm.fmuladd.f64(double %i.aem, double f0x460E457412875905, double %i.aen)
  store double %i.aeo, ptr %i.acm, align 8, !tbaa !149
  %indvars.iv.next138.i = add nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %._crit_edge114.i, label %.preheader101.i, !llvm.loop !96

._crit_edge114.i:                                 ; preds = %.preheader101.i, %._crit_edge.i
  %i.aep = load ptr, ptr @debug, align 8, !tbaa !132 ; 2 uses
  %.not.i940 = icmp eq ptr %i.aep, null
  br i1 %.not.i940, label %.loopexit100.i, label %.preheader99.preheader.i

.preheader99.preheader.i:                         ; preds = %._crit_edge114.i
  %i.aeq = load double, ptr %i.acg, align 8, !tbaa !149
  %i.aer = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !149
  %i.aet = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !149
  %i.aev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aep, ptr noundef nonnull @.str.229, i32 noundef 0, double noundef %i.aeq, double noundef %i.aes, double noundef %i.aeu) #22 ; 0 uses
  %i.aew = load ptr, ptr @debug, align 8, !tbaa !132
  %i.aex = load ptr, ptr %i.zj, align 8, !tbaa !147 ; 3 uses
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !149
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !149
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !149
  %i.afd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aew, ptr noundef nonnull @.str.229, i32 noundef 1, double noundef %i.aey, double noundef %i.afa, double noundef %i.afc) #22 ; 0 uses
  %i.afe = load ptr, ptr @debug, align 8, !tbaa !132
  %i.aff = load ptr, ptr %i.zn, align 8, !tbaa !147 ; 3 uses
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !149
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !149
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !149
  %i.afl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afe, ptr noundef nonnull @.str.229, i32 noundef 2, double noundef %i.afg, double noundef %i.afi, double noundef %i.afk) #22 ; 0 uses
  br label %.loopexit100.i

.loopexit100.i:                                   ; preds = %.preheader99.preheader.i, %._crit_edge114.i
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.zf, i32 noundef 3, ptr noundef nonnull %i.z, ptr noundef nonnull %i.zg, ptr noundef nonnull %i.y)
          to label %.noexc955 unwind label %.loopexit.split-lp

.noexc955:                                        ; preds = %.loopexit100.i
  %i.afm = load ptr, ptr @debug, align 8, !tbaa !132 ; 2 uses
  %.not84.i = icmp eq ptr %i.afm, null
  br i1 %.not84.i, label %.loopexit.i, label %.preheader98.preheader.i

.preheader98.preheader.i:                         ; preds = %.noexc955
  %i.afn = load ptr, ptr %i.zg, align 8, !tbaa !147 ; 3 uses
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !149
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !149
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !149
  %i.aft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.afm, ptr noundef nonnull @.str.230, i32 noundef 0, double noundef %i.afo, double noundef %i.afq, double noundef %i.afs) #22 ; 0 uses
  %i.afu = load ptr, ptr @debug, align 8, !tbaa !132
  %i.afv = load ptr, ptr %i.zl, align 8, !tbaa !147 ; 3 uses
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !149
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !149
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !149
  %i.agb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afu, ptr noundef nonnull @.str.230, i32 noundef 1, double noundef %i.afw, double noundef %i.afy, double noundef %i.aga) #22 ; 0 uses
  %i.agc = load ptr, ptr @debug, align 8, !tbaa !132
  %i.agd = load ptr, ptr %i.zp, align 8, !tbaa !147 ; 3 uses
  %i.age = load double, ptr %i.agd, align 8, !tbaa !149
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !149
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !149
  %i.agj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agc, ptr noundef nonnull @.str.230, i32 noundef 2, double noundef %i.age, double noundef %i.agg, double noundef %i.agi) #22 ; 0 uses
  %i.agk = load ptr, ptr @debug, align 8, !tbaa !132
  %i.agl = load ptr, ptr %i.zf, align 8, !tbaa !147 ; 3 uses
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !149
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !149
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !149
  %i.agr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agk, ptr noundef nonnull @.str.231, i32 noundef 0, double noundef %i.agm, double noundef %i.ago, double noundef %i.agq) #22 ; 0 uses
  %i.ags = load ptr, ptr @debug, align 8, !tbaa !132
  %i.agt = load ptr, ptr %i.zj, align 8, !tbaa !147 ; 3 uses
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !149
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !149
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !149
  %i.agz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ags, ptr noundef nonnull @.str.231, i32 noundef 1, double noundef %i.agu, double noundef %i.agw, double noundef %i.agy) #22 ; 0 uses
  %i.aha = load ptr, ptr @debug, align 8, !tbaa !132
  %i.ahb = load ptr, ptr %i.zn, align 8, !tbaa !147 ; 3 uses
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !149
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !149
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !149
  %i.ahh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aha, ptr noundef nonnull @.str.231, i32 noundef 2, double noundef %i.ahc, double noundef %i.ahe, double noundef %i.ahg) #22 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader98.preheader.i, %.noexc955
  %i.ahi = load double, ptr %i.rp, align 8, !tbaa !149 ; 4 uses
  %i.ahj = load double, ptr %i.z, align 16, !tbaa !149 ; 4 uses
  %i.ahk = fcmp ogt double %i.ahi, %i.ahj
  br i1 %i.ahk, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.loopexit.i
  store double %i.ahi, ptr %i.z, align 16, !tbaa !149
  store double %i.ahj, ptr %i.rp, align 8, !tbaa !149
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit.i
  %i.ahl = phi double [ %i.ahi, %bb.cu ], [ %i.ahj, %.loopexit.i ] ; 4 uses
  %i.ahm = phi double [ %i.ahj, %bb.cu ], [ %i.ahi, %.loopexit.i ] ; 4 uses
  %i.ahn = load double, ptr %i.rq, align 16, !tbaa !149 ; 4 uses
  %i.aho = fcmp ogt double %i.ahn, %i.ahm
  br i1 %i.aho, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store double %i.ahn, ptr %i.rp, align 8, !tbaa !149
  store double %i.ahm, ptr %i.rq, align 16, !tbaa !149
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ahp = phi double [ %i.ahm, %bb.cw ], [ %i.ahn, %bb.cv ]
  %i.ahq = phi double [ %i.ahn, %bb.cw ], [ %i.ahm, %bb.cv ] ; 4 uses
  %i.ahr = fcmp ogt double %i.ahq, %i.ahl
  br i1 %i.ahr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store double %i.ahq, ptr %i.z, align 16, !tbaa !149
  store double %i.ahl, ptr %i.rp, align 8, !tbaa !149
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ahs = phi double [ %i.ahl, %bb.cy ], [ %i.ahq, %bb.cx ]
  %i.aht = phi double [ %i.ahq, %bb.cy ], [ %i.ahl, %bb.cx ]
  %i.ahu = insertelement <2 x double> poison, double %i.ahp, i64 0
  %i.ahv = insertelement <2 x double> %i.ahu, double %i.aht, i64 1
  %i.ahw = fptrunc <2 x double> %i.ahv to <2 x float>
  store <2 x float> %i.ahw, ptr %i.aq, align 8, !tbaa !12
  %i.ahx = fptrunc double %i.ahs to float
  store float %i.ahx, ptr %i.rs, align 8, !tbaa !12
  %i.ahy = load ptr, ptr @debug, align 8, !tbaa !132 ; 2 uses
  %.not85.i = icmp eq ptr %i.ahy, null
  br i1 %.not85.i, label %.noexc956, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_Z7pr_rvecP8_IO_FILEiPKcPKfib(ptr noundef nonnull %i.ahy, i32 noundef 0, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.aq, i32 noundef 3, i1 noundef zeroext true)
          to label %.noexc956 unwind label %.loopexit.split-lp

.noexc956:                                        ; preds = %bb.da, %bb.cz
  %i.ahz = load ptr, ptr %i.zf, align 8, !tbaa !147
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.ahz)
          to label %.noexc957 unwind label %.loopexit.split-lp

.noexc957:                                        ; preds = %.noexc956
  %i.aia = load ptr, ptr %i.zg, align 8, !tbaa !147
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aia)
          to label %.noexc958 unwind label %.loopexit.split-lp

.noexc958:                                        ; preds = %.noexc957
  %i.aib = load ptr, ptr %i.zj, align 8, !tbaa !147
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.aib)
          to label %.noexc959 unwind label %.loopexit.split-lp

.noexc959:                                        ; preds = %.noexc958
  %i.aic = load ptr, ptr %i.zl, align 8, !tbaa !147
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aic)
          to label %.noexc960 unwind label %.loopexit.split-lp

.noexc960:                                        ; preds = %.noexc959
  %i.aid = load ptr, ptr %i.zn, align 8, !tbaa !147
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.aid)
          to label %.noexc961 unwind label %.loopexit.split-lp

.noexc961:                                        ; preds = %.noexc960
  %i.aie = load ptr, ptr %i.zp, align 8, !tbaa !147
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aie)
          to label %.noexc962 unwind label %.loopexit.split-lp

.noexc962:                                        ; preds = %.noexc961
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.100, i32 noundef 680, ptr noundef nonnull %i.zf)
          to label %.noexc963 unwind label %.loopexit.split-lp

.noexc963:                                        ; preds = %.noexc962
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.100, i32 noundef 681, ptr noundef nonnull %i.zg)
          to label %_ZL8mol_quadiiPA3_fPK6t_atomPf.exit unwind label %.loopexit.split-lp

_ZL8mol_quadiiPA3_fPK6t_atomPf.exit:              ; preds = %.noexc963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #22
  %i.aif = load ptr, ptr %i.ga, align 8, !tbaa !130
  %i.aig = load float, ptr %i.aq, align 8, !tbaa !12
  %i.aih = fpext float %i.aig to double
  invoke void @_Z19gmx_stats_add_pointP9gmx_statsdddd(ptr noundef %i.aif, double noundef 0.000000e+00, double noundef %i.aih, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %bb.db unwind label %.loopexit127

bb.db:                                            ; preds = %_ZL8mol_quadiiPA3_fPK6t_atomPf.exit
  %i.aii = load ptr, ptr %i.gd, align 8, !tbaa !130
  %i.aij = load float, ptr %i.rr, align 4, !tbaa !12
  %i.aik = fpext float %i.aij to double
  invoke void @_Z19gmx_stats_add_pointP9gmx_statsdddd(ptr noundef %i.aii, double noundef 0.000000e+00, double noundef %i.aik, double noundef 0.000000e+00, double noundef 0.000000e+00)
end_hunk_0
