Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 39
begin_hunk_0_@process:bb.a
  %i.xr = insertelement <2 x float> poison, float %i.xo, i64 0
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = fmul reassoc nsz arcp contract afn <2 x float> %i.xs, %i.xq ; 7 uses
  %i.xu = extractelement <2 x float> %i.xt, i64 0 ; 3 uses
  %i.xv = extractelement <2 x float> %i.xt, i64 1 ; 3 uses
  %i.xw = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.xu, float noundef %i.xv) #32
  %i.xx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xw ; 3 uses
  %i.xy = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 4 uses
  %i.xz = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 628
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !340
  %i.yc = icmp eq i32 %i.yb, 128                  ; 3 uses
  br i1 %i.v, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !106
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !107
  %i.yi = sext i32 %i.yh to i64
  %i.yj = mul nsw i64 %i.yi, %i.yf                ; 2 uses
  %i.yk = shl i64 %i.yj, 2
  %i.yl = shl i64 %i.yj, 4
  %i.ym = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.yl) ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ym, i64 64) ]
  tail call void @dt_iop_image_copy(ptr noundef %i.ym, ptr noundef %.0, i64 noundef %i.yk)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0132.i = phi ptr [ %.0, %bb.bj ], [ %i.ym, %bb.bk ] ; 7 uses
  br i1 %i.yc, label %.loopexit.i57, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.yn = load i32, ptr %i.xf, align 4, !tbaa !130
  %i.yo = and i32 %i.yn, 2
  %.not140.i = icmp eq i32 %i.yo, 0
  br i1 %.not140.i, label %.loopexit.i57, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.bm
  %i.yp = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !107 ; 2 uses
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %.preheader2.lr.ph.i, label %.loopexit.i57

.preheader2.lr.ph.i:                              ; preds = %.preheader3.i
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !106 ; 2 uses
  %i.yu = icmp sgt i32 %i.yt, 0
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xc, i64 172 ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xc, i64 428 ; 5 uses
  br i1 %i.yu, label %.preheader2.lr.ph.split.i, label %.loopexit.i57

.preheader2.lr.ph.split.i:                        ; preds = %.preheader2.lr.ph.i
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.yy = load i32, ptr %4, align 4, !tbaa !112   ; 2 uses
  %i.yz = load i32, ptr %i.yx, align 4, !tbaa !113 ; 2 uses
  %i.za = load i32, ptr %i.xd, align 8, !tbaa !129
  %.fr26.i = freeze i32 %i.za                     ; 3 uses
  %i.zb = icmp sgt i32 %.fr26.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr26.i to i64
  %i.zc = sext i32 %.fr26.i to i64
  %i.zd = getelementptr [4 x i8], ptr %i.yw, i64 %i.zc
  %i.ze = getelementptr i8, ptr %i.zd, i64 -4     ; 2 uses
  %i.zf = zext nneg i32 %i.yt to i64              ; 4 uses
  %wide.trip.count55.i = zext nneg i32 %i.yq to i64 ; 2 uses
  br i1 %i.zb, label %.preheader2.us.i, label %.preheader2.i

.preheader2.us.i:                                 ; preds = %.preheader2.lr.ph.split.i, %._crit_edge.split.us.us.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader2.lr.ph.split.i ] ; 3 uses
  %i.zg = mul nuw nsw i64 %indvars.iv52.i, %i.zf
  %i.zh = trunc i64 %indvars.iv52.i to i32
  %i.zi = add i32 %i.yz, %i.zh
  %i.zj = sitofp reassoc nsz arcp contract afn i32 %i.zi to float
  %i.zk = fsub reassoc nsz arcp contract afn float %i.zj, %i.xv
  br label %bb.bn

bb.bn:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i, %.preheader2.us.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ], [ 0, %.preheader2.us.i ] ; 3 uses
  %i.zl = add nuw nsw i64 %indvars.iv47.i, %i.zg
  %i.zm = shl i64 %i.zl, 2
  %i.zn = and i64 %i.zm, 4294967292
  %i.zo = trunc i64 %indvars.iv47.i to i32
  %i.zp = add i32 %i.yy, %i.zo
  %i.zq = sitofp reassoc nsz arcp contract afn i32 %i.zp to float
  %i.zr = fsub reassoc nsz arcp contract afn float %i.zq, %i.xu
  %i.zs = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.zr, float noundef %i.zk) #32
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, %i.xx ; 4 uses
  %i.zu = load float, ptr %i.yv, align 4, !tbaa !21
  %i.zv = fcmp reassoc nsz arcp contract afn olt float %i.zt, %i.zu
  br i1 %i.zv, label %bb.br, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %bb.bn, %bb.bp
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %bb.bp ], [ 1, %bb.bn ] ; 4 uses
  %i.zw = add nsw i64 %indvars.iv.i.us.us.i, -1   ; 2 uses
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.zw
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !21 ; 3 uses
  %i.zz = fcmp reassoc nsz arcp contract afn ult float %i.zt, %i.zy
  br i1 %i.zz, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.us.us.i
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv.i.us.us.i
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !21 ; 2 uses
  %i.aac = fcmp reassoc nsz arcp contract afn ugt float %i.zt, %i.aab
  br i1 %i.aac, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !0

bb.bq:                                            ; preds = %bb.bo
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.i.us.us.i
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !21
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.zw
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !21 ; 2 uses
  %i.aah = fsub reassoc nsz arcp contract afn float %i.aae, %i.aag
  %i.aai = fsub reassoc nsz arcp contract afn float %i.aab, %i.zy
  %i.aaj = fsub reassoc nsz arcp contract afn float %i.zt, %i.zy
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aah, %i.aaj
  %i.aal = fdiv reassoc nsz arcp contract afn float %i.aak, %i.aai
  %i.aam = fadd reassoc nsz arcp contract afn float %i.aal, %i.aag
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

bb.br:                                            ; preds = %bb.bn
  %i.aan = load float, ptr %i.yw, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i: ; preds = %._crit_edge.i.loopexit.us.us.i, %bb.br, %bb.bq
  %.1.i.us.us.i = phi nsz float [ %i.aan, %bb.br ], [ %i.aax, %._crit_edge.i.loopexit.us.us.i ], [ %i.aam, %bb.bq ]
  %i.aao = fpext reassoc nsz arcp contract afn float %.1.i.us.us.i to double ; 2 uses
  %i.aap = fcmp reassoc nsz arcp contract afn olt double %i.aao, 1.000000e-04
  %i.aaq = select reassoc nsz arcp contract afn i1 %i.aap, double 1.000000e-04, double %i.aao
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %.0132.i, i64 %i.zn ; 2 uses
  %i.aar = load <4 x float>, ptr %invariant.gep.us.us.i, align 4, !tbaa !21
  %i.aas = fpext <4 x float> %i.aar to <4 x double>
  %i.aat = insertelement <4 x double> poison, double %i.aaq, i64 0
  %i.aau = shufflevector <4 x double> %i.aat, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aav = fdiv reassoc nsz arcp contract afn <4 x double> %i.aas, %i.aau
  %i.aaw = fptrunc <4 x double> %i.aav to <4 x float>
  store <4 x float> %i.aaw, ptr %invariant.gep.us.us.i, align 4, !tbaa !21
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, %i.zf
  br i1 %exitcond51.not.i, label %._crit_edge.split.us.us.i, label %bb.bn, !llvm.loop !336

._crit_edge.i.loopexit.us.us.i:                   ; preds = %bb.bp
  %i.aax = load float, ptr %i.ze, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %.loopexit.i57, label %.preheader2.us.i, !llvm.loop !337

.preheader2.i:                                    ; preds = %.preheader2.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %._crit_edge.split.i ], [ 0, %.preheader2.lr.ph.split.i ] ; 3 uses
  %i.aay = mul nuw nsw i64 %indvars.iv41.i, %i.zf
  %i.aaz = trunc i64 %indvars.iv41.i to i32
  %i.aba = add i32 %i.yz, %i.aaz
  %i.abb = sitofp reassoc nsz arcp contract afn i32 %i.aba to float
  %i.abc = fsub reassoc nsz arcp contract afn float %i.abb, %i.xv
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.split.i:                              ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count55.i
  br i1 %exitcond45.not.i, label %.loopexit.i57, label %.preheader2.i, !llvm.loop !337

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, %.preheader2.i
  %indvars.iv.i64 = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next.i65, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.abd = add nuw nsw i64 %indvars.iv.i64, %i.aay
  %i.abe = shl i64 %i.abd, 2
  %i.abf = and i64 %i.abe, 4294967292
  %i.abg = trunc i64 %indvars.iv.i64 to i32
  %i.abh = add i32 %i.yy, %i.abg
  %i.abi = sitofp reassoc nsz arcp contract afn i32 %i.abh to float
  %i.abj = fsub reassoc nsz arcp contract afn float %i.abi, %i.xu
  %i.abk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.abj, float noundef %i.abc) #32
  %i.abl = fmul reassoc nsz arcp contract afn float %i.abk, %i.xx
  %i.abm = load float, ptr %i.yv, align 4, !tbaa !21
  %i.abn = fcmp reassoc nsz arcp contract afn olt float %i.abl, %i.abm
  %spec.select114.i = select i1 %i.abn, ptr %i.yw, ptr %i.ze
  %.1.i.i = load float, ptr %spec.select114.i, align 4, !tbaa !21
  %i.abo = fpext reassoc nsz arcp contract afn float %.1.i.i to double ; 2 uses
  %i.abp = fcmp reassoc nsz arcp contract afn olt double %i.abo, 1.000000e-04
  %i.abq = select reassoc nsz arcp contract afn i1 %i.abp, double 1.000000e-04, double %i.abo
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0132.i, i64 %i.abf ; 2 uses
  %i.abr = load <4 x float>, ptr %invariant.gep.i, align 4, !tbaa !21
  %i.abs = fpext <4 x float> %i.abr to <4 x double>
  %i.abt = insertelement <4 x double> poison, double %i.abq, i64 0
  %i.abu = shufflevector <4 x double> %i.abt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abv = fdiv reassoc nsz arcp contract afn <4 x double> %i.abs, %i.abu
  %i.abw = fptrunc <4 x double> %i.abv to <4 x float>
  store <4 x float> %i.abw, ptr %invariant.gep.i, align 4, !tbaa !21
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %i.zf
  br i1 %exitcond.not.i66, label %._crit_edge.split.i, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, !llvm.loop !336

.loopexit.i57:                                    ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader2.lr.ph.i, %.preheader3.i, %bb.bm, %bb.bl
  %i.abx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %6 = load i32, ptr %i.abx, align 4, !tbaa !106
  %7 = add nsw i32 %6, -1
  %8 = sitofp reassoc nsz arcp contract afn i32 %7 to float ; 8 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %9 = load i32, ptr %i.aby, align 4, !tbaa !107
  %10 = add nsw i32 %9, -1
  %11 = sitofp reassoc nsz arcp contract afn i32 %10 to float ; 8 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !107 ; 2 uses
  %i.acb = icmp sgt i32 %i.aca, 0
  br i1 %i.acb, label %.preheader.lr.ph.i58, label %._crit_edge25.i

.preheader.lr.ph.i58:                             ; preds = %.loopexit.i57
  %i.acc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.xc, i64 108 ; 12 uses
  %i.ace = load i32, ptr %i.acc, align 4, !tbaa !106 ; 2 uses
  %i.acf = icmp sgt i32 %i.ace, 0
  br i1 %i.acf, label %.preheader.preheader.i59, label %._crit_edge25.i

.preheader.preheader.i59:                         ; preds = %.preheader.lr.ph.i58
  %i.acg = getelementptr inbounds nuw i8, ptr %i.xc, i64 236 ; 2 uses
  %i.ach = zext i1 %i.yc to i64
  %i.aci = getelementptr inbounds nuw [64 x i8], ptr %i.acg, i64 %i.ach ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.xc, i64 300 ; 8 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.0132.i, i64 4
  %i.acl = select i1 %i.yc, i64 1, i64 2
  %i.acm = getelementptr inbounds nuw [64 x i8], ptr %i.acg, i64 %i.acl ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.0132.i, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %.0132.i, i64 12
  %i.acp = insertelement <2 x float> poison, float %i.xn, i64 0
  %i.acq = shufflevector <2 x float> %i.acp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i60

.preheader.i60:                                   ; preds = %._crit_edge.i61, %.preheader.preheader.i59
  %i.acr = phi i32 [ %i.acv, %._crit_edge.i61 ], [ %i.aca, %.preheader.preheader.i59 ]
  %i.acs = phi i32 [ %i.acw, %._crit_edge.i61 ], [ %i.ace, %.preheader.preheader.i59 ] ; 3 uses
  %.012824.i = phi i32 [ %i.acx, %._crit_edge.i61 ], [ 0, %.preheader.preheader.i59 ] ; 3 uses
  %i.act = icmp sgt i32 %i.acs, 0
  br i1 %i.act, label %.lr.ph.i62.preheader, label %._crit_edge.i61

.lr.ph.i62.preheader:                             ; preds = %.preheader.i60
  %i.acu = insertelement <2 x i32> poison, i32 %.012824.i, i64 1
  br label %.lr.ph.i62

._crit_edge25.i:                                  ; preds = %._crit_edge.i61, %.preheader.lr.ph.i58, %.loopexit.i57
  br i1 %i.v, label %bb.ci, label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

._crit_edge.loopexit.i:                           ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i
  %.pre.i63 = load i32, ptr %i.abz, align 4, !tbaa !107
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i60
  %i.acv = phi i32 [ %.pre.i63, %._crit_edge.loopexit.i ], [ %i.acr, %.preheader.i60 ] ; 2 uses
  %i.acw = phi i32 [ %i.aki, %._crit_edge.loopexit.i ], [ %i.acs, %.preheader.i60 ]
  %i.acx = add nuw nsw i32 %.012824.i, 1          ; 2 uses
  %i.acy = icmp slt i32 %i.acx, %i.acv
  br i1 %i.acy, label %.preheader.i60, label %._crit_edge25.i, !llvm.loop !338

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i
  %i.acz = phi i32 [ %i.aki, %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i ], [ %i.acs, %.lr.ph.i62.preheader ]
  %.012723.i = phi i32 [ %i.akh, %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i ], [ 0, %.lr.ph.i62.preheader ] ; 3 uses
  %i.ada = mul nuw nsw i32 %i.acz, %.012824.i
  %i.adb = add nsw i32 %i.ada, %.012723.i
  %i.adc = shl nsw i32 %i.adb, 2
  %i.add = sext i32 %i.adc to i64
  %i.ade = load <2 x i32>, ptr %5, align 4, !tbaa !24
  %i.adf = insertelement <2 x i32> %i.acu, i32 %.012723.i, i64 0
  %i.adg = add nsw <2 x i32> %i.ade, %i.adf
  %i.adh = sitofp <2 x i32> %i.adg to <2 x float>
  %i.adi = fsub reassoc nsz arcp contract afn <2 x float> %i.adh, %i.xt
  %i.adj = fmul reassoc nsz arcp contract afn <2 x float> %i.adi, %i.acq ; 6 uses
  %i.adk = extractelement <2 x float> %i.adj, i64 0
  %i.adl = extractelement <2 x float> %i.adj, i64 1
  %i.adm = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.adk, float noundef %i.adl) #32
  %i.adn = fmul reassoc nsz arcp contract afn float %i.adm, %i.xx ; 16 uses
  %invariant.gep20.i = getelementptr [4 x i8], ptr %3, i64 %i.add ; 4 uses
  %i.ado = load i32, ptr %i.xd, align 8, !tbaa !129 ; 3 uses
  %i.adp = load float, ptr %i.acd, align 4, !tbaa !21
  %i.adq = fcmp reassoc nsz arcp contract afn olt float %i.adn, %i.adp
  br i1 %i.adq, label %bb.bs, label %.preheader.i142.i

.preheader.i142.i:                                ; preds = %.lr.ph.i62
  %i.adr = icmp sgt i32 %i.ado, 1
  br i1 %i.adr, label %.lr.ph.preheader.i145.i, label %._crit_edge.i143.i

.lr.ph.preheader.i145.i:                          ; preds = %.preheader.i142.i
  %wide.trip.count.i146.i = zext nneg i32 %i.ado to i64
  br label %.lr.ph.i147.i

bb.bs:                                            ; preds = %.lr.ph.i62
  %i.ads = load float, ptr %i.aci, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.i

.lr.ph.i147.i:                                    ; preds = %bb.bu, %.lr.ph.preheader.i145.i
  %indvars.iv.i148.i = phi i64 [ 1, %.lr.ph.preheader.i145.i ], [ %indvars.iv.next.i149.i, %bb.bu ] ; 4 uses
  %i.adt = add nsw i64 %indvars.iv.i148.i, -1     ; 2 uses
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.adt
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !21 ; 3 uses
  %i.adw = fcmp reassoc nsz arcp contract afn ult float %i.adn, %i.adv
  br i1 %i.adw, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i147.i
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv.i148.i
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !21 ; 2 uses
  %i.adz = fcmp reassoc nsz arcp contract afn ugt float %i.adn, %i.ady
  br i1 %i.adz, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i147.i
  %indvars.iv.next.i149.i = add nuw nsw i64 %indvars.iv.i148.i, 1 ; 2 uses
  %exitcond.not.i150.i = icmp eq i64 %indvars.iv.next.i149.i, %wide.trip.count.i146.i
  br i1 %exitcond.not.i150.i, label %._crit_edge.i143.i, label %.lr.ph.i147.i, !llvm.loop !0

bb.bv:                                            ; preds = %bb.bt
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i148.i
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !21
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.adt
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !21 ; 2 uses
  %i.aee = fsub reassoc nsz arcp contract afn float %i.aeb, %i.aed
  %i.aef = fsub reassoc nsz arcp contract afn float %i.ady, %i.adv
  %i.aeg = fsub reassoc nsz arcp contract afn float %i.adn, %i.adv
  %i.aeh = fmul reassoc nsz arcp contract afn float %i.aee, %i.aeg
  %i.aei = fdiv reassoc nsz arcp contract afn float %i.aeh, %i.aef
  %i.aej = fadd reassoc nsz arcp contract afn float %i.aei, %i.aed
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.i

._crit_edge.i143.i:                               ; preds = %bb.bu, %.preheader.i142.i
  %i.aek = sext i32 %i.ado to i64
  %i.ael = getelementptr [4 x i8], ptr %i.aci, i64 %i.aek
  %i.aem = getelementptr i8, ptr %i.ael, i64 -4
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.i

_ZL26_interpolate_linear_splinePKfS0_if.exit151.i: ; preds = %._crit_edge.i143.i, %bb.bv, %bb.bs
  %.1.i144.i = phi nsz float [ %i.ads, %bb.bs ], [ %i.aen, %._crit_edge.i143.i ], [ %i.aej, %bb.bv ]
  %i.aeo = insertelement <2 x float> poison, float %.1.i144.i, i64 0
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeq = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %i.adj
  %i.aer = fadd reassoc nsz arcp contract afn <2 x float> %i.aeq, %i.xt
  %i.aes = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.aet = sitofp <2 x i32> %i.aes to <2 x float>
  %i.aeu = fsub reassoc nsz arcp contract afn <2 x float> %i.aer, %i.aet ; 3 uses
  %i.aev = extractelement <2 x float> %i.aeu, i64 0 ; 2 uses
  %12 = fcmp reassoc nsz arcp contract afn ogt float %i.aev, %8
  %i.aew = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aeu, zeroinitializer ; 2 uses
  %i.aex = extractelement <2 x i1> %i.aew, i64 0
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.aex, float 0.000000e+00, float %i.aev
  %i.aey = select reassoc nsz arcp contract afn i1 %12, float %8, float %spec.select.i
  %i.aez = extractelement <2 x float> %i.aeu, i64 1 ; 2 uses
  %i.afa = fcmp reassoc nsz arcp contract afn ogt float %i.aez, %11
  %i.afb = extractelement <2 x i1> %i.aew, i64 1
  %spec.select141.i = select reassoc nsz arcp contract afn i1 %i.afb, float 0.000000e+00, float %i.aez
  %i.afc = select reassoc nsz arcp contract afn i1 %i.afa, float %11, float %spec.select141.i
  %i.afd = load i32, ptr %i.abx, align 4, !tbaa !106 ; 2 uses
  %i.afe = load i32, ptr %i.aby, align 4, !tbaa !107
  %i.aff = shl nsw i32 %i.afd, 2
  %i.afg = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef %.0132.i, float noundef %i.aey, float noundef %i.afc, i32 noundef %i.afd, i32 noundef %i.afe, i32 noundef 4, i32 noundef %i.aff)
  store float %i.afg, ptr %invariant.gep20.i, align 4, !tbaa !21
  %i.afh = load i32, ptr %i.xd, align 8, !tbaa !129 ; 3 uses
  %i.afi = load float, ptr %i.acd, align 4, !tbaa !21
  %i.afj = fcmp reassoc nsz arcp contract afn olt float %i.adn, %i.afi
  br i1 %i.afj, label %bb.bz, label %.preheader.i142.1.i

.preheader.i142.1.i:                              ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.i
  %i.afk = icmp sgt i32 %i.afh, 1
  br i1 %i.afk, label %.lr.ph.preheader.i145.1.i, label %._crit_edge.i143.1.i

.lr.ph.preheader.i145.1.i:                        ; preds = %.preheader.i142.1.i
  %wide.trip.count.i146.1.i = zext nneg i32 %i.afh to i64
  br label %.lr.ph.i147.1.i

.lr.ph.i147.1.i:                                  ; preds = %bb.by, %.lr.ph.preheader.i145.1.i
  %indvars.iv.i148.1.i = phi i64 [ 1, %.lr.ph.preheader.i145.1.i ], [ %indvars.iv.next.i149.1.i, %bb.by ] ; 4 uses
  %i.afl = add nsw i64 %indvars.iv.i148.1.i, -1   ; 2 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.afl
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !21 ; 3 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ult float %i.adn, %i.afn
  br i1 %i.afo, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i147.1.i
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv.i148.1.i
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !21 ; 2 uses
  %i.afr = fcmp reassoc nsz arcp contract afn ugt float %i.adn, %i.afq
  br i1 %i.afr, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i148.1.i
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !21
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.afl
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !21 ; 2 uses
  %i.afw = fsub reassoc nsz arcp contract afn float %i.aft, %i.afv
  %i.afx = fsub reassoc nsz arcp contract afn float %i.afq, %i.afn
  %i.afy = fsub reassoc nsz arcp contract afn float %i.adn, %i.afn
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afw, %i.afy
  %i.aga = fdiv reassoc nsz arcp contract afn float %i.afz, %i.afx
  %i.agb = fadd reassoc nsz arcp contract afn float %i.aga, %i.afv
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.1.i

bb.by:                                            ; preds = %bb.bw, %.lr.ph.i147.1.i
  %indvars.iv.next.i149.1.i = add nuw nsw i64 %indvars.iv.i148.1.i, 1 ; 2 uses
  %exitcond.not.i150.1.i = icmp eq i64 %indvars.iv.next.i149.1.i, %wide.trip.count.i146.1.i
  br i1 %exitcond.not.i150.1.i, label %._crit_edge.i143.1.i, label %.lr.ph.i147.1.i, !llvm.loop !0

._crit_edge.i143.1.i:                             ; preds = %bb.by, %.preheader.i142.1.i
  %i.agc = sext i32 %i.afh to i64
  %i.agd = getelementptr [4 x i8], ptr %i.acj, i64 %i.agc
  %i.age = getelementptr i8, ptr %i.agd, i64 -4
  %i.agf = load float, ptr %i.age, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.1.i

bb.bz:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.i
  %i.agg = load float, ptr %i.acj, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.1.i

_ZL26_interpolate_linear_splinePKfS0_if.exit151.1.i: ; preds = %bb.bz, %._crit_edge.i143.1.i, %bb.bx
  %.1.i144.1.i = phi nsz float [ %i.agg, %bb.bz ], [ %i.agf, %._crit_edge.i143.1.i ], [ %i.agb, %bb.bx ]
  %i.agh = insertelement <2 x float> poison, float %.1.i144.1.i, i64 0
  %i.agi = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agj = fmul reassoc nsz arcp contract afn <2 x float> %i.agi, %i.adj
  %i.agk = fadd reassoc nsz arcp contract afn <2 x float> %i.agj, %i.xt
  %i.agl = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.agm = sitofp <2 x i32> %i.agl to <2 x float>
  %i.agn = fsub reassoc nsz arcp contract afn <2 x float> %i.agk, %i.agm ; 3 uses
  %i.ago = extractelement <2 x float> %i.agn, i64 0 ; 2 uses
  %13 = fcmp reassoc nsz arcp contract afn ogt float %i.ago, %8
  %i.agp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.agn, zeroinitializer ; 2 uses
  %i.agq = extractelement <2 x i1> %i.agp, i64 0
  %spec.select.1.i = select reassoc nsz arcp contract afn i1 %i.agq, float 0.000000e+00, float %i.ago
  %i.agr = select reassoc nsz arcp contract afn i1 %13, float %8, float %spec.select.1.i
  %i.ags = extractelement <2 x float> %i.agn, i64 1 ; 2 uses
  %i.agt = fcmp reassoc nsz arcp contract afn ogt float %i.ags, %11
  %i.agu = extractelement <2 x i1> %i.agp, i64 1
  %spec.select141.1.i = select reassoc nsz arcp contract afn i1 %i.agu, float 0.000000e+00, float %i.ags
  %i.agv = select reassoc nsz arcp contract afn i1 %i.agt, float %11, float %spec.select141.1.i
  %i.agw = load i32, ptr %i.abx, align 4, !tbaa !106 ; 2 uses
  %i.agx = load i32, ptr %i.aby, align 4, !tbaa !107
  %i.agy = shl nsw i32 %i.agw, 2
  %i.agz = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.ack, float noundef %i.agr, float noundef %i.agv, i32 noundef %i.agw, i32 noundef %i.agx, i32 noundef 4, i32 noundef %i.agy)
  %gep21.1.i = getelementptr i8, ptr %invariant.gep20.i, i64 4
  store float %i.agz, ptr %gep21.1.i, align 4, !tbaa !21
  %i.aha = load i32, ptr %i.xd, align 8, !tbaa !129 ; 3 uses
  %i.ahb = load float, ptr %i.acd, align 4, !tbaa !21
  %i.ahc = fcmp reassoc nsz arcp contract afn olt float %i.adn, %i.ahb
  br i1 %i.ahc, label %bb.cd, label %.preheader.i142.2.i

.preheader.i142.2.i:                              ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.1.i
  %i.ahd = icmp sgt i32 %i.aha, 1
  br i1 %i.ahd, label %.lr.ph.preheader.i145.2.i, label %._crit_edge.i143.2.i

.lr.ph.preheader.i145.2.i:                        ; preds = %.preheader.i142.2.i
  %wide.trip.count.i146.2.i = zext nneg i32 %i.aha to i64
  br label %.lr.ph.i147.2.i

.lr.ph.i147.2.i:                                  ; preds = %bb.cc, %.lr.ph.preheader.i145.2.i
  %indvars.iv.i148.2.i = phi i64 [ 1, %.lr.ph.preheader.i145.2.i ], [ %indvars.iv.next.i149.2.i, %bb.cc ] ; 4 uses
  %i.ahe = add nsw i64 %indvars.iv.i148.2.i, -1   ; 2 uses
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.ahe
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !21 ; 3 uses
  %i.ahh = fcmp reassoc nsz arcp contract afn ult float %i.adn, %i.ahg
  br i1 %i.ahh, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i147.2.i
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv.i148.2.i
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !21 ; 2 uses
  %i.ahk = fcmp reassoc nsz arcp contract afn ugt float %i.adn, %i.ahj
  br i1 %i.ahk, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.acm, i64 %indvars.iv.i148.2.i
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !21
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.ahe
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !21 ; 2 uses
  %i.ahp = fsub reassoc nsz arcp contract afn float %i.ahm, %i.aho
  %i.ahq = fsub reassoc nsz arcp contract afn float %i.ahj, %i.ahg
  %i.ahr = fsub reassoc nsz arcp contract afn float %i.adn, %i.ahg
  %i.ahs = fmul reassoc nsz arcp contract afn float %i.ahp, %i.ahr
  %i.aht = fdiv reassoc nsz arcp contract afn float %i.ahs, %i.ahq
  %i.ahu = fadd reassoc nsz arcp contract afn float %i.aht, %i.aho
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.2.i

bb.cc:                                            ; preds = %bb.ca, %.lr.ph.i147.2.i
  %indvars.iv.next.i149.2.i = add nuw nsw i64 %indvars.iv.i148.2.i, 1 ; 2 uses
  %exitcond.not.i150.2.i = icmp eq i64 %indvars.iv.next.i149.2.i, %wide.trip.count.i146.2.i
  br i1 %exitcond.not.i150.2.i, label %._crit_edge.i143.2.i, label %.lr.ph.i147.2.i, !llvm.loop !0

._crit_edge.i143.2.i:                             ; preds = %bb.cc, %.preheader.i142.2.i
  %i.ahv = sext i32 %i.aha to i64
  %i.ahw = getelementptr [4 x i8], ptr %i.acm, i64 %i.ahv
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -4
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.2.i

bb.cd:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.1.i
  %i.ahz = load float, ptr %i.acm, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.2.i

_ZL26_interpolate_linear_splinePKfS0_if.exit151.2.i: ; preds = %bb.cd, %._crit_edge.i143.2.i, %bb.cb
  %.1.i144.2.i = phi nsz float [ %i.ahz, %bb.cd ], [ %i.ahy, %._crit_edge.i143.2.i ], [ %i.ahu, %bb.cb ]
  %i.aia = insertelement <2 x float> poison, float %.1.i144.2.i, i64 0
  %i.aib = shufflevector <2 x float> %i.aia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aic = fmul reassoc nsz arcp contract afn <2 x float> %i.aib, %i.adj
  %i.aid = fadd reassoc nsz arcp contract afn <2 x float> %i.aic, %i.xt
  %i.aie = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.aif = sitofp <2 x i32> %i.aie to <2 x float>
  %i.aig = fsub reassoc nsz arcp contract afn <2 x float> %i.aid, %i.aif ; 3 uses
  %14 = extractelement <2 x float> %i.aig, i64 0  ; 2 uses
  %15 = fcmp reassoc nsz arcp contract afn ogt float %14, %8
  %16 = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aig, zeroinitializer ; 2 uses
  %i.aih = extractelement <2 x i1> %16, i64 0
  %spec.select.2.i = select reassoc nsz arcp contract afn i1 %i.aih, float 0.000000e+00, float %14
  %spec.select.2.i.a = select reassoc nsz arcp contract afn i1 %15, float %8, float %spec.select.2.i
  %17 = extractelement <2 x float> %i.aig, i64 1  ; 2 uses
  %18 = fcmp reassoc nsz arcp contract afn ogt float %17, %11
  %i.aii = extractelement <2 x i1> %16, i64 1
  %spec.select141.2.i = select reassoc nsz arcp contract afn i1 %i.aii, float 0.000000e+00, float %17
  %i.aij = select reassoc nsz arcp contract afn i1 %18, float %11, float %spec.select141.2.i
  %i.aik = load i32, ptr %i.abx, align 4, !tbaa !106 ; 2 uses
  %i.ail = load i32, ptr %i.aby, align 4, !tbaa !107
  %i.aim = shl nsw i32 %i.aik, 2
  %i.ain = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acn, float noundef %spec.select.2.i.a, float noundef %i.aij, i32 noundef %i.aik, i32 noundef %i.ail, i32 noundef 4, i32 noundef %i.aim)
  %gep21.2.i = getelementptr i8, ptr %invariant.gep20.i, i64 8
  store float %i.ain, ptr %gep21.2.i, align 4, !tbaa !21
  %i.aio = load i32, ptr %i.xd, align 8, !tbaa !129 ; 3 uses
  %i.aip = load float, ptr %i.acd, align 4, !tbaa !21
  %i.aiq = fcmp reassoc nsz arcp contract afn olt float %i.adn, %i.aip
  br i1 %i.aiq, label %bb.ch, label %.preheader.i142.3.i

.preheader.i142.3.i:                              ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.2.i
  %i.air = icmp sgt i32 %i.aio, 1
  br i1 %i.air, label %.lr.ph.preheader.i145.3.i, label %._crit_edge.i143.3.i

.lr.ph.preheader.i145.3.i:                        ; preds = %.preheader.i142.3.i
  %wide.trip.count.i146.3.i = zext nneg i32 %i.aio to i64
  br label %.lr.ph.i147.3.i

.lr.ph.i147.3.i:                                  ; preds = %bb.cg, %.lr.ph.preheader.i145.3.i
  %indvars.iv.i148.3.i = phi i64 [ 1, %.lr.ph.preheader.i145.3.i ], [ %indvars.iv.next.i149.3.i, %bb.cg ] ; 4 uses
  %i.ais = add nsw i64 %indvars.iv.i148.3.i, -1   ; 2 uses
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.ais
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !21 ; 3 uses
  %i.aiv = fcmp reassoc nsz arcp contract afn ult float %i.adn, %i.aiu
  br i1 %i.aiv, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i147.3.i
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv.i148.3.i
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !21 ; 2 uses
  %i.aiy = fcmp reassoc nsz arcp contract afn ugt float %i.adn, %i.aix
  br i1 %i.aiy, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i148.3.i
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !21
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.ais
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !21 ; 2 uses
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.aja, %i.ajc
  %i.aje = fsub reassoc nsz arcp contract afn float %i.aix, %i.aiu
  %i.ajf = fsub reassoc nsz arcp contract afn float %i.adn, %i.aiu
  %i.ajg = fmul reassoc nsz arcp contract afn float %i.ajd, %i.ajf
  %i.ajh = fdiv reassoc nsz arcp contract afn float %i.ajg, %i.aje
  %i.aji = fadd reassoc nsz arcp contract afn float %i.ajh, %i.ajc
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i

bb.cg:                                            ; preds = %bb.ce, %.lr.ph.i147.3.i
  %indvars.iv.next.i149.3.i = add nuw nsw i64 %indvars.iv.i148.3.i, 1 ; 2 uses
  %exitcond.not.i150.3.i = icmp eq i64 %indvars.iv.next.i149.3.i, %wide.trip.count.i146.3.i
  br i1 %exitcond.not.i150.3.i, label %._crit_edge.i143.3.i, label %.lr.ph.i147.3.i, !llvm.loop !0

._crit_edge.i143.3.i:                             ; preds = %bb.cg, %.preheader.i142.3.i
  %i.ajj = sext i32 %i.aio to i64
  %i.ajk = getelementptr [4 x i8], ptr %i.acj, i64 %i.ajj
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 -4
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i

bb.ch:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit151.2.i
  %i.ajn = load float, ptr %i.acj, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i

_ZL26_interpolate_linear_splinePKfS0_if.exit151.3.i: ; preds = %bb.ch, %._crit_edge.i143.3.i, %bb.cf
  %.1.i144.3.i = phi nsz float [ %i.ajn, %bb.ch ], [ %i.ajm, %._crit_edge.i143.3.i ], [ %i.aji, %bb.cf ]
  %i.ajo = insertelement <2 x float> poison, float %.1.i144.3.i, i64 0
  %i.ajp = shufflevector <2 x float> %i.ajo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajq = fmul reassoc nsz arcp contract afn <2 x float> %i.ajp, %i.adj
  %i.ajr = fadd reassoc nsz arcp contract afn <2 x float> %i.ajq, %i.xt
  %i.ajs = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.ajt = sitofp <2 x i32> %i.ajs to <2 x float>
  %i.aju = fsub reassoc nsz arcp contract afn <2 x float> %i.ajr, %i.ajt ; 3 uses
  %i.ajv = extractelement <2 x float> %i.aju, i64 0 ; 2 uses
  %19 = fcmp reassoc nsz arcp contract afn ogt float %i.ajv, %8
  %i.ajw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aju, zeroinitializer ; 2 uses
  %i.ajx = extractelement <2 x i1> %i.ajw, i64 0
  %spec.select.3.i = select reassoc nsz arcp contract afn i1 %i.ajx, float 0.000000e+00, float %i.ajv
  %i.ajy = select reassoc nsz arcp contract afn i1 %19, float %8, float %spec.select.3.i
  %i.ajz = extractelement <2 x float> %i.aju, i64 1 ; 2 uses
  %i.aka = fcmp reassoc nsz arcp contract afn ogt float %i.ajz, %11
  %i.akb = extractelement <2 x i1> %i.ajw, i64 1
  %spec.select141.3.i = select reassoc nsz arcp contract afn i1 %i.akb, float 0.000000e+00, float %i.ajz
  %i.akc = select reassoc nsz arcp contract afn i1 %i.aka, float %11, float %spec.select141.3.i
  %i.akd = load i32, ptr %i.abx, align 4, !tbaa !106 ; 2 uses
  %i.ake = load i32, ptr %i.aby, align 4, !tbaa !107
  %i.akf = shl nsw i32 %i.akd, 2
  %i.akg = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.aco, float noundef %i.ajy, float noundef %i.akc, i32 noundef %i.akd, i32 noundef %i.ake, i32 noundef 4, i32 noundef %i.akf)
  %gep21.3.i = getelementptr i8, ptr %invariant.gep20.i, i64 12
  store float %i.akg, ptr %gep21.3.i, align 4, !tbaa !21
  %i.akh = add nuw nsw i32 %.012723.i, 1          ; 2 uses
  %i.aki = load i32, ptr %i.acc, align 4, !tbaa !106 ; 3 uses
  %i.akj = icmp slt i32 %i.akh, %i.aki
  br i1 %i.akj, label %.lr.ph.i62, label %._crit_edge.loopexit.i, !llvm.loop !339

bb.ci:                                            ; preds = %._crit_edge25.i
  tail call void @free(ptr noundef %.0132.i) #30
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.cj:                                            ; preds = %_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %.0, i64 noundef 4, ptr noundef %4, ptr noundef %5)
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit: ; preds = %bb.ci, %._crit_edge25.i, %bb.bi, %.loopexit250.i, %bb.o, %bb.cj
  %.not50 = icmp eq ptr %.0, %2
  br i1 %.not50, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit
  call void @free(ptr noundef %.0) #30
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !114
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 492
  %.val.val = load float, ptr %i.d, align 4, !tbaa !105
  store float 4.500000e+00, ptr %4, align 4, !tbaa !344
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.500000e+00, ptr %i.e, align 4, !tbaa !345
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !346
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.g, align 4, !tbaa !347
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.h, align 4, !tbaa !348
  %i.i = fcmp reassoc nsz arcp contract afn une float %.val.val, 0.000000e+00
  br i1 %i.i, label %bb.c, label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.c:                                             ; preds = %bb.b
  store float 5.500000e+00, ptr %4, align 4, !tbaa !344
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.d:                                             ; preds = %bb.a
  store float 4.500000e+00, ptr %4, align 4, !tbaa !344
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.500000e+00, ptr %i.j, align 4, !tbaa !345
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !346
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.l, align 4, !tbaa !347
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.m, align 4, !tbaa !348
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.e:                                             ; preds = %bb.a
  store float 2.000000e+00, ptr %4, align 4, !tbaa !344
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !345
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 4, !tbaa !346
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.p, align 4, !tbaa !347
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.q, align 4, !tbaa !348
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @distort_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x float], align 64             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !44  ; 15 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  switch i32 %i.d, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit [
    i32 1, label %bb.b
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !354 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124, !noalias !354
  %.not27.i = icmp eq ptr %i.g, null
  br i1 %.not27.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !125, !noalias !354
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.e, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load <2 x i32>, ptr %i.k, align 16, !tbaa !24, !noalias !354
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126, !noalias !354
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.p), !noalias !354
  %i.r = extractelement <2 x float> %i.m, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.m, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130, !noalias !354 ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !354 ; 6 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !354
  %i.z = load float, ptr %i.h, align 8, !tbaa !125, !noalias !354
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.y, float noundef %i.z, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f, !noalias !354

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !354
  resume { ptr, i32 } %i.aa

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %.not28.i = icmp eq i32 %i.q, 0
  %i.ab = select i1 %.not28.i, i32 -1, i32 -2
  %i.ac = and i32 %i.w, 3
  %i.ad = shl i32 %i.w, 1
  %i.ae = and i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = or disjoint i32 %i.af, 48
  %i.ah = and i32 %i.ag, %i.ab
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !354
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !133, !noalias !354
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.am = load float, ptr %i.al, align 8, !tbaa !134, !noalias !354
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !135, !noalias !354
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !136, !noalias !354
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !137, !noalias !354
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !127, !noalias !354
  %.not23.i.i = icmp eq i32 %i.au, 0
  %i.av = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ai, i32 noundef 3, float noundef %i.ak, float noundef %i.am, float noundef %i.ao, float noundef %i.aq, i32 noundef %i.as, i32 noundef %i.ah, i1 noundef zeroext %.not23.i.i), !noalias !354
  %i.aw = and i32 %i.av, 57
  %.not29.i = icmp eq i32 %i.aw, 0
  br i1 %.not29.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.ax = shl i64 %3, 1                           ; 2 uses
  %.not31.i = icmp eq i64 %i.ax, 0
  br i1 %.not31.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.030.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !354
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030.i ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !21, !alias.scope !354
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !21, !alias.scope !354
  %i.bc = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.az, float noundef %i.bb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.a), !noalias !354 ; 0 uses
  %i.bd = load <4 x float>, ptr %i.a, align 64, !tbaa !21, !noalias !354
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.be, ptr %i.ay, align 4, !tbaa !21, !alias.scope !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !354
  %i.bf = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.ax
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !351

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
end_hunk_0
begin_hunk_1_@distort_mask:bb.a
  %i.o = load i32, ptr %i.n, align 4, !tbaa !107
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, %i.m
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !111 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load <2 x i32>, ptr %i.t, align 16, !tbaa !24
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = fmul reassoc nsz arcp contract afn float %i.s, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, %i.y
  %i.aa = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = fptosi float %i.x to i32
  %i.ac = fptosi float %i.z to i32
  %i.ad = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.a, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %i.c, i32 noundef 56, i32 noundef 0) ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ag = and i32 %i.af, 57
  %.not77.i = icmp eq i32 %i.ag, 0
  br i1 %.not77.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !106
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !107
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.aj
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.an)
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.ao = call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !106
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 24
  %i.at = add nsw i64 %i.as, 56
  %i.au = and i64 %i.at, -64
  %i.av = call noundef ptr @dt_alloc_aligned(i64 noundef %i.au) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph6.i, label %._crit_edge7.i

.lr.ph6.i:                                        ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !106
  br label %bb.i

._crit_edge7.i:                                   ; preds = %._crit_edge.i, %bb.h
  call void @free(ptr noundef %i.av) #30
  br label %bb.p

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph6.i
  %i.bd = phi i32 [ %.pre.i, %.lr.ph6.i ], [ %i.bq, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.be = load i32, ptr %5, align 4, !tbaa !112
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bg = load i32, ptr %i.az, align 4, !tbaa !113
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, float noundef %i.bf, float noundef %i.bj, i32 noundef %i.bd, i32 noundef 1, ptr noundef %i.av) ; 0 uses
  %i.bl = load i32, ptr %i.ap, align 4, !tbaa !106 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = mul nuw nsw i64 %indvars.iv.i, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bo
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.i
  %i.bq = phi i32 [ %i.bl, %bb.i ], [ %i.cw, %bb.o ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %bb.i, label %._crit_edge7.i, !llvm.loop !360

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.03.i = phi i32 [ %i.ct, %bb.o ], [ 0, %.lr.ph.preheader.i ]
  %.0712.i = phi ptr [ %i.cv, %bb.o ], [ %i.bp, %.lr.ph.preheader.i ] ; 2 uses
  %.0721.i = phi ptr [ %i.cu, %bb.o ], [ %i.av, %.lr.ph.preheader.i ] ; 4 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !128
  %.not78.i = icmp eq i32 %i.bu, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0721.i, i64 8
  %.pre9.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not78.i, label %.lr.ph._crit_edge.i, label %bb.j

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %.0721.i, i64 12
  %.pre11.i = load float, ptr %.phi.trans.insert10.i, align 4, !tbaa !21
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  %i.bv = call float @llvm.fabs.f32(float %.pre9.i)
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.0721.i, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !21 ; 2 uses
  %i.bz = call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ueq float %i.bz, +inf
  br i1 %i.ca, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph._crit_edge.i
  %i.cb = phi float [ %.pre11.i, %.lr.ph._crit_edge.i ], [ %i.by, %bb.k ]
  %i.cc = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fsub reassoc nsz arcp contract afn float %.pre9.i, %i.ce ; 3 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cb, %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.bb, align 4, !tbaa !106 ; 2 uses
  %i.cj = load i32, ptr %i.bc, align 4, !tbaa !107
  %i.ck = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef 1, i32 noundef %i.ci)
  %i.cl = fcmp reassoc nsz arcp contract afn ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.bb, align 4, !tbaa !106 ; 2 uses
  %i.cn = load i32, ptr %i.bc, align 4, !tbaa !107
  %i.co = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 1, i32 noundef %i.cm)
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.co, 1.000000e+00
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %i.bb, align 4, !tbaa !106 ; 2 uses
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !107
  %i.cs = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 1, i32 noundef %i.cq)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %storemerge.i = phi float [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.cs, %bb.n ], [ 0.000000e+00, %bb.l ]
  store float %storemerge.i, ptr %.0712.i, align 4, !tbaa !21
  %i.ct = add nuw nsw i32 %.03.i, 1               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0721.i, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0712.i, i64 4
  %i.cw = load i32, ptr %i.ap, align 4, !tbaa !106 ; 2 uses
  %i.cx = icmp slt i32 %i.ct, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !361

bb.p:                                             ; preds = %._crit_edge7.i, %bb.g
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ad) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 96) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.q:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !129
  %.not.i19 = icmp eq i32 %i.cz, 0
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !130
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !106
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !107
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, %i.df
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.dj)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !131
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !111
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dn, 5.000000e-01
  %i.dr = load <2 x i32>, ptr %i.do, align 16, !tbaa !24
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.du, %i.ds ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %6 = load i32, ptr %i.dw, align 4, !tbaa !106
  %7 = add nsw i32 %6, -1
  %8 = sitofp reassoc nsz arcp contract afn i32 %7 to float ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %9 = load i32, ptr %i.dx, align 4, !tbaa !107
  %10 = add nsw i32 %9, -1
  %11 = sitofp reassoc nsz arcp contract afn i32 %10 to float ; 2 uses
  %i.dy = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !107 ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.preheader.lr.ph.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 4 uses
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !106 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.preheader.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.eh = extractelement <2 x float> %i.dv, i64 0
  %i.ei = extractelement <2 x float> %i.dv, i64 1
  %i.ej = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.eh, float noundef %i.ei) #32
  %i.ek = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ej
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i20, %.preheader.preheader.i
  %i.en = phi i32 [ %i.er, %._crit_edge.i20 ], [ %i.ea, %.preheader.preheader.i ]
  %i.eo = phi i32 [ %i.es, %._crit_edge.i20 ], [ %i.ef, %.preheader.preheader.i ] ; 2 uses
  %.0888.i = phi i32 [ %i.et, %._crit_edge.i20 ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i21.preheader, label %._crit_edge.i20

.lr.ph.i21.preheader:                             ; preds = %.preheader.i
  %i.eq = insertelement <2 x i32> poison, i32 %.0888.i, i64 1
  br label %.lr.ph.i21

._crit_edge.loopexit.i:                           ; preds = %bb.aa
  %.pre.i22 = load i32, ptr %i.dz, align 4, !tbaa !107
  br label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.er = phi i32 [ %.pre.i22, %._crit_edge.loopexit.i ], [ %i.en, %.preheader.i ] ; 2 uses
  %i.es = phi i32 [ %i.hd, %._crit_edge.loopexit.i ], [ %i.eo, %.preheader.i ]
  %i.et = add nuw nsw i32 %.0888.i, 1             ; 2 uses
  %i.eu = icmp slt i32 %i.et, %i.er
  br i1 %i.eu, label %.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit, !llvm.loop !362

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %bb.aa
  %.07.i = phi i32 [ %i.hi, %bb.aa ], [ 0, %.lr.ph.i21.preheader ] ; 3 uses
  %i.ev = load <2 x i32>, ptr %5, align 4, !tbaa !24
  %i.ew = insertelement <2 x i32> %i.eq, i32 %.07.i, i64 0
  %i.ex = add nsw <2 x i32> %i.ev, %i.ew
  %i.ey = sitofp <2 x i32> %i.ex to <2 x float>
  %i.ez = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.dv
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.el ; 3 uses
  %i.fb = load i32, ptr %i.cy, align 8, !tbaa !129 ; 3 uses
  %i.fc = extractelement <2 x float> %i.fa, i64 0
  %i.fd = extractelement <2 x float> %i.fa, i64 1
  %i.fe = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.fc, float noundef %i.fd) #32
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, %i.em ; 4 uses
  %i.fg = load float, ptr %i.ed, align 4, !tbaa !21
  %i.fh = fcmp reassoc nsz arcp contract afn olt float %i.ff, %i.fg
  br i1 %i.fh, label %bb.u, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i21
  %i.fi = icmp sgt i32 %i.fb, 1
  br i1 %i.fi, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fb to i64
  br label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i21
  %i.fj = load float, ptr %i.ee, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 4 uses
  %i.fk = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !21 ; 3 uses
  %i.fn = fcmp reassoc nsz arcp contract afn ult float %i.ff, %i.fm
  br i1 %i.fn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i.i
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !21 ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ugt float %i.ff, %i.fp
  br i1 %i.fq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

bb.x:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !21
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fk
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !21 ; 2 uses
  %i.fv = fsub reassoc nsz arcp contract afn float %i.fs, %i.fu
  %i.fw = fsub reassoc nsz arcp contract afn float %i.fp, %i.fm
  %i.fx = fsub reassoc nsz arcp contract afn float %i.ff, %i.fm
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fv, %i.fx
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fy, %i.fw
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fu
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.i.i:                                  ; preds = %bb.w, %.preheader.i.i
  %i.gb = sext i32 %i.fb to i64
  %i.gc = getelementptr [4 x i8], ptr %i.ee, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -4
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %._crit_edge.i.i, %bb.x, %bb.u
  %.1.i.i = phi nsz float [ %i.fj, %bb.u ], [ %i.ge, %._crit_edge.i.i ], [ %i.ga, %bb.x ]
  %i.gf = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.fa
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, %i.dv
  %i.gj = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.gk = sitofp <2 x i32> %i.gj to <2 x float>
  %i.gl = fsub reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gk ; 4 uses
  %12 = extractelement <2 x float> %i.gl, i64 0
  %13 = fcmp reassoc nsz arcp contract afn ogt float %12, %8
  %14 = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gl, zeroinitializer
  %15 = extractelement <2 x float> %i.gl, i64 1
  %16 = fcmp reassoc nsz arcp contract afn ogt float %15, %11
  %i.gm = select <2 x i1> %14, <2 x float> zeroinitializer, <2 x float> %i.gl ; 2 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  %i.go = select reassoc nsz arcp contract afn i1 %13, float %8, float %i.gn ; 3 uses
  %i.gp = extractelement <2 x float> %i.gm, i64 1
  %i.gq = select reassoc nsz arcp contract afn i1 %16, float %11, float %i.gp ; 3 uses
  %i.gr = load i32, ptr %i.dw, align 4, !tbaa !106 ; 2 uses
  %i.gs = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.gt = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.dy, ptr noundef %2, float noundef %i.go, float noundef %i.gq, i32 noundef %i.gr, i32 noundef %i.gs, i32 noundef 1, i32 noundef %i.gr)
  %i.gu = fcmp reassoc nsz arcp contract afn ult float %i.gt, 0.000000e+00
  br i1 %i.gu, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gv = load i32, ptr %i.dw, align 4, !tbaa !106 ; 2 uses
  %i.gw = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.gx = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.dy, ptr noundef %2, float noundef %i.go, float noundef %i.gq, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef 1, i32 noundef %i.gv)
  %i.gy = fcmp reassoc nsz arcp contract afn ugt float %i.gx, 1.000000e+00
  br i1 %i.gy, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gz = load i32, ptr %i.dw, align 4, !tbaa !106 ; 2 uses
  %i.ha = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.hb = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.dy, ptr noundef %2, float noundef %i.go, float noundef %i.gq, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef 1, i32 noundef %i.gz)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.hc = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.y ], [ %i.hb, %bb.z ], [ 0.000000e+00, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ]
  %i.hd = load i32, ptr %i.ec, align 4, !tbaa !106 ; 3 uses
  %i.he = mul nsw i32 %i.hd, %.0888.i
  %i.hf = add nsw i32 %i.he, %.07.i
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hg
  store float %i.hc, ptr %i.hh, align 4, !tbaa !21
  %i.hi = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.hj = icmp slt i32 %i.hi, %i.hd
  br i1 %i.hj, label %.lr.ph.i21, label %._crit_edge.loopexit.i, !llvm.loop !363

bb.ab:                                            ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit: ; preds = %._crit_edge.i20, %.preheader.lr.ph.i, %bb.t, %bb.s, %bb.p, %bb.e, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44  ; 23 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull readonly align 4 dereferenceable(20) %2, i64 20, i1 false)
  switch i32 %i.c, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit [
    i32 1, label %bb.b
    i32 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %.not224.i = icmp eq ptr %i.f, null
  br i1 %.not224.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !125
  %i.i = fcmp reassoc nsz arcp contract afn ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load <2 x i32>, ptr %i.l, align 16, !tbaa !24
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n ; 8 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130  ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 9 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.z = load float, ptr %i.g, align 8, !tbaa !125
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.y, float noundef %i.z, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33
  resume { ptr, i32 } %i.aa

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %i.ab = and i32 %i.w, 3
  %i.ac = shl i32 %i.w, 1
  %i.ad = and i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = or disjoint i32 %i.ae, 48
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !134
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.am = load float, ptr %i.al, align 4, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !137
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !127
  %.not23.i.i = icmp ne i32 %i.as, 0
  %i.at = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ag, i32 noundef 3, float noundef %i.ai, float noundef %i.ak, float noundef %i.am, float noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.af, i1 noundef zeroext %.not23.i.i)
  %i.au = and i32 %i.at, 57
  %.not225.i = icmp eq i32 %i.au, 0
  br i1 %.not225.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.av = load i32, ptr %3, align 4, !tbaa !112   ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !113 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !106 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107 ; 4 uses
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true) ; 3 uses
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true) ; 3 uses
  %.inv.i = icmp sgt i32 %i.az, -1
  %i.be = select i1 %.inv.i, i32 1, i32 -1        ; 2 uses
  %.inv226.i = icmp sgt i32 %i.bb, -1
  %i.bf = select i1 %.inv226.i, i32 1, i32 -1     ; 2 uses
  %i.bg = shl nuw nsw i32 %i.bc, 1                ; 2 uses
  %i.bh = add nuw i32 %i.bd, %i.bc                ; 2 uses
  %i.bi = shl nuw i32 %i.bh, 1
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = mul nuw nsw i64 %i.bj, 24
  %i.bl = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.bk) ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bl, i64 64) ]
  %.not27.i = icmp eq i32 %i.az, 0
  br i1 %.not27.i, label %.preheader5.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.ax to float
  %wide.trip.count.i = zext nneg i32 %i.bc to i64 ; 3 uses
  br label %bb.h

.lr.ph9.i:                                        ; preds = %bb.h
  %i.bn = add i32 %i.ax, -1
  %i.bo = add i32 %i.bn, %i.bb
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.bq = trunc i64 %indvars.iv.i to i32
  %i.br = mul i32 %i.be, %i.bq
  %i.bs = add i32 %i.br, %i.av
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.bs to float
  %.idx52.i = mul nuw nsw i64 %indvars.iv.i, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx52.i
  %i.bv = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.bt, float noundef %i.bm, i32 noundef 1, i32 noundef 1, ptr noundef %i.bu) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph9.i, label %bb.h, !llvm.loop !364

.preheader5.i:                                    ; preds = %bb.i, %bb.g
  %.not29.i = icmp eq i32 %i.bb, 0
  br i1 %.not29.i, label %.preheader3.i, label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.preheader5.i
  %i.bw = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %i.bx = zext nneg i32 %i.bg to i64
  %wide.trip.count44.i = zext nneg i32 %i.bd to i64 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph9.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next37.i, %bb.i ] ; 3 uses
  %i.by = trunc i64 %indvars.iv36.i to i32
  %i.bz = mul i32 %i.be, %i.by
  %i.ca = add i32 %i.bz, %i.av
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to float
  %i.cc = add nuw nsw i64 %indvars.iv36.i, %wide.trip.count.i
  %.idx53.i = mul nuw nsw i64 %i.cc, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx53.i
  %i.ce = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.cb, float noundef %i.bp, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.cd) ; 0 uses
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i
  br i1 %exitcond40.not.i, label %.preheader5.i, label %bb.i, !llvm.loop !365

.lr.ph13.i:                                       ; preds = %bb.j
  %i.cf = add i32 %i.av, -1
  %i.cg = add i32 %i.cf, %i.az
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float
  %i.ci = add nuw nsw i32 %i.bg, %i.bd
  %i.cj = zext nneg i32 %i.ci to i64
  br label %bb.k

end_hunk_1
