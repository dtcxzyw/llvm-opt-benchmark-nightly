inline.NumInlined: 650
inline.NumDeleted: 354
begin_hunk_0_@_ZN6Assimp20PretransformVertices7ExecuteEP7aiScene:bb.a
bb.cc:                                            ; preds = %bb.ca
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cd:                                            ; preds = %.lr.ph676, %bb.ch
  %indvars.iv799 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next800, %bb.ch ] ; 3 uses
  %.0310674 = phi ptr [ %i.xb, %.lr.ph676 ], [ %i.xy, %bb.ch ] ; 2 uses
  %i.xh = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.ce unwind label %bb.ci     ; 9 uses

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.xh)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.xh, ptr %.0310674, align 8
  %i.xi = load ptr, ptr %i.m, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 1096
  store ptr %i.xi, ptr %i.xj, align 8
  %i.xk = load ptr, ptr %i.xd, align 8
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv799
  %i.xm = load ptr, ptr %i.xl, align 8            ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 236 ; 2 uses
  %i.xo = icmp eq ptr %i.xh, %i.xn
  br i1 %i.xo, label %_ZN8aiStringaSERKS_.exit409, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xp = load i32, ptr %i.xn, align 4
  %spec.select.i408 = call i32 @llvm.umin.i32(i32 %i.xp, i32 1023) ; 2 uses
  store i32 %spec.select.i408, ptr %i.xh, align 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xh, i64 4 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xm, i64 240
  %i.xs = zext nneg i32 %spec.select.i408 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xq, ptr nonnull align 4 %i.xr, i64 %i.xs, i1 false)
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xs
  store i8 0, ptr %i.xt, align 1
  br label %_ZN8aiStringaSERKS_.exit409

_ZN8aiStringaSERKS_.exit409:                      ; preds = %bb.cf, %bb.cg
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xh, i64 1120
  store i32 1, ptr %i.xu, align 8
  %i.xv = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #24
          to label %bb.ch unwind label %bb.ci     ; 2 uses

bb.ch:                                            ; preds = %_ZN8aiStringaSERKS_.exit409
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xh, i64 1128
  store ptr %i.xv, ptr %i.xw, align 8
  %i.xx = trunc nuw i64 %indvars.iv799 to i32
  store i32 %i.xx, ptr %i.xv, align 4
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 1 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.0310674, i64 8 ; 2 uses
  %i.xz = load i32, ptr %i.i, align 8
  %i.ya = zext i32 %i.xz to i64
  %i.yb = icmp samesign ult i64 %indvars.iv.next800, %i.ya
  br i1 %i.yb, label %bb.cd, label %.preheader573.loopexit, !llvm.loop !57

bb.ci:                                            ; preds = %_ZN8aiStringaSERKS_.exit409, %bb.cd
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cj:                                            ; preds = %bb.ce
  %i.yd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xh, i64 noundef 1144) #26
  br label %bb.do

.preheader572:                                    ; preds = %_ZN8aiStringaSERKS_.exit411, %.preheader573
  %.1311.lcssa = phi ptr [ %.0310.lcssa, %.preheader573 ], [ %i.yt, %_ZN8aiStringaSERKS_.exit411 ]
  %i.ye = load i32, ptr %i.oa, align 8
  %.not728 = icmp eq i32 %i.ye, 0
  br i1 %.not728, label %.loopexit, label %.lr.ph684

.lr.ph684:                                        ; preds = %.preheader572
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.cq

bb.ck:                                            ; preds = %.lr.ph680, %_ZN8aiStringaSERKS_.exit411
  %indvars.iv802 = phi i64 [ 0, %.lr.ph680 ], [ %indvars.iv.next803, %_ZN8aiStringaSERKS_.exit411 ] ; 3 uses
  %.1311679 = phi ptr [ %.0310.lcssa, %.lr.ph680 ], [ %i.yt, %_ZN8aiStringaSERKS_.exit411 ] ; 2 uses
  %i.yg = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.cl unwind label %bb.co     ; 7 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yg)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.yg, ptr %.1311679, align 8
  %i.yh = load ptr, ptr %i.m, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 1096
  store ptr %i.yh, ptr %i.yi, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 4 ; 2 uses
  %i.yk = trunc nuw i64 %indvars.iv802 to i32
  %i.yl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.yj, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.yk) #23 ; 2 uses
  store i32 %i.yl, ptr %i.yg, align 8
  %i.ym = load ptr, ptr %i.xf, align 8
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %indvars.iv802
  %i.yo = load ptr, ptr %i.yn, align 8            ; 3 uses
  %i.yp = icmp eq ptr %i.yo, %i.yg
  br i1 %i.yp, label %_ZN8aiStringaSERKS_.exit411, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %spec.select.i410 = call i32 @llvm.umin.i32(i32 %i.yl, i32 1023) ; 2 uses
  store i32 %spec.select.i410, ptr %i.yo, align 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 4 ; 2 uses
  %i.yr = zext nneg i32 %spec.select.i410 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yq, ptr nonnull align 4 %i.yj, i64 %i.yr, i1 false)
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yr
  store i8 0, ptr %i.ys, align 1
  br label %_ZN8aiStringaSERKS_.exit411

_ZN8aiStringaSERKS_.exit411:                      ; preds = %bb.cm, %bb.cn
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 1 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.1311679, i64 8 ; 2 uses
  %i.yu = load i32, ptr %i.od, align 8
  %i.yv = zext i32 %i.yu to i64
  %i.yw = icmp samesign ult i64 %indvars.iv.next803, %i.yv
  br i1 %i.yw, label %bb.ck, label %.preheader572, !llvm.loop !58

bb.co:                                            ; preds = %bb.ck
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cp:                                            ; preds = %bb.cl
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef 1144) #26
  br label %bb.do

bb.cq:                                            ; preds = %.lr.ph684, %_ZN8aiStringaSERKS_.exit413
  %indvars.iv805 = phi i64 [ 0, %.lr.ph684 ], [ %indvars.iv.next806, %_ZN8aiStringaSERKS_.exit413 ] ; 3 uses
  %.2312683 = phi ptr [ %.1311.lcssa, %.lr.ph684 ], [ %i.zm, %_ZN8aiStringaSERKS_.exit413 ] ; 2 uses
  %i.yz = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.cr unwind label %bb.cu     ; 7 uses

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yz)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.yz, ptr %.2312683, align 8
  %i.za = load ptr, ptr %i.m, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 1096
  store ptr %i.za, ptr %i.zb, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4 ; 2 uses
  %i.zd = trunc nuw i64 %indvars.iv805 to i32
  %i.ze = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.zc, i64 noundef 1024, ptr noundef nonnull @.str.9, i32 noundef %i.zd) #23 ; 2 uses
  store i32 %i.ze, ptr %i.yz, align 8
  %i.zf = load ptr, ptr %i.yf, align 8
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv805
  %i.zh = load ptr, ptr %i.zg, align 8            ; 3 uses
  %i.zi = icmp eq ptr %i.zh, %i.yz
  br i1 %i.zi, label %_ZN8aiStringaSERKS_.exit413, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %spec.select.i412 = call i32 @llvm.umin.i32(i32 %i.ze, i32 1023) ; 2 uses
  store i32 %spec.select.i412, ptr %i.zh, align 4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 4 ; 2 uses
  %i.zk = zext nneg i32 %spec.select.i412 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zj, ptr nonnull align 4 %i.zc, i64 %i.zk, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zk
  store i8 0, ptr %i.zl, align 1
  br label %_ZN8aiStringaSERKS_.exit413

_ZN8aiStringaSERKS_.exit413:                      ; preds = %bb.cs, %bb.ct
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.2312683, i64 8
  %i.zn = load i32, ptr %i.oa, align 8
  %i.zo = zext i32 %i.zn to i64
  %i.zp = icmp samesign ult i64 %indvars.iv.next806, %i.zo
  br i1 %i.zp, label %bb.cq, label %.loopexit, !llvm.loop !59

bb.cu:                                            ; preds = %bb.cq
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cv:                                            ; preds = %bb.cr
  %i.zr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef 1144) #26
  br label %bb.do

bb.cw:                                            ; preds = %._crit_edge672
  %i.zs = load ptr, ptr %i.m, align 8
  call void @_ZNK6Assimp20PretransformVertices21MakeIdentityTransformEP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.zs)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8aiStringaSERKS_.exit413, %.preheader572, %bb.cw, %bb.bx
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.zu = load i8, ptr %i.zt, align 1, !range !38, !noundef !39
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %.preheader, label %._crit_edge715

.preheader:                                       ; preds = %.loopexit
  %i.zw = load i32, ptr %i.i, align 8             ; 3 uses
  %.not729 = icmp eq i32 %i.zw, 0                 ; 2 uses
  br i1 %.not729, label %._crit_edge715, label %.lr.ph702

.lr.ph702:                                        ; preds = %.preheader
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zy = load ptr, ptr %i.zx, align 8
  %wide.trip.count814 = zext i32 %i.zw to i64
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph702, %._crit_edge692
  %indvars.iv811 = phi i64 [ 0, %.lr.ph702 ], [ %indvars.iv.next812, %._crit_edge692 ] ; 2 uses
  %.sroa.14.0700 = phi float [ 1.000000e+10, %.lr.ph702 ], [ %.sroa.14.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.0459.0699 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph702 ], [ %.sroa.0459.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.12.0698 = phi float [ -1.000000e+10, %.lr.ph702 ], [ %.sroa.12.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.0471.0697 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph702 ], [ %.sroa.0471.1.lcssa, %._crit_edge692 ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %indvars.iv811
  %i.aaa = load ptr, ptr %i.zz, align 8           ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aac = load i32, ptr %i.aab, align 4          ; 2 uses
  %.not730 = icmp eq i32 %i.aac, 0
  br i1 %.not730, label %._crit_edge692, label %.lr.ph691

.lr.ph691:                                        ; preds = %bb.cx
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8
  %wide.trip.count = zext i32 %i.aac to i64
  br label %bb.cy

._crit_edge692:                                   ; preds = %bb.cy, %bb.cx
  %.sroa.0471.1.lcssa = phi <2 x float> [ %.sroa.0471.0697, %bb.cx ], [ %i.aam, %bb.cy ] ; 3 uses
  %.sroa.12.1.lcssa = phi float [ %.sroa.12.0698, %bb.cx ], [ %i.aaq, %bb.cy ] ; 2 uses
  %.sroa.0459.1.lcssa = phi <2 x float> [ %.sroa.0459.0699, %bb.cx ], [ %i.aao, %bb.cy ] ; 2 uses
  %.sroa.14.1.lcssa = phi float [ %.sroa.14.0700, %bb.cx ], [ %i.aaj, %bb.cy ] ; 3 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %._crit_edge703, label %bb.cx, !llvm.loop !60

bb.cy:                                            ; preds = %.lr.ph691, %bb.cy
  %indvars.iv808 = phi i64 [ 0, %.lr.ph691 ], [ %indvars.iv.next809, %bb.cy ] ; 2 uses
  %.sroa.14.1688 = phi float [ %.sroa.14.0700, %.lr.ph691 ], [ %i.aaj, %bb.cy ] ; 2 uses
  %.sroa.0459.1687 = phi <2 x float> [ %.sroa.0459.0699, %.lr.ph691 ], [ %i.aao, %bb.cy ] ; 2 uses
  %.sroa.12.1686 = phi float [ %.sroa.12.0698, %.lr.ph691 ], [ %i.aaq, %bb.cy ] ; 2 uses
  %.sroa.0471.1685 = phi <2 x float> [ %.sroa.0471.0697, %.lr.ph691 ], [ %i.aam, %bb.cy ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw [12 x i8], ptr %i.aae, i64 %indvars.iv808 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = load float, ptr %i.aag, align 4        ; 4 uses
  %i.aai = fcmp olt float %.sroa.14.1688, %i.aah
  %i.aaj = select i1 %i.aai, float %.sroa.14.1688, float %i.aah ; 2 uses
  %i.aak = load <2 x float>, ptr %i.aaf, align 4  ; 4 uses
  %i.aal = fcmp olt <2 x float> %.sroa.0471.1685, %i.aak
  %i.aam = select <2 x i1> %i.aal, <2 x float> %.sroa.0471.1685, <2 x float> %i.aak ; 2 uses
  %i.aan = fcmp olt <2 x float> %i.aak, %.sroa.0459.1687
  %i.aao = select <2 x i1> %i.aan, <2 x float> %.sroa.0459.1687, <2 x float> %i.aak ; 2 uses
  %i.aap = fcmp olt float %i.aah, %.sroa.12.1686
  %i.aaq = select i1 %i.aap, float %.sroa.12.1686, float %i.aah ; 2 uses
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge692, label %bb.cy, !llvm.loop !61

._crit_edge703:                                   ; preds = %._crit_edge692
  %i.aar = fsub float %.sroa.12.1.lcssa, %.sroa.14.1.lcssa ; 3 uses
  %i.aas = fsub <2 x float> %.sroa.0459.1.lcssa, %.sroa.0471.1.lcssa ; 3 uses
  %i.aat = fmul <2 x float> %i.aas, splat (float 5.000000e-01)
  %i.aau = fmul float %i.aar, 5.000000e-01
  %i.aav = fadd <2 x float> %.sroa.0471.1.lcssa, %i.aat
  %i.aaw = fadd float %.sroa.14.1.lcssa, %i.aau
  br i1 %.not729, label %._crit_edge715, label %.lr.ph714

.lr.ph714:                                        ; preds = %._crit_edge703
  %i.aax = extractelement <2 x float> %i.aas, i64 1 ; 2 uses
  %i.aay = fcmp olt float %i.aax, %i.aar
  %i.aaz = select i1 %i.aay, float %i.aar, float %i.aax ; 2 uses
  %i.aba = extractelement <2 x float> %i.aas, i64 0 ; 2 uses
  %i.abb = fcmp olt float %i.aba, %i.aaz
  %i.abc = select i1 %i.abb, float %i.aaz, float %i.aba
  %i.abd = fmul float %i.abc, 5.000000e-01
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abf = fdiv float 1.000000e+00, %i.abd        ; 2 uses
  %i.abg = insertelement <2 x float> poison, float %i.abf, i64 0
  %i.abh = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph714, %._crit_edge711
  %i.abi = phi i32 [ %i.zw, %.lr.ph714 ], [ %i.abp, %._crit_edge711 ]
  %indvars.iv819 = phi i64 [ 0, %.lr.ph714 ], [ %indvars.iv.next820, %._crit_edge711 ] ; 2 uses
  %i.abj = load ptr, ptr %i.abe, align 8
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %indvars.iv819
  %i.abl = load ptr, ptr %i.abk, align 8          ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 4 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4
  %.not732 = icmp eq i32 %i.abn, 0
  br i1 %.not732, label %._crit_edge711, label %.lr.ph710

.lr.ph710:                                        ; preds = %bb.cz
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  br label %bb.da

._crit_edge711.loopexit:                          ; preds = %bb.da
  %.pre843 = load i32, ptr %i.i, align 8
  br label %._crit_edge711

._crit_edge711:                                   ; preds = %._crit_edge711.loopexit, %bb.cz
  %i.abp = phi i32 [ %.pre843, %._crit_edge711.loopexit ], [ %i.abi, %bb.cz ] ; 2 uses
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1 ; 2 uses
  %i.abq = zext i32 %i.abp to i64
  %i.abr = icmp samesign ult i64 %indvars.iv.next820, %i.abq
  br i1 %i.abr, label %bb.cz, label %._crit_edge715, !llvm.loop !62

bb.da:                                            ; preds = %.lr.ph710, %bb.da
  %indvars.iv816 = phi i64 [ 0, %.lr.ph710 ], [ %indvars.iv.next817, %bb.da ] ; 2 uses
  %i.abs = load ptr, ptr %i.abo, align 8
  %i.abt = getelementptr inbounds nuw [12 x i8], ptr %i.abs, i64 %indvars.iv816 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8 ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4
  %i.abw = fsub float %i.abv, %i.aaw
  %i.abx = load <2 x float>, ptr %i.abt, align 4
  %i.aby = fsub <2 x float> %i.abx, %i.aav
  %i.abz = fmul <2 x float> %i.abh, %i.aby
  %i.aca = fmul float %i.abf, %i.abw
  store <2 x float> %i.abz, ptr %i.abt, align 4
  store float %i.aca, ptr %i.abu, align 4
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1 ; 2 uses
  %i.acb = load i32, ptr %i.abm, align 4
  %i.acc = zext i32 %i.acb to i64
  %i.acd = icmp samesign ult i64 %indvars.iv.next817, %i.acc
  br i1 %i.acd, label %bb.da, label %._crit_edge711.loopexit, !llvm.loop !63

._crit_edge715:                                   ; preds = %.preheader, %._crit_edge711, %._crit_edge703, %.loopexit
  %i.ace = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.db unwind label %bb.q

bb.db:                                            ; preds = %._crit_edge715
  br i1 %i.ace, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dd unwind label %bb.q

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.acf, ptr noundef nonnull @.str.10)
          to label %bb.de unwind label %bb.q

bb.de:                                            ; preds = %bb.dd
  %i.acg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.df unwind label %bb.q

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.ach = load ptr, ptr %i.m, align 8
  %i.aci = call noundef i32 @_ZNK6Assimp20PretransformVertices10CountNodesEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.ach)
  store i32 %i.aci, ptr %i.g, align 4
  invoke void @_ZN6Assimp6Logger4infoIJRA9_KcRKjRA12_S2_S6_RA22_S2_jRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acg, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(15) @.str.14)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.acj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dh unwind label %bb.q

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN6Assimp6Logger4infoIJRA6_KcRjRA13_S2_S5_RA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acj, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.od, ptr noundef nonnull align 1 dereferenceable(13) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.oa, ptr noundef nonnull align 1 dereferenceable(10) @.str.17)
          to label %bb.di unwind label %bb.q

bb.di:                                            ; preds = %bb.dh
  %i.ack = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dj unwind label %bb.q

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN6Assimp6Logger4infoIJRA7_KcRKjRA42_S2_RjRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ack, ptr noundef nonnull align 1 dereferenceable(7) @.str.18, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(42) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(2) @.str.20)
          to label %bb.dl unwind label %bb.q

bb.dk:                                            ; preds = %bb.df
  %i.acl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.do

bb.dl:                                            ; preds = %bb.dj, %bb.db
  %i.acm = load ptr, ptr %3, align 8              ; 3 uses
  %.not.i.i.i439 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i439, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.acn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aco = load ptr, ptr %i.acn, align 8
  %i.acp = ptrtoint ptr %i.aco to i64
  %i.acq = ptrtoint ptr %i.acm to i64
  %i.acr = sub i64 %i.acp, %i.acq
  call void @_ZdlPvm(ptr noundef nonnull %i.acm, i64 noundef %i.acr) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.dn

bb.dn:                                            ; preds = %bb.a, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  ret void

bb.do:                                            ; preds = %bb.by, %bb.bz, %bb.cu, %bb.cv, %bb.co, %bb.cp, %bb.ci, %bb.cj, %bb.cc, %bb.dk, %bb.bq, %bb.bo, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit384, %bb.s, %bb.q
  %.pn357 = phi { ptr, i32 } [ %i.eo, %bb.s ], [ %i.sh, %bb.bo ], [ %i.wf, %bb.bq ], [ %i.zq, %bb.cu ], [ %i.dx, %bb.q ], [ %i.acl, %bb.dk ], [ %.pn.pn.pn.pn.pn893, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit384 ], [ %i.wu, %bb.bz ], [ %i.wt, %bb.by ], [ %i.xg, %bb.cc ], [ %i.yd, %bb.cj ], [ %i.yx, %bb.co ], [ %i.yc, %bb.ci ], [ %i.yy, %bb.cp ], [ %i.zr, %bb.cv ]
  %i.acs = load ptr, ptr %3, align 8              ; 3 uses
  %.not.i.i.i440 = icmp eq ptr %i.acs, null
  br i1 %.not.i.i.i440, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit441, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.act = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = ptrtoint ptr %i.acu to i64
  %i.acw = ptrtoint ptr %i.acs to i64
  %i.acx = sub i64 %i.acv, %i.acw
  call void @_ZdlPvm(ptr noundef nonnull %i.acs, i64 noundef %i.acx) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit441

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit441:        ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn357

bb.dq:                                            ; preds = %bb.bd
  unreachable
}

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx114listIjSaIjEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_Scratch_list", align 8 ; 13 uses
  %2 = alloca [64 x %"struct.std::__detail::_Scratch_list"], align 16 ; 137 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %.not30 = icmp eq ptr %i.b, %0
  br i1 %.not30, label %bb.l, label %.preheader47.preheader

.preheader47.preheader:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.c, align 8
  store ptr %1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.d, align 8
  store ptr %2, ptr %2, align 16
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.ptr.1, ptr %i.e, align 8
  store ptr %.ptr.1, ptr %.ptr.1, align 16
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %.ptr.2, ptr %i.f, align 8
  store ptr %.ptr.2, ptr %.ptr.2, align 16
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.ptr.3, ptr %i.g, align 8
  store ptr %.ptr.3, ptr %.ptr.3, align 16
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.ptr.4, ptr %i.h, align 8
  store ptr %.ptr.4, ptr %.ptr.4, align 16
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %.ptr.5, ptr %i.i, align 8
  store ptr %.ptr.5, ptr %.ptr.5, align 16
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %.ptr.6, ptr %i.j, align 8
  store ptr %.ptr.6, ptr %.ptr.6, align 16
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %.ptr.7, ptr %i.k, align 8
  store ptr %.ptr.7, ptr %.ptr.7, align 16
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr %.ptr.8, ptr %i.l, align 8
  store ptr %.ptr.8, ptr %.ptr.8, align 16
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %.ptr.9, ptr %i.m, align 8
  store ptr %.ptr.9, ptr %.ptr.9, align 16
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 168
  store ptr %.ptr.10, ptr %i.n, align 8
  store ptr %.ptr.10, ptr %.ptr.10, align 16
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %.ptr.11, ptr %i.o, align 8
  store ptr %.ptr.11, ptr %.ptr.11, align 16
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %.ptr.12, ptr %i.p, align 8
  store ptr %.ptr.12, ptr %.ptr.12, align 16
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr %.ptr.13, ptr %i.q, align 8
  store ptr %.ptr.13, ptr %.ptr.13, align 16
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr %.ptr.14, ptr %i.r, align 8
  store ptr %.ptr.14, ptr %.ptr.14, align 16
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 248
  store ptr %.ptr.15, ptr %i.s, align 8
  store ptr %.ptr.15, ptr %.ptr.15, align 16
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 264
  store ptr %.ptr.16, ptr %i.t, align 8
  store ptr %.ptr.16, ptr %.ptr.16, align 16
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %.ptr.17, ptr %i.u, align 8
  store ptr %.ptr.17, ptr %.ptr.17, align 16
end_hunk_0
