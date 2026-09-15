Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL6do_dipPK10t_topology7PbcTypefPKcS4_S4_S4_S4_S4_S4_S4_bS4_S4_bS4_bPiiiS4_fbbS4_S5_PS5_ffffS5_ibiS4_S4_PK16gmx_output_env_t:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #22
  %i.ze = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.100, i32 noundef 570, i64 noundef 3, i64 noundef 8)
          to label %.noexc951 unwind label %.loopexit.split-lp ; 8 uses

.noexc951:                                        ; preds = %bb.ct
  %i.zf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.100, i32 noundef 571, i64 noundef 3, i64 noundef 8)
          to label %.noexc952 unwind label %.loopexit.split-lp ; 7 uses

.noexc952:                                        ; preds = %.noexc951
  %i.zg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc953 unwind label %.loopexit.split-lp

.noexc953:                                        ; preds = %.noexc952
  store ptr %i.zg, ptr %i.ze, align 8, !tbaa !145
  %i.zh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc954 unwind label %.loopexit.split-lp

.noexc954:                                        ; preds = %.noexc953
  store ptr %i.zh, ptr %i.zf, align 8, !tbaa !145
  store double 0.000000e+00, ptr %i.z, align 16, !tbaa !147
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 5 uses
  %i.zj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc955 unwind label %.loopexit.split-lp

.noexc955:                                        ; preds = %.noexc954
  store ptr %i.zj, ptr %i.zi, align 8, !tbaa !145
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 3 uses
  %i.zl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc956 unwind label %.loopexit.split-lp

.noexc956:                                        ; preds = %.noexc955
  store ptr %i.zl, ptr %i.zk, align 8, !tbaa !145
  store double 0.000000e+00, ptr %i.ro, align 8, !tbaa !147
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ze, i64 16 ; 5 uses
  %i.zn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 574, i64 noundef 3, i64 noundef 8)
          to label %.noexc957 unwind label %.loopexit.split-lp

.noexc957:                                        ; preds = %.noexc956
  store ptr %i.zn, ptr %i.zm, align 8, !tbaa !145
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zf, i64 16 ; 3 uses
  %i.zp = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 575, i64 noundef 3, i64 noundef 8)
          to label %.noexc958 unwind label %.loopexit.split-lp

.noexc958:                                        ; preds = %.noexc957
  store ptr %i.zp, ptr %i.zo, align 8, !tbaa !145
  store double 0.000000e+00, ptr %i.rp, align 16, !tbaa !147
  br i1 %i.uu, label %.lr.ph.preheader.i945, label %._crit_edge.i

.lr.ph.preheader.i945:                            ; preds = %.noexc958
  %i.zq = sext i32 %i.un to i64                   ; 4 uses
  %wide.trip.count.i946 = sext i32 %i.up to i64   ; 3 uses
  %i.zr = sub nsw i64 %wide.trip.count.i946, %i.zq
  %xtraiter158 = and i64 %i.zr, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.lr.ph.i947.prol.loopexit, label %.lr.ph.i947.prol

.lr.ph.i947.prol:                                 ; preds = %.lr.ph.preheader.i945, %.lr.ph.i947.prol
  %.sroa.12171.0.i.prol = phi float [ %i.aac, %.lr.ph.i947.prol ], [ 0.000000e+00, %.lr.ph.preheader.i945 ]
  %indvars.iv.i948.prol = phi i64 [ %indvars.iv.next.i949.prol, %.lr.ph.i947.prol ], [ %i.zq, %.lr.ph.preheader.i945 ] ; 3 uses
  %.0107.i.prol = phi float [ %i.aad, %.lr.ph.i947.prol ], [ 0.000000e+00, %.lr.ph.preheader.i945 ]
  %i.zs = phi <2 x float> [ %i.zz, %.lr.ph.i947.prol ], [ zeroinitializer, %.lr.ph.preheader.i945 ]
  %prol.iter160 = phi i64 [ %prol.iter160.next, %.lr.ph.i947.prol ], [ 0, %.lr.ph.preheader.i945 ]
  %i.zt = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.i948.prol
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !50 ; 3 uses
  %i.zv = getelementptr inbounds [12 x i8], ptr %i.zd, i64 %indvars.iv.i948.prol ; 2 uses
  %i.zw = load <2 x float>, ptr %i.zv, align 4, !tbaa !12
  %i.zx = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.zw, <2 x float> %i.zs) ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !12
  %i.aac = call float @llvm.fmuladd.f32(float %i.zu, float %i.aab, float %.sroa.12171.0.i.prol) ; 3 uses
  %i.aad = fadd float %.0107.i.prol, %i.zu        ; 3 uses
  %indvars.iv.next.i949.prol = add nsw i64 %indvars.iv.i948.prol, 1 ; 2 uses
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %.lr.ph.i947.prol.loopexit, label %.lr.ph.i947.prol, !llvm.loop !94

.lr.ph.i947.prol.loopexit:                        ; preds = %.lr.ph.i947.prol, %.lr.ph.preheader.i945
  %.lcssa116.unr = phi <2 x float> [ poison, %.lr.ph.preheader.i945 ], [ %i.zz, %.lr.ph.i947.prol ]
  %.lcssa115.unr = phi float [ poison, %.lr.ph.preheader.i945 ], [ %i.aac, %.lr.ph.i947.prol ]
  %.lcssa114.unr = phi float [ poison, %.lr.ph.preheader.i945 ], [ %i.aad, %.lr.ph.i947.prol ]
  %.sroa.12171.0.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i945 ], [ %i.aac, %.lr.ph.i947.prol ]
  %indvars.iv.i948.unr = phi i64 [ %i.zq, %.lr.ph.preheader.i945 ], [ %indvars.iv.next.i949.prol, %.lr.ph.i947.prol ]
  %.0107.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i945 ], [ %i.aad, %.lr.ph.i947.prol ]
  %.unr161 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i945 ], [ %i.zz, %.lr.ph.i947.prol ]
  %i.aae = sub nsw i64 %i.zq, %wide.trip.count.i946
  %i.aaf = icmp ugt i64 %i.aae, -4
  br i1 %i.aaf, label %._crit_edge.i, label %.lr.ph.i947

.lr.ph.i947:                                      ; preds = %.lr.ph.i947.prol.loopexit, %.lr.ph.i947
  %.sroa.12171.0.i = phi float [ %i.abx, %.lr.ph.i947 ], [ %.sroa.12171.0.i.unr, %.lr.ph.i947.prol.loopexit ]
  %indvars.iv.i948 = phi i64 [ %indvars.iv.next.i949.3, %.lr.ph.i947 ], [ %indvars.iv.i948.unr, %.lr.ph.i947.prol.loopexit ] ; 6 uses
  %.0107.i = phi float [ %i.aby, %.lr.ph.i947 ], [ %.0107.i.unr, %.lr.ph.i947.prol.loopexit ]
  %i.aag = phi <2 x float> [ %i.abu, %.lr.ph.i947 ], [ %.unr161, %.lr.ph.i947.prol.loopexit ]
  %i.aah = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.i948
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !50 ; 3 uses
  %i.aaj = getelementptr inbounds [12 x i8], ptr %i.zd, i64 %indvars.iv.i948 ; 2 uses
  %i.aak = load <2 x float>, ptr %i.aaj, align 4, !tbaa !12
  %i.aal = insertelement <2 x float> poison, float %i.aai, i64 0
  %i.aam = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aam, <2 x float> %i.aak, <2 x float> %i.aag)
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !12
  %i.aaq = call float @llvm.fmuladd.f32(float %i.aai, float %i.aap, float %.sroa.12171.0.i)
  %i.aar = fadd float %.0107.i, %i.aai
  %indvars.iv.next.i949 = add nsw i64 %indvars.iv.i948, 1 ; 2 uses
  %i.aas = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i949
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !50 ; 3 uses
  %i.aau = getelementptr inbounds [12 x i8], ptr %i.zd, i64 %indvars.iv.next.i949 ; 2 uses
  %i.aav = load <2 x float>, ptr %i.aau, align 4, !tbaa !12
  %i.aaw = insertelement <2 x float> poison, float %i.aat, i64 0
  %i.aax = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aax, <2 x float> %i.aav, <2 x float> %i.aan)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !12
  %i.abb = call float @llvm.fmuladd.f32(float %i.aat, float %i.aba, float %i.aaq)
  %i.abc = fadd float %i.aar, %i.aat
  %indvars.iv.next.i949.1 = add nsw i64 %indvars.iv.i948, 2 ; 2 uses
  %i.abd = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i949.1
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !50 ; 3 uses
  %i.abf = getelementptr inbounds [12 x i8], ptr %i.zd, i64 %indvars.iv.next.i949.1 ; 2 uses
  %i.abg = load <2 x float>, ptr %i.abf, align 4, !tbaa !12
  %i.abh = insertelement <2 x float> poison, float %i.abe, i64 0
  %i.abi = shufflevector <2 x float> %i.abh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abi, <2 x float> %i.abg, <2 x float> %i.aay)
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !12
  %i.abm = call float @llvm.fmuladd.f32(float %i.abe, float %i.abl, float %i.abb)
  %i.abn = fadd float %i.abc, %i.abe
  %indvars.iv.next.i949.2 = add nsw i64 %indvars.iv.i948, 3 ; 2 uses
  %i.abo = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv.next.i949.2
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !50 ; 3 uses
  %i.abq = getelementptr inbounds [12 x i8], ptr %i.zd, i64 %indvars.iv.next.i949.2 ; 2 uses
  %i.abr = load <2 x float>, ptr %i.abq, align 4, !tbaa !12
  %i.abs = insertelement <2 x float> poison, float %i.abp, i64 0
  %i.abt = shufflevector <2 x float> %i.abs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abt, <2 x float> %i.abr, <2 x float> %i.abj) ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !12
  %i.abx = call float @llvm.fmuladd.f32(float %i.abp, float %i.abw, float %i.abm) ; 2 uses
  %i.aby = fadd float %i.abn, %i.abp              ; 2 uses
  %indvars.iv.next.i949.3 = add nsw i64 %indvars.iv.i948, 4 ; 2 uses
  %exitcond.not.i950.3 = icmp eq i64 %indvars.iv.next.i949.3, %wide.trip.count.i946
  br i1 %exitcond.not.i950.3, label %._crit_edge.i, label %.lr.ph.i947, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i947.prol.loopexit, %.lr.ph.i947, %.noexc958
  %.sroa.12171.1.i = phi float [ 0.000000e+00, %.noexc958 ], [ %.lcssa115.unr, %.lr.ph.i947.prol.loopexit ], [ %i.abx, %.lr.ph.i947 ]
  %.0.lcssa.i943 = phi float [ 0.000000e+00, %.noexc958 ], [ %.lcssa114.unr, %.lr.ph.i947.prol.loopexit ], [ %i.aby, %.lr.ph.i947 ]
  %i.abz = phi <2 x float> [ zeroinitializer, %.noexc958 ], [ %.lcssa116.unr, %.lr.ph.i947.prol.loopexit ], [ %i.abu, %.lr.ph.i947 ]
  %i.aca = fdiv float 1.000000e+00, %.0.lcssa.i943 ; 2 uses
  %i.acb = insertelement <2 x float> poison, float %i.aca, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acd = fmul <2 x float> %i.abz, %i.acc
  %i.ace = fmul float %.sroa.12171.1.i, %i.aca
  %i.acf = load ptr, ptr %i.ze, align 8, !tbaa !145 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acf, i8 0, i64 24, i1 false), !tbaa !147
  %i.acg = load ptr, ptr %i.zi, align 8, !tbaa !145 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acg, i8 0, i64 24, i1 false), !tbaa !147
  %i.ach = load ptr, ptr %i.zm, align 8, !tbaa !145 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ach, i8 0, i64 24, i1 false), !tbaa !147
  br i1 %i.uu, label %.lr.ph113.i, label %._crit_edge114.i

.lr.ph113.i:                                      ; preds = %._crit_edge.i
  %i.aci = sext i32 %i.un to i64
  %wide.trip.count140.i = sext i32 %i.up to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 16 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 16 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 16 ; 2 uses
  br label %.preheader101.i

.preheader101.i:                                  ; preds = %.preheader101.i, %.lr.ph113.i
  %indvars.iv137.i = phi i64 [ %i.aci, %.lr.ph113.i ], [ %indvars.iv.next138.i, %.preheader101.i ] ; 3 uses
  %i.acm = getelementptr inbounds [36 x i8], ptr %i.fj, i64 %indvars.iv137.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !51
  %i.acp = fmul float %i.aco, 1.000000e+02
  %i.acq = getelementptr inbounds [12 x i8], ptr %i.zd, i64 %indvars.iv137.i ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !12
  %i.act = fsub float %i.acs, %i.ace              ; 3 uses
  %i.acu = load <2 x float>, ptr %i.acq, align 4, !tbaa !12
  %i.acv = fsub <2 x float> %i.acu, %i.acd        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.acv, %i.acv
  %i.acw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.acx = extractelement <2 x float> %i.acv, i64 0 ; 2 uses
  %i.acy = call float @llvm.fmuladd.f32(float %i.acx, float %i.acx, float %i.acw)
  %i.acz = call noundef float @llvm.fmuladd.f32(float %i.act, float %i.act, float %i.acy)
  %i.ada = fpext <2 x float> %i.acv to <2 x double> ; 5 uses
  %i.adb = extractelement <2 x double> %i.ada, i64 0
  %i.adc = fmul double %i.adb, 3.000000e+00       ; 2 uses
  %i.add = insertelement <2 x double> poison, double %i.adc, i64 0
  %i.ade = shufflevector <2 x double> %i.add, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adf = load <2 x double>, ptr %i.acf, align 8, !tbaa !147
  %i.adg = load double, ptr %i.acj, align 8, !tbaa !147
  %i.adh = extractelement <2 x double> %i.ada, i64 1
  %i.adi = fmul double %i.adh, 3.000000e+00       ; 2 uses
  %i.adj = insertelement <2 x double> poison, double %i.adi, i64 0
  %i.adk = shufflevector <2 x double> %i.adj, <2 x double> poison, <2 x i32> zeroinitializer
  %83 = insertelement <3 x float> poison, float %i.acp, i64 0
  %84 = insertelement <3 x float> %83, float %i.act, i64 1
  %85 = insertelement <3 x float> %84, float %i.acz, i64 2
  %86 = fpext <3 x float> %85 to <3 x double>     ; 3 uses
  %87 = extractelement <3 x double> %86, i64 1    ; 4 uses
  %88 = extractelement <3 x double> %86, i64 2
  %89 = fneg double %88                           ; 3 uses
  %90 = fmul <3 x double> %86, <double 5.000000e-01, double 3.000000e+00, double -0.000000e+00> ; 7 uses
  %i.adl = fmul double %87, 3.000000e+00
  %91 = shufflevector <3 x double> %90, <3 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.adm = insertelement <2 x double> %91, double %89, i64 0
  %i.adn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ade, <2 x double> %i.ada, <2 x double> %i.adm)
  %92 = extractelement <3 x double> %90, i64 2    ; 2 uses
  %93 = call double @llvm.fmuladd.f64(double %i.adc, double %87, double %92)
  %i.ado = shufflevector <3 x double> %90, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adp = fmul <2 x double> %i.ado, %i.adn
  %i.adq = fmul <2 x double> %i.adp, splat (double f0x39F44F5C45C6DEE9)
  %i.adr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adq, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.adf)
  store <2 x double> %i.adr, ptr %i.acf, align 8, !tbaa !147
  %94 = extractelement <3 x double> %90, i64 0    ; 3 uses
  %i.ads = fmul double %94, %93
  %i.adt = fmul double %i.ads, f0x39F44F5C45C6DEE9
  %i.adu = call double @llvm.fmuladd.f64(double %i.adt, double f0x460E457412875905, double %i.adg)
  store double %i.adu, ptr %i.acj, align 8, !tbaa !147
  %95 = shufflevector <3 x double> %90, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.adv = insertelement <2 x double> %95, double %89, i64 1
  %i.adw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adk, <2 x double> %i.ada, <2 x double> %i.adv)
  %i.adx = fmul <2 x double> %i.ado, %i.adw
  %i.ady = fmul <2 x double> %i.adx, splat (double f0x39F44F5C45C6DEE9)
  %i.adz = load <2 x double>, ptr %i.acg, align 8, !tbaa !147
  %i.aea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ady, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.adz)
  store <2 x double> %i.aea, ptr %i.acg, align 8, !tbaa !147
  %i.aeb = call double @llvm.fmuladd.f64(double %i.adi, double %87, double %92)
  %i.aec = fmul double %94, %i.aeb
  %i.aed = fmul double %i.aec, f0x39F44F5C45C6DEE9
  %i.aee = load double, ptr %i.ack, align 8, !tbaa !147
  %i.aef = call double @llvm.fmuladd.f64(double %i.aed, double f0x460E457412875905, double %i.aee)
  store double %i.aef, ptr %i.ack, align 8, !tbaa !147
  %96 = shufflevector <3 x double> %90, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %97 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %i.ada, <2 x double> %95)
  %i.aeg = shufflevector <3 x double> %90, <3 x double> poison, <2 x i32> zeroinitializer
  %i.aeh = fmul <2 x double> %i.aeg, %97
  %i.aei = fmul <2 x double> %i.aeh, splat (double f0x39F44F5C45C6DEE9)
  %i.aej = load <2 x double>, ptr %i.ach, align 8, !tbaa !147
  %i.aek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aei, <2 x double> splat (double f0x460E457412875905), <2 x double> %i.aej)
  store <2 x double> %i.aek, ptr %i.ach, align 8, !tbaa !147
  %i.ael = call double @llvm.fmuladd.f64(double %i.adl, double %87, double %89)
  %i.aem = fmul double %94, %i.ael
  %i.aen = fmul double %i.aem, f0x39F44F5C45C6DEE9
  %i.aeo = load double, ptr %i.acl, align 8, !tbaa !147
  %i.aep = call double @llvm.fmuladd.f64(double %i.aen, double f0x460E457412875905, double %i.aeo)
  store double %i.aep, ptr %i.acl, align 8, !tbaa !147
  %indvars.iv.next138.i = add nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %._crit_edge114.i, label %.preheader101.i, !llvm.loop !96

._crit_edge114.i:                                 ; preds = %.preheader101.i, %._crit_edge.i
  %i.aeq = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not.i944 = icmp eq ptr %i.aeq, null
  br i1 %.not.i944, label %.loopexit100.i, label %.preheader99.preheader.i

.preheader99.preheader.i:                         ; preds = %._crit_edge114.i
  %i.aer = load double, ptr %i.acf, align 8, !tbaa !147
  %i.aes = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !147
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.aev = load double, ptr %i.aeu, align 8, !tbaa !147
  %i.aew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aeq, ptr noundef nonnull @.str.229, i32 noundef 0, double noundef %i.aer, double noundef %i.aet, double noundef %i.aev) #22 ; 0 uses
  %i.aex = load ptr, ptr @debug, align 8, !tbaa !130
  %i.aey = load ptr, ptr %i.zi, align 8, !tbaa !145 ; 3 uses
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !147
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !147
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afd = load double, ptr %i.afc, align 8, !tbaa !147
  %i.afe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aex, ptr noundef nonnull @.str.229, i32 noundef 1, double noundef %i.aez, double noundef %i.afb, double noundef %i.afd) #22 ; 0 uses
  %i.aff = load ptr, ptr @debug, align 8, !tbaa !130
  %i.afg = load ptr, ptr %i.zm, align 8, !tbaa !145 ; 3 uses
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !147
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !147
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afl = load double, ptr %i.afk, align 8, !tbaa !147
  %i.afm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aff, ptr noundef nonnull @.str.229, i32 noundef 2, double noundef %i.afh, double noundef %i.afj, double noundef %i.afl) #22 ; 0 uses
  br label %.loopexit100.i

.loopexit100.i:                                   ; preds = %.preheader99.preheader.i, %._crit_edge114.i
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ze, i32 noundef 3, ptr noundef nonnull %i.z, ptr noundef nonnull %i.zf, ptr noundef nonnull %i.y)
          to label %.noexc959 unwind label %.loopexit.split-lp

.noexc959:                                        ; preds = %.loopexit100.i
  %i.afn = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not84.i = icmp eq ptr %i.afn, null
  br i1 %.not84.i, label %.loopexit.i, label %.preheader98.preheader.i

.preheader98.preheader.i:                         ; preds = %.noexc959
  %i.afo = load ptr, ptr %i.zf, align 8, !tbaa !145 ; 3 uses
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !147
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !147
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !147
  %i.afu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.afn, ptr noundef nonnull @.str.230, i32 noundef 0, double noundef %i.afp, double noundef %i.afr, double noundef %i.aft) #22 ; 0 uses
  %i.afv = load ptr, ptr @debug, align 8, !tbaa !130
  %i.afw = load ptr, ptr %i.zk, align 8, !tbaa !145 ; 3 uses
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !147
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !147
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !147
  %i.agc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afv, ptr noundef nonnull @.str.230, i32 noundef 1, double noundef %i.afx, double noundef %i.afz, double noundef %i.agb) #22 ; 0 uses
  %i.agd = load ptr, ptr @debug, align 8, !tbaa !130
  %i.age = load ptr, ptr %i.zo, align 8, !tbaa !145 ; 3 uses
  %i.agf = load double, ptr %i.age, align 8, !tbaa !147
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !147
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !147
  %i.agk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agd, ptr noundef nonnull @.str.230, i32 noundef 2, double noundef %i.agf, double noundef %i.agh, double noundef %i.agj) #22 ; 0 uses
  %i.agl = load ptr, ptr @debug, align 8, !tbaa !130
  %i.agm = load ptr, ptr %i.ze, align 8, !tbaa !145 ; 3 uses
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !147
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !147
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %i.agr = load double, ptr %i.agq, align 8, !tbaa !147
  %i.ags = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agl, ptr noundef nonnull @.str.231, i32 noundef 0, double noundef %i.agn, double noundef %i.agp, double noundef %i.agr) #22 ; 0 uses
  %i.agt = load ptr, ptr @debug, align 8, !tbaa !130
  %i.agu = load ptr, ptr %i.zi, align 8, !tbaa !145 ; 3 uses
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !147
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !147
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !147
  %i.aha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agt, ptr noundef nonnull @.str.231, i32 noundef 1, double noundef %i.agv, double noundef %i.agx, double noundef %i.agz) #22 ; 0 uses
  %i.ahb = load ptr, ptr @debug, align 8, !tbaa !130
  %i.ahc = load ptr, ptr %i.zm, align 8, !tbaa !145 ; 3 uses
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !147
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !147
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !147
  %i.ahi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahb, ptr noundef nonnull @.str.231, i32 noundef 2, double noundef %i.ahd, double noundef %i.ahf, double noundef %i.ahh) #22 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader98.preheader.i, %.noexc959
  %i.ahj = load double, ptr %i.ro, align 8, !tbaa !147 ; 4 uses
  %i.ahk = load double, ptr %i.z, align 16, !tbaa !147 ; 4 uses
  %i.ahl = fcmp ogt double %i.ahj, %i.ahk
  br i1 %i.ahl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.loopexit.i
  store double %i.ahj, ptr %i.z, align 16, !tbaa !147
  store double %i.ahk, ptr %i.ro, align 8, !tbaa !147
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit.i
  %i.ahm = phi double [ %i.ahj, %bb.cu ], [ %i.ahk, %.loopexit.i ] ; 4 uses
  %i.ahn = phi double [ %i.ahk, %bb.cu ], [ %i.ahj, %.loopexit.i ] ; 4 uses
  %i.aho = load double, ptr %i.rp, align 16, !tbaa !147 ; 4 uses
  %i.ahp = fcmp ogt double %i.aho, %i.ahn
  br i1 %i.ahp, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store double %i.aho, ptr %i.ro, align 8, !tbaa !147
  store double %i.ahn, ptr %i.rp, align 16, !tbaa !147
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ahq = phi double [ %i.ahn, %bb.cw ], [ %i.aho, %bb.cv ]
  %i.ahr = phi double [ %i.aho, %bb.cw ], [ %i.ahn, %bb.cv ] ; 4 uses
  %i.ahs = fcmp ogt double %i.ahr, %i.ahm
  br i1 %i.ahs, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store double %i.ahr, ptr %i.z, align 16, !tbaa !147
  store double %i.ahm, ptr %i.ro, align 8, !tbaa !147
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.aht = phi double [ %i.ahm, %bb.cy ], [ %i.ahr, %bb.cx ]
  %i.ahu = phi double [ %i.ahr, %bb.cy ], [ %i.ahm, %bb.cx ]
  %i.ahv = insertelement <2 x double> poison, double %i.ahq, i64 0
  %i.ahw = insertelement <2 x double> %i.ahv, double %i.ahu, i64 1
  %i.ahx = fptrunc <2 x double> %i.ahw to <2 x float>
  store <2 x float> %i.ahx, ptr %i.aq, align 8, !tbaa !12
  %i.ahy = fptrunc double %i.aht to float
  store float %i.ahy, ptr %i.rr, align 8, !tbaa !12
  %i.ahz = load ptr, ptr @debug, align 8, !tbaa !130 ; 2 uses
  %.not85.i = icmp eq ptr %i.ahz, null
  br i1 %.not85.i, label %.noexc960, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_Z7pr_rvecP8_IO_FILEiPKcPKfib(ptr noundef nonnull %i.ahz, i32 noundef 0, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.aq, i32 noundef 3, i1 noundef zeroext true)
          to label %.noexc960 unwind label %.loopexit.split-lp

.noexc960:                                        ; preds = %bb.da, %bb.cz
  %i.aia = load ptr, ptr %i.ze, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.aia)
          to label %.noexc961 unwind label %.loopexit.split-lp

.noexc961:                                        ; preds = %.noexc960
  %i.aib = load ptr, ptr %i.zf, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aib)
          to label %.noexc962 unwind label %.loopexit.split-lp

.noexc962:                                        ; preds = %.noexc961
  %i.aic = load ptr, ptr %i.zi, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.aic)
          to label %.noexc963 unwind label %.loopexit.split-lp

.noexc963:                                        ; preds = %.noexc962
  %i.aid = load ptr, ptr %i.zk, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aid)
          to label %.noexc964 unwind label %.loopexit.split-lp

.noexc964:                                        ; preds = %.noexc963
  %i.aie = load ptr, ptr %i.zm, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.100, i32 noundef 677, ptr noundef %i.aie)
          to label %.noexc965 unwind label %.loopexit.split-lp

.noexc965:                                        ; preds = %.noexc964
  %i.aif = load ptr, ptr %i.zo, align 8, !tbaa !145
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 678, ptr noundef %i.aif)
          to label %.noexc966 unwind label %.loopexit.split-lp

.noexc966:                                        ; preds = %.noexc965
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.100, i32 noundef 680, ptr noundef nonnull %i.ze)
          to label %.noexc967 unwind label %.loopexit.split-lp

.noexc967:                                        ; preds = %.noexc966
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.100, i32 noundef 681, ptr noundef nonnull %i.zf)
          to label %_ZL8mol_quadiiPA3_fPK6t_atomPf.exit unwind label %.loopexit.split-lp

_ZL8mol_quadiiPA3_fPK6t_atomPf.exit:              ; preds = %.noexc967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #22
  %i.aig = load ptr, ptr %i.ga, align 8, !tbaa !128
  %i.aih = load float, ptr %i.aq, align 8, !tbaa !12
  %i.aii = fpext float %i.aih to double
  invoke void @_Z19gmx_stats_add_pointP9gmx_statsdddd(ptr noundef %i.aig, double noundef 0.000000e+00, double noundef %i.aii, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %bb.db unwind label %.loopexit127

bb.db:                                            ; preds = %_ZL8mol_quadiiPA3_fPK6t_atomPf.exit
  %i.aij = load ptr, ptr %i.gd, align 8, !tbaa !128
  %i.aik = load float, ptr %i.rq, align 4, !tbaa !12
  %i.ail = fpext float %i.aik to double
  invoke void @_Z19gmx_stats_add_pointP9gmx_statsdddd(ptr noundef %i.aij, double noundef 0.000000e+00, double noundef %i.ail, double noundef 0.000000e+00, double noundef 0.000000e+00)
end_hunk_0
