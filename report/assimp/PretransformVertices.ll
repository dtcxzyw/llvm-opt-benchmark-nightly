Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/PretransformVertices?download=true
inline.NumInlined: 650
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp20PretransformVertices7ExecuteEP7aiScene:bb.a
  %i.yc = load i32, ptr %i.nt, align 8
  %.not739 = icmp eq i32 %i.yc, 0
  br i1 %.not739, label %.loopexit, label %.lr.ph695

.lr.ph695:                                        ; preds = %.preheader571
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.ch

bb.cc:                                            ; preds = %.lr.ph691, %_ZN8aiStringaSERKS_.exit410
  %indvars.iv829 = phi i64 [ 0, %.lr.ph691 ], [ %indvars.iv.next830, %_ZN8aiStringaSERKS_.exit410 ] ; 3 uses
  %.1314689 = phi ptr [ %.0313.lcssa, %.lr.ph691 ], [ %i.yr, %_ZN8aiStringaSERKS_.exit410 ] ; 2 uses
  %i.ye = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ye)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.ye, ptr %.1314689, align 8
  %i.yf = load ptr, ptr %i.m, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 1096
  store ptr %i.yf, ptr %i.yg, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 4 ; 2 uses
  %i.yi = trunc nuw i64 %indvars.iv829 to i32
  %i.yj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.yh, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.yi) #23 ; 2 uses
  store i32 %i.yj, ptr %i.ye, align 8
  %i.yk = load ptr, ptr %i.xf, align 8
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %indvars.iv829
  %i.ym = load ptr, ptr %i.yl, align 8            ; 3 uses
  %i.yn = icmp eq ptr %i.ym, %i.ye
  br i1 %i.yn, label %_ZN8aiStringaSERKS_.exit410, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %spec.select.i409 = call i32 @llvm.umin.i32(i32 %i.yj, i32 1023) ; 2 uses
  store i32 %spec.select.i409, ptr %i.ym, align 4
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 4 ; 2 uses
  %i.yp = zext nneg i32 %spec.select.i409 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yo, ptr nonnull align 4 %i.yh, i64 %i.yp, i1 false)
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yp
  store i8 0, ptr %i.yq, align 1
  br label %_ZN8aiStringaSERKS_.exit410

_ZN8aiStringaSERKS_.exit410:                      ; preds = %bb.ce, %bb.cf
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.1314689, i64 8 ; 2 uses
  %i.ys = load i32, ptr %i.nw, align 8
  %i.yt = zext i32 %i.ys to i64
  %i.yu = icmp samesign ult i64 %indvars.iv.next830, %i.yt
  br i1 %i.yu, label %bb.cc, label %.preheader571, !llvm.loop !99

bb.cg:                                            ; preds = %bb.cd
  %i.yv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ye, i64 noundef 1144) #26
  br label %.loopexit.split-lp

bb.ch:                                            ; preds = %.lr.ph695, %_ZN8aiStringaSERKS_.exit412
  %indvars.iv832 = phi i64 [ 0, %.lr.ph695 ], [ %indvars.iv.next833, %_ZN8aiStringaSERKS_.exit412 ] ; 3 uses
  %.2315693 = phi ptr [ %.1314.lcssa, %.lr.ph695 ], [ %i.zj, %_ZN8aiStringaSERKS_.exit412 ] ; 2 uses
  %i.yw = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yw)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.yw, ptr %.2315693, align 8
  %i.yx = load ptr, ptr %i.m, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 1096
  store ptr %i.yx, ptr %i.yy, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.za = trunc nuw i64 %indvars.iv832 to i32
  %i.zb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.yz, i64 noundef 1024, ptr noundef nonnull @.str.9, i32 noundef %i.za) #23 ; 2 uses
  store i32 %i.zb, ptr %i.yw, align 8
  %i.zc = load ptr, ptr %i.yd, align 8
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %indvars.iv832
  %i.ze = load ptr, ptr %i.zd, align 8            ; 3 uses
  %i.zf = icmp eq ptr %i.ze, %i.yw
  br i1 %i.zf, label %_ZN8aiStringaSERKS_.exit412, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %spec.select.i411 = call i32 @llvm.umin.i32(i32 %i.zb, i32 1023) ; 2 uses
  store i32 %spec.select.i411, ptr %i.ze, align 4
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 4 ; 2 uses
  %i.zh = zext nneg i32 %spec.select.i411 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zg, ptr nonnull align 4 %i.yz, i64 %i.zh, i1 false)
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zh
  store i8 0, ptr %i.zi, align 1
  br label %_ZN8aiStringaSERKS_.exit412

_ZN8aiStringaSERKS_.exit412:                      ; preds = %bb.cj, %bb.ck
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.2315693, i64 8
  %i.zk = load i32, ptr %i.nt, align 8
  %i.zl = zext i32 %i.zk to i64
  %i.zm = icmp samesign ult i64 %indvars.iv.next833, %i.zl
  br i1 %i.zm, label %bb.ch, label %.loopexit, !llvm.loop !100

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.cc, %bb.ch, %bb.bw, %_ZN8aiStringaSERKS_.exit408, %bb.bl, %.lr.ph673, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.n, %bb.bu, %bb.bm, %bb.br, %bb.l, %._crit_edge726, %bb.cs, %bb.ct, %bb.cu, %bb.cw, %bb.cx, %bb.cy, %bb.cz
  %lpad.loopexit.split-lp1035 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ci
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yw, i64 noundef 1144) #26
  br label %.loopexit.split-lp

bb.cm:                                            ; preds = %._crit_edge683
  %i.zo = load ptr, ptr %i.m, align 8
  call void @_ZNK6Assimp20PretransformVertices21MakeIdentityTransformEP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.zo)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8aiStringaSERKS_.exit412, %.preheader571, %bb.cm, %bb.bs
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.zq = load i8, ptr %i.zp, align 1, !range !106, !noundef !107
  %i.zr = trunc nuw i8 %i.zq to i1
  br i1 %i.zr, label %.preheader, label %._crit_edge726

.preheader:                                       ; preds = %.loopexit
  %i.zs = load i32, ptr %i.i, align 8             ; 3 uses
  %.not740 = icmp eq i32 %i.zs, 0                 ; 2 uses
  br i1 %.not740, label %._crit_edge726, label %.lr.ph713

.lr.ph713:                                        ; preds = %.preheader
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zu = load ptr, ptr %i.zt, align 8
  %wide.trip.count841 = zext i32 %i.zs to i64
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph713, %._crit_edge703
  %indvars.iv838 = phi i64 [ 0, %.lr.ph713 ], [ %indvars.iv.next839, %._crit_edge703 ] ; 2 uses
  %.sroa.0458.0711 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph713 ], [ %.sroa.0458.1.lcssa, %._crit_edge703 ] ; 2 uses
  %.sroa.12.0710 = phi float [ -1.000000e+10, %.lr.ph713 ], [ %.sroa.12.1.lcssa, %._crit_edge703 ] ; 2 uses
  %.sroa.0470.0709 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph713 ], [ %.sroa.0470.1.lcssa, %._crit_edge703 ] ; 2 uses
  %.sroa.14.0708 = phi float [ 1.000000e+10, %.lr.ph713 ], [ %.sroa.14.1.lcssa, %._crit_edge703 ] ; 2 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %indvars.iv838
  %i.zw = load ptr, ptr %i.zv, align 8            ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  %i.zy = load i32, ptr %i.zx, align 4            ; 2 uses
  %.not741 = icmp eq i32 %i.zy, 0
  br i1 %.not741, label %._crit_edge703, label %.lr.ph702

.lr.ph702:                                        ; preds = %bb.cn
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8
  %wide.trip.count = zext i32 %i.zy to i64
  br label %bb.co

._crit_edge703:                                   ; preds = %bb.co, %bb.cn
  %.sroa.14.1.lcssa = phi float [ %.sroa.14.0708, %bb.cn ], [ %i.aaf, %bb.co ] ; 3 uses
  %.sroa.0470.1.lcssa = phi <2 x float> [ %.sroa.0470.0709, %bb.cn ], [ %i.aai, %bb.co ] ; 3 uses
  %.sroa.12.1.lcssa = phi float [ %.sroa.12.0710, %bb.cn ], [ %i.aam, %bb.co ] ; 2 uses
  %.sroa.0458.1.lcssa = phi <2 x float> [ %.sroa.0458.0711, %bb.cn ], [ %i.aak, %bb.co ] ; 2 uses
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %._crit_edge714, label %bb.cn, !llvm.loop !101

bb.co:                                            ; preds = %.lr.ph702, %bb.co
  %indvars.iv835 = phi i64 [ 0, %.lr.ph702 ], [ %indvars.iv.next836, %bb.co ] ; 2 uses
  %.sroa.0458.1699 = phi <2 x float> [ %.sroa.0458.0711, %.lr.ph702 ], [ %i.aak, %bb.co ] ; 2 uses
  %.sroa.12.1698 = phi float [ %.sroa.12.0710, %.lr.ph702 ], [ %i.aam, %bb.co ] ; 2 uses
  %.sroa.0470.1697 = phi <2 x float> [ %.sroa.0470.0709, %.lr.ph702 ], [ %i.aai, %bb.co ] ; 2 uses
  %.sroa.14.1696 = phi float [ %.sroa.14.0708, %.lr.ph702 ], [ %i.aaf, %bb.co ] ; 2 uses
  %i.aab = getelementptr inbounds nuw [12 x i8], ptr %i.aaa, i64 %indvars.iv835 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load float, ptr %i.aac, align 4        ; 4 uses
  %i.aae = fcmp olt float %.sroa.14.1696, %i.aad
  %i.aaf = select i1 %i.aae, float %.sroa.14.1696, float %i.aad ; 2 uses
  %i.aag = load <2 x float>, ptr %i.aab, align 4  ; 4 uses
  %i.aah = fcmp olt <2 x float> %.sroa.0470.1697, %i.aag
  %i.aai = select <2 x i1> %i.aah, <2 x float> %.sroa.0470.1697, <2 x float> %i.aag ; 2 uses
  %i.aaj = fcmp olt <2 x float> %i.aag, %.sroa.0458.1699
  %i.aak = select <2 x i1> %i.aaj, <2 x float> %.sroa.0458.1699, <2 x float> %i.aag ; 2 uses
  %i.aal = fcmp olt float %i.aad, %.sroa.12.1698
  %i.aam = select i1 %i.aal, float %.sroa.12.1698, float %i.aad ; 2 uses
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next836, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge703, label %bb.co, !llvm.loop !102

._crit_edge714:                                   ; preds = %._crit_edge703
  %i.aan = fsub float %.sroa.12.1.lcssa, %.sroa.14.1.lcssa ; 3 uses
  %i.aao = fsub <2 x float> %.sroa.0458.1.lcssa, %.sroa.0470.1.lcssa ; 3 uses
  %i.aap = fmul <2 x float> %i.aao, splat (float 5.000000e-01)
  %i.aaq = fmul float %i.aan, 5.000000e-01
  %i.aar = fadd <2 x float> %.sroa.0470.1.lcssa, %i.aap
  %i.aas = fadd float %.sroa.14.1.lcssa, %i.aaq
  br i1 %.not740, label %._crit_edge726, label %.lr.ph725

.lr.ph725:                                        ; preds = %._crit_edge714
  %i.aat = extractelement <2 x float> %i.aao, i64 1 ; 2 uses
  %i.aau = fcmp olt float %i.aat, %i.aan
  %i.aav = select i1 %i.aau, float %i.aan, float %i.aat ; 2 uses
  %i.aaw = extractelement <2 x float> %i.aao, i64 0 ; 2 uses
  %i.aax = fcmp olt float %i.aaw, %i.aav
  %i.aay = select i1 %i.aax, float %i.aav, float %i.aaw
  %i.aaz = fmul float %i.aay, 5.000000e-01
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abb = fdiv float 1.000000e+00, %i.aaz        ; 2 uses
  %.pre870 = load ptr, ptr %i.aba, align 8
  %i.abc = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.abd = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph725, %._crit_edge722
  %i.abe = phi i32 [ %i.zs, %.lr.ph725 ], [ %i.abk, %._crit_edge722 ]
  %5 = phi ptr [ %.pre870, %.lr.ph725 ], [ %6, %._crit_edge722 ] ; 2 uses
  %indvars.iv846 = phi i64 [ 0, %.lr.ph725 ], [ %indvars.iv.next847, %._crit_edge722 ] ; 2 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv846
  %i.abg = load ptr, ptr %i.abf, align 8          ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 4 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4
  %.not743 = icmp eq i32 %i.abi, 0
  br i1 %.not743, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %bb.cp
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  br label %bb.cq

._crit_edge722.loopexit:                          ; preds = %bb.cq
  %.pre869 = load ptr, ptr %i.aba, align 8
  %.pre869.a = load i32, ptr %i.i, align 8
  br label %._crit_edge722

._crit_edge722:                                   ; preds = %._crit_edge722.loopexit, %bb.cp
  %i.abk = phi i32 [ %.pre869.a, %._crit_edge722.loopexit ], [ %i.abe, %bb.cp ] ; 2 uses
  %6 = phi ptr [ %.pre869, %._crit_edge722.loopexit ], [ %5, %bb.cp ]
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.abl = zext i32 %i.abk to i64
  %i.abm = icmp samesign ult i64 %indvars.iv.next847, %i.abl
  br i1 %i.abm, label %bb.cp, label %._crit_edge726, !llvm.loop !103

bb.cq:                                            ; preds = %.lr.ph721, %bb.cq
  %indvars.iv843 = phi i64 [ 0, %.lr.ph721 ], [ %indvars.iv.next844, %bb.cq ] ; 2 uses
  %i.abn = load ptr, ptr %i.abj, align 8
  %i.abo = getelementptr inbounds nuw [12 x i8], ptr %i.abn, i64 %indvars.iv843 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.abq = load float, ptr %i.abp, align 4
  %i.abr = fsub float %i.abq, %i.aas
  %i.abs = load <2 x float>, ptr %i.abo, align 4
  %i.abt = fsub <2 x float> %i.abs, %i.aar
  %i.abu = fmul <2 x float> %i.abd, %i.abt
  %i.abv = fmul float %i.abb, %i.abr
  store <2 x float> %i.abu, ptr %i.abo, align 4
  store float %i.abv, ptr %i.abp, align 4
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %i.abw = load i32, ptr %i.abh, align 4
  %i.abx = zext i32 %i.abw to i64
  %i.aby = icmp samesign ult i64 %indvars.iv.next844, %i.abx
  br i1 %i.aby, label %bb.cq, label %._crit_edge722.loopexit, !llvm.loop !104

._crit_edge726:                                   ; preds = %.preheader, %._crit_edge722, %._crit_edge714, %.loopexit
  %i.abz = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %._crit_edge726
  br i1 %i.abz, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aca = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aca, ptr noundef nonnull @.str.10)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  %i.acb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.acc = load ptr, ptr %i.m, align 8
  %i.acd = call noundef i32 @_ZNK6Assimp20PretransformVertices10CountNodesEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.acc)
  store i32 %i.acd, ptr %i.g, align 4
  invoke void @_ZN6Assimp6Logger4infoIJRA9_KcRKjRA12_S2_S6_RA22_S2_jRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acb, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(15) @.str.14)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.ace = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN6Assimp6Logger4infoIJRA6_KcRjRA13_S2_S5_RA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ace, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.nw, ptr noundef nonnull align 1 dereferenceable(13) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.nt, ptr noundef nonnull align 1 dereferenceable(10) @.str.17)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  %i.acf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN6Assimp6Logger4infoIJRA7_KcRKjRA42_S2_RjRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acf, ptr noundef nonnull align 1 dereferenceable(7) @.str.18, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(42) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(2) @.str.20)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cv
  %i.acg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.cz, %bb.cr
  %i.ach = load ptr, ptr %3, align 8              ; 3 uses
  %.not.i.i.i438 = icmp eq ptr %i.ach, null
  br i1 %.not.i.i.i438, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acj = load ptr, ptr %i.aci, align 8
  %i.ack = ptrtoint ptr %i.acj to i64
  %i.acl = ptrtoint ptr %i.ach to i64
  %i.acm = sub i64 %i.ack, %i.acl
  call void @_ZdlPvm(ptr noundef nonnull %i.ach, i64 noundef %i.acm) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.dd

bb.dd:                                            ; preds = %bb.a, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bt, %bb.cl, %bb.cg, %bb.cb, %bb.da, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit383
  %.pn357 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit383 ], [ %i.acg, %bb.da ], [ %i.yv, %bb.cg ], [ %i.yb, %bb.cb ], [ %i.ws, %bb.bt ], [ %i.zn, %bb.cl ], [ %lpad.loopexit.split-lp1035, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.acn = load ptr, ptr %3, align 8              ; 3 uses
  %.not.i.i.i439 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i439, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit440, label %bb.de

bb.de:                                            ; preds = %.loopexit.split-lp
  %i.aco = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = ptrtoint ptr %i.acp to i64
  %i.acr = ptrtoint ptr %i.acn to i64
  %i.acs = sub i64 %i.acq, %i.acr
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef %i.acs) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit440

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit440:        ; preds = %.loopexit.split-lp, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn357

bb.df:                                            ; preds = %bb.ba
  unreachable
}

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx114listIjSaIjEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !111 {
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
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx114listIjSaIjEE4sortEv:bb.a
  store ptr %.ptr.17, ptr %i.u, align 8
  store ptr %.ptr.17, ptr %.ptr.17, align 16
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr %.ptr.18, ptr %i.v, align 8
  store ptr %.ptr.18, ptr %.ptr.18, align 16
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 312
  store ptr %.ptr.19, ptr %i.w, align 8
  store ptr %.ptr.19, ptr %.ptr.19, align 16
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr %.ptr.20, ptr %i.x, align 8
  store ptr %.ptr.20, ptr %.ptr.20, align 16
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr %.ptr.21, ptr %i.y, align 8
  store ptr %.ptr.21, ptr %.ptr.21, align 16
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 360
  store ptr %.ptr.22, ptr %i.z, align 8
  store ptr %.ptr.22, ptr %.ptr.22, align 16
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 376
  store ptr %.ptr.23, ptr %i.aa, align 8
  store ptr %.ptr.23, ptr %.ptr.23, align 16
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 392
  store ptr %.ptr.24, ptr %i.ab, align 8
  store ptr %.ptr.24, ptr %.ptr.24, align 16
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 408
  store ptr %.ptr.25, ptr %i.ac, align 8
  store ptr %.ptr.25, ptr %.ptr.25, align 16
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 424
  store ptr %.ptr.26, ptr %i.ad, align 8
  store ptr %.ptr.26, ptr %.ptr.26, align 16
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 440
  store ptr %.ptr.27, ptr %i.ae, align 8
  store ptr %.ptr.27, ptr %.ptr.27, align 16
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 456
  store ptr %.ptr.28, ptr %i.af, align 8
  store ptr %.ptr.28, ptr %.ptr.28, align 16
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %2, i64 464 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 472
  store ptr %.ptr.29, ptr %i.ag, align 8
  store ptr %.ptr.29, ptr %.ptr.29, align 16
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %2, i64 480 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 488
  store ptr %.ptr.30, ptr %i.ah, align 8
  store ptr %.ptr.30, ptr %.ptr.30, align 16
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %2, i64 496 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 504
  store ptr %.ptr.31, ptr %i.ai, align 8
  store ptr %.ptr.31, ptr %.ptr.31, align 16
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 520
  store ptr %.ptr.32, ptr %i.aj, align 8
  store ptr %.ptr.32, ptr %.ptr.32, align 16
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 536
  store ptr %.ptr.33, ptr %i.ak, align 8
  store ptr %.ptr.33, ptr %.ptr.33, align 16
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %2, i64 544 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 552
  store ptr %.ptr.34, ptr %i.al, align 8
  store ptr %.ptr.34, ptr %.ptr.34, align 16
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 568
  store ptr %.ptr.35, ptr %i.am, align 8
  store ptr %.ptr.35, ptr %.ptr.35, align 16
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 584
  store ptr %.ptr.36, ptr %i.an, align 8
  store ptr %.ptr.36, ptr %.ptr.36, align 16
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %2, i64 592 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 600
  store ptr %.ptr.37, ptr %i.ao, align 8
  store ptr %.ptr.37, ptr %.ptr.37, align 16
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %2, i64 608 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 616
  store ptr %.ptr.38, ptr %i.ap, align 8
  store ptr %.ptr.38, ptr %.ptr.38, align 16
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %2, i64 624 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 632
  store ptr %.ptr.39, ptr %i.aq, align 8
  store ptr %.ptr.39, ptr %.ptr.39, align 16
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 648
  store ptr %.ptr.40, ptr %i.ar, align 8
  store ptr %.ptr.40, ptr %.ptr.40, align 16
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 664
  store ptr %.ptr.41, ptr %i.as, align 8
  store ptr %.ptr.41, ptr %.ptr.41, align 16
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %2, i64 672 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 680
  store ptr %.ptr.42, ptr %i.at, align 8
  store ptr %.ptr.42, ptr %.ptr.42, align 16
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %2, i64 688 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 696
  store ptr %.ptr.43, ptr %i.au, align 8
  store ptr %.ptr.43, ptr %.ptr.43, align 16
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 712
  store ptr %.ptr.44, ptr %i.av, align 8
  store ptr %.ptr.44, ptr %.ptr.44, align 16
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %2, i64 720 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 728
  store ptr %.ptr.45, ptr %i.aw, align 8
  store ptr %.ptr.45, ptr %.ptr.45, align 16
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %2, i64 736 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 744
  store ptr %.ptr.46, ptr %i.ax, align 8
  store ptr %.ptr.46, ptr %.ptr.46, align 16
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %2, i64 752 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 760
  store ptr %.ptr.47, ptr %i.ay, align 8
  store ptr %.ptr.47, ptr %.ptr.47, align 16
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %2, i64 768 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 776
  store ptr %.ptr.48, ptr %i.az, align 8
  store ptr %.ptr.48, ptr %.ptr.48, align 16
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %2, i64 784 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 792
  store ptr %.ptr.49, ptr %i.ba, align 8
  store ptr %.ptr.49, ptr %.ptr.49, align 16
  %.ptr.50 = getelementptr inbounds nuw i8, ptr %2, i64 800 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 808
  store ptr %.ptr.50, ptr %i.bb, align 8
  store ptr %.ptr.50, ptr %.ptr.50, align 16
  %.ptr.51 = getelementptr inbounds nuw i8, ptr %2, i64 816 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 824
  store ptr %.ptr.51, ptr %i.bc, align 8
  store ptr %.ptr.51, ptr %.ptr.51, align 16
  %.ptr.52 = getelementptr inbounds nuw i8, ptr %2, i64 832 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 840
  store ptr %.ptr.52, ptr %i.bd, align 8
  store ptr %.ptr.52, ptr %.ptr.52, align 16
  %.ptr.53 = getelementptr inbounds nuw i8, ptr %2, i64 848 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 856
  store ptr %.ptr.53, ptr %i.be, align 8
  store ptr %.ptr.53, ptr %.ptr.53, align 16
  %.ptr.54 = getelementptr inbounds nuw i8, ptr %2, i64 864 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 872
  store ptr %.ptr.54, ptr %i.bf, align 8
  store ptr %.ptr.54, ptr %.ptr.54, align 16
  %.ptr.55 = getelementptr inbounds nuw i8, ptr %2, i64 880 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 888
  store ptr %.ptr.55, ptr %i.bg, align 8
  store ptr %.ptr.55, ptr %.ptr.55, align 16
  %.ptr.56 = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 904
  store ptr %.ptr.56, ptr %i.bh, align 8
  store ptr %.ptr.56, ptr %.ptr.56, align 16
  %.ptr.57 = getelementptr inbounds nuw i8, ptr %2, i64 912 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 920
  store ptr %.ptr.57, ptr %i.bi, align 8
  store ptr %.ptr.57, ptr %.ptr.57, align 16
  %.ptr.58 = getelementptr inbounds nuw i8, ptr %2, i64 928 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 936
  store ptr %.ptr.58, ptr %i.bj, align 8
  store ptr %.ptr.58, ptr %.ptr.58, align 16
  %.ptr.59 = getelementptr inbounds nuw i8, ptr %2, i64 944 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 952
  store ptr %.ptr.59, ptr %i.bk, align 8
  store ptr %.ptr.59, ptr %.ptr.59, align 16
  %.ptr.60 = getelementptr inbounds nuw i8, ptr %2, i64 960 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 968
  store ptr %.ptr.60, ptr %i.bl, align 8
  store ptr %.ptr.60, ptr %.ptr.60, align 16
  %.ptr.61 = getelementptr inbounds nuw i8, ptr %2, i64 976 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 984
  store ptr %.ptr.61, ptr %i.bm, align 8
  store ptr %.ptr.61, ptr %.ptr.61, align 16
  %.ptr.62 = getelementptr inbounds nuw i8, ptr %2, i64 992 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1000
  store ptr %.ptr.62, ptr %i.bn, align 8
  store ptr %.ptr.62, ptr %.ptr.62, align 16
  %.ptr.63 = getelementptr inbounds nuw i8, ptr %2, i64 1008 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1016
  store ptr %.ptr.63, ptr %i.bo, align 8
  store ptr %.ptr.63, ptr %.ptr.63, align 16
  %.pre = load ptr, ptr %0, align 8
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.preheader, %.critedge
  %i.bp = phi ptr [ %i.cf, %.critedge ], [ %.pre, %.preheader47.preheader ] ; 2 uses
  %.0.idx = phi i64 [ %.0.add, %.critedge ], [ 0, %.preheader47.preheader ] ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.0.idx ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bp, ptr noundef %i.bq) #23
  %.not3249 = icmp samesign eq i64 %.0.idx, 0
  br i1 %.not3249, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader47, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit
  %.02550 = phi ptr [ %i.ce, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit ], [ %2, %.preheader47 ] ; 7 uses
  %i.br = load ptr, ptr %.02550, align 16         ; 2 uses
  %i.bs = icmp eq ptr %i.br, %.02550
  br i1 %i.bs, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %1, align 8               ; 2 uses
  %.not46 = icmp eq ptr %i.bt, %1
  br i1 %.not46, label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.023.i = phi ptr [ %.1.i, %bb.f ], [ %i.br, %bb.c ] ; 4 uses
  %.01922.i = phi ptr [ %.120.i, %bb.f ], [ %i.bt, %bb.c ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01922.i, i64 16
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.023.i, i64 16
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp ult i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bz = load ptr, ptr %.01922.i, align 8        ; 2 uses
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.023.i, ptr noundef nonnull %.01922.i, ptr noundef %i.bz) #23
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ca = load ptr, ptr %.023.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.120.i = phi ptr [ %i.bz, %bb.d ], [ %.01922.i, %bb.e ] ; 3 uses
  %.1.i = phi ptr [ %.023.i, %bb.d ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cb = icmp ne ptr %.1.i, %.02550
  %i.cc = icmp ne ptr %.120.i, %1                 ; 2 uses
  %i.cd = and i1 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !108

._crit_edge.i:                                    ; preds = %bb.f
  br i1 %i.cc, label %bb.g, label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit

bb.g:                                             ; preds = %._crit_edge.i
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.02550, ptr noundef %.120.i, ptr noundef nonnull align 8 dereferenceable(16) %1) #23
  br label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit

_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit: ; preds = %bb.c, %bb.g, %._crit_edge.i
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.02550) #23
  %i.ce = getelementptr inbounds nuw i8, ptr %.02550, i64 16 ; 2 uses
  %.not32 = icmp eq ptr %i.ce, %.0.ptr
  br i1 %.not32, label %.critedge, label %.lr.ph, !llvm.loop !109

.critedge:                                        ; preds = %.lr.ph, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit, %.preheader47
  %.025.lcssa = phi ptr [ %2, %.preheader47 ], [ %.0.ptr, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit ], [ %.02550, %.lr.ph ]
  %.not32.lcssa = phi i64 [ 0, %.preheader47 ], [ 0, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit ], [ -16, %.lr.ph ]
  %spec.select.idx = phi i64 [ 16, %.preheader47 ], [ 16, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit ], [ 0, %.lr.ph ]
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.025.lcssa) #23
  %.0.add = add nuw nsw i64 %.0.idx, %spec.select.idx ; 3 uses
  %i.cf = load ptr, ptr %0, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %0
  br i1 %i.cg, label %.preheader, label %.preheader47, !llvm.loop !110

.preheader:                                       ; preds = %.critedge
  %spec.select.ptr.le = getelementptr inbounds nuw i8, ptr %2, i64 %.0.add
  %.not3359 = icmp eq i64 %.0.add, 16
  br i1 %.not3359, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42
  %.12661 = phi ptr [ %.126, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42 ], [ %.ptr.1, %.preheader ] ; 6 uses
  %.pn60 = phi ptr [ %.12661, %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42 ], [ %2, %.preheader ] ; 4 uses
  %i.ch = load ptr, ptr %.12661, align 16         ; 2 uses
  %i.ci = load ptr, ptr %.pn60, align 8           ; 3 uses
  %i.cj = icmp ne ptr %i.ch, %.12661
  %i.ck = icmp ne ptr %i.ci, %.pn60               ; 2 uses
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.lr.ph.i37, label %._crit_edge.i34

.lr.ph.i37:                                       ; preds = %.lr.ph62, %bb.j
  %.023.i38 = phi ptr [ %.1.i41, %bb.j ], [ %i.ch, %.lr.ph62 ] ; 4 uses
  %.01922.i39 = phi ptr [ %.120.i40, %bb.j ], [ %i.ci, %.lr.ph62 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01922.i39, i64 16
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.023.i38, i64 16
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp ult i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i37
  %i.cr = load ptr, ptr %.01922.i39, align 8      ; 2 uses
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.023.i38, ptr noundef nonnull %.01922.i39, ptr noundef %i.cr) #23
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i37
  %i.cs = load ptr, ptr %.023.i38, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.120.i40 = phi ptr [ %i.cr, %bb.h ], [ %.01922.i39, %bb.i ] ; 3 uses
  %.1.i41 = phi ptr [ %.023.i38, %bb.h ], [ %i.cs, %bb.i ] ; 2 uses
  %i.ct = icmp ne ptr %.1.i41, %.12661
  %i.cu = icmp ne ptr %.120.i40, %.pn60           ; 2 uses
  %i.cv = and i1 %i.cu, %i.ct
  br i1 %i.cv, label %.lr.ph.i37, label %._crit_edge.i34, !llvm.loop !108

._crit_edge.i34:                                  ; preds = %bb.j, %.lr.ph62
  %.019.lcssa.i35 = phi ptr [ %i.ci, %.lr.ph62 ], [ %.120.i40, %bb.j ]
  %.lcssa.i36 = phi i1 [ %i.ck, %.lr.ph62 ], [ %i.cu, %bb.j ]
  br i1 %.lcssa.i36, label %bb.k, label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42

bb.k:                                             ; preds = %._crit_edge.i34
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %.12661, ptr noundef %.019.lcssa.i35, ptr noundef nonnull align 8 dereferenceable(16) %.pn60) #23
  br label %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42

_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42: ; preds = %._crit_edge.i34, %bb.k
  %.126 = getelementptr inbounds nuw i8, ptr %.12661, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %.126, %spec.select.ptr.le
  br i1 %.not33, label %._crit_edge, label %.lr.ph62

._crit_edge:                                      ; preds = %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIjEvEEEEvRNS_15_List_node_baseET_.exit42, %.preheader
  %spec.select.sroa.sel = getelementptr inbounds i8, ptr %.0.ptr, i64 %.not32.lcssa
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %spec.select.sroa.sel, ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !112 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #23
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !116 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #26
  br label %bb.o
end_hunk_1
