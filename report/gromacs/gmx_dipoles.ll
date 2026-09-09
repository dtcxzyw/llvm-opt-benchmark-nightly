Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  store <2 x float> %i.zd, ptr %i.yw, align 4, !tbaa !12
  store float %i.za, ptr %i.yx, align 4, !tbaa !12
  br label %bb.cs

.loopexit127:                                     ; preds = %bb.dc, %bb.db, %_ZL8mol_quadiiPA3_fPK6t_atomPf.exit
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
  %i.ze = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 6 uses
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
  store ptr %i.zh, ptr %i.zf, align 8, !tbaa !145
  %i.zi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc950 unwind label %.loopexit.split-lp

.noexc950:                                        ; preds = %.noexc949
  store ptr %i.zi, ptr %i.zg, align 8, !tbaa !145
  store double 0.000000e+00, ptr %i.z, align 16, !tbaa !147
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 5 uses
  %i.zk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc951 unwind label %.loopexit.split-lp

.noexc951:                                        ; preds = %.noexc950
  store ptr %i.zk, ptr %i.zj, align 8, !tbaa !145
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 8 ; 3 uses
  %i.zm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc952 unwind label %.loopexit.split-lp

.noexc952:                                        ; preds = %.noexc951
  store ptr %i.zm, ptr %i.zl, align 8, !tbaa !145
  store double 0.000000e+00, ptr %i.rp, align 8, !tbaa !147
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zf, i64 16 ; 5 uses
  %i.zo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc953 unwind label %.loopexit.split-lp

.noexc953:                                        ; preds = %.noexc952
  store ptr %i.zo, ptr %i.zn, align 8, !tbaa !145
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zg, i64 16 ; 3 uses
  %i.zq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc954 unwind label %.loopexit.split-lp

.noexc954:                                        ; preds = %.noexc953
  store ptr %i.zq, ptr %i.zp, align 8, !tbaa !145
  store double 0.000000e+00, ptr %i.rq, align 16, !tbaa !147
  br i1 %i.uv, label %.lr.ph.preheader.i941, label %._crit_edge.i

.lr.ph.preheader.i941:                            ; preds = %.noexc954
  %i.zr = sext i32 %i.uo to i64                   ; 4 uses
  %wide.trip.count.i942 = sext i32 %i.uq to i64   ; 3 uses
  %i.zs = sub nsw i64 %wide.trip.count.i942, %i.zr
  %xtraiter158 = and i64 %i.zs, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.lr.ph.i943.prol.loopexit, label %.lr.ph.i943.prol

.lr.ph.i943.prol:                                 ; preds = %.lr.ph.preheader.i941, %.lr.ph.i943.prol
  %.sroa.12171.0.i.prol = phi float [ %i.aad, %.lr.ph.i943.prol ], [ 0.000000e+00, %.lr.ph.preheader.i941 ]
  %indvars.iv.i944.prol = phi i64 [ %indvars.iv.next.i945.prol, %.lr.ph.i943.prol ], [ %i.zr, %.lr.ph.preheader.i941 ] ; 3 uses
  %.0107.i.prol = phi float [ %i.aae, %.lr.ph.i943.prol ], [ 0.000000e+00, %.lr.ph.preheader.i941 ]
  %i.zt = phi <2 x float> [ %i.aaa, %.lr.ph.i943.prol ], [ zeroinitializer, %.lr.ph.preheader.i941 ]
  %prol.iter160 = phi i64 [ %prol.iter160.next, %.lr.ph.i943.prol ], [ 0, %.lr.ph.preheader.i941 ]
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
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %.lr.ph.i943.prol.loopexit, label %.lr.ph.i943.prol, !llvm.loop !94

.lr.ph.i943.prol.loopexit:                        ; preds = %.lr.ph.i943.prol, %.lr.ph.preheader.i941
  %.lcssa116.unr = phi <2 x float> [ poison, %.lr.ph.preheader.i941 ], [ %i.aaa, %.lr.ph.i943.prol ]
  %.lcssa115.unr = phi float [ poison, %.lr.ph.preheader.i941 ], [ %i.aad, %.lr.ph.i943.prol ]
  %.lcssa114.unr = phi float [ poison, %.lr.ph.preheader.i941 ], [ %i.aae, %.lr.ph.i943.prol ]
  %.sroa.12171.0.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i941 ], [ %i.aad, %.lr.ph.i943.prol ]
  %indvars.iv.i944.unr = phi i64 [ %i.zr, %.lr.ph.preheader.i941 ], [ %indvars.iv.next.i945.prol, %.lr.ph.i943.prol ]
  %.0107.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i941 ], [ %i.aae, %.lr.ph.i943.prol ]
  %.unr161 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i941 ], [ %i.aaa, %.lr.ph.i943.prol ]
  %i.aaf = sub nsw i64 %i.zr, %wide.trip.count.i942
  %i.aag = icmp ugt i64 %i.aaf, -4
  br i1 %i.aag, label %._crit_edge.i, label %.lr.ph.i943

.lr.ph.i943:                                      ; preds = %.lr.ph.i943.prol.loopexit, %.lr.ph.i943
  %.sroa.12171.0.i = phi float [ %i.aby, %.lr.ph.i943 ], [ %.sroa.12171.0.i.unr, %.lr.ph.i943.prol.loopexit ]
  %indvars.iv.i944 = phi i64 [ %indvars.iv.next.i945.3, %.lr.ph.i943 ], [ %indvars.iv.i944.unr, %.lr.ph.i943.prol.loopexit ] ; 6 uses
  %.0107.i = phi float [ %i.abz, %.lr.ph.i943 ], [ %.0107.i.unr, %.lr.ph.i943.prol.loopexit ]
  %i.aah = phi <2 x float> [ %i.abv, %.lr.ph.i943 ], [ %.unr161, %.lr.ph.i943.prol.loopexit ]
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
  %.sroa.12171.1.i = phi float [ 0.000000e+00, %.noexc954 ], [ %.lcssa115.unr, %.lr.ph.i943.prol.loopexit ], [ %i.aby, %.lr.ph.i943 ]
  %.0.lcssa.i939 = phi float [ 0.000000e+00, %.noexc954 ], [ %.lcssa114.unr, %.lr.ph.i943.prol.loopexit ], [ %i.abz, %.lr.ph.i943 ]
  %i.aca = phi <2 x float> [ zeroinitializer, %.noexc954 ], [ %.lcssa116.unr, %.lr.ph.i943.prol.loopexit ], [ %i.abv, %.lr.ph.i943 ]
  %i.acb = fdiv float 1.000000e+00, %.0.lcssa.i939 ; 2 uses
  %i.acc = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <2 x float> %i.acc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ace = fmul <2 x float> %i.aca, %i.acd
  %i.acf = fmul float %.sroa.12171.1.i, %i.acb
  %i.acg = load ptr, ptr %i.zf, align 8, !tbaa !145 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acg, i8 0, i64 24, i1 false), !tbaa !147
  %i.ach = load ptr, ptr %i.zj, align 8, !tbaa !145 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ach, i8 0, i64 24, i1 false), !tbaa !147
  %i.aci = load ptr, ptr %i.zn, align 8, !tbaa !145 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aci, i8 0, i64 24, i1 false), !tbaa !147
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
  %83 = fsub float %i.act, %i.acf                 ; 3 uses
  %i.acu = load <2 x float>, ptr %i.acr, align 4, !tbaa !12
  %i.acv = fsub <2 x float> %i.acu, %i.ace        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.acv, %i.acv
  %84 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.acw = extractelement <2 x float> %i.acv, i64 0 ; 2 uses
  %85 = call float @llvm.fmuladd.f32(float %i.acw, float %i.acw, float %84)
  %86 = call noundef float @llvm.fmuladd.f32(float %83, float %83, float %85)
  %i.acx = fpext <2 x float> %i.acv to <2 x double> ; 5 uses
  %i.acy = extractelement <2 x double> %i.acx, i64 0
  %i.acz = fmul double %i.acy, 3.000000e+00       ; 2 uses
  %i.ada = insertelement <2 x double> poison, double %i.acz, i64 0
  %i.adb = shufflevector <2 x double> %i.ada, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adc = load <2 x double>, ptr %i.acg, align 8, !tbaa !147
  %i.add = load double, ptr %i.ack, align 8, !tbaa !147
  %i.ade = extractelement <2 x double> %i.acx, i64 1
  %87 = fmul double %i.ade, 3.000000e+00          ; 2 uses
  %88 = insertelement <2 x double> poison, double %87, i64 0
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> zeroinitializer
  %90 = insertelement <3 x float> poison, float %i.acq, i64 0
  %91 = insertelement <3 x float> %90, float %83, i64 1
  %92 = insertelement <3 x float> %91, float %86, i64 2
  %93 = fpext <3 x float> %92 to <3 x double>     ; 3 uses
  %94 = extractelement <3 x double> %93, i64 1    ; 4 uses
  %95 = extractelement <3 x double> %93, i64 2
  %i.adf = fneg double %95                        ; 3 uses
  %96 = fmul <3 x double> %93, <double 5.000000e-01, double 3.000000e+00, double -0.000000e+00> ; 7 uses
  %i.adg = fmul double %94, 3.000000e+00
  %97 = shufflevector <3 x double> %96, <3 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.adh = insertelement <2 x double> %97, double %i.adf, i64 0
  %i.adi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adb, <2 x double> %i.acx, <2 x double> %i.adh)
  %98 = extractelement <3 x double> %96, i64 2    ; 2 uses
  %i.adj = call double @llvm.fmuladd.f64(double %i.acz, double %94, double %98)
  %99 = shufflevector <3 x double> %96, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adk = fmul <2 x double> %99, %i.adi
  %i.adl = fmul <2 x double> %i.adk, splat (double f0x39F44F5C45C6DEE9)
  %i.adm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adl, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.adc)
  store <2 x double> %i.adm, ptr %i.acg, align 8, !tbaa !147
  %100 = extractelement <3 x double> %96, i64 0   ; 3 uses
  %i.adn = fmul double %100, %i.adj
  %i.ado = fmul double %i.adn, f0x39F44F5C45C6DEE9
  %i.adp = call double @llvm.fmuladd.f64(double %i.ado, double f0x460E457412875905, double %i.add)
  store double %i.adp, ptr %i.ack, align 8, !tbaa !147
  %101 = shufflevector <3 x double> %96, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.adq = insertelement <2 x double> %101, double %i.adf, i64 1
  %i.adr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %89, <2 x double> %i.acx, <2 x double> %i.adq)
  %i.ads = fmul <2 x double> %99, %i.adr
  %i.adt = fmul <2 x double> %i.ads, splat (double f0x39F44F5C45C6DEE9)
  %i.adu = load <2 x double>, ptr %i.ach, align 8, !tbaa !147
  %i.adv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adt, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.adu)
  store <2 x double> %i.adv, ptr %i.ach, align 8, !tbaa !147
  %i.adw = call double @llvm.fmuladd.f64(double %87, double %94, double %98)
  %i.adx = fmul double %100, %i.adw
  %i.ady = fmul double %i.adx, f0x39F44F5C45C6DEE9
  %i.adz = load double, ptr %i.acl, align 8, !tbaa !147
  %i.aea = call double @llvm.fmuladd.f64(double %i.ady, double f0x460E457412875905, double %i.adz)
  store double %i.aea, ptr %i.acl, align 8, !tbaa !147
  %102 = shufflevector <3 x double> %96, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %103 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %102, <2 x double> %i.acx, <2 x double> %101)
  %i.aeb = shufflevector <3 x double> %96, <3 x double> poison, <2 x i32> zeroinitializer
  %i.aec = fmul <2 x double> %i.aeb, %103
  %i.aed = fmul <2 x double> %i.aec, splat (double f0x39F44F5C45C6DEE9)
  %i.aee = load <2 x double>, ptr %i.aci, align 8, !tbaa !147
  %i.aef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aed, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.aee)
  store <2 x double> %i.aef, ptr %i.aci, align 8, !tbaa !147
  %i.aeg = call double @llvm.fmuladd.f64(double %i.adg, double %94, double %i.adf)
  %i.aeh = fmul double %100, %i.aeg
  %i.aei = fmul double %i.aeh, f0x39F44F5C45C6DEE9
  %i.aej = load double, ptr %i.acm, align 8, !tbaa !147
  %i.aek = call double @llvm.fmuladd.f64(double %i.aei, double f0x460E457412875905, double %i.aej)
  store double %i.aek, ptr %i.acm, align 8, !tbaa !147
  %indvars.iv.next138.i = add nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %._crit_edge114.i, label %.preheader101.i, !llvm.loop !96

._crit_edge114.i:                                 ; preds = %.preheader101.i, %._crit_edge.i
  %i.ael = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i940 = icmp eq ptr %i.ael, null
  br i1 %.not.i940, label %.loopexit100.i, label %.preheader99.preheader.i

.preheader99.preheader.i:                         ; preds = %._crit_edge114.i
  %i.aem = load double, ptr %i.acg, align 8, !tbaa !147
  %i.aen = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !147
  %i.aep = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aeq = load double, ptr %i.aep, align 8, !tbaa !147
  %i.aer = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ael, ptr noundef nonnull @.str.229, i32 noundef 0, double noundef %i.aem, double noundef %i.aeo, double noundef %i.aeq) #22 ; 0 uses
  %i.aes = load ptr, ptr @debug, align 8, !tbaa !130
  %i.aet = load ptr, ptr %i.zj, align 8, !tbaa !145 ; 3 uses
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !147
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !147
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !147
  %i.aez = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aes, ptr noundef nonnull @.str.229, i32 noundef 1, double noundef %i.aeu, double noundef %i.aew, double noundef %i.aey) #22 ; 0 uses
  %i.afa = load ptr, ptr @debug, align 8, !tbaa !130
  %i.afb = load ptr, ptr %i.zn, align 8, !tbaa !145 ; 3 uses
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !147
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !147
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !147
  %i.afh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afa, ptr noundef nonnull @.str.229, i32 noundef 2, double noundef %i.afc, double noundef %i.afe, double noundef %i.afg) #22 ; 0 uses
  br label %.loopexit100.i

.loopexit100.i:                                   ; preds = %.preheader99.preheader.i, %._crit_edge114.i
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.zf, i32 noundef 3, ptr noundef nonnull %i.z, ptr noundef nonnull %i.zg, ptr noundef nonnull %i.y)
          to label %.noexc955 unwind label %.loopexit.split-lp

.noexc955:                                        ; preds = %.loopexit100.i
  %i.afi = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not84.i = icmp eq ptr %i.afi, null
  br i1 %.not84.i, label %.loopexit.i, label %.preheader98.preheader.i

.preheader98.preheader.i:                         ; preds = %.noexc955
  %i.afj = load ptr, ptr %i.zg, align 8, !tbaa !145 ; 3 uses
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !147
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !147
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !147
  %i.afp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.afi, ptr noundef nonnull @.str.230, i32 noundef 0, double noundef %i.afk, double noundef %i.afm, double noundef %i.afo) #22 ; 0 uses
  %i.afq = load ptr, ptr @debug, align 8, !tbaa !130
  %i.afr = load ptr, ptr %i.zl, align 8, !tbaa !145 ; 3 uses
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !147
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !147
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !147
  %i.afx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afq, ptr noundef nonnull @.str.230, i32 noundef 1, double noundef %i.afs, double noundef %i.afu, double noundef %i.afw) #22 ; 0 uses
  %i.afy = load ptr, ptr @debug, align 8, !tbaa !130
  %i.afz = load ptr, ptr %i.zp, align 8, !tbaa !145 ; 3 uses
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !147
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.agc = load double, ptr %i.agb, align 8, !tbaa !147
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  %i.age = load double, ptr %i.agd, align 8, !tbaa !147
  %i.agf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afy, ptr noundef nonnull @.str.230, i32 noundef 2, double noundef %i.aga, double noundef %i.agc, double noundef %i.age) #22 ; 0 uses
  %i.agg = load ptr, ptr @debug, align 8, !tbaa !130
  %i.agh = load ptr, ptr %i.zf, align 8, !tbaa !145 ; 3 uses
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !147
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !147
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !147
  %i.agn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agg, ptr noundef nonnull @.str.231, i32 noundef 0, double noundef %i.agi, double noundef %i.agk, double noundef %i.agm) #22 ; 0 uses
  %i.ago = load ptr, ptr @debug, align 8, !tbaa !130
  %i.agp = load ptr, ptr %i.zj, align 8, !tbaa !145 ; 3 uses
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !147
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !147
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !147
  %i.agv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ago, ptr noundef nonnull @.str.231, i32 noundef 1, double noundef %i.agq, double noundef %i.ags, double noundef %i.agu) #22 ; 0 uses
  %i.agw = load ptr, ptr @debug, align 8, !tbaa !130
  %i.agx = load ptr, ptr %i.zn, align 8, !tbaa !145 ; 3 uses
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !147
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !147
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agx, i64 16
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !147
  %i.ahd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agw, ptr noundef nonnull @.str.231, i32 noundef 2, double noundef %i.agy, double noundef %i.aha, double noundef %i.ahc) #22 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader98.preheader.i, %.noexc955
  %i.ahe = load double, ptr %i.rp, align 8, !tbaa !147 ; 4 uses
  %i.ahf = load double, ptr %i.z, align 16, !tbaa !147 ; 4 uses
  %i.ahg = fcmp ogt double %i.ahe, %i.ahf
  br i1 %i.ahg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.loopexit.i
  store double %i.ahe, ptr %i.z, align 16, !tbaa !147
  store double %i.ahf, ptr %i.rp, align 8, !tbaa !147
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit.i
  %i.ahh = phi double [ %i.ahe, %bb.cu ], [ %i.ahf, %.loopexit.i ] ; 4 uses
  %i.ahi = phi double [ %i.ahf, %bb.cu ], [ %i.ahe, %.loopexit.i ] ; 4 uses
  %i.ahj = load double, ptr %i.rq, align 16, !tbaa !147 ; 4 uses
  %i.ahk = fcmp ogt double %i.ahj, %i.ahi
  br i1 %i.ahk, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store double %i.ahj, ptr %i.rp, align 8, !tbaa !147
  store double %i.ahi, ptr %i.rq, align 16, !tbaa !147
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ahl = phi double [ %i.ahi, %bb.cw ], [ %i.ahj, %bb.cv ]
  %i.ahm = phi double [ %i.ahj, %bb.cw ], [ %i.ahi, %bb.cv ] ; 4 uses
  %i.ahn = fcmp ogt double %i.ahm, %i.ahh
  br i1 %i.ahn, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store double %i.ahm, ptr %i.z, align 16, !tbaa !147
  store double %i.ahh, ptr %i.rp, align 8, !tbaa !147
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.aho = phi double [ %i.ahh, %bb.cy ], [ %i.ahm, %bb.cx ]
  %i.ahp = phi double [ %i.ahm, %bb.cy ], [ %i.ahh, %bb.cx ]
  %i.ahq = insertelement <2 x double> poison, double %i.ahl, i64 0
  %i.ahr = insertelement <2 x double> %i.ahq, double %i.ahp, i64 1
  %i.ahs = fptrunc <2 x double> %i.ahr to <2 x float>
  store <2 x float> %i.ahs, ptr %i.aq, align 8, !tbaa !12
  %i.aht = fptrunc double %i.aho to float
  store float %i.aht, ptr %i.rs, align 8, !tbaa !12
  %i.ahu = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not85.i = icmp eq ptr %i.ahu, null
  br i1 %.not85.i, label %.noexc956, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_Z7pr_rvecP8_IO_FILEiPKcPKfib(ptr noundef nonnull %i.ahu, i32 noundef 0, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.aq, i32 noundef 3, i1 noundef zeroext true)
          to label %.noexc956 unwind label %.loopexit.split-lp

.noexc956:                                        ; preds = %bb.da, %bb.cz
  %i.ahv = load ptr, ptr %i.zf, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.ahv)
          to label %.noexc957 unwind label %.loopexit.split-lp

.noexc957:                                        ; preds = %.noexc956
  %i.ahw = load ptr, ptr %i.zg, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.ahw)
          to label %.noexc958 unwind label %.loopexit.split-lp

.noexc958:                                        ; preds = %.noexc957
  %i.ahx = load ptr, ptr %i.zj, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.ahx)
          to label %.noexc959 unwind label %.loopexit.split-lp

.noexc959:                                        ; preds = %.noexc958
  %i.ahy = load ptr, ptr %i.zl, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.ahy)
          to label %.noexc960 unwind label %.loopexit.split-lp

.noexc960:                                        ; preds = %.noexc959
  %i.ahz = load ptr, ptr %i.zn, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.ahz)
          to label %.noexc961 unwind label %.loopexit.split-lp

.noexc961:                                        ; preds = %.noexc960
  %i.aia = load ptr, ptr %i.zp, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aia)
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
  %i.aib = load ptr, ptr %i.ga, align 8, !tbaa !128
  %i.aic = load float, ptr %i.aq, align 8, !tbaa !12
  %i.aid = fpext float %i.aic to double
  invoke void @_Z19gmx_stats_add_pointP9gmx_statsdddd(ptr noundef %i.aib, double noundef 0.000000e+00, double noundef %i.aid, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %bb.db unwind label %.loopexit127

bb.db:                                            ; preds = %_ZL8mol_quadiiPA3_fPK6t_atomPf.exit
  %i.aie = load ptr, ptr %i.gd, align 8, !tbaa !128
  %i.aif = load float, ptr %i.rr, align 4, !tbaa !12
  %i.aig = fpext float %i.aif to double
  invoke void @_Z19gmx_stats_add_pointP9gmx_statsdddd(ptr noundef %i.aie, double noundef 0.000000e+00, double noundef %i.aig, double noundef 0.000000e+00, double noundef 0.000000e+00)
end_hunk_0
