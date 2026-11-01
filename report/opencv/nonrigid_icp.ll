Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nonrigid_icp?download=true
inline.NumInlined: 1007
inline.NumDeleted: 377
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_:bb.a

bb.dr:                                            ; preds = %bb.dp
  %i.wn = icmp eq i32 %i.wc, 0
  %i.wo = zext i1 %i.wn to i32
  br label %bb.ha

bb.ds:                                            ; preds = %_ZNSolsEPFRSoS_E.exit._crit_edge
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body763

bb.dt:                                            ; preds = %bb.cz
  %i.wq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i824 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i824, label %_ZNSt6vectorIfSaIfEED2Ev.exit825, label %bb.du

bb.du:                                            ; preds = %.thread1865, %bb.dt
  %i.wr = phi { ptr, i32 } [ %i.sm, %.thread1865 ], [ %i.wq, %bb.dt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.ru) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit825

bb.dv:                                            ; preds = %.invoke, %.noexc1249, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1244, %.noexc1247, %bb.dl, %.noexc1238, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1233, %.noexc1236, %bb.ct, %_ZNSolsEm.exit816, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit814, %_ZNSolsEf.exit812, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit810, %_ZNSt6vectorIfSaIfEED2Ev.exit808, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i792, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit781, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit778, %bb.cr
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit825

bb.dw:                                            ; preds = %bb.dg
  %i.wt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i826 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i826, label %_ZNSt6vectorIfSaIfEED2Ev.exit825, label %bb.dx

bb.dx:                                            ; preds = %.thread1867, %bb.dw
  %i.wu = phi { ptr, i32 } [ %i.ul, %.thread1867 ], [ %i.wt, %bb.dw ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tt) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit825

bb.dy:                                            ; preds = %.lr.ph2066, %_ZNSolsEPFRSoS_E.exit820
  %i.wv = phi i32 [ %i.vp, %.lr.ph2066 ], [ %i.xi, %_ZNSolsEPFRSoS_E.exit820 ]
  %indvars.iv2206 = phi i64 [ 0, %.lr.ph2066 ], [ %indvars.iv.next2207, %_ZNSolsEPFRSoS_E.exit820 ] ; 6 uses
  %i.ww = load ptr, ptr %i.ge, align 8, !tbaa !202
  %i.wx = getelementptr inbounds nuw [24 x i8], ptr %i.ww, i64 %indvars.iv2206 ; 3 uses
  %i.wy = icmp eq i64 %indvars.iv2206, 0
  %.pre2369 = load ptr, ptr %i.gd, align 8, !tbaa !179 ; 2 uses
  %i.wz = getelementptr [24 x i8], ptr %.pre2369, i64 %indvars.iv2206
  %i.xa = getelementptr i8, ptr %i.wz, i64 -24
  %i.xb = select i1 %i.wy, ptr %i.cr, ptr %i.xa   ; 2 uses
  %i.xc = getelementptr inbounds nuw [24 x i8], ptr %.pre2369, i64 %indvars.iv2206
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wx, i64 8 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !205 ; 2 uses
  %i.xf = load ptr, ptr %i.wx, align 8, !tbaa !206 ; 2 uses
  %.not2102 = icmp eq ptr %i.xe, %i.xf
  br i1 %.not2102, label %_ZNSolsEPFRSoS_E.exit820, label %.lr.ph2063

.lr.ph2063:                                       ; preds = %bb.dy
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01783.025122524, i64 %indvars.iv2206 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %.pre2370 = load i32, ptr %1, align 8, !tbaa !207
  br label %bb.dz

_ZNSolsEPFRSoS_E.exit820.loopexit:                ; preds = %._crit_edge2060
  %.pre2377 = load i32, ptr %i.hg, align 4, !tbaa !178
  br label %_ZNSolsEPFRSoS_E.exit820

_ZNSolsEPFRSoS_E.exit820:                         ; preds = %_ZNSolsEPFRSoS_E.exit820.loopexit, %bb.dy
  %i.xi = phi i32 [ %.pre2377, %_ZNSolsEPFRSoS_E.exit820.loopexit ], [ %i.wv, %bb.dy ] ; 2 uses
  %indvars.iv.next2207 = add nuw nsw i64 %indvars.iv2206, 1 ; 2 uses
  %i.xj = add nsw i32 %i.xi, -1
  %i.xk = sext i32 %i.xj to i64
  %i.xl = icmp slt i64 %indvars.iv.next2207, %i.xk
  br i1 %i.xl, label %bb.dy, label %_ZNSolsEPFRSoS_E.exit820._crit_edge, !llvm.loop !78

bb.dz:                                            ; preds = %.lr.ph2063, %._crit_edge2060
  %i.xm = phi ptr [ %i.xf, %.lr.ph2063 ], [ %i.zf, %._crit_edge2060 ] ; 2 uses
  %i.xn = phi ptr [ %i.xe, %.lr.ph2063 ], [ %i.zg, %._crit_edge2060 ]
  %i.xo = phi i32 [ %.pre2370, %.lr.ph2063 ], [ %i.zh, %._crit_edge2060 ] ; 2 uses
  %.05822061 = phi i64 [ 0, %.lr.ph2063 ], [ %i.zi, %._crit_edge2060 ] ; 5 uses
  %i.xp = getelementptr inbounds nuw [40 x i8], ptr %i.xm, i64 %.05822061
  %i.xq = load ptr, ptr %i.xb, align 8, !tbaa !152
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.xq, i64 %.05822061
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !210 ; 3 uses
  %i.xt = load <2 x float>, ptr %i.xs, align 4, !tbaa !24, !noalias !222 ; 3 uses
  %i.xu = load i32, ptr %i.xg, align 4, !tbaa !31
  %i.xv = trunc i64 %.05822061 to i32
  %i.xw = mul nsw i32 %i.xv, 6
  %i.xx = add nsw i32 %i.xu, %i.xw                ; 8 uses
  %i.xy = icmp sgt i32 %i.xo, 0
  br i1 %i.xy, label %.lr.ph2059, label %._crit_edge2060

.lr.ph2059:                                       ; preds = %bb.dz
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.ya = load <12 x float>, ptr %i.xz, align 4   ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !223, !noalias !222
  %i.yd = sext i32 %i.xx to i64                   ; 42 uses
  %i.ye = add nsw i32 %i.xx, 1                    ; 3 uses
  %i.yf = sext i32 %i.ye to i64                   ; 2 uses
  %i.yg = add nsw i32 %i.xx, 2                    ; 3 uses
  %i.yh = sext i32 %i.yg to i64                   ; 2 uses
  %i.yi = add i32 %i.xx, 3                        ; 3 uses
  %i.yj = sext i32 %i.yi to i64                   ; 7 uses
  %i.yk = add i32 %i.xx, 4                        ; 3 uses
  %i.yl = sext i32 %i.yk to i64                   ; 7 uses
  %i.ym = add i32 %i.xx, 5                        ; 3 uses
  %i.yn = sext i32 %i.ym to i64                   ; 7 uses
  %i.yo = add nsw i64 %i.yd, 1                    ; 6 uses
  %i.yp = add nsw i64 %i.yd, 2                    ; 6 uses
  %i.yq = add nsw i64 %i.yd, 1                    ; 6 uses
  %i.yr = add nsw i64 %i.yd, 2                    ; 6 uses
  %i.ys = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yc, i64 0 ; 2 uses
  %i.yt = shufflevector <12 x float> %i.ya, <12 x float> poison, <4 x i32> <i32 10, i32 2, i32 6, i32 poison>
  %i.yu = insertelement <4 x float> %i.yt, float -0.000000e+00, i64 3
  %i.yv = shufflevector <12 x float> %i.ya, <12 x float> poison, <4 x i32> <i32 8, i32 0, i32 4, i32 poison>
  %i.yw = insertelement <4 x float> %i.yv, float -0.000000e+00, i64 3
  %i.yx = shufflevector <12 x float> %i.ya, <12 x float> poison, <4 x i32> <i32 9, i32 1, i32 5, i32 poison>
  %i.yy = insertelement <4 x float> %i.yx, float 1.000000e+00, i64 3
  %i.yz = shufflevector <12 x float> %i.ya, <12 x float> poison, <4 x i32> <i32 11, i32 3, i32 7, i32 poison>
  %i.za = insertelement <4 x float> %i.yz, float -0.000000e+00, i64 3
  %i.zb = shufflevector <2 x float> %i.ys, <2 x float> %i.xt, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.zc = insertelement <4 x float> %i.zb, float -0.000000e+00, i64 3
  %i.zd = shufflevector <2 x float> %i.xt, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ze = shufflevector <2 x float> %i.xt, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  br label %bb.ea

._crit_edge2060.loopexit:                         ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre2375 = load ptr, ptr %i.xd, align 8, !tbaa !205
  %.pre2376 = load ptr, ptr %i.wx, align 8, !tbaa !206
  br label %._crit_edge2060

._crit_edge2060:                                  ; preds = %._crit_edge2060.loopexit, %bb.dz
  %i.zf = phi ptr [ %.pre2376, %._crit_edge2060.loopexit ], [ %i.xm, %bb.dz ] ; 2 uses
  %i.zg = phi ptr [ %.pre2375, %._crit_edge2060.loopexit ], [ %i.xn, %bb.dz ] ; 2 uses
  %i.zh = phi i32 [ %i.bjz, %._crit_edge2060.loopexit ], [ %i.xo, %bb.dz ]
  %i.zi = add nuw i64 %.05822061, 1               ; 2 uses
  %i.zj = ptrtoint ptr %i.zg to i64
  %i.zk = ptrtoint ptr %i.zf to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = sdiv exact i64 %i.zl, 40
  %i.zn = icmp ult i64 %i.zi, %i.zm
  br i1 %i.zn, label %bb.dz, label %_ZNSolsEPFRSoS_E.exit820.loopexit, !llvm.loop !81

bb.ea:                                            ; preds = %.lr.ph2059, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv2203 = phi i64 [ 0, %.lr.ph2059 ], [ %indvars.iv.next2204, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %indvars.iv2203
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !31 ; 2 uses
  %i.zq = sext i32 %i.zp to i64
  %i.zr = load ptr, ptr %i.xc, align 8, !tbaa !152
  %i.zs = getelementptr inbounds nuw [16 x i8], ptr %i.zr, i64 %i.zq ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !210 ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !36 ; 9 uses
  %.not.i.i.i.i828 = icmp eq ptr %i.zv, null      ; 2 uses
  br i1 %.not.i.i.i.i828, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 3 uses
  %i.zx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.zx, 0
  br i1 %.not.i.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zy = load i32, ptr %i.zw, align 4, !tbaa !31
  %i.zz = add nsw i32 %i.zy, 1
  store i32 %i.zz, ptr %i.zw, align 4, !tbaa !31
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.aaa = atomicrmw volatile add ptr %i.zw, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ea, %bb.ec, %bb.ed
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zt, i64 28
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !24, !noalias !224 ; 10 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zt, i64 44
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !24, !noalias !224 ; 10 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zt, i64 60
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !24, !noalias !224 ; 10 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !223, !noalias !225
  %i.aaj = load <2 x float>, ptr %i.zt, align 4, !tbaa !24, !noalias !225 ; 3 uses
  %i.aak = shufflevector <2 x float> %i.aaj, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aal = fsub <4 x float> %i.aak, %i.zd
  %i.aam = shufflevector <2 x float> %i.aaj, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aan = fsub <4 x float> %i.aam, %i.ze
  %i.aao = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aai, i64 0 ; 2 uses
  %i.aap = fsub <2 x float> %i.aao, %i.ys
  %i.aaq = shufflevector <2 x float> %i.aap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aar = fmul <4 x float> %i.aan, %i.yy
  %i.aas = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aal, <4 x float> %i.yw, <4 x float> %i.aar)
  %i.aat = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaq, <4 x float> %i.yu, <4 x float> %i.aas)
  %i.aau = fadd <4 x float> %i.aat, %i.za         ; 6 uses
  %i.aav = fadd <4 x float> %i.aau, %i.zc
  %i.aaw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aag, i64 0
  %i.aax = insertelement <4 x float> %i.aaw, float %i.aac, i64 1
  %i.aay = insertelement <4 x float> %i.aax, float %i.aae, i64 2 ; 3 uses
  %i.aaz = shufflevector <2 x float> %i.aao, <2 x float> %i.aaj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aba = insertelement <4 x float> %i.aaz, float -0.000000e+00, i64 3
  %i.abb = fadd <4 x float> %i.aay, %i.aba
  %i.abc = fsub <4 x float> %i.aav, %i.abb        ; 7 uses
  %i.abd = extractelement <4 x float> %i.abc, i64 1 ; 3 uses
  %i.abe = fpext float %i.abd to double           ; 2 uses
  %i.abf = call double @llvm.fmuladd.f64(double %i.abe, double %i.abe, double 0.000000e+00)
  %i.abg = extractelement <4 x float> %i.abc, i64 2 ; 7 uses
  %i.abh = fpext float %i.abg to double           ; 2 uses
  %i.abi = call double @llvm.fmuladd.f64(double %i.abh, double %i.abh, double %i.abf)
  %i.abj = extractelement <4 x float> %i.abc, i64 0 ; 3 uses
  %i.abk = fpext float %i.abj to double           ; 2 uses
  %i.abl = call noundef double @llvm.fmuladd.f64(double %i.abk, double %i.abk, double %i.abi)
  %sqrt.i829 = call noundef double @llvm.sqrt.f64(double %i.abl) ; 2 uses
  %i.abm = fcmp ogt double %sqrt.i829, 1.000000e-02
  br i1 %i.abm, label %bb.gt, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.vr, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.abn = fdiv double %sqrt.i829, %i.ut          ; 2 uses
  %i.abo = call noundef double @llvm.fabs.f64(double %i.abn)
  %i.abp = fptrunc double %i.abn to float
  %i.abq = call float @llvm.fabs.f32(float %i.abp)
  %i.abr = fcmp ogt double %i.abo, f0x3FF5851ED0000000
  %i.abs = fdiv float 1.345000e+00, %i.abq
  %i.abt = select i1 %i.abr, float %i.abs, float 1.000000e+00
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %.0.i = phi float [ %i.abt, %bb.eg ], [ 0.000000e+00, %bb.ef ]
  %i.abu = getelementptr inbounds nuw i8, ptr %i.zt, i64 12
  %i.abv = load ptr, ptr %i.xb, align 8, !tbaa !152
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %i.abv, i64 %.05822061
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !210
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !24 ; 2 uses
  %i.aca = load float, ptr %i.abu, align 4, !tbaa !24 ; 2 uses
  %i.acb = fcmp olt float %i.abz, %i.aca
  %i.acc = select i1 %i.acb, float %i.abz, float %i.aca
  %i.acd = call noundef float @sqrtf(float noundef %i.acc) #21
  %i.ace = fneg float %i.abg                      ; 2 uses
  %i.acf = extractelement <4 x float> %i.aau, i64 2 ; 14 uses
  %i.acg = extractelement <4 x float> %i.aau, i64 1 ; 14 uses
  %i.ach = shufflevector <4 x float> %i.abc, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.aci = fneg <2 x float> %i.ach                ; 3 uses
  %i.acj = shufflevector <4 x float> %i.aau, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ack = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acl = insertelement <2 x float> %i.ack, float %i.ace, i64 0
  %i.acm = fmul <2 x float> %i.acj, %i.acl
  %i.acn = shufflevector <4 x float> %i.aau, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.aco = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acn, <2 x float> %i.ach, <2 x float> %i.acm) ; 3 uses
  %i.acp = extractelement <2 x float> %i.aci, i64 1
  %i.acq = fmul float %i.acf, %i.acp
  %i.acr = call float @llvm.fmuladd.f32(float %i.acg, float %i.abg, float %i.acq) ; 2 uses
  %i.acs = fmul float %.0.i, %i.acd               ; 98 uses
  %i.act = fneg float %i.acs                      ; 32 uses
  %i.acu = load i32, ptr %i.vs, align 4, !tbaa !226
  %i.acv = icmp slt i32 %i.acu, 2                 ; 2 uses
  br i1 %i.acv, label %bb.fh, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.acw = load i32, ptr %50, align 8, !tbaa !227
  %i.acx = and i32 %i.acw, 16384
  %i.acy = icmp ne i32 %i.acx, 0                  ; 6 uses
  %i.acz = load i32, ptr %i.vt, align 4
  %i.ada = icmp eq i32 %i.acz, 1
  %or.cond.i.i830 = select i1 %i.acy, i1 true, i1 %i.ada
  br i1 %or.cond.i.i830, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.adb = load ptr, ptr %i.vw, align 8, !tbaa !228 ; 2 uses
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.adb, i64 %i.yd
  br label %bb.en

bb.ek:                                            ; preds = %bb.ei
  %i.add = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.ade = icmp eq i32 %i.add, 1
  br i1 %i.ade, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.adf = load ptr, ptr %i.vw, align 8, !tbaa !228 ; 2 uses
  %i.adg = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.adh = mul i64 %i.adg, %i.yd
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adh
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.adj = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.adk = sdiv i32 %i.xx, %i.adj                 ; 2 uses
  %i.adl = mul nsw i32 %i.adk, %i.adj             ; 0 uses
  %.recomposed = srem i32 %i.xx, %i.adj
  %i.adm = load ptr, ptr %i.vw, align 8, !tbaa !228 ; 2 uses
  %i.adn = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.ado = sext i32 %i.adk to i64
  %i.adp = mul i64 %i.adn, %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.adp
  %i.adr = sext i32 %.recomposed to i64
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.adq, i64 %i.adr
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ej
  %i.adt = phi ptr [ %i.adm, %bb.em ], [ %i.adf, %bb.el ], [ %i.adb, %bb.ej ] ; 18 uses
  %.0.i.i.ph = phi ptr [ %i.ads, %bb.em ], [ %i.adi, %bb.el ], [ %i.adc, %bb.ej ] ; 2 uses
  %i.adu = load float, ptr %.0.i.i.ph, align 4, !tbaa !24
  %i.adv = extractelement <2 x float> %i.aco, i64 0
  %i.adw = call float @llvm.fmuladd.f32(float %i.act, float %i.adv, float %i.adu)
  store float %i.adw, ptr %.0.i.i.ph, align 4, !tbaa !24
  %i.adx = load i32, ptr %i.vt, align 4
  %i.ady = icmp eq i32 %i.adx, 1
  %or.cond.i.i831 = select i1 %i.acy, i1 true, i1 %i.ady
  br i1 %or.cond.i.i831, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.adt, i64 %i.yf
  br label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.aea = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.aeb = icmp eq i32 %i.aea, 1
  br i1 %i.aeb, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aec = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.aed = mul i64 %i.aec, %i.yf
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aed
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.aef = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.aeg = sdiv i32 %i.ye, %i.aef                 ; 2 uses
  %i.aeh = mul nsw i32 %i.aeg, %i.aef             ; 0 uses
  %.recomposed2725 = srem i32 %i.ye, %i.aef
  %i.aei = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.aej = sext i32 %i.aeg to i64
  %i.aek = mul i64 %i.aei, %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aek
  %i.aem = sext i32 %.recomposed2725 to i64
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.aem
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.eo
  %.0.i.i832.ph = phi ptr [ %i.aen, %bb.er ], [ %i.aee, %bb.eq ], [ %i.adz, %bb.eo ] ; 2 uses
  %i.aeo = load float, ptr %.0.i.i832.ph, align 4, !tbaa !24
  %i.aep = extractelement <2 x float> %i.aco, i64 1
  %i.aeq = call float @llvm.fmuladd.f32(float %i.act, float %i.aep, float %i.aeo)
  store float %i.aeq, ptr %.0.i.i832.ph, align 4, !tbaa !24
  %i.aer = load i32, ptr %i.vt, align 4
  %i.aes = icmp eq i32 %i.aer, 1
  %or.cond.i.i834 = select i1 %i.acy, i1 true, i1 %i.aes
  br i1 %or.cond.i.i834, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.adt, i64 %i.yh
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.aeu = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.aev = icmp eq i32 %i.aeu, 1
  br i1 %i.aev, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aew = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.aex = mul i64 %i.aew, %i.yh
  %i.aey = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.aex
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.aez = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.afa = sdiv i32 %i.yg, %i.aez                 ; 2 uses
  %i.afb = mul nsw i32 %i.afa, %i.aez             ; 0 uses
  %.recomposed2726 = srem i32 %i.yg, %i.aez
  %i.afc = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.afd = sext i32 %i.afa to i64
  %i.afe = mul i64 %i.afc, %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.afe
  %i.afg = sext i32 %.recomposed2726 to i64
  %i.afh = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.afg
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.et
  %.0.i.i835.ph = phi ptr [ %i.afh, %bb.ew ], [ %i.aey, %bb.ev ], [ %i.aet, %bb.et ] ; 2 uses
  %i.afi = load float, ptr %.0.i.i835.ph, align 4, !tbaa !24
  %i.afj = call float @llvm.fmuladd.f32(float %i.act, float %i.acr, float %i.afi)
  store float %i.afj, ptr %.0.i.i835.ph, align 4, !tbaa !24
  %i.afk = load i32, ptr %i.vt, align 4
  %i.afl = icmp eq i32 %i.afk, 1
  %or.cond.i.i837 = select i1 %i.acy, i1 true, i1 %i.afl
  br i1 %or.cond.i.i837, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.adt, i64 %i.yj
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex
  %i.afn = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.afo = icmp eq i32 %i.afn, 1
  br i1 %i.afo, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.afp = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.afq = mul i64 %i.afp, %i.yj
  %i.afr = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.afq
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.afs = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.aft = sdiv i32 %i.yi, %i.afs                 ; 2 uses
  %i.afu = mul nsw i32 %i.aft, %i.afs             ; 0 uses
  %.recomposed2727 = srem i32 %i.yi, %i.afs
  %i.afv = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.afw = sext i32 %i.aft to i64
  %i.afx = mul i64 %i.afv, %i.afw
  %i.afy = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.afx
  %i.afz = sext i32 %.recomposed2727 to i64
  %i.aga = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.afz
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ey
  %.0.i.i838.ph = phi ptr [ %i.aga, %bb.fb ], [ %i.afr, %bb.fa ], [ %i.afm, %bb.ey ] ; 2 uses
  %i.agb = load float, ptr %.0.i.i838.ph, align 4, !tbaa !24
  %i.agc = call float @llvm.fmuladd.f32(float %i.act, float %i.abd, float %i.agb)
  store float %i.agc, ptr %.0.i.i838.ph, align 4, !tbaa !24
  %i.agd = load i32, ptr %i.vt, align 4
  %i.age = icmp eq i32 %i.agd, 1
  %or.cond.i.i840 = select i1 %i.acy, i1 true, i1 %i.age
  br i1 %or.cond.i.i840, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.adt, i64 %i.yl
  br label %bb.fi

bb.fe:                                            ; preds = %bb.fc
  %i.agg = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.agh = icmp eq i32 %i.agg, 1
  br i1 %i.agh, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.agi = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.agj = mul i64 %i.agi, %i.yl
  %i.agk = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.agj
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %i.agl = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.agm = sdiv i32 %i.yk, %i.agl                 ; 2 uses
  %i.agn = mul nsw i32 %i.agm, %i.agl             ; 0 uses
  %.recomposed2728 = srem i32 %i.yk, %i.agl
  %i.ago = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.agp = sext i32 %i.agm to i64
  %i.agq = mul i64 %i.ago, %i.agp
  %i.agr = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.agq
  %i.ags = sext i32 %.recomposed2728 to i64
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.agr, i64 %i.ags
  br label %bb.fi

bb.fh:                                            ; preds = %bb.eh
  %i.agu = load ptr, ptr %i.vw, align 8, !tbaa !228 ; 2 uses
  %i.agv = getelementptr [4 x i8], ptr %i.agu, i64 %i.yd ; 4 uses
  %i.agw = load <4 x float>, ptr %i.agv, align 4, !tbaa !24
  %i.agx = insertelement <4 x float> poison, float %i.act, i64 0
  %i.agy = shufflevector <4 x float> %i.agx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agz = insertelement <4 x float> poison, float %i.acr, i64 0
  %i.aha = shufflevector <4 x float> %i.agz, <4 x float> %i.abc, <4 x i32> <i32 poison, i32 poison, i32 0, i32 5>
  %i.ahb = shufflevector <2 x float> %i.aco, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahc = shufflevector <4 x float> %i.ahb, <4 x float> %i.aha, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ahd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agy, <4 x float> %i.ahc, <4 x float> %i.agw)
  store <4 x float> %i.ahd, ptr %i.agv, align 4, !tbaa !24
  %i.ahe = getelementptr i8, ptr %i.agv, i64 16   ; 2 uses
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !24
  %i.ahg = call float @llvm.fmuladd.f32(float %i.act, float %i.abg, float %i.ahf)
  store float %i.ahg, ptr %i.ahe, align 4, !tbaa !24
  %i.ahh = getelementptr i8, ptr %i.agv, i64 20
  br label %bb.fn

bb.fi:                                            ; preds = %bb.fg, %bb.ff, %bb.fd
  %.0.i.i841.ph = phi ptr [ %i.agt, %bb.fg ], [ %i.agk, %bb.ff ], [ %i.agf, %bb.fd ] ; 2 uses
  %i.ahi = load float, ptr %.0.i.i841.ph, align 4, !tbaa !24
  %i.ahj = call float @llvm.fmuladd.f32(float %i.act, float %i.abg, float %i.ahi)
  store float %i.ahj, ptr %.0.i.i841.ph, align 4, !tbaa !24
  %i.ahk = load i32, ptr %i.vt, align 4
  %i.ahl = icmp eq i32 %i.ahk, 1
  %or.cond.i.i843 = select i1 %i.acy, i1 true, i1 %i.ahl
  br i1 %or.cond.i.i843, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.adt, i64 %i.yn
  br label %bb.fn

bb.fk:                                            ; preds = %bb.fi
  %i.ahn = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.aho = icmp eq i32 %i.ahn, 1
  br i1 %i.aho, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.ahp = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.ahq = mul i64 %i.ahp, %i.yn
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.ahq
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %i.ahs = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.aht = sdiv i32 %i.ym, %i.ahs                 ; 2 uses
  %i.ahu = mul nsw i32 %i.aht, %i.ahs             ; 0 uses
  %.recomposed2729 = srem i32 %i.ym, %i.ahs
  %i.ahv = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.ahw = sext i32 %i.aht to i64
  %i.ahx = mul i64 %i.ahv, %i.ahw
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.ahx
  %i.ahz = sext i32 %.recomposed2729 to i64
  %i.aia = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.ahz
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fh, %bb.fj, %bb.fl, %bb.fm
  %i.aib = phi ptr [ %i.agu, %bb.fh ], [ %i.adt, %bb.fj ], [ %i.adt, %bb.fl ], [ %i.adt, %bb.fm ] ; 19 uses
  %.0.i.i844 = phi ptr [ %i.ahh, %bb.fh ], [ %i.ahm, %bb.fj ], [ %i.ahr, %bb.fl ], [ %i.aia, %bb.fm ] ; 2 uses
  %i.aic = load float, ptr %.0.i.i844, align 4, !tbaa !24
  %i.aid = call float @llvm.fmuladd.f32(float %i.act, float %i.abj, float %i.aic)
  store float %i.aid, ptr %.0.i.i844, align 4, !tbaa !24
  %i.aie = load i32, ptr %i.xh, align 4, !tbaa !31
  %i.aif = mul nsw i32 %i.zp, 6
  %i.aig = add nsw i32 %i.aie, %i.aif             ; 19 uses
  %i.aih = shufflevector <4 x float> %i.aay, <4 x float> %i.abc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aii = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ace, i64 0
  %i.aij = shufflevector <2 x float> %i.aci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aik = shufflevector <4 x float> %i.aii, <4 x float> %i.aij, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ail = fmul <4 x float> %i.aih, %i.aik
  %i.aim = shufflevector <4 x float> %i.aay, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ain = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aim, <4 x float> %i.abc, <4 x float> %i.ail) ; 4 uses
  br i1 %i.acv, label %bb.gn, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aio = load i32, ptr %50, align 8, !tbaa !227
  %i.aip = and i32 %i.aio, 16384
  %i.aiq = icmp ne i32 %i.aip, 0                  ; 6 uses
  %i.air = load i32, ptr %i.vt, align 4
  %i.ais = icmp eq i32 %i.air, 1
  %or.cond.i.i846 = select i1 %i.aiq, i1 true, i1 %i.ais
  br i1 %or.cond.i.i846, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ait = sext i32 %i.aig to i64
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.ait
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fo
  %i.aiv = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.aiw = icmp eq i32 %i.aiv, 1
  br i1 %i.aiw, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aix = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.aiy = sext i32 %i.aig to i64
  %i.aiz = mul i64 %i.aix, %i.aiy
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.aiz
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  %i.ajb = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.ajc = sdiv i32 %i.aig, %i.ajb                ; 2 uses
  %i.ajd = mul nsw i32 %i.ajc, %i.ajb             ; 0 uses
  %.recomposed2730 = srem i32 %i.aig, %i.ajb
  %i.aje = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.ajf = sext i32 %i.ajc to i64
  %i.ajg = mul i64 %i.aje, %i.ajf
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.ajg
  %i.aji = sext i32 %.recomposed2730 to i64
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.aji
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fp
  %.0.i.i847.ph = phi ptr [ %i.ajj, %bb.fs ], [ %i.aja, %bb.fr ], [ %i.aiu, %bb.fp ] ; 2 uses
  %i.ajk = load float, ptr %.0.i.i847.ph, align 4, !tbaa !24
  %i.ajl = extractelement <4 x float> %i.ain, i64 0
  %i.ajm = call float @llvm.fmuladd.f32(float %i.acs, float %i.ajl, float %i.ajk)
  store float %i.ajm, ptr %.0.i.i847.ph, align 4, !tbaa !24
  %i.ajn = add nsw i32 %i.aig, 1                  ; 4 uses
  %i.ajo = load i32, ptr %i.vt, align 4
  %i.ajp = icmp eq i32 %i.ajo, 1
  %or.cond.i.i849 = select i1 %i.aiq, i1 true, i1 %i.ajp
  br i1 %or.cond.i.i849, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ajq = sext i32 %i.ajn to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.ajq
  br label %bb.fy

bb.fv:                                            ; preds = %bb.ft
  %i.ajs = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.ajt = icmp eq i32 %i.ajs, 1
  br i1 %i.ajt, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.aju = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.ajv = sext i32 %i.ajn to i64
  %i.ajw = mul i64 %i.aju, %i.ajv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.ajw
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.ajy = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.ajz = sdiv i32 %i.ajn, %i.ajy                ; 2 uses
  %i.aka = mul nsw i32 %i.ajz, %i.ajy             ; 0 uses
  %.recomposed2731 = srem i32 %i.ajn, %i.ajy
  %i.akb = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.akc = sext i32 %i.ajz to i64
  %i.akd = mul i64 %i.akb, %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.akd
  %i.akf = sext i32 %.recomposed2731 to i64
  %i.akg = getelementptr inbounds [4 x i8], ptr %i.ake, i64 %i.akf
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fu
  %.0.i.i850.ph = phi ptr [ %i.akg, %bb.fx ], [ %i.ajx, %bb.fw ], [ %i.ajr, %bb.fu ] ; 2 uses
  %i.akh = load float, ptr %.0.i.i850.ph, align 4, !tbaa !24
  %i.aki = extractelement <4 x float> %i.ain, i64 1
  %i.akj = call float @llvm.fmuladd.f32(float %i.acs, float %i.aki, float %i.akh)
  store float %i.akj, ptr %.0.i.i850.ph, align 4, !tbaa !24
  %i.akk = add nsw i32 %i.aig, 2                  ; 4 uses
  %i.akl = load i32, ptr %i.vt, align 4
  %i.akm = icmp eq i32 %i.akl, 1
  %or.cond.i.i852 = select i1 %i.aiq, i1 true, i1 %i.akm
  br i1 %or.cond.i.i852, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.akn = sext i32 %i.akk to i64
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.akn
  br label %bb.gd

bb.ga:                                            ; preds = %bb.fy
  %i.akp = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.akq = icmp eq i32 %i.akp, 1
  br i1 %i.akq, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.akr = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.aks = sext i32 %i.akk to i64
  %i.akt = mul i64 %i.akr, %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.akt
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.akv = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.akw = sdiv i32 %i.akk, %i.akv                ; 2 uses
  %i.akx = mul nsw i32 %i.akw, %i.akv             ; 0 uses
  %.recomposed2732 = srem i32 %i.akk, %i.akv
  %i.aky = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.akz = sext i32 %i.akw to i64
  %i.ala = mul i64 %i.aky, %i.akz
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.ala
  %i.alc = sext i32 %.recomposed2732 to i64
  %i.ald = getelementptr inbounds [4 x i8], ptr %i.alb, i64 %i.alc
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.fz
  %.0.i.i853.ph = phi ptr [ %i.ald, %bb.gc ], [ %i.aku, %bb.gb ], [ %i.ako, %bb.fz ] ; 2 uses
  %i.ale = load float, ptr %.0.i.i853.ph, align 4, !tbaa !24
  %i.alf = extractelement <4 x float> %i.ain, i64 2
  %i.alg = call float @llvm.fmuladd.f32(float %i.acs, float %i.alf, float %i.ale)
  store float %i.alg, ptr %.0.i.i853.ph, align 4, !tbaa !24
  %i.alh = add nsw i32 %i.aig, 3                  ; 4 uses
  %i.ali = load i32, ptr %i.vt, align 4
  %i.alj = icmp eq i32 %i.ali, 1
  %or.cond.i.i855 = select i1 %i.aiq, i1 true, i1 %i.alj
  br i1 %or.cond.i.i855, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.alk = sext i32 %i.alh to i64
  %i.all = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.alk
  br label %bb.gi

bb.gf:                                            ; preds = %bb.gd
  %i.alm = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.aln = icmp eq i32 %i.alm, 1
  br i1 %i.aln, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.alo = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.alp = sext i32 %i.alh to i64
  %i.alq = mul i64 %i.alo, %i.alp
  %i.alr = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.alq
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  %i.als = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.alt = sdiv i32 %i.alh, %i.als                ; 2 uses
  %i.alu = mul nsw i32 %i.alt, %i.als             ; 0 uses
  %.recomposed2733 = srem i32 %i.alh, %i.als
  %i.alv = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.alw = sext i32 %i.alt to i64
  %i.alx = mul i64 %i.alv, %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.alx
  %i.alz = sext i32 %.recomposed2733 to i64
  %i.ama = getelementptr inbounds [4 x i8], ptr %i.aly, i64 %i.alz
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %bb.ge
  %.0.i.i856.ph = phi ptr [ %i.ama, %bb.gh ], [ %i.alr, %bb.gg ], [ %i.all, %bb.ge ] ; 2 uses
  %i.amb = load float, ptr %.0.i.i856.ph, align 4, !tbaa !24
  %i.amc = call float @llvm.fmuladd.f32(float %i.acs, float %i.abd, float %i.amb)
  store float %i.amc, ptr %.0.i.i856.ph, align 4, !tbaa !24
  %i.amd = add nsw i32 %i.aig, 4                  ; 4 uses
  %i.ame = load i32, ptr %i.vt, align 4
  %i.amf = icmp eq i32 %i.ame, 1
  %or.cond.i.i858 = select i1 %i.aiq, i1 true, i1 %i.amf
  br i1 %or.cond.i.i858, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.amg = sext i32 %i.amd to i64
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.amg
  br label %bb.go

bb.gk:                                            ; preds = %bb.gi
  %i.ami = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.amj = icmp eq i32 %i.ami, 1
  br i1 %i.amj, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.amk = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.aml = sext i32 %i.amd to i64
  %i.amm = mul i64 %i.amk, %i.aml
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.amm
  br label %bb.go

bb.gm:                                            ; preds = %bb.gk
  %i.amo = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.amp = sdiv i32 %i.amd, %i.amo                ; 2 uses
  %i.amq = mul nsw i32 %i.amp, %i.amo             ; 0 uses
  %.recomposed2734 = srem i32 %i.amd, %i.amo
  %i.amr = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.ams = sext i32 %i.amp to i64
  %i.amt = mul i64 %i.amr, %i.ams
  %i.amu = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.amt
  %i.amv = sext i32 %.recomposed2734 to i64
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.amu, i64 %i.amv
  br label %bb.go

bb.gn:                                            ; preds = %bb.fn
  %i.amx = sext i32 %i.aig to i64
  %i.amy = getelementptr [4 x i8], ptr %i.aib, i64 %i.amx ; 4 uses
  %i.amz = load <4 x float>, ptr %i.amy, align 4, !tbaa !24
  %i.ana = insertelement <4 x float> poison, float %i.acs, i64 0
  %i.anb = shufflevector <4 x float> %i.ana, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anb, <4 x float> %i.ain, <4 x float> %i.amz)
  store <4 x float> %i.anc, ptr %i.amy, align 4, !tbaa !24
  %i.and = getelementptr i8, ptr %i.amy, i64 16   ; 2 uses
  %i.ane = load float, ptr %i.and, align 4, !tbaa !24
  %i.anf = call float @llvm.fmuladd.f32(float %i.acs, float %i.abg, float %i.ane)
  store float %i.anf, ptr %i.and, align 4, !tbaa !24
  %i.ang = getelementptr i8, ptr %i.amy, i64 20
  br label %_ZN2cv4Mat_IfEclEi.exit863

bb.go:                                            ; preds = %bb.gm, %bb.gl, %bb.gj
  %.0.i.i859.ph = phi ptr [ %i.amw, %bb.gm ], [ %i.amn, %bb.gl ], [ %i.amh, %bb.gj ] ; 2 uses
  %i.anh = load float, ptr %.0.i.i859.ph, align 4, !tbaa !24
  %i.ani = call float @llvm.fmuladd.f32(float %i.acs, float %i.abg, float %i.anh)
  store float %i.ani, ptr %.0.i.i859.ph, align 4, !tbaa !24
  %i.anj = add nsw i32 %i.aig, 5                  ; 4 uses
  %i.ank = load i32, ptr %i.vt, align 4
  %i.anl = icmp eq i32 %i.ank, 1
  %or.cond.i.i861 = select i1 %i.aiq, i1 true, i1 %i.anl
  br i1 %or.cond.i.i861, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.anm = sext i32 %i.anj to i64
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.anm
  br label %_ZN2cv4Mat_IfEclEi.exit863

bb.gq:                                            ; preds = %bb.go
  %i.ano = load i32, ptr %i.vu, align 8, !tbaa !31
  %i.anp = icmp eq i32 %i.ano, 1
  br i1 %i.anp, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.anq = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.anr = sext i32 %i.anj to i64
  %i.ans = mul i64 %i.anq, %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.ans
  br label %_ZN2cv4Mat_IfEclEi.exit863

bb.gs:                                            ; preds = %bb.gq
  %i.anu = load i32, ptr %i.vv, align 4, !tbaa !229 ; 3 uses
  %i.anv = sdiv i32 %i.anj, %i.anu                ; 2 uses
  %i.anw = mul nsw i32 %i.anv, %i.anu             ; 0 uses
  %.recomposed2735 = srem i32 %i.anj, %i.anu
  %i.anx = load i64, ptr %i.vx, align 8, !tbaa !37
  %i.any = sext i32 %i.anv to i64
  %i.anz = mul i64 %i.anx, %i.any
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.anz
  %i.aob = sext i32 %.recomposed2735 to i64
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.aoa, i64 %i.aob
  br label %_ZN2cv4Mat_IfEclEi.exit863

_ZN2cv4Mat_IfEclEi.exit863:                       ; preds = %bb.gs, %bb.gr, %bb.gp, %bb.gn
  %.0.i.i862 = phi ptr [ %i.ang, %bb.gn ], [ %i.ann, %bb.gp ], [ %i.ant, %bb.gr ], [ %i.aoc, %bb.gs ] ; 2 uses
  %i.aod = load float, ptr %.0.i.i862, align 4, !tbaa !24
  %i.aoe = call float @llvm.fmuladd.f32(float %i.acs, float %i.abj, float %i.aod)
  store float %i.aoe, ptr %.0.i.i862, align 4, !tbaa !24
  %i.aof = extractelement <4 x float> %i.aau, i64 0 ; 13 uses
  %i.aog = fneg float %i.aof                      ; 2 uses
  %i.aoh = fneg float %i.acg                      ; 2 uses
  %i.aoi = fneg float %i.acf                      ; 2 uses
  %i.aoj = fneg float %i.aag                      ; 6 uses
  %i.aok = fneg float %i.aac                      ; 6 uses
  %i.aol = fneg float %i.aae                      ; 6 uses
  %i.aom = call float @llvm.fmuladd.f32(float %i.aog, float %i.aag, float 0.000000e+00)
  %i.aon = call float @llvm.fmuladd.f32(float %i.acf, float %i.aol, float %i.aom) ; 4 uses
  %i.aoo = call float @llvm.fmuladd.f32(float %i.aoj, float 0.000000e+00, float 0.000000e+00)
  %i.aop = call float @llvm.fmuladd.f32(float %i.aog, float 0.000000e+00, float %i.aoo)
  %i.aoq = call float @llvm.fmuladd.f32(float %i.acf, float %i.aac, float %i.aop) ; 4 uses
  %i.aor = call float @llvm.fmuladd.f32(float %i.aae, float 0.000000e+00, float 0.000000e+00)
  %i.aos = call float @llvm.fmuladd.f32(float %i.aof, float %i.aac, float %i.aor)
  %i.aot = call float @llvm.fmuladd.f32(float %i.acf, float 0.000000e+00, float %i.aos) ; 4 uses
  %i.aou = call float @llvm.fmuladd.f32(float %i.aof, float 0.000000e+00, float 0.000000e+00)
  %i.aov = call float @llvm.fmuladd.f32(float %i.aag, float 0.000000e+00, float %i.aou)
  %i.aow = call float @llvm.fmuladd.f32(float %i.acg, float %i.aae, float %i.aov) ; 4 uses
  %i.aox = call float @llvm.fmuladd.f32(float %i.aof, float %i.aoj, float 0.000000e+00)
  %i.aoy = fadd float %i.aox, 0.000000e+00
  %i.aoz = call float @llvm.fmuladd.f32(float %i.aoh, float %i.aac, float %i.aoy) ; 4 uses
  %i.apa = call float @llvm.fmuladd.f32(float %i.aof, float %i.aae, float 0.000000e+00)
  %i.apb = call float @llvm.fmuladd.f32(float %i.aok, float 0.000000e+00, float %i.apa)
  %i.apc = call float @llvm.fmuladd.f32(float %i.aoh, float 0.000000e+00, float %i.apb) ; 4 uses
  %i.apd = call float @llvm.fmuladd.f32(float %i.aoi, float 0.000000e+00, float 0.000000e+00)
  %i.ape = call float @llvm.fmuladd.f32(float %i.acg, float %i.aag, float %i.apd)
  %i.apf = call float @llvm.fmuladd.f32(float %i.aol, float 0.000000e+00, float %i.ape) ; 4 uses
  %i.apg = call float @llvm.fmuladd.f32(float %i.acf, float %i.aag, float 0.000000e+00)
  %i.aph = call float @llvm.fmuladd.f32(float %i.acg, float 0.000000e+00, float %i.apg)
  %i.api = call float @llvm.fmuladd.f32(float %i.aac, float 0.000000e+00, float %i.aph) ; 4 uses
  %i.apj = call float @llvm.fmuladd.f32(float %i.aoi, float %i.aae, float 0.000000e+00)
  %i.apk = call float @llvm.fmuladd.f32(float %i.acg, float %i.aok, float %i.apj)
  %i.apl = fadd float %i.apk, 0.000000e+00        ; 4 uses
  %i.apm = load i32, ptr %i.vy, align 4, !tbaa !226
  %.fr2103 = freeze i32 %i.apm
  %i.apn = icmp slt i32 %.fr2103, 2
  %i.apo = load ptr, ptr %i.vz, align 8, !tbaa !228 ; 25 uses
  %i.app = sext i32 %i.aig to i64                 ; 11 uses
  br i1 %i.apn, label %.preheader1934.thread, label %.preheader1934

.preheader1934.thread:                            ; preds = %_ZN2cv4Mat_IfEclEi.exit863
  %i.apq = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.app ; 6 uses
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !24
  %i.aps = call float @llvm.fmuladd.f32(float %i.acs, float %i.aon, float %i.apr)
  store float %i.aps, ptr %i.apq, align 4, !tbaa !24
  %i.apt = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.yd ; 6 uses
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !24
  %i.apv = call float @llvm.fmuladd.f32(float %i.acs, float %i.aon, float %i.apu)
  store float %i.apv, ptr %i.apt, align 4, !tbaa !24
  %i.apw = getelementptr [4 x i8], ptr %i.apo, i64 %i.app
  %i.apx = getelementptr i8, ptr %i.apw, i64 4    ; 6 uses
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !24
  %i.apz = call float @llvm.fmuladd.f32(float %i.acs, float %i.aoq, float %i.apy)
  store float %i.apz, ptr %i.apx, align 4, !tbaa !24
  %i.aqa = getelementptr [4 x i8], ptr %i.apo, i64 %i.yd
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 4    ; 6 uses
  %i.aqc = load float, ptr %i.aqb, align 4, !tbaa !24
  %i.aqd = call float @llvm.fmuladd.f32(float %i.acs, float %i.aoq, float %i.aqc)
  store float %i.aqd, ptr %i.aqb, align 4, !tbaa !24
  %i.aqe = getelementptr [4 x i8], ptr %i.apo, i64 %i.app
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 8    ; 6 uses
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !24
  %i.aqh = call float @llvm.fmuladd.f32(float %i.acs, float %i.aot, float %i.aqg)
  store float %i.aqh, ptr %i.aqf, align 4, !tbaa !24
  %i.aqi = getelementptr [4 x i8], ptr %i.apo, i64 %i.yd
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 8    ; 6 uses
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !24
  %i.aql = call float @llvm.fmuladd.f32(float %i.acs, float %i.aot, float %i.aqk)
  store float %i.aql, ptr %i.aqj, align 4, !tbaa !24
  %i.aqm = load float, ptr %i.apq, align 4, !tbaa !24
  %i.aqn = call float @llvm.fmuladd.f32(float %i.acs, float %i.aow, float %i.aqm)
  store float %i.aqn, ptr %i.apq, align 4, !tbaa !24
  %i.aqo = load float, ptr %i.apt, align 4, !tbaa !24
  %i.aqp = call float @llvm.fmuladd.f32(float %i.acs, float %i.aow, float %i.aqo)
  store float %i.aqp, ptr %i.apt, align 4, !tbaa !24
  %i.aqq = load float, ptr %i.apx, align 4, !tbaa !24
  %i.aqr = call float @llvm.fmuladd.f32(float %i.acs, float %i.aoz, float %i.aqq)
  store float %i.aqr, ptr %i.apx, align 4, !tbaa !24
  %i.aqs = load float, ptr %i.aqb, align 4, !tbaa !24
  %i.aqt = call float @llvm.fmuladd.f32(float %i.acs, float %i.aoz, float %i.aqs)
  store float %i.aqt, ptr %i.aqb, align 4, !tbaa !24
  %i.aqu = load float, ptr %i.aqf, align 4, !tbaa !24
  %i.aqv = call float @llvm.fmuladd.f32(float %i.acs, float %i.apc, float %i.aqu)
  store float %i.aqv, ptr %i.aqf, align 4, !tbaa !24
  %i.aqw = load float, ptr %i.aqj, align 4, !tbaa !24
  %i.aqx = call float @llvm.fmuladd.f32(float %i.acs, float %i.apc, float %i.aqw)
  store float %i.aqx, ptr %i.aqj, align 4, !tbaa !24
  %i.aqy = load float, ptr %i.apq, align 4, !tbaa !24
  %i.aqz = call float @llvm.fmuladd.f32(float %i.acs, float %i.apf, float %i.aqy)
  store float %i.aqz, ptr %i.apq, align 4, !tbaa !24
  %i.ara = load float, ptr %i.apt, align 4, !tbaa !24
  %i.arb = call float @llvm.fmuladd.f32(float %i.acs, float %i.apf, float %i.ara)
  store float %i.arb, ptr %i.apt, align 4, !tbaa !24
  %i.arc = load float, ptr %i.apx, align 4, !tbaa !24
  %i.ard = call float @llvm.fmuladd.f32(float %i.acs, float %i.api, float %i.arc)
  store float %i.ard, ptr %i.apx, align 4, !tbaa !24
  %i.are = load float, ptr %i.aqb, align 4, !tbaa !24
  %i.arf = call float @llvm.fmuladd.f32(float %i.acs, float %i.api, float %i.are)
  store float %i.arf, ptr %i.aqb, align 4, !tbaa !24
  %i.arg = load float, ptr %i.aqf, align 4, !tbaa !24
  %i.arh = call float @llvm.fmuladd.f32(float %i.acs, float %i.apl, float %i.arg)
  store float %i.arh, ptr %i.aqf, align 4, !tbaa !24
end_hunk_0
