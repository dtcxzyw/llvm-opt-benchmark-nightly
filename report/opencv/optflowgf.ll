Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optflowgf?download=true
inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !58
  store float %i.yx, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next297.i.1 = add nuw nsw i64 %indvars.iv296.i, 2 ; 2 uses
  %niter695.next.1 = add i64 %niter695, 2         ; 2 uses
  %niter695.ncmp.1 = icmp eq i64 %niter695.next.1, %unroll_iter694
  br i1 %niter695.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph250.i, !llvm.loop !111

.lr.ph268.i:                                      ; preds = %.preheader.i, %._crit_edge261.i
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i, %._crit_edge261.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.yy = load float, ptr %i.ka, align 4, !tbaa !58 ; 2 uses
  %.idx329.i = mul nuw nsw i64 %indvars.iv306.i, 12
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx329.i ; 2 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !58
  %i.zb = fmul float %i.yy, %i.za
  %i.zc = fpext float %i.zb to double             ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.ze = load <2 x float>, ptr %i.zd, align 4, !tbaa !58
  %i.zf = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zh = fmul <2 x float> %i.zg, %i.ze
  %i.zi = fpext <2 x float> %i.zh to <2 x double> ; 2 uses
  br i1 %.not246.i, label %._crit_edge261.i, label %.lr.ph260.i.preheader

.lr.ph260.i.preheader:                            ; preds = %.lr.ph268.i
  %i.zj = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.zc, i64 0
  br label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %.lr.ph260.i.preheader, %.lr.ph260.i
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.lr.ph260.i ], [ 1, %.lr.ph260.i.preheader ] ; 6 uses
  %i.zk = phi <2 x double> [ %i.aax, %.lr.ph260.i ], [ %i.zi, %.lr.ph260.i.preheader ]
  %i.zl = phi <2 x double> [ %i.aaw, %.lr.ph260.i ], [ zeroinitializer, %.lr.ph260.i.preheader ]
  %i.zm = phi <2 x double> [ %i.aae, %.lr.ph260.i ], [ %i.zj, %.lr.ph260.i.preheader ]
  %i.zn = add nuw nsw i64 %indvars.iv301.i, %indvars.iv306.i
  %.idx330.i = mul nuw nsw i64 %i.zn, 12
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx330.i ; 2 uses
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !58 ; 2 uses
  %i.zq = sub nsw i64 %indvars.iv306.i, %indvars.iv301.i
  %.idx331.i = mul nsw i64 %i.zq, 12
  %i.zr = getelementptr inbounds i8, ptr %i.ki, i64 %.idx331.i ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !58 ; 2 uses
  %i.zt = fadd float %i.zp, %i.zs
  %i.zu = fpext float %i.zt to double
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv301.i
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !58
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv301.i
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !58
  %i.zz = insertelement <2 x float> poison, float %i.zw, i64 0 ; 2 uses
  %i.aaa = insertelement <2 x float> %i.zz, float %i.zy, i64 1
  %i.aab = fpext <2 x float> %i.aaa to <2 x double>
  %i.aac = insertelement <2 x double> poison, double %i.zu, i64 0
  %i.aad = shufflevector <2 x double> %i.aac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aae = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aad, <2 x double> %i.aab, <2 x double> %i.zm) ; 3 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv301.i
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !58
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.aai = getelementptr i8, ptr %i.zr, i64 4
  %i.aaj = load <2 x float>, ptr %i.aah, align 4, !tbaa !58 ; 2 uses
  %i.aak = load <2 x float>, ptr %i.aai, align 4, !tbaa !58 ; 2 uses
  %i.aal = fadd <2 x float> %i.aaj, %i.aak
  %i.aam = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = fmul <2 x float> %i.aam, %i.aal
  %i.aao = fpext <2 x float> %i.aan to <2 x double>
  %i.aap = fsub float %i.zp, %i.zs
  %foldExtExtBinop = fsub <2 x float> %i.aaj, %i.aak
  %i.aaq = insertelement <2 x float> poison, float %i.aap, i64 0
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.aas = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aat = shufflevector <2 x float> %i.aas, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aau = fmul <2 x float> %i.aar, %i.aat
  %i.aav = fpext <2 x float> %i.aau to <2 x double>
  %i.aaw = fadd <2 x double> %i.zl, %i.aav        ; 2 uses
  %i.aax = fadd <2 x double> %i.zk, %i.aao        ; 2 uses
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count294.i
  br i1 %exitcond305.not.i, label %._crit_edge261.i.loopexit, label %.lr.ph260.i, !llvm.loop !112

._crit_edge261.i.loopexit:                        ; preds = %.lr.ph260.i
  %i.aay = extractelement <2 x double> %i.aae, i64 1
  %i.aaz = extractelement <2 x double> %i.aae, i64 0
  br label %._crit_edge261.i

._crit_edge261.i:                                 ; preds = %._crit_edge261.i.loopexit, %.lr.ph268.i
  %.0190.lcssa.i = phi double [ %i.zc, %.lr.ph268.i ], [ %i.aaz, %._crit_edge261.i.loopexit ]
  %.0187.lcssa.i = phi double [ 0.000000e+00, %.lr.ph268.i ], [ %i.aay, %._crit_edge261.i.loopexit ]
  %i.aba = phi <2 x double> [ %i.zi, %.lr.ph268.i ], [ %i.aax, %._crit_edge261.i.loopexit ] ; 2 uses
  %i.abb = phi <2 x double> [ zeroinitializer, %.lr.ph268.i ], [ %i.aaw, %._crit_edge261.i.loopexit ] ; 2 uses
  %.idx332.i = mul nuw nsw i64 %indvars.iv306.i, 20
  %i.abc = getelementptr inbounds nuw i8, ptr %i.tm, i64 %.idx332.i ; 2 uses
  %i.abd = shufflevector <2 x double> %i.aba, <2 x double> %i.abb, <2 x i32> <i32 0, i32 2>
  %i.abe = fmul <2 x double> %i.ta, %i.abd
  %i.abf = shufflevector <2 x double> %i.aba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abg = insertelement <2 x double> %i.abf, double %.0187.lcssa.i, i64 1
  %i.abh = fmul <2 x double> %i.tc, %i.abg
  %i.abi = insertelement <2 x double> poison, double %.0190.lcssa.i, i64 0
  %i.abj = shufflevector <2 x double> %i.abi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> %i.te, <2 x double> %i.abh)
  %i.abl = shufflevector <2 x double> %i.abe, <2 x double> %i.abk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abm = fptrunc <4 x double> %i.abl to <4 x float>
  store <4 x float> %i.abm, ptr %i.abc, align 4, !tbaa !58
  %i.abn = extractelement <2 x double> %i.abb, i64 1
  %i.abo = fmul double %i.rw, %i.abn
  %i.abp = fptrunc double %i.abo to float
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  store float %i.abp, ptr %i.abq, align 4, !tbaa !58
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 1 ; 2 uses
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next307.i, %wide.trip.count.i
  br i1 %exitcond310.not.i, label %._crit_edge269.i, label %.lr.ph268.i, !llvm.loop !113

._crit_edge269.i:                                 ; preds = %._crit_edge261.i, %.preheader.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %exitcond315.not.i = icmp eq i64 %indvars.iv.next312.i, %wide.trip.count314.i
  br i1 %exitcond315.not.i, label %._crit_edge273.i, label %bb.cz, !llvm.loop !114

._crit_edge273.i:                                 ; preds = %._crit_edge269.i, %.preheader238.i
  %i.abr = load ptr, ptr %19, align 8, !tbaa !171 ; 3 uses
  %.not.i.i213.i = icmp eq ptr %i.abr, %i.fo
  %i.abs = icmp eq ptr %i.abr, null
  %or.cond.i214.i = or i1 %.not.i.i213.i, %i.abs
  br i1 %or.cond.i214.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge273.i
  call void @_ZdaPv(ptr noundef nonnull %i.abr) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i

_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i:        ; preds = %bb.dd, %._crit_edge273.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.abt = load ptr, ptr %18, align 8, !tbaa !171 ; 3 uses
  %.not.i.i216.i = icmp eq ptr %i.abt, %i.fm
  %i.abu = icmp eq ptr %i.abt, null
  %or.cond.i217.i = or i1 %.not.i.i216.i, %i.abu
  br i1 %or.cond.i217.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i
  call void @_ZdaPv(ptr noundef nonnull %i.abt) #25
  br label %bb.dg

_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i:           ; preds = %bb.dc, %.body.i, %bb.da
  %.pn204.i = phi { ptr, i32 } [ %i.uj, %bb.da ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.abv = load ptr, ptr %18, align 8, !tbaa !171 ; 3 uses
  %.not.i.i219.i = icmp eq ptr %i.abv, %i.fm
  %i.abw = icmp eq ptr %i.abv, null
  %or.cond.i220.i = or i1 %.not.i.i219.i, %i.abw
  br i1 %or.cond.i220.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit221.i, label %bb.df

bb.df:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.abv) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit221.i

_ZN2cv10AutoBufferIfLm264EED2Ev.exit221.i:        ; preds = %bb.df, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body174

bb.dg:                                            ; preds = %bb.de, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %i.is, label %bb.bv, label %bb.dk, !llvm.loop !115

bb.dh:                                            ; preds = %bb.bv
  %i.abx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  br label %.body174

bb.di:                                            ; preds = %bb.bw
  %i.aby = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br label %.body174

bb.dj:                                            ; preds = %bb.bx
  %i.abz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %.body174

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ej, %bb.dm, %bb.cf, %bb.dk, %._crit_edge366
  %lpad.loopexit.split-lp669 = landingpad { ptr, i32 }
          cleanup
  br label %.body174

bb.dk:                                            ; preds = %bb.dg
  %i.aca = load i32, ptr %i.ge, align 8, !tbaa !56
  %.val117 = load ptr, ptr %i.gf, align 8, !tbaa !59
  %.val118 = load i64, ptr %i.gg, align 16, !tbaa !44
  invoke fastcc void @_ZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_ii(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr %.val117, i64 %.val118, ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %46, i32 noundef 0, i32 noundef %i.aca)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.dk
  %i.acb = load i32, ptr %i.gh, align 8, !tbaa !23 ; 2 uses
  %i.acc = icmp sgt i32 %i.acb, 0
  br i1 %i.acc, label %.lr.ph365, label %._crit_edge366

.lr.ph365:                                        ; preds = %.preheader, %bb.er
  %i.acd = phi i32 [ %i.baj, %bb.er ], [ %i.acb, %.preheader ]
  %.245364 = phi i32 [ %i.bai, %bb.er ], [ 0, %.preheader ] ; 2 uses
  %i.ace = load i32, ptr %i.bw, align 8, !tbaa !26
  %i.acf = and i32 %i.ace, 256
  %.not88 = icmp eq i32 %i.acf, 0
  %i.acg = load i32, ptr %i.gi, align 4, !tbaa !22 ; 13 uses
  %i.ach = add nsw i32 %i.acd, -1
  %i.aci = icmp slt i32 %.245364, %i.ach          ; 2 uses
  %i.acj = load i32, ptr %i.gj, align 4, !tbaa !55 ; 12 uses
  %i.ack = load i32, ptr %i.ge, align 8, !tbaa !56 ; 11 uses
  %i.acl = sdiv i32 %i.acg, 2                     ; 17 uses
  %i.acm = sdiv i32 1024, %i.acj
  %.sroa.speculated202.i = call i32 @llvm.smax.i32(i32 %i.acm, i32 %i.acg) ; 2 uses
  br i1 %.not88, label %bb.ei, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph365
  %i.acn = sitofp i32 %i.acl to double
  %i.aco = fmul nnan double %i.acn, 3.000000e-01  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.acp = shl nsw i32 %i.acl, 1                  ; 3 uses
  %i.acq = add nsw i32 %i.acp, %i.acj
  %i.acr = mul i32 %i.acq, 5
  %i.acs = add i32 %i.acr, 26                     ; 3 uses
  %i.act = sext i32 %i.acs to i64                 ; 2 uses
  store ptr %i.gk, ptr %7, align 8, !tbaa !171
  %.not.i.i.i176 = icmp ugt i32 %i.acs, 264
  store i64 %i.act, ptr %i.gl, align 8, !tbaa !172
  br i1 %.not.i.i.i176, label %bb.dm, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i177

bb.dm:                                            ; preds = %bb.dl
  %i.acu = icmp slt i32 %i.acs, 0
  %i.acv = shl nuw nsw i64 %i.act, 2
  %i.acw = select i1 %i.acu, i64 -1, i64 %i.acv
  %i.acx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.acw) #24
          to label %.noexc210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc210:                                        ; preds = %bb.dm
  store ptr %i.acx, ptr %7, align 8, !tbaa !171
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i177

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i177:        ; preds = %.noexc210, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.acy = mul nsw i32 %i.acj, 5                  ; 3 uses
  %i.acz = add nsw i32 %i.acy, 16                 ; 2 uses
  %i.ada = sext i32 %i.acz to i64                 ; 2 uses
  store ptr %i.gm, ptr %8, align 8, !tbaa !171
  %.not.i.i190.i = icmp ugt i32 %i.acz, 264
  store i64 %i.ada, ptr %i.gn, align 8, !tbaa !172
  br i1 %.not.i.i190.i, label %bb.dn, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit191.i

bb.dn:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i177
  %i.adb = icmp slt i32 %i.acj, -3
  %i.adc = shl nuw nsw i64 %i.ada, 2
  %i.add = select i1 %i.adb, i64 -1, i64 %i.adc
  %i.ade = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.add) #24
          to label %.noexc.i209 unwind label %bb.dr

.noexc.i209:                                      ; preds = %bb.dn
  store ptr %i.ade, ptr %8, align 8, !tbaa !171
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit191.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit191.i:        ; preds = %.noexc.i209, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i177
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.adf = mul i32 %i.acl, 5                      ; 5 uses
  %i.adg = add i32 %i.adf, 5
  %i.adh = add i32 %i.adf, 21                     ; 3 uses
  %i.adi = sext i32 %i.adh to i64                 ; 2 uses
  store ptr %i.go, ptr %9, align 8, !tbaa !171
  %.not.i.i192.i = icmp ugt i32 %i.adh, 264
  store i64 %i.adi, ptr %i.gp, align 8, !tbaa !172
  br i1 %.not.i.i192.i, label %bb.do, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i

bb.do:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit191.i
  %i.adj = icmp slt i32 %i.adh, 0
  %i.adk = shl nuw nsw i64 %i.adi, 2
  %i.adl = select i1 %i.adj, i64 -1, i64 %i.adk
  %i.adm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adl) #24
          to label %.noexc193.i unwind label %bb.ds ; 2 uses

.noexc193.i:                                      ; preds = %bb.do
  store ptr %i.adm, ptr %9, align 8, !tbaa !171
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i:        ; preds = %.noexc193.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit191.i
  %i.adn = phi ptr [ %i.adm, %.noexc193.i ], [ %i.go, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit191.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ado = or disjoint i32 %i.acp, 1
  %i.adp = sext i32 %i.ado to i64                 ; 2 uses
  store ptr %i.gq, ptr %10, align 8, !tbaa !191
  %.not.i.i195.i = icmp ugt i32 %i.acp, 135
  store i64 %i.adp, ptr %i.gr, align 8, !tbaa !192
  br i1 %.not.i.i195.i, label %bb.dp, label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit.i

bb.dp:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i
  %i.adq = icmp slt i32 %i.acg, -1
  %i.adr = shl nuw nsw i64 %i.adp, 3
  %i.ads = select i1 %i.adq, i64 -1, i64 %i.adr
  %i.adt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ads) #24
          to label %.noexc196.i unwind label %bb.dt ; 2 uses

.noexc196.i:                                      ; preds = %bb.dp
  store ptr %i.adt, ptr %10, align 8, !tbaa !191
  %.pre.i208 = load ptr, ptr %9, align 8, !tbaa !171
  br label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit.i

_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit.i:         ; preds = %.noexc196.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i
  %i.adu = phi ptr [ %i.adt, %.noexc196.i ], [ %i.gq, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i ] ; 7 uses
  %i.adv = phi ptr [ %.pre.i208, %.noexc196.i ], [ %i.adn, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit194.i ] ; 20 uses
  %i.adw = load ptr, ptr %7, align 8, !tbaa !171
  %i.adx = sext i32 %i.adg to i64
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.adw, i64 %i.adx
  %i.adz = ptrtoint ptr %i.ady to i64
  %i.aea = add i64 %i.adz, 15
  %i.aeb = and i64 %i.aea, -16
  %i.aec = inttoptr i64 %i.aeb to ptr             ; 21 uses
  %i.aed = load ptr, ptr %8, align 8, !tbaa !171
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = add i64 %i.aee, 15
  %i.aeg = and i64 %i.aef, -16
  %i.aeh = inttoptr i64 %i.aeg to ptr             ; 6 uses
  store float 1.000000e+00, ptr %i.adv, align 4, !tbaa !58
  %.not238.i = icmp slt i32 %i.acg, 2             ; 3 uses
  br i1 %.not238.i, label %._crit_edge.i207, label %.lr.ph.i178

.lr.ph.i178:                                      ; preds = %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit.i
  %i.aei = fmul nnan double %i.aco, 2.000000e+00
  %i.aej = fmul double %i.aco, %i.aei
  %i.aek = add nuw nsw i32 %i.acl, 1
  %wide.trip.count.i179 = zext nneg i32 %i.aek to i64 ; 2 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.lr.ph.i178
  %indvars.iv.i180 = phi i64 [ 1, %.lr.ph.i178 ], [ %indvars.iv.next.i181, %bb.dq ] ; 3 uses
  %.0170240.i = phi double [ 1.000000e+00, %.lr.ph.i178 ], [ %i.aev, %bb.dq ]
  %i.ael = trunc nuw nsw i64 %indvars.iv.i180 to i32 ; 2 uses
  %i.aem = mul i32 %i.ael, %i.ael
  %i.aen = sub i32 0, %i.aem
  %i.aeo = sitofp i32 %i.aen to double
  %i.aep = fdiv double %i.aeo, %i.aej
  %i.aeq = call double @exp(double noundef %i.aep) #23
  %i.aer = fptrunc double %i.aeq to float         ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %indvars.iv.i180
  store float %i.aer, ptr %i.aes, align 4, !tbaa !58
  %i.aet = fmul float %i.aer, 2.000000e+00
  %i.aeu = fpext float %i.aet to double
  %i.aev = fadd double %.0170240.i, %i.aeu        ; 2 uses
  %indvars.iv.next.i181 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %exitcond.not.i182 = icmp eq i64 %indvars.iv.next.i181, %wide.trip.count.i179
  br i1 %exitcond.not.i182, label %._crit_edge.thread.i, label %bb.dq, !llvm.loop !116

._crit_edge.thread.i:                             ; preds = %bb.dq
  %i.aew = fdiv double 1.000000e+00, %i.aev
  br label %.lr.ph244.preheader.i

bb.dr:                                            ; preds = %bb.dn
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit216.i

bb.ds:                                            ; preds = %bb.do
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit213.i

bb.dt:                                            ; preds = %bb.dp
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIPKfLm136EED2Ev.exit.i

._crit_edge.i207:                                 ; preds = %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit.i
  %.not181241.i = icmp slt i32 %i.acg, -1
  br i1 %.not181241.i, label %.preheader237.i183, label %._crit_edge.i207..lr.ph244.preheader.i_crit_edge

._crit_edge.i207..lr.ph244.preheader.i_crit_edge: ; preds = %._crit_edge.i207
  %.pre399 = add nsw i32 %i.acl, 1
  %.pre400 = zext i32 %.pre399 to i64
  br label %.lr.ph244.preheader.i

.lr.ph244.preheader.i:                            ; preds = %._crit_edge.i207..lr.ph244.preheader.i_crit_edge, %._crit_edge.thread.i
  %wide.trip.count283.i.pre-phi = phi i64 [ %.pre400, %._crit_edge.i207..lr.ph244.preheader.i_crit_edge ], [ %wide.trip.count.i179, %._crit_edge.thread.i ] ; 4 uses
  %i.afa = phi double [ 1.000000e+00, %._crit_edge.i207..lr.ph244.preheader.i_crit_edge ], [ %i.aew, %._crit_edge.thread.i ] ; 2 uses
  %min.iters.check557 = icmp samesign ult i64 %wide.trip.count283.i.pre-phi, 8
  br i1 %min.iters.check557, label %.lr.ph244.i.preheader, label %vector.ph558

vector.ph558:                                     ; preds = %.lr.ph244.preheader.i
  %n.vec559 = and i64 %wide.trip.count283.i.pre-phi, 4294967288 ; 3 uses
  %broadcast.splatinsert560 = insertelement <4 x double> poison, double %i.afa, i64 0
  %broadcast.splat561 = shufflevector <4 x double> %broadcast.splatinsert560, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph558
  %index563 = phi i64 [ 0, %vector.ph558 ], [ %index.next566, %vector.body562 ] ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %index563 ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16 ; 2 uses
  %wide.load564 = load <4 x float>, ptr %i.afb, align 4, !tbaa !58
  %wide.load565 = load <4 x float>, ptr %i.afc, align 4, !tbaa !58
  %i.afd = fpext <4 x float> %wide.load564 to <4 x double>
  %i.afe = fpext <4 x float> %wide.load565 to <4 x double>
  %i.aff = fmul <4 x double> %broadcast.splat561, %i.afd
  %i.afg = fmul <4 x double> %broadcast.splat561, %i.afe
  %i.afh = fptrunc <4 x double> %i.aff to <4 x float>
  %i.afi = fptrunc <4 x double> %i.afg to <4 x float>
  store <4 x float> %i.afh, ptr %i.afb, align 4, !tbaa !58
  store <4 x float> %i.afi, ptr %i.afc, align 4, !tbaa !58
  %index.next566 = add nuw i64 %index563, 8       ; 2 uses
  %i.afj = icmp eq i64 %index.next566, %n.vec559
  br i1 %i.afj, label %middle.block567, label %vector.body562, !llvm.loop !117

middle.block567:                                  ; preds = %vector.body562
  %cmp.n568 = icmp eq i64 %wide.trip.count283.i.pre-phi, %n.vec559
  br i1 %cmp.n568, label %.preheader237.i183, label %.lr.ph244.i.preheader

.lr.ph244.i.preheader:                            ; preds = %.lr.ph244.preheader.i, %middle.block567
  %indvars.iv280.i.ph = phi i64 [ 0, %.lr.ph244.preheader.i ], [ %n.vec559, %middle.block567 ]
  br label %.lr.ph244.i

.preheader237.i183:                               ; preds = %.lr.ph244.i, %middle.block567, %._crit_edge.i207
  %.not181241349.i = phi i1 [ true, %._crit_edge.i207 ], [ false, %middle.block567 ], [ false, %.lr.ph244.i ]
  %i.afk = icmp sgt i32 %i.ack, 0
  br i1 %i.afk, label %.lr.ph274.i, label %._crit_edge275.i

.lr.ph274.i:                                      ; preds = %.preheader237.i183
  %i.afl = add nsw i32 %i.ack, -1                 ; 2 uses
  %i.afm = icmp sgt i32 %i.acj, 0                 ; 2 uses
  %i.afn = sext i32 %i.acl to i64                 ; 2 uses
  %i.afo = getelementptr [8 x i8], ptr %i.adu, i64 %i.afn ; 2 uses
  %i.afp = icmp sgt i32 %i.adf, 0
  %i.afq = add nsw i32 %i.acl, 1
  %i.afr = zext i32 %i.acl to i64                 ; 4 uses
  %smax.i186 = call i32 @llvm.smax.i32(i32 %i.acy, i32 1)
  %i.afs = sext i32 %i.acy to i64
  %i.aft = zext nneg i32 %i.afl to i64
  %wide.trip.count330.i = zext nneg i32 %i.ack to i64
  %wide.trip.count288.i = zext i32 %i.afq to i64  ; 3 uses
  %wide.trip.count298.i = zext nneg i32 %smax.i186 to i64 ; 8 uses
  %invariant.gep353.i = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.afr ; 3 uses
  %wide.trip.count309.i189 = zext i32 %i.adf to i64 ; 2 uses
  %invariant.gep355.i = getelementptr [4 x i8], ptr %i.aec, i64 %i.afs ; 3 uses
  %wide.trip.count325.i = zext i32 %i.acj to i64  ; 5 uses
  %i.afu = shl nuw nsw i64 %wide.trip.count325.i, 3
  %i.afv = mul nuw nsw i64 %wide.trip.count325.i, 20
  %scevgep521 = getelementptr i8, ptr %i.aeh, i64 %i.afv
  %i.afw = shl nuw nsw i64 %wide.trip.count298.i, 2 ; 2 uses
  %scevgep533 = getelementptr i8, ptr %i.aec, i64 %i.afw ; 2 uses
  %scevgep535 = getelementptr i8, ptr %i.adv, i64 4
  %i.afx = add nsw i64 %wide.trip.count288.i, -1  ; 6 uses
  %i.afy = add nsw i64 %wide.trip.count288.i, -2  ; 2 uses
  %xtraiter697 = and i64 %i.afx, 1
  %i.afz = icmp eq i64 %i.afy, 0
  %unroll_iter702 = and i64 %i.afx, -2
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  %lcmp.mod701 = trunc i64 %i.afx to i1
  %min.iters.check543 = icmp eq i32 %i.acj, 1
  %bound0539 = icmp ugt ptr %scevgep535, %i.aec
  %bound1540 = icmp ult ptr %i.adv, %scevgep533
  %found.conflict541 = and i1 %bound0539, %bound1540
  %n.vec545 = and i64 %wide.trip.count298.i, 2147483640 ; 3 uses
  %cmp.n554 = icmp eq i64 %n.vec545, %wide.trip.count298.i
  %xtraiter704 = and i64 %wide.trip.count298.i, 3 ; 2 uses
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  %xtraiter706 = and i64 %wide.trip.count309.i189, 1
  %.off = add i32 %i.acg, 1717986919
  %52 = icmp ult i32 %.off, 2
  %unroll_iter710 = and i64 %wide.trip.count309.i189, 2147483646
  %lcmp.mod708.not = icmp eq i64 %xtraiter706, 0
  %lcmp.mod709 = trunc i32 %i.adf to i1
  %xtraiter712 = and i64 %i.afx, 1
  %i.aga = icmp eq i64 %i.afy, 0
  %unroll_iter717 = and i64 %i.afx, -2
  %lcmp.mod714.not = icmp eq i64 %xtraiter712, 0
  %lcmp.mod716 = trunc i64 %i.afx to i1
  %min.iters.check523 = icmp eq i32 %i.acj, 1
  %n.vec525 = and i64 %wide.trip.count325.i, 2147483646 ; 3 uses
  %cmp.n530 = icmp eq i64 %n.vec525, %wide.trip.count325.i
  br label %bb.du

.lr.ph244.i:                                      ; preds = %.lr.ph244.i.preheader, %.lr.ph244.i
  %indvars.iv280.i = phi i64 [ %indvars.iv.next281.i, %.lr.ph244.i ], [ %indvars.iv280.i.ph, %.lr.ph244.i.preheader ] ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %indvars.iv280.i ; 2 uses
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !58
  %i.agd = fpext float %i.agc to double
  %i.age = fmul double %i.afa, %i.agd
  %i.agf = fptrunc double %i.age to float
  store float %i.agf, ptr %i.agb, align 4, !tbaa !58
  %indvars.iv.next281.i = add nuw nsw i64 %indvars.iv280.i, 1 ; 2 uses
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next281.i, %wide.trip.count283.i.pre-phi
  br i1 %exitcond284.not.i, label %.preheader237.i183, label %.lr.ph244.i, !llvm.loop !118

bb.du:                                            ; preds = %bb.ea, %.lr.ph274.i
  %indvars.iv327.i = phi i64 [ 0, %.lr.ph274.i ], [ %indvars.iv.next328.i, %bb.ea ] ; 6 uses
  %.0171272.i = phi i32 [ 0, %.lr.ph274.i ], [ %.1172.i, %bb.ea ] ; 4 uses
  %i.agg = load ptr, ptr %i.gs, align 8, !tbaa !59 ; 2 uses
  %i.agh = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.agi = mul i64 %i.agh, %indvars.iv327.i       ; 2 uses
  %i.agj = getelementptr i8, ptr %i.agg, i64 %i.agi ; 3 uses
  br i1 %.not181241349.i, label %.preheader236.i193, label %.lr.ph248.i

.lr.ph248.i:                                      ; preds = %bb.du
  %i.agk = load ptr, ptr %i.gu, align 8, !tbaa !59 ; 2 uses
  %i.agl = load i64, ptr %i.gv, align 8, !tbaa !44 ; 2 uses
  br label %bb.dv

.preheader236.i193:                               ; preds = %bb.dv, %bb.du
  br i1 %i.afm, label %.lr.ph257.i, label %.preheader235.i

.lr.ph257.i:                                      ; preds = %.preheader236.i193
  %i.agm = load ptr, ptr %i.afo, align 8, !tbaa !193 ; 9 uses
  br i1 %.not238.i, label %.lr.ph257.split.us.i.preheader, label %.lr.ph253.i

.lr.ph257.split.us.i.preheader:                   ; preds = %.lr.ph257.i
  br i1 %min.iters.check543, label %.lr.ph257.split.us.i.preheader665, label %vector.memcheck532

vector.memcheck532:                               ; preds = %.lr.ph257.split.us.i.preheader
  %scevgep534 = getelementptr i8, ptr %i.agm, i64 %i.afw
  %bound0536 = icmp ugt ptr %scevgep534, %i.aec
  %bound1537 = icmp ult ptr %i.agm, %scevgep533
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx = or i1 %found.conflict538, %found.conflict541
  br i1 %conflict.rdx, label %.lr.ph257.split.us.i.preheader665, label %vector.ph544

vector.ph544:                                     ; preds = %vector.memcheck532
  %i.agn = load float, ptr %i.adv, align 4, !tbaa !58, !alias.scope !194
  %broadcast.splatinsert550 = insertelement <4 x float> poison, float %i.agn, i64 0
  %broadcast.splat551 = shufflevector <4 x float> %broadcast.splatinsert550, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next552, %vector.body546 ] ; 3 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %index547 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  %wide.load548 = load <4 x float>, ptr %i.ago, align 4, !tbaa !58, !alias.scope !195
  %wide.load549 = load <4 x float>, ptr %i.agp, align 4, !tbaa !58, !alias.scope !195
  %i.agq = fmul <4 x float> %wide.load548, %broadcast.splat551
  %i.agr = fmul <4 x float> %wide.load549, %broadcast.splat551
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %index547 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  store <4 x float> %i.agq, ptr %i.ags, align 16, !tbaa !58, !alias.scope !196, !noalias !197
  store <4 x float> %i.agr, ptr %i.agt, align 16, !tbaa !58, !alias.scope !196, !noalias !197
  %index.next552 = add nuw i64 %index547, 8       ; 2 uses
  %i.agu = icmp eq i64 %index.next552, %n.vec545
  br i1 %i.agu, label %middle.block553, label %vector.body546, !llvm.loop !123

middle.block553:                                  ; preds = %vector.body546
  br i1 %cmp.n554, label %.preheader235.i, label %.lr.ph257.split.us.i.preheader665

.lr.ph257.split.us.i.preheader665:                ; preds = %vector.memcheck532, %.lr.ph257.split.us.i.preheader, %middle.block553
  %indvars.iv300.i.ph = phi i64 [ 0, %vector.memcheck532 ], [ 0, %.lr.ph257.split.us.i.preheader ], [ %n.vec545, %middle.block553 ] ; 3 uses
  br i1 %lcmp.mod705.not, label %.lr.ph257.split.us.i.prol.loopexit, label %.lr.ph257.split.us.i.prol

.lr.ph257.split.us.i.prol:                        ; preds = %.lr.ph257.split.us.i.preheader665, %.lr.ph257.split.us.i.prol
  %indvars.iv300.i.prol = phi i64 [ %indvars.iv.next301.i.prol, %.lr.ph257.split.us.i.prol ], [ %indvars.iv300.i.ph, %.lr.ph257.split.us.i.preheader665 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph257.split.us.i.prol ], [ 0, %.lr.ph257.split.us.i.preheader665 ]
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv300.i.prol
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !58
  %i.agx = load float, ptr %i.adv, align 4, !tbaa !58
  %i.agy = fmul float %i.agw, %i.agx
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv300.i.prol
  store float %i.agy, ptr %i.agz, align 4, !tbaa !58
  %indvars.iv.next301.i.prol = add nuw nsw i64 %indvars.iv300.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter704
  br i1 %prol.iter.cmp.not, label %.lr.ph257.split.us.i.prol.loopexit, label %.lr.ph257.split.us.i.prol, !llvm.loop !124

.lr.ph257.split.us.i.prol.loopexit:               ; preds = %.lr.ph257.split.us.i.prol, %.lr.ph257.split.us.i.preheader665
  %indvars.iv300.i.unr = phi i64 [ %indvars.iv300.i.ph, %.lr.ph257.split.us.i.preheader665 ], [ %indvars.iv.next301.i.prol, %.lr.ph257.split.us.i.prol ]
  %i.aha = sub nsw i64 %indvars.iv300.i.ph, %wide.trip.count298.i
  %i.ahb = icmp ugt i64 %i.aha, -4
  br i1 %i.ahb, label %.preheader235.i, label %.lr.ph257.split.us.i

.lr.ph257.split.us.i:                             ; preds = %.lr.ph257.split.us.i.prol.loopexit, %.lr.ph257.split.us.i
  %indvars.iv300.i = phi i64 [ %indvars.iv.next301.i.3, %.lr.ph257.split.us.i ], [ %indvars.iv300.i.unr, %.lr.ph257.split.us.i.prol.loopexit ] ; 6 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv300.i
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !58
  %i.ahe = load float, ptr %i.adv, align 4, !tbaa !58
  %i.ahf = fmul float %i.ahd, %i.ahe
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv300.i
  store float %i.ahf, ptr %i.ahg, align 4, !tbaa !58
  %indvars.iv.next301.i = add nuw nsw i64 %indvars.iv300.i, 1 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv.next301.i
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !58
  %i.ahj = load float, ptr %i.adv, align 4, !tbaa !58
  %i.ahk = fmul float %i.ahi, %i.ahj
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv.next301.i
  store float %i.ahk, ptr %i.ahl, align 4, !tbaa !58
  %indvars.iv.next301.i.1 = add nuw nsw i64 %indvars.iv300.i, 2 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv.next301.i.1
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !58
  %i.aho = load float, ptr %i.adv, align 4, !tbaa !58
  %i.ahp = fmul float %i.ahn, %i.aho
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv.next301.i.1
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !58
  %indvars.iv.next301.i.2 = add nuw nsw i64 %indvars.iv300.i, 3 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv.next301.i.2
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !58
  %i.aht = load float, ptr %i.adv, align 4, !tbaa !58
  %i.ahu = fmul float %i.ahs, %i.aht
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv.next301.i.2
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !58
  %indvars.iv.next301.i.3 = add nuw nsw i64 %indvars.iv300.i, 4 ; 2 uses
  %exitcond305.not.i206.3 = icmp eq i64 %indvars.iv.next301.i.3, %wide.trip.count298.i
  br i1 %exitcond305.not.i206.3, label %.preheader235.i, label %.lr.ph257.split.us.i, !llvm.loop !125

bb.dv:                                            ; preds = %bb.dv, %.lr.ph248.i
  %indvars.iv285.i = phi i64 [ 0, %.lr.ph248.i ], [ %indvars.iv.next286.i, %bb.dv ] ; 5 uses
  %i.ahw = sub nsw i64 %indvars.iv327.i, %indvars.iv285.i
  %i.ahx = trunc nsw i64 %i.ahw to i32
  %.sroa.speculated223.i = call i32 @llvm.smax.i32(i32 %i.ahx, i32 0)
  %i.ahy = zext nneg i32 %.sroa.speculated223.i to i64
  %i.ahz = mul i64 %i.agl, %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agk, i64 %i.ahz
  %i.aib = sub nuw nsw i64 %i.afn, %indvars.iv285.i
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.aib
  store ptr %i.aia, ptr %i.aic, align 8, !tbaa !193
  %i.aid = add nuw nsw i64 %indvars.iv285.i, %indvars.iv327.i
  %i.aie = trunc nuw nsw i64 %i.aid to i32
  %.sroa.speculated.i191 = call i32 @llvm.smin.i32(i32 %i.afl, i32 %i.aie)
  %i.aif = sext i32 %.sroa.speculated.i191 to i64
  %i.aig = mul i64 %i.agl, %i.aif
  %i.aih = getelementptr inbounds nuw i8, ptr %i.agk, i64 %i.aig
  %gep.i192 = getelementptr [8 x i8], ptr %i.afo, i64 %indvars.iv285.i
  store ptr %i.aih, ptr %gep.i192, align 8, !tbaa !193
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %.preheader236.i193, label %bb.dv, !llvm.loop !126

.preheader235.i:                                  ; preds = %._crit_edge254.i, %.lr.ph257.split.us.i.prol.loopexit, %.lr.ph257.split.us.i, %middle.block553, %.preheader236.i193
  br i1 %i.afp, label %.lr.ph259.i.preheader, label %.preheader234.i

.lr.ph259.i.preheader:                            ; preds = %.preheader235.i
  br i1 %52, label %.lr.ph259.i.epil.preheader, label %.lr.ph259.i

.lr.ph253.i:                                      ; preds = %.lr.ph257.i, %._crit_edge254.i
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i, %._crit_edge254.i ], [ 0, %.lr.ph257.i ] ; 9 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv295.i
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !58
  %i.aik = load float, ptr %i.adv, align 4, !tbaa !58
  %i.ail = fmul float %i.aij, %i.aik              ; 2 uses
  br i1 %i.afz, label %.epil.preheader696, label %.lr.ph253.i.new

.lr.ph253.i.new:                                  ; preds = %.lr.ph253.i, %.lr.ph253.i.new
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i.1, %.lr.ph253.i.new ], [ 1, %.lr.ph253.i ] ; 5 uses
  %.0162251.i = phi float [ %i.ajj, %.lr.ph253.i.new ], [ %i.ail, %.lr.ph253.i ]
  %niter703 = phi i64 [ %niter703.next.1, %.lr.ph253.i.new ], [ 0, %.lr.ph253.i ]
  %gep354.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep353.i, i64 %indvars.iv290.i
  %i.aim = load ptr, ptr %gep354.i, align 8, !tbaa !193
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %indvars.iv295.i
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !58
  %i.aip = sub nuw nsw i64 %i.afr, %indvars.iv290.i
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.aip
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !193
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv295.i
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !58
  %i.aiu = fadd float %i.aio, %i.ait
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %indvars.iv290.i
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !58
  %i.aix = call float @llvm.fmuladd.f32(float %i.aiu, float %i.aiw, float %.0162251.i)
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 3 uses
  %gep354.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep353.i, i64 %indvars.iv.next291.i
  %i.aiy = load ptr, ptr %gep354.i.1, align 8, !tbaa !193
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv295.i
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !58
  %i.ajb = sub nuw nsw i64 %i.afr, %indvars.iv.next291.i
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.ajb
end_hunk_0
