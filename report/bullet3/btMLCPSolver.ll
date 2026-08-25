Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMLCPSolver?download=true
inline.NumInlined: 547
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12btMLCPSolver14createMLCPFastERK19btContactSolverInfo:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bv, %..loopexit_crit_edge, %bb.by
  %.sroa.22663.2 = phi ptr [ %.sroa.22663.1, %bb.by ], [ %.sroa.22663.8, %..loopexit_crit_edge ], [ %.sroa.22663.8, %bb.bv ] ; 2 uses
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %bb.by ], [ %.sroa.15.5, %..loopexit_crit_edge ], [ %.sroa.15.5, %bb.bv ]
  %.sroa.3.2 = phi i32 [ %.sroa.3.1, %bb.by ], [ %i.ti, %..loopexit_crit_edge ], [ %i.ti, %bb.bv ]
  %.4 = phi i32 [ %i.xg, %bb.by ], [ %i.xk, %..loopexit_crit_edge ], [ %.2, %bb.bv ]
  %i.xl = add nsw i32 %i.od, %.0286773
  %i.xm = add nsw i32 %i.od, %.0284775            ; 2 uses
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 1
  %i.xn = load i32, ptr %i.d, align 4, !tbaa !40
  %i.xo = icmp slt i32 %i.xm, %i.xn
  br i1 %i.xo, label %bb.bg, label %._crit_edge779, !llvm.loop !175

bb.bz:                                            ; preds = %bb.bw, %bb.bo
  %.sroa.22663.3 = phi ptr [ %.sroa.22663.1, %bb.bw ], [ %.sroa.22663.0769, %bb.bo ]
  %.pn366.pn.pn = phi { ptr, i32 } [ %i.ul, %bb.bw ], [ %i.pw, %bb.bo ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #14
  br label %bb.ce

bb.ca:                                            ; preds = %._crit_edge779
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.xp, i32 noundef %i.e, i32 noundef %i.e)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull @.str.12)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.22)
          to label %.noexc541 unwind label %bb.cj

.noexc541:                                        ; preds = %bb.cc
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !18 ; 2 uses
  %.not.i539 = icmp eq i32 %i.xr, 0
  br i1 %.not.i539, label %bb.cd, label %_Z9btSetZeroIfEvPT_i.exit.i540

_Z9btSetZeroIfEvPT_i.exit.i540:                   ; preds = %.noexc541
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !17
  %i.xu = sext i32 %i.xr to i64
  %i.xv = shl nuw nsw i64 %i.xu, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.xt, i8 0, i64 %i.xv, i1 false), !tbaa !103
  br label %bb.cd

bb.cd:                                            ; preds = %_Z9btSetZeroIfEvPT_i.exit.i540, %.noexc541
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull @.str.13)
          to label %.preheader725 unwind label %bb.cl

.preheader725:                                    ; preds = %bb.cd
  %i.xw = load i32, ptr %i.d, align 4, !tbaa !40  ; 2 uses
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %.lr.ph794, label %._crit_edge795

.lr.ph794:                                        ; preds = %.preheader725
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !31 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !39 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !67 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  br label %bb.cm

._crit_edge795:                                   ; preds = %._crit_edge790, %.preheader725
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull @.str.14)
          to label %bb.dd unwind label %bb.dk

bb.ce:                                            ; preds = %bb.bz, %bb.bf
  %.sroa.22663.4 = phi ptr [ %.sroa.22663.3, %bb.bz ], [ %.sroa.22663.6, %bb.bf ]
  %.pn366.pn.pn.pn = phi { ptr, i32 } [ %.pn366.pn.pn, %bb.bz ], [ %i.ne, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.el

bb.cf:                                            ; preds = %._crit_edge779
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ca
  %i.yj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #14
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn340 = phi { ptr, i32 } [ %i.yj, %bb.cg ], [ %i.yi, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.el

bb.ci:                                            ; preds = %bb.cb
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cc
  %i.yl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #14
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn342 = phi { ptr, i32 } [ %i.yl, %bb.cj ], [ %i.yk, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.el

bb.cl:                                            ; preds = %bb.cd
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cm:                                            ; preds = %.lr.ph794, %._crit_edge790
  %indvars.iv871.a = phi i64 [ 0, %.lr.ph794 ], [ %indvars.iv.next872.a, %._crit_edge790 ] ; 5 uses
  %.0278793 = phi i32 [ 0, %.lr.ph794 ], [ %i.afe, %._crit_edge790 ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv871.a
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !69 ; 3 uses
  %i.yp = sext i32 %.0278793 to i64
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !68 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 152
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !142 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 156
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !143 ; 2 uses
  %i.yw = icmp slt i32 %.0278793, %i.yd
  br i1 %i.yw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.yx = load ptr, ptr %i.ye, align 8, !tbaa !150
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv871.a
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !151
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.za = phi i32 [ %i.yz, %bb.cn ], [ %i.c, %bb.cm ]
  %.fr810 = freeze i32 %i.za                      ; 6 uses
  %i.zb = sext i32 %i.yo to i64
  %.idx = shl nsw i64 %i.zb, 6
  %i.zc = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.idx ; 2 uses
  %i.zd = sext i32 %i.yt to i64
  %i.ze = getelementptr inbounds [4 x i8], ptr %.sroa.10697.2, i64 %i.zd
  %.0277781 = load i32, ptr %i.ze, align 4, !tbaa !69 ; 2 uses
  %i.zf = icmp sgt i32 %.0277781, -1
  %i.zg = icmp sgt i32 %.fr810, 0
  %or.cond960 = and i1 %i.zf, %i.zg
  br i1 %or.cond960, label %.lr.ph784.split.us, label %._crit_edge785

.lr.ph784.split.us:                               ; preds = %bb.co, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us
  %.0277782.us = phi i32 [ %.0277.us, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ], [ %.0277781, %bb.co ]
  %i.zh = zext nneg i32 %.0277782.us to i64
  %i.zi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22663.0.lcssa, i64 %i.zh ; 3 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !157
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !158 ; 2 uses
  %i.zm = sext i32 %i.zj to i64                   ; 3 uses
  %i.zn = icmp sgt i64 %indvars.iv871.a, %i.zm
  br i1 %i.zn, label %bb.cp, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

bb.cp:                                            ; preds = %.lr.ph784.split.us
  %i.zo = icmp slt i32 %i.zl, %i.yd
  br i1 %i.zo, label %bb.cq, label %.preheader.lr.ph.i.us

bb.cq:                                            ; preds = %bb.cp
  %i.zp = load ptr, ptr %i.ye, align 8, !tbaa !150
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.zp, i64 %i.zm
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !151
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.cq, %bb.cp
  %i.zs = phi i32 [ %i.zr, %bb.cq ], [ %i.c, %bb.cp ] ; 3 uses
  %i.zt = sext i32 %i.zl to i64
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.zt
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !68
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 156
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !143
  %i.zy = icmp eq i32 %i.zx, %i.yt
  %i.zz = shl nsw i32 %i.zs, 3
  %i.aaa = select i1 %i.zy, i32 %i.zz, i32 0
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %i.zm
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !69 ; 2 uses
  %i.aae = sext i32 %i.aad to i64
  %.idx353.us = shl nsw i64 %i.aae, 6
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx353.us
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aab
  %i.aah = icmp sgt i32 %i.zs, 0
  br i1 %i.aah, label %.preheader.preheader.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

.preheader.preheader.i.us:                        ; preds = %.preheader.lr.ph.i.us
  %.promoted.i.us = load i32, ptr %i.yh, align 8
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us, %.preheader.preheader.i.us
  %19 = phi i32 [ %22, %._crit_edge.i.us ], [ %.promoted.i.us, %.preheader.preheader.i.us ]
  %.038.i.us = phi ptr [ %i.abz, %._crit_edge.i.us ], [ %i.zc, %.preheader.preheader.i.us ] ; 7 uses
  %.03437.i.us = phi i32 [ %i.aca, %._crit_edge.i.us ], [ 0, %.preheader.preheader.i.us ] ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 16
  %i.aal = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 20
  %i.aam = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 24
  %i.aan = add nsw i32 %.03437.i.us, %i.yo
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us, %.preheader.i.us
  %20 = phi i32 [ %19, %.preheader.i.us ], [ %22, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 3 uses
  %.03236.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.aby, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 2 uses
  %.03335.i.us = phi ptr [ %i.aag, %.preheader.i.us ], [ %i.abx, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 7 uses
  %i.aao = load float, ptr %.038.i.us, align 4, !tbaa !103
  %i.aap = load float, ptr %.03335.i.us, align 4, !tbaa !103
  %i.aaq = fmul float %i.aao, %i.aap
  %i.aar = load float, ptr %i.aai, align 4, !tbaa !103
  %i.aas = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 4
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !103
  %i.aau = call float @llvm.fmuladd.f32(float %i.aar, float %i.aat, float %i.aaq)
  %i.aav = load float, ptr %i.aaj, align 4, !tbaa !103
  %i.aaw = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 8
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !103
  %i.aay = call float @llvm.fmuladd.f32(float %i.aav, float %i.aax, float %i.aau)
  %i.aaz = load float, ptr %i.aak, align 4, !tbaa !103
  %i.aba = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 16
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !103
  %i.abc = call float @llvm.fmuladd.f32(float %i.aaz, float %i.abb, float %i.aay)
  %i.abd = load float, ptr %i.aal, align 4, !tbaa !103
  %i.abe = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 20
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !103
  %i.abg = call float @llvm.fmuladd.f32(float %i.abd, float %i.abf, float %i.abc)
  %i.abh = load float, ptr %i.aam, align 4, !tbaa !103
  %i.abi = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 24
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !103
  %i.abk = call float @llvm.fmuladd.f32(float %i.abh, float %i.abj, float %i.abg) ; 3 uses
  %i.abl = fcmp une float %i.abk, 0.000000e+00
  br i1 %i.abl, label %bb.cs, label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

bb.cs:                                            ; preds = %bb.cr
  %i.abm = add nsw i32 %.03236.i.us, %i.aad
  %i.abn = load i32, ptr %i.yf, align 4, !tbaa !106
  %i.abo = mul nsw i32 %i.abn, %i.aan
  %i.abp = add nsw i32 %i.abm, %i.abo
  %i.abq = load ptr, ptr %i.yg, align 8, !tbaa !17
  %i.abr = sext i32 %i.abp to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abq, i64 %i.abr ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !103 ; 2 uses
  %i.abu = fcmp oeq float %i.abt, 0.000000e+00
  br i1 %i.abu, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.abv = fadd float %i.abk, %i.abt
  br label %.sink.split.i.i.us

bb.cu:                                            ; preds = %bb.cs
  %i.abw = add nsw i32 %20, 1                     ; 2 uses
  store i32 %i.abw, ptr %i.yh, align 8, !tbaa !160
  br label %.sink.split.i.i.us

.sink.split.i.i.us:                               ; preds = %bb.cu, %bb.ct
  %21 = phi i32 [ %i.abw, %bb.cu ], [ %20, %bb.ct ]
  %.sink.i.i.us = phi float [ %i.abk, %bb.cu ], [ %i.abv, %bb.ct ]
  store float %.sink.i.i.us, ptr %i.abs, align 4, !tbaa !103
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

_ZN9btMatrixXIfE7addElemEiif.exit.i.us:           ; preds = %.sink.split.i.i.us, %bb.cr
  %22 = phi i32 [ %20, %bb.cr ], [ %21, %.sink.split.i.i.us ] ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 32
  %i.aby = add nuw nsw i32 %.03236.i.us, 1        ; 2 uses
  %exitcond.not.i543.us = icmp eq i32 %i.aby, %i.zs
  br i1 %exitcond.not.i543.us, label %._crit_edge.i.us, label %bb.cr, !llvm.loop !176

._crit_edge.i.us:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us
  %i.abz = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 32
  %i.aca = add nuw nsw i32 %.03437.i.us, 1        ; 2 uses
  %exitcond40.not.i.us = icmp eq i32 %i.aca, %.fr810
  br i1 %exitcond40.not.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, label %.preheader.i.us, !llvm.loop !177

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us: ; preds = %._crit_edge.i.us, %.preheader.lr.ph.i.us, %.lr.ph784.split.us
  %i.acb = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %.0277.us = load i32, ptr %i.acb, align 4, !tbaa !69 ; 2 uses
  %i.acc = icmp sgt i32 %.0277.us, -1
  br i1 %i.acc, label %.lr.ph784.split.us, label %._crit_edge785, !llvm.loop !178

._crit_edge785:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, %bb.co
  %i.acd = sext i32 %i.yv to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %.sroa.10697.2, i64 %i.acd
  %.0276786 = load i32, ptr %i.ace, align 4, !tbaa !69 ; 2 uses
  %i.acf = icmp sgt i32 %.0276786, -1
  br i1 %i.acf, label %.lr.ph789, label %._crit_edge790

.lr.ph789:                                        ; preds = %._crit_edge785
  %i.acg = sext i32 %.fr810 to i64
  %.idx351 = shl nsw i64 %i.acg, 5
  %i.ach = getelementptr inbounds nuw i8, ptr %i.zc, i64 %.idx351
  %23 = icmp sgt i32 %.fr810, 0
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph789, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558
  %.0276787 = phi i32 [ %.0276786, %.lr.ph789 ], [ %.0276, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558 ]
  %i.aci = zext nneg i32 %.0276787 to i64
  %i.acj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22663.0.lcssa, i64 %i.aci ; 3 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !157
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 12
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !158 ; 2 uses
  %i.acn = sext i32 %i.ack to i64                 ; 3 uses
  %i.aco = icmp sgt i64 %indvars.iv871.a, %i.acn
  br i1 %i.aco, label %bb.cw, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558

bb.cw:                                            ; preds = %bb.cv
  %i.acp = icmp slt i32 %i.acm, %i.yd
  br i1 %i.acp, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.acq = load ptr, ptr %i.ye, align 8, !tbaa !150
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.acq, i64 %i.acn
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !151
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.act = phi i32 [ %i.acs, %bb.cx ], [ %i.c, %bb.cw ] ; 3 uses
  %i.acu = sext i32 %i.acm to i64
  %i.acv = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.acu
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !68
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 156
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !143
  %i.acz = icmp eq i32 %i.acy, %i.yv
  %i.ada = shl nsw i32 %i.act, 3
  %i.adb = select i1 %i.acz, i32 %i.ada, i32 0
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %i.acn
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !69 ; 2 uses
  %i.adf = sext i32 %i.ade to i64
  %.idx352 = shl nsw i64 %i.adf, 6
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx352
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.adc
  %i.adi = icmp sgt i32 %i.act, 0
  %or.cond = select i1 %23, i1 %i.adi, i1 false
  br i1 %or.cond, label %.preheader.preheader.i545, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558

.preheader.preheader.i545:                        ; preds = %bb.cy
  %.promoted.i546 = load i32, ptr %i.yh, align 8
  br label %.preheader.i547

.preheader.i547:                                  ; preds = %._crit_edge.i554, %.preheader.preheader.i545
  %24 = phi i32 [ %27, %._crit_edge.i554 ], [ %.promoted.i546, %.preheader.preheader.i545 ]
  %.038.i548 = phi ptr [ %i.adp, %._crit_edge.i554 ], [ %i.ach, %.preheader.preheader.i545 ] ; 7 uses
  %.03437.i549 = phi i32 [ %i.adq, %._crit_edge.i554 ], [ 0, %.preheader.preheader.i545 ] ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.038.i548, i64 4
  %i.adk = getelementptr inbounds nuw i8, ptr %.038.i548, i64 8
  %i.adl = getelementptr inbounds nuw i8, ptr %.038.i548, i64 16
  %i.adm = getelementptr inbounds nuw i8, ptr %.038.i548, i64 20
  %i.adn = getelementptr inbounds nuw i8, ptr %.038.i548, i64 24
  %i.ado = add nsw i32 %.03437.i549, %i.yo
  br label %bb.cz

._crit_edge.i554:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i552
  %i.adp = getelementptr inbounds nuw i8, ptr %.038.i548, i64 32
  %i.adq = add nuw nsw i32 %.03437.i549, 1        ; 2 uses
  %exitcond40.not.i555 = icmp eq i32 %i.adq, %.fr810
  br i1 %exitcond40.not.i555, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558, label %.preheader.i547, !llvm.loop !177

bb.cz:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i552, %.preheader.i547
  %25 = phi i32 [ %24, %.preheader.i547 ], [ %27, %_ZN9btMatrixXIfE7addElemEiif.exit.i552 ] ; 3 uses
  %.03236.i550 = phi i32 [ 0, %.preheader.i547 ], [ %i.afb, %_ZN9btMatrixXIfE7addElemEiif.exit.i552 ] ; 2 uses
  %.03335.i551 = phi ptr [ %i.adh, %.preheader.i547 ], [ %i.afa, %_ZN9btMatrixXIfE7addElemEiif.exit.i552 ] ; 7 uses
  %i.adr = load float, ptr %.038.i548, align 4, !tbaa !103
  %i.ads = load float, ptr %.03335.i551, align 4, !tbaa !103
  %i.adt = fmul float %i.adr, %i.ads
  %i.adu = load float, ptr %i.adj, align 4, !tbaa !103
  %i.adv = getelementptr inbounds nuw i8, ptr %.03335.i551, i64 4
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !103
  %i.adx = call float @llvm.fmuladd.f32(float %i.adu, float %i.adw, float %i.adt)
  %i.ady = load float, ptr %i.adk, align 4, !tbaa !103
  %i.adz = getelementptr inbounds nuw i8, ptr %.03335.i551, i64 8
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !103
  %i.aeb = call float @llvm.fmuladd.f32(float %i.ady, float %i.aea, float %i.adx)
  %i.aec = load float, ptr %i.adl, align 4, !tbaa !103
  %i.aed = getelementptr inbounds nuw i8, ptr %.03335.i551, i64 16
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !103
  %i.aef = call float @llvm.fmuladd.f32(float %i.aec, float %i.aee, float %i.aeb)
  %i.aeg = load float, ptr %i.adm, align 4, !tbaa !103
  %i.aeh = getelementptr inbounds nuw i8, ptr %.03335.i551, i64 20
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !103
  %i.aej = call float @llvm.fmuladd.f32(float %i.aeg, float %i.aei, float %i.aef)
  %i.aek = load float, ptr %i.adn, align 4, !tbaa !103
  %i.ael = getelementptr inbounds nuw i8, ptr %.03335.i551, i64 24
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !103
  %i.aen = call float @llvm.fmuladd.f32(float %i.aek, float %i.aem, float %i.aej) ; 3 uses
  %i.aeo = fcmp une float %i.aen, 0.000000e+00
  br i1 %i.aeo, label %bb.da, label %_ZN9btMatrixXIfE7addElemEiif.exit.i552

bb.da:                                            ; preds = %bb.cz
  %i.aep = add nsw i32 %.03236.i550, %i.ade
  %i.aeq = load i32, ptr %i.yf, align 4, !tbaa !106
  %i.aer = mul nsw i32 %i.aeq, %i.ado
  %i.aes = add nsw i32 %i.aep, %i.aer
  %i.aet = load ptr, ptr %i.yg, align 8, !tbaa !17
  %i.aeu = sext i32 %i.aes to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.aet, i64 %i.aeu ; 2 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !103 ; 2 uses
  %i.aex = fcmp oeq float %i.aew, 0.000000e+00
  br i1 %i.aex, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aey = add nsw i32 %25, 1                     ; 2 uses
  store i32 %i.aey, ptr %i.yh, align 8, !tbaa !160
  br label %.sink.split.i.i556

bb.dc:                                            ; preds = %bb.da
  %i.aez = fadd float %i.aen, %i.aew
  br label %.sink.split.i.i556

.sink.split.i.i556:                               ; preds = %bb.dc, %bb.db
  %26 = phi i32 [ %i.aey, %bb.db ], [ %25, %bb.dc ]
  %.sink.i.i557 = phi float [ %i.aen, %bb.db ], [ %i.aez, %bb.dc ]
  store float %.sink.i.i557, ptr %i.aev, align 4, !tbaa !103
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i552

_ZN9btMatrixXIfE7addElemEiif.exit.i552:           ; preds = %.sink.split.i.i556, %bb.cz
  %27 = phi i32 [ %25, %bb.cz ], [ %26, %.sink.split.i.i556 ] ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.03335.i551, i64 32
  %i.afb = add nuw nsw i32 %.03236.i550, 1        ; 2 uses
  %exitcond.not.i553 = icmp eq i32 %i.afb, %i.act
  br i1 %exitcond.not.i553, label %._crit_edge.i554, label %bb.cz, !llvm.loop !176

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558: ; preds = %._crit_edge.i554, %bb.cy, %bb.cv
  %i.afc = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %.0276 = load i32, ptr %i.afc, align 4, !tbaa !69 ; 2 uses
  %i.afd = icmp sgt i32 %.0276, -1
  br i1 %i.afd, label %bb.cv, label %._crit_edge790, !llvm.loop !179

._crit_edge790:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit558, %._crit_edge785
  %i.afe = add nsw i32 %.fr810, %.0278793         ; 2 uses
  %indvars.iv.next872.a = add nuw nsw i64 %indvars.iv871.a, 1
  %i.aff = icmp slt i32 %i.afe, %i.xw
  br i1 %i.aff, label %bb.cm, label %._crit_edge795, !llvm.loop !180

bb.dd:                                            ; preds = %._crit_edge795
  %i.afg = load i32, ptr %i.d, align 4, !tbaa !40 ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, 0
  br i1 %i.afh, label %.lr.ph800, label %._crit_edge801

.lr.ph800:                                        ; preds = %bb.dd
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !39
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !144
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !67
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %scevgep1030 = getelementptr i8, ptr %i.mo, i64 28
  %scevgep1035 = getelementptr i8, ptr %i.ms, i64 -4
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph800, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584
  %indvars.iv874 = phi i64 [ 0, %.lr.ph800 ], [ %indvars.iv.next875, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584 ] ; 2 uses
  %.0275796 = phi i32 [ 0, %.lr.ph800 ], [ %i.aog, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584 ] ; 8 uses
  %i.afs = sext i32 %.0275796 to i64              ; 3 uses
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.afj, i64 %i.afs
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !68
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 156
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !143
  %i.afx = sext i32 %i.afw to i64
  %i.afy = getelementptr inbounds [248 x i8], ptr %i.afl, i64 %i.afx
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 240
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !145
  %i.agb = icmp slt i32 %.0275796, %i.afn
  br i1 %i.agb, label %bb.df, label %.preheader.lr.ph.i559

bb.df:                                            ; preds = %bb.de
  %i.agc = load ptr, ptr %i.afo, align 8, !tbaa !150
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv874
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !151 ; 3 uses
  %i.agf = icmp sgt i32 %i.age, 0
  br i1 %i.agf, label %.preheader.lr.ph.i559, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584

.preheader.lr.ph.i559:                            ; preds = %bb.de, %bb.df
  %i.agg = phi i32 [ %i.age, %bb.df ], [ %i.c, %bb.de ] ; 11 uses
  %.pn961 = shl nsw i64 %i.afs, 4                 ; 2 uses
  %i.agh = getelementptr [4 x i8], ptr %i.mo, i64 %.pn961 ; 3 uses
  %i.agi = getelementptr [4 x i8], ptr %i.ms, i64 %.pn961 ; 10 uses
  %i.agj = load i32, ptr %i.afq, align 4          ; 3 uses
  %i.agk = load ptr, ptr %i.afr, align 8          ; 4 uses
  %.promoted40.i = load i32, ptr %i.afp, align 8
  %wide.trip.count.i561 = zext nneg i32 %i.agg to i64 ; 6 uses
  %i.agl = add nsw i64 %wide.trip.count.i561, -1  ; 2 uses
  %i.agm = shl nsw i64 %i.afs, 6                  ; 2 uses
  %i.agn = add nsw i32 %i.agg, -1
  %i.ago = zext i32 %i.agn to i64
  %i.agp = shl nuw nsw i64 %i.ago, 5
  %i.agq = getelementptr i8, ptr %scevgep1030, i64 %i.agm
  %scevgep1031 = getelementptr i8, ptr %i.agq, i64 %i.agp
  %i.agr = add i32 %i.agj, 1
  %i.ags = mul i32 %.0275796, %i.agr
  %i.agt = shl nuw nsw i64 %wide.trip.count.i561, 2
  %scevgep1033 = getelementptr i8, ptr %i.agk, i64 %i.agt
  %i.agu = shl nuw nsw i64 %wide.trip.count.i561, 5
  %i.agv = getelementptr i8, ptr %scevgep1035, i64 %i.agm
  %scevgep1036 = getelementptr i8, ptr %i.agv, i64 %i.agu
  %min.iters.check1041 = icmp samesign ult i32 %i.agg, 5
  %i.agw = trunc nsw i64 %i.agl to i32
  %i.agx = icmp ugt i64 %i.agl, 4294967295
  %i.agy = and i64 %wide.trip.count.i561, 3       ; 2 uses
  %i.agz = icmp eq i64 %i.agy, 0
  %i.aha = select i1 %i.agz, i64 4, i64 %i.agy
  %n.vec1043 = sub nsw i64 %wide.trip.count.i561, %i.aha ; 3 uses
  %i.ahb = shl nsw i64 %n.vec1043, 5
  %i.ahc = getelementptr i8, ptr %i.agi, i64 %i.ahb
  br label %.preheader.i562

.preheader.i562:                                  ; preds = %._crit_edge.i569, %.preheader.lr.ph.i559
  %.038.i563 = phi ptr [ %i.alc, %._crit_edge.i569 ], [ %i.agh, %.preheader.lr.ph.i559 ] ; 8 uses
  %.03437.i564 = phi i32 [ %i.ald, %._crit_edge.i569 ], [ 0, %.preheader.lr.ph.i559 ] ; 3 uses
  %i.ahd = mul i32 %i.agj, %.03437.i564
  %i.ahe = add i32 %i.ags, %i.ahd
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = shl nsw i64 %i.ahf, 2                  ; 2 uses
  %scevgep1032 = getelementptr i8, ptr %i.agk, i64 %i.ahg ; 2 uses
  %scevgep1034 = getelementptr i8, ptr %scevgep1033, i64 %i.ahg ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.038.i563, i64 4 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.038.i563, i64 8 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.038.i563, i64 16 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.038.i563, i64 20 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.038.i563, i64 24 ; 2 uses
  %i.ahm = add nsw i32 %.03437.i564, %.0275796
  %i.ahn = mul nsw i32 %i.ahm, %i.agj
  %invariant.op.i = add i32 %i.ahn, %.0275796     ; 4 uses
  br i1 %min.iters.check1041, label %scalar.ph1040.preheader, label %vector.scevcheck

scalar.ph1040.preheader:                          ; preds = %vector.body1044, %vector.memcheck1029, %vector.scevcheck, %.preheader.i562
  %indvars.iv.i565.ph = phi i64 [ 0, %vector.memcheck1029 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i562 ], [ %n.vec1043, %vector.body1044 ]
  %.03335.i566.ph = phi ptr [ %i.agi, %vector.memcheck1029 ], [ %i.agi, %vector.scevcheck ], [ %i.agi, %.preheader.i562 ], [ %i.ahc, %vector.body1044 ]
  br label %scalar.ph1040

vector.scevcheck:                                 ; preds = %.preheader.i562
  %i.aho = add i32 %invariant.op.i, %i.agw
  %i.ahp = icmp slt i32 %i.aho, %invariant.op.i
  %i.ahq = or i1 %i.ahp, %i.agx
  br i1 %i.ahq, label %scalar.ph1040.preheader, label %vector.memcheck1029

vector.memcheck1029:                              ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.agh, %scevgep1034
  %bound1 = icmp ult ptr %scevgep1032, %scevgep1031
  %found.conflict = and i1 %bound0, %bound1
  %bound01037 = icmp ult ptr %i.agi, %scevgep1034
  %bound11038 = icmp ult ptr %scevgep1032, %scevgep1036
  %found.conflict1039 = and i1 %bound01037, %bound11038
  %conflict.rdx = or i1 %found.conflict, %found.conflict1039
  br i1 %conflict.rdx, label %scalar.ph1040.preheader, label %vector.ph1042

vector.ph1042:                                    ; preds = %vector.memcheck1029
  %i.ahr = load float, ptr %.038.i563, align 4, !tbaa !103, !alias.scope !181, !noalias !184
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ahr, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahs = load float, ptr %i.ahh, align 4, !tbaa !103, !alias.scope !181, !noalias !184
  %broadcast.splatinsert1049 = insertelement <4 x float> poison, float %i.ahs, i64 0
  %broadcast.splat1050 = shufflevector <4 x float> %broadcast.splatinsert1049, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aht = load float, ptr %i.ahi, align 4, !tbaa !103, !alias.scope !181, !noalias !184
  %broadcast.splatinsert1051 = insertelement <4 x float> poison, float %i.aht, i64 0
  %broadcast.splat1052 = shufflevector <4 x float> %broadcast.splatinsert1051, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahu = load float, ptr %i.ahj, align 4, !tbaa !103, !alias.scope !181, !noalias !184
  %broadcast.splatinsert1053 = insertelement <4 x float> poison, float %i.ahu, i64 0
  %broadcast.splat1054 = shufflevector <4 x float> %broadcast.splatinsert1053, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahv = load float, ptr %i.ahk, align 4, !tbaa !103, !alias.scope !181, !noalias !184
  %broadcast.splatinsert1055 = insertelement <4 x float> poison, float %i.ahv, i64 0
  %broadcast.splat1056 = shufflevector <4 x float> %broadcast.splatinsert1055, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahw = load float, ptr %i.ahl, align 4, !tbaa !103, !alias.scope !181, !noalias !184
  %broadcast.splatinsert1057 = insertelement <4 x float> poison, float %i.ahw, i64 0
  %broadcast.splat1058 = shufflevector <4 x float> %broadcast.splatinsert1057, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %vector.ph1042
  %index1045 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1059, %vector.body1044 ] ; 3 uses
  %i.ahx = shl i64 %index1045, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.agi, i64 %i.ahx ; 6 uses
  %i.ahy = getelementptr i8, ptr %i.agi, i64 %i.ahx ; 6 uses
  %next.gep1046 = getelementptr i8, ptr %i.ahy, i64 32
  %i.ahz = getelementptr i8, ptr %i.agi, i64 %i.ahx ; 6 uses
  %next.gep1047 = getelementptr i8, ptr %i.ahz, i64 64
  %i.aia = getelementptr i8, ptr %i.agi, i64 %i.ahx ; 6 uses
  %next.gep1048 = getelementptr i8, ptr %i.aia, i64 96
  %i.aib = load float, ptr %next.gep, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aic = load float, ptr %next.gep1046, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aid = load float, ptr %next.gep1047, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aie = load float, ptr %next.gep1048, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aif = insertelement <4 x float> poison, float %i.aib, i64 0
  %i.aig = insertelement <4 x float> %i.aif, float %i.aic, i64 1
  %i.aih = insertelement <4 x float> %i.aig, float %i.aid, i64 2
  %i.aii = insertelement <4 x float> %i.aih, float %i.aie, i64 3
  %i.aij = fmul <4 x float> %broadcast.splat, %i.aii
  %i.aik = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ail = getelementptr i8, ptr %i.ahy, i64 36
  %i.aim = getelementptr i8, ptr %i.ahz, i64 68
  %i.ain = getelementptr i8, ptr %i.aia, i64 100
  %i.aio = load float, ptr %i.aik, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aip = load float, ptr %i.ail, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aiq = load float, ptr %i.aim, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.air = load float, ptr %i.ain, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ais = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.ait = insertelement <4 x float> %i.ais, float %i.aip, i64 1
  %i.aiu = insertelement <4 x float> %i.ait, float %i.aiq, i64 2
  %i.aiv = insertelement <4 x float> %i.aiu, float %i.air, i64 3
  %i.aiw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1050, <4 x float> %i.aiv, <4 x float> %i.aij)
  %i.aix = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.aiy = getelementptr i8, ptr %i.ahy, i64 40
  %i.aiz = getelementptr i8, ptr %i.ahz, i64 72
  %i.aja = getelementptr i8, ptr %i.aia, i64 104
  %i.ajb = load float, ptr %i.aix, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajc = load float, ptr %i.aiy, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajd = load float, ptr %i.aiz, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aje = load float, ptr %i.aja, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajf = insertelement <4 x float> poison, float %i.ajb, i64 0
  %i.ajg = insertelement <4 x float> %i.ajf, float %i.ajc, i64 1
  %i.ajh = insertelement <4 x float> %i.ajg, float %i.ajd, i64 2
  %i.aji = insertelement <4 x float> %i.ajh, float %i.aje, i64 3
  %i.ajj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1052, <4 x float> %i.aji, <4 x float> %i.aiw)
  %i.ajk = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ajl = getelementptr i8, ptr %i.ahy, i64 48
  %i.ajm = getelementptr i8, ptr %i.ahz, i64 80
  %i.ajn = getelementptr i8, ptr %i.aia, i64 112
  %i.ajo = load float, ptr %i.ajk, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajp = load float, ptr %i.ajl, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajq = load float, ptr %i.ajm, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajr = load float, ptr %i.ajn, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ajs = insertelement <4 x float> poison, float %i.ajo, i64 0
  %i.ajt = insertelement <4 x float> %i.ajs, float %i.ajp, i64 1
  %i.aju = insertelement <4 x float> %i.ajt, float %i.ajq, i64 2
  %i.ajv = insertelement <4 x float> %i.aju, float %i.ajr, i64 3
  %i.ajw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1054, <4 x float> %i.ajv, <4 x float> %i.ajj)
  %i.ajx = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.ajy = getelementptr i8, ptr %i.ahy, i64 52
  %i.ajz = getelementptr i8, ptr %i.ahz, i64 84
  %i.aka = getelementptr i8, ptr %i.aia, i64 116
  %i.akb = load float, ptr %i.ajx, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.akc = load float, ptr %i.ajy, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.akd = load float, ptr %i.ajz, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.ake = load float, ptr %i.aka, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.akf = insertelement <4 x float> poison, float %i.akb, i64 0
  %i.akg = insertelement <4 x float> %i.akf, float %i.akc, i64 1
  %i.akh = insertelement <4 x float> %i.akg, float %i.akd, i64 2
  %i.aki = insertelement <4 x float> %i.akh, float %i.ake, i64 3
  %i.akj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1056, <4 x float> %i.aki, <4 x float> %i.ajw)
  %i.akk = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.akl = getelementptr i8, ptr %i.ahy, i64 56
  %i.akm = getelementptr i8, ptr %i.ahz, i64 88
  %i.akn = getelementptr i8, ptr %i.aia, i64 120
  %i.ako = load float, ptr %i.akk, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.akp = load float, ptr %i.akl, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.akq = load float, ptr %i.akm, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.akr = load float, ptr %i.akn, align 4, !tbaa !103, !alias.scope !186, !noalias !184
  %i.aks = insertelement <4 x float> poison, float %i.ako, i64 0
  %i.akt = insertelement <4 x float> %i.aks, float %i.akp, i64 1
  %i.aku = insertelement <4 x float> %i.akt, float %i.akq, i64 2
  %i.akv = insertelement <4 x float> %i.aku, float %i.akr, i64 3
  %i.akw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1058, <4 x float> %i.akv, <4 x float> %i.akj)
  %i.akx = trunc nuw nsw i64 %index1045 to i32
  %i.aky = add i32 %invariant.op.i, %i.akx
  %i.akz = sext i32 %i.aky to i64
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.agk, i64 %i.akz
  store <4 x float> %i.akw, ptr %i.ala, align 4, !tbaa !103, !alias.scope !184
  %index.next1059 = add nuw i64 %index1045, 4     ; 2 uses
  %i.alb = icmp eq i64 %index.next1059, %n.vec1043
  br i1 %i.alb, label %scalar.ph1040.preheader, label %vector.body1044, !llvm.loop !188

._crit_edge.i569:                                 ; preds = %scalar.ph1040
  %i.alc = getelementptr inbounds nuw i8, ptr %.038.i563, i64 32
  %i.ald = add nuw nsw i32 %.03437.i564, 1        ; 2 uses
  %exitcond44.not.i = icmp eq i32 %i.ald, %i.agg
  br i1 %exitcond44.not.i, label %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit, label %.preheader.i562, !llvm.loop !189

scalar.ph1040:                                    ; preds = %scalar.ph1040.preheader, %scalar.ph1040
  %indvars.iv.i565 = phi i64 [ %indvars.iv.next.i567, %scalar.ph1040 ], [ %indvars.iv.i565.ph, %scalar.ph1040.preheader ] ; 2 uses
  %.03335.i566 = phi ptr [ %i.ame, %scalar.ph1040 ], [ %.03335.i566.ph, %scalar.ph1040.preheader ] ; 7 uses
  %i.ale = load float, ptr %.038.i563, align 4, !tbaa !103
  %i.alf = load float, ptr %.03335.i566, align 4, !tbaa !103
  %i.alg = fmul float %i.ale, %i.alf
  %i.alh = load float, ptr %i.ahh, align 4, !tbaa !103
  %i.ali = getelementptr inbounds nuw i8, ptr %.03335.i566, i64 4
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !103
  %i.alk = call float @llvm.fmuladd.f32(float %i.alh, float %i.alj, float %i.alg)
  %i.all = load float, ptr %i.ahi, align 4, !tbaa !103
  %i.alm = getelementptr inbounds nuw i8, ptr %.03335.i566, i64 8
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !103
  %i.alo = call float @llvm.fmuladd.f32(float %i.all, float %i.aln, float %i.alk)
  %i.alp = load float, ptr %i.ahj, align 4, !tbaa !103
  %i.alq = getelementptr inbounds nuw i8, ptr %.03335.i566, i64 16
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !103
  %i.als = call float @llvm.fmuladd.f32(float %i.alp, float %i.alr, float %i.alo)
  %i.alt = load float, ptr %i.ahk, align 4, !tbaa !103
  %i.alu = getelementptr inbounds nuw i8, ptr %.03335.i566, i64 20
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !103
  %i.alw = call float @llvm.fmuladd.f32(float %i.alt, float %i.alv, float %i.als)
  %i.alx = load float, ptr %i.ahl, align 4, !tbaa !103
  %i.aly = getelementptr inbounds nuw i8, ptr %.03335.i566, i64 24
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !103
  %i.ama = call float @llvm.fmuladd.f32(float %i.alx, float %i.alz, float %i.alw)
  %i.amb = trunc nuw nsw i64 %indvars.iv.i565 to i32
  %.reass.i = add i32 %invariant.op.i, %i.amb
  %i.amc = sext i32 %.reass.i to i64
  %i.amd = getelementptr inbounds [4 x i8], ptr %i.agk, i64 %i.amc
  store float %i.ama, ptr %i.amd, align 4, !tbaa !103
  %i.ame = getelementptr inbounds nuw i8, ptr %.03335.i566, i64 32
  %indvars.iv.next.i567 = add nuw nsw i64 %indvars.iv.i565, 1 ; 2 uses
  %exitcond.not.i568 = icmp eq i64 %indvars.iv.next.i567, %wide.trip.count.i561
  br i1 %exitcond.not.i568, label %._crit_edge.i569, label %scalar.ph1040, !llvm.loop !190

_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit:  ; preds = %._crit_edge.i569
  %i.amf = mul i32 %i.agg, %i.agg
  %i.amg = add i32 %.promoted40.i, %i.amf
  store i32 %i.amg, ptr %i.afp, align 8, !tbaa !160
  %.not348 = icmp eq ptr %i.aga, null
  br i1 %.not348, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584, label %.preheader.lr.ph.i570

.preheader.lr.ph.i570:                            ; preds = %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit
  %i.amh = zext nneg i32 %i.agg to i64
  %i.ami = shl nuw nsw i64 %i.amh, 3              ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %i.ami
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.ami
  %.promoted.i572 = load i32, ptr %i.afp, align 8
  br label %.preheader.i573

.preheader.i573:                                  ; preds = %._crit_edge.i580, %.preheader.lr.ph.i570
  %28 = phi i32 [ %31, %._crit_edge.i580 ], [ %.promoted.i572, %.preheader.lr.ph.i570 ]
  %.038.i574 = phi ptr [ %i.amr, %._crit_edge.i580 ], [ %i.amk, %.preheader.lr.ph.i570 ] ; 7 uses
  %.03437.i575 = phi i32 [ %i.ams, %._crit_edge.i580 ], [ 0, %.preheader.lr.ph.i570 ] ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.038.i574, i64 4
  %i.amm = getelementptr inbounds nuw i8, ptr %.038.i574, i64 8
  %i.amn = getelementptr inbounds nuw i8, ptr %.038.i574, i64 16
  %i.amo = getelementptr inbounds nuw i8, ptr %.038.i574, i64 20
  %i.amp = getelementptr inbounds nuw i8, ptr %.038.i574, i64 24
  %i.amq = add nsw i32 %.03437.i575, %.0275796
  br label %bb.dg

._crit_edge.i580:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i578
  %i.amr = getelementptr inbounds nuw i8, ptr %.038.i574, i64 32
  %i.ams = add nuw nsw i32 %.03437.i575, 1        ; 2 uses
  %exitcond40.not.i581 = icmp eq i32 %i.ams, %i.agg
  br i1 %exitcond40.not.i581, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584, label %.preheader.i573, !llvm.loop !177

bb.dg:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i578, %.preheader.i573
  %29 = phi i32 [ %28, %.preheader.i573 ], [ %31, %_ZN9btMatrixXIfE7addElemEiif.exit.i578 ] ; 3 uses
  %.03236.i576 = phi i32 [ 0, %.preheader.i573 ], [ %i.aod, %_ZN9btMatrixXIfE7addElemEiif.exit.i578 ] ; 2 uses
  %.03335.i577 = phi ptr [ %i.amj, %.preheader.i573 ], [ %i.aoc, %_ZN9btMatrixXIfE7addElemEiif.exit.i578 ] ; 7 uses
  %i.amt = load float, ptr %.038.i574, align 4, !tbaa !103
  %i.amu = load float, ptr %.03335.i577, align 4, !tbaa !103
  %i.amv = fmul float %i.amt, %i.amu
  %i.amw = load float, ptr %i.aml, align 4, !tbaa !103
  %i.amx = getelementptr inbounds nuw i8, ptr %.03335.i577, i64 4
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !103
  %i.amz = call float @llvm.fmuladd.f32(float %i.amw, float %i.amy, float %i.amv)
  %i.ana = load float, ptr %i.amm, align 4, !tbaa !103
  %i.anb = getelementptr inbounds nuw i8, ptr %.03335.i577, i64 8
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !103
  %i.and = call float @llvm.fmuladd.f32(float %i.ana, float %i.anc, float %i.amz)
  %i.ane = load float, ptr %i.amn, align 4, !tbaa !103
  %i.anf = getelementptr inbounds nuw i8, ptr %.03335.i577, i64 16
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !103
  %i.anh = call float @llvm.fmuladd.f32(float %i.ane, float %i.ang, float %i.and)
  %i.ani = load float, ptr %i.amo, align 4, !tbaa !103
  %i.anj = getelementptr inbounds nuw i8, ptr %.03335.i577, i64 20
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !103
  %i.anl = call float @llvm.fmuladd.f32(float %i.ani, float %i.ank, float %i.anh)
  %i.anm = load float, ptr %i.amp, align 4, !tbaa !103
  %i.ann = getelementptr inbounds nuw i8, ptr %.03335.i577, i64 24
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !103
  %i.anp = call float @llvm.fmuladd.f32(float %i.anm, float %i.ano, float %i.anl) ; 3 uses
  %i.anq = fcmp une float %i.anp, 0.000000e+00
  br i1 %i.anq, label %bb.dh, label %_ZN9btMatrixXIfE7addElemEiif.exit.i578

bb.dh:                                            ; preds = %bb.dg
  %i.anr = add nsw i32 %.03236.i576, %.0275796
  %i.ans = load i32, ptr %i.afq, align 4, !tbaa !106
  %i.ant = mul nsw i32 %i.ans, %i.amq
  %i.anu = add nsw i32 %i.anr, %i.ant
  %i.anv = load ptr, ptr %i.afr, align 8, !tbaa !17
  %i.anw = sext i32 %i.anu to i64
  %i.anx = getelementptr inbounds [4 x i8], ptr %i.anv, i64 %i.anw ; 2 uses
  %i.any = load float, ptr %i.anx, align 4, !tbaa !103 ; 2 uses
  %i.anz = fcmp oeq float %i.any, 0.000000e+00
  br i1 %i.anz, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aoa = add nsw i32 %29, 1                     ; 2 uses
  store i32 %i.aoa, ptr %i.afp, align 8, !tbaa !160
  br label %.sink.split.i.i582

bb.dj:                                            ; preds = %bb.dh
  %i.aob = fadd float %i.anp, %i.any
  br label %.sink.split.i.i582

.sink.split.i.i582:                               ; preds = %bb.dj, %bb.di
  %30 = phi i32 [ %i.aoa, %bb.di ], [ %29, %bb.dj ]
  %.sink.i.i583 = phi float [ %i.anp, %bb.di ], [ %i.aob, %bb.dj ]
  store float %.sink.i.i583, ptr %i.anx, align 4, !tbaa !103
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i578

_ZN9btMatrixXIfE7addElemEiif.exit.i578:           ; preds = %.sink.split.i.i582, %bb.dg
  %31 = phi i32 [ %29, %bb.dg ], [ %30, %.sink.split.i.i582 ] ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.03335.i577, i64 32
  %i.aod = add nuw nsw i32 %.03236.i576, 1        ; 2 uses
  %exitcond.not.i579 = icmp eq i32 %i.aod, %i.agg
  br i1 %exitcond.not.i579, label %._crit_edge.i580, label %bb.dg, !llvm.loop !176

bb.dk:                                            ; preds = %._crit_edge795
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #14
  br label %bb.dm

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584: ; preds = %._crit_edge.i580, %bb.df, %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit
  %i.aof = phi i32 [ %i.age, %bb.df ], [ %i.agg, %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit ], [ %i.agg, %._crit_edge.i580 ]
  %i.aog = add i32 %i.aof, %.0275796              ; 2 uses
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1
  %i.aoh = icmp slt i32 %i.aog, %i.afg
  br i1 %i.aoh, label %bb.de, label %._crit_edge801, !llvm.loop !191

._crit_edge801:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit584, %bb.dd
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.aoi = load i32, ptr %i.xp, align 8, !tbaa !105 ; 5 uses
  %i.aoj = icmp sgt i32 %i.aoi, 0
  br i1 %i.aoj, label %.lr.ph804, label %bb.dl

.lr.ph804:                                        ; preds = %._crit_edge801
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !106
  %i.aom = add i32 %i.aol, 1                      ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !17 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %.promoted806 = load i32, ptr %i.aor, align 8, !tbaa !160
  %wide.trip.count880 = zext nneg i32 %i.aoi to i64 ; 2 uses
  %xtraiter1147 = and i64 %wide.trip.count880, 1
  %i.aos = icmp eq i32 %i.aoi, 1
  br i1 %i.aos, label %.epil.preheader1146, label %.lr.ph804.new

.lr.ph804.new:                                    ; preds = %.lr.ph804
  %unroll_iter1150 = and i64 %wide.trip.count880, 2147483646
  br label %bb.dn

._crit_edge805.unr-lcssa:                         ; preds = %bb.dn
  %lcmp.mod1148.not = icmp eq i64 %xtraiter1147, 0
  br i1 %lcmp.mod1148.not, label %._crit_edge805, label %.epil.preheader1146

.epil.preheader1146:                              ; preds = %._crit_edge805.unr-lcssa, %.lr.ph804
  %indvars.iv877.epil.init = phi i64 [ 0, %.lr.ph804 ], [ %indvars.iv.next878.1, %._crit_edge805.unr-lcssa ]
  %lcmp.mod1149 = trunc i32 %i.aoi to i1
  call void @llvm.assume(i1 %lcmp.mod1149)
  %i.aot = trunc nuw nsw i64 %indvars.iv877.epil.init to i32
  %i.aou = mul i32 %i.aom, %i.aot
  %i.aov = sext i32 %i.aou to i64
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.aov ; 2 uses
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !103
  %i.aoy = load float, ptr %i.aop, align 4, !tbaa !192
  %i.aoz = load float, ptr %i.aoq, align 4, !tbaa !193
  %i.apa = fdiv float %i.aoy, %i.aoz
  %i.apb = fadd float %i.aox, %i.apa
  store float %i.apb, ptr %i.aow, align 4, !tbaa !103
  br label %._crit_edge805

._crit_edge805:                                   ; preds = %._crit_edge805.unr-lcssa, %.epil.preheader1146
  %i.apc = add i32 %i.aoi, %.promoted806
  store i32 %i.apc, ptr %i.aor, align 8, !tbaa !160
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge805, %._crit_edge801
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull @.str.15)
          to label %bb.do unwind label %bb.eb

bb.dm:                                            ; preds = %bb.dk, %bb.cl
  %.pn354.pn.pn = phi { ptr, i32 } [ %i.aoe, %bb.dk ], [ %i.ym, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %bb.el

bb.dn:                                            ; preds = %bb.dn, %.lr.ph804.new
  %indvars.iv877 = phi i64 [ 0, %.lr.ph804.new ], [ %indvars.iv.next878.1, %bb.dn ] ; 3 uses
  %niter1151 = phi i64 [ 0, %.lr.ph804.new ], [ %niter1151.next.1, %bb.dn ]
  %i.apd = trunc nuw nsw i64 %indvars.iv877 to i32
  %i.ape = mul i32 %i.aom, %i.apd
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.apf ; 2 uses
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !103
  %i.api = load float, ptr %i.aop, align 4, !tbaa !192
  %i.apj = load float, ptr %i.aoq, align 4, !tbaa !193
  %i.apk = fdiv float %i.api, %i.apj
  %i.apl = fadd float %i.aph, %i.apk
  store float %i.apl, ptr %i.apg, align 4, !tbaa !103
  %i.apm = trunc i64 %indvars.iv877 to i32
  %i.apn = or disjoint i32 %i.apm, 1
  %i.apo = mul i32 %i.aom, %i.apn
  %i.app = sext i32 %i.apo to i64
  %i.apq = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.app ; 2 uses
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !103
  %i.aps = load float, ptr %i.aop, align 4, !tbaa !192
  %i.apt = load float, ptr %i.aoq, align 4, !tbaa !193
  %i.apu = fdiv float %i.aps, %i.apt
  %i.apv = fadd float %i.apr, %i.apu
  store float %i.apv, ptr %i.apq, align 4, !tbaa !103
  %indvars.iv.next878.1 = add nuw nsw i64 %indvars.iv877, 2 ; 2 uses
  %niter1151.next.1 = add i64 %niter1151, 2       ; 2 uses
  %niter1151.ncmp.1 = icmp eq i64 %niter1151.next.1, %unroll_iter1150
  br i1 %niter1151.ncmp.1, label %._crit_edge805.unr-lcssa, label %bb.dn, !llvm.loop !194

bb.do:                                            ; preds = %bb.dl
  %i.apw = load i32, ptr %i.xp, align 8, !tbaa !105 ; 2 uses
  %i.apx = icmp sgt i32 %i.apw, 0
  br i1 %i.apx, label %.preheader.lr.ph.i585, label %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit

.preheader.lr.ph.i585:                            ; preds = %bb.do
  %i.apy = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.apz = load i32, ptr %i.apy, align 4          ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.aqb = load ptr, ptr %i.aqa, align 8          ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %.promoted17.i = load i32, ptr %i.aqc, align 8
  %i.aqd = sext i32 %i.apz to i64                 ; 6 uses
  %wide.trip.count25.i = zext nneg i32 %i.apw to i64
  %ident.check.not = icmp eq i32 %i.apz, 1
  br label %.preheader.i586

.preheader.i586:                                  ; preds = %bb.dp, %.preheader.lr.ph.i585
  %indvars.iv22.i = phi i64 [ 0, %.preheader.lr.ph.i585 ], [ %indvars.iv.next23.i, %bb.dp ] ; 11 uses
  %.lcssa19.i = phi i32 [ %.promoted17.i, %.preheader.lr.ph.i585 ], [ %.lcssa18.i, %bb.dp ] ; 2 uses
  %.not.i587 = icmp eq i64 %indvars.iv22.i, 0
  br i1 %.not.i587, label %bb.dp, label %.lr.ph.i588

.lr.ph.i588:                                      ; preds = %.preheader.i586
  %i.aqe = mul nsw i64 %indvars.iv22.i, %i.aqd
  %i.aqf = getelementptr [4 x i8], ptr %i.aqb, i64 %i.aqe ; 6 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.aqb, i64 %indvars.iv22.i ; 6 uses
  %min.iters.check1065.a = icmp samesign ugt i64 %indvars.iv22.i, 7
  %or.cond1111 = select i1 %min.iters.check1065.a, i1 %ident.check.not, i1 false
  br i1 %or.cond1111, label %vector.ph1066.a, label %scalar.ph1064.preheader.a

vector.ph1066.a:                                  ; preds = %.lr.ph.i588
  %n.vec1067.a = and i64 %indvars.iv22.i, 9223372036854775800 ; 3 uses
  br label %vector.body1068.a

vector.body1068.a:                                ; preds = %vector.body1068.a, %vector.ph1066.a
  %index1069.a = phi i64 [ 0, %vector.ph1066.a ], [ %index.next1072.a, %vector.body1068.a ] ; 3 uses
  %i.aqg = getelementptr [4 x i8], ptr %i.aqf, i64 %index1069.a ; 2 uses
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 16
  %wide.load1070.a = load <4 x float>, ptr %i.aqg, align 4, !tbaa !103
  %wide.load1071.a = load <4 x float>, ptr %i.aqh, align 4, !tbaa !103
  %i.aqi = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index1069.a ; 2 uses
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 16
  store <4 x float> %wide.load1070.a, ptr %i.aqi, align 4, !tbaa !103
  store <4 x float> %wide.load1071.a, ptr %i.aqj, align 4, !tbaa !103
  %index.next1072.a = add nuw i64 %index1069.a, 8 ; 2 uses
  %i.aqk = icmp eq i64 %index.next1072.a, %n.vec1067.a
  br i1 %i.aqk, label %middle.block1073.a, label %vector.body1068.a, !llvm.loop !195

middle.block1073.a:                               ; preds = %vector.body1068.a
  %cmp.n1074.a = icmp eq i64 %indvars.iv22.i, %n.vec1067.a
  br i1 %cmp.n1074.a, label %._crit_edge.i592, label %scalar.ph1064.preheader.a

scalar.ph1064.preheader.a:                        ; preds = %.lr.ph.i588, %middle.block1073.a
  %indvars.iv.i589.ph = phi i64 [ 0, %.lr.ph.i588 ], [ %n.vec1067.a, %middle.block1073.a ] ; 3 uses
  %xtraiter1152 = and i64 %indvars.iv22.i, 3      ; 2 uses
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1152, 0
  br i1 %lcmp.mod1153.not, label %scalar.ph1064.prol.loopexit.a, label %scalar.ph1064.prol.a

scalar.ph1064.prol.a:                             ; preds = %scalar.ph1064.preheader.a, %scalar.ph1064.prol.a
  %indvars.iv.i589.prol = phi i64 [ %indvars.iv.next.i590.prol, %scalar.ph1064.prol.a ], [ %indvars.iv.i589.ph, %scalar.ph1064.preheader.a ] ; 3 uses
  %prol.iter1154 = phi i64 [ %prol.iter1154.next, %scalar.ph1064.prol.a ], [ 0, %scalar.ph1064.preheader.a ]
  %i.aql = getelementptr [4 x i8], ptr %i.aqf, i64 %indvars.iv.i589.prol
  %i.aqm = load float, ptr %i.aql, align 4, !tbaa !103
  %i.aqn = mul nsw i64 %indvars.iv.i589.prol, %i.aqd
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqn
  store float %i.aqm, ptr %gep.i.prol, align 4, !tbaa !103
  %indvars.iv.next.i590.prol = add nuw nsw i64 %indvars.iv.i589.prol, 1 ; 2 uses
  %prol.iter1154.next = add i64 %prol.iter1154, 1 ; 2 uses
  %prol.iter1154.cmp.not = icmp eq i64 %prol.iter1154.next, %xtraiter1152
  br i1 %prol.iter1154.cmp.not, label %scalar.ph1064.prol.loopexit.a, label %scalar.ph1064.prol.a, !llvm.loop !196

scalar.ph1064.prol.loopexit.a:                    ; preds = %scalar.ph1064.prol.a, %scalar.ph1064.preheader.a
  %indvars.iv.i589.unr = phi i64 [ %indvars.iv.i589.ph, %scalar.ph1064.preheader.a ], [ %indvars.iv.next.i590.prol, %scalar.ph1064.prol.a ]
  %i.aqo = sub nsw i64 %indvars.iv.i589.ph, %indvars.iv22.i
  %i.aqp = icmp ugt i64 %i.aqo, -4
  br i1 %i.aqp, label %._crit_edge.i592, label %scalar.ph1064.a

._crit_edge.i592:                                 ; preds = %scalar.ph1064.prol.loopexit.a, %scalar.ph1064.a, %middle.block1073.a
  %i.aqq = trunc nuw nsw i64 %indvars.iv22.i to i32
  %i.aqr = add i32 %.lcssa19.i, %i.aqq            ; 2 uses
  store i32 %i.aqr, ptr %i.aqc, align 8, !tbaa !160
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.i592, %.preheader.i586
  %.lcssa18.i = phi i32 [ %i.aqr, %._crit_edge.i592 ], [ %.lcssa19.i, %.preheader.i586 ]
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count25.i
  br i1 %exitcond26.not.i, label %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit, label %.preheader.i586, !llvm.loop !197

scalar.ph1064.a:                                  ; preds = %scalar.ph1064.prol.loopexit.a, %scalar.ph1064.a
  %indvars.iv.i589 = phi i64 [ %indvars.iv.next.i590.3, %scalar.ph1064.a ], [ %indvars.iv.i589.unr, %scalar.ph1064.prol.loopexit.a ] ; 6 uses
  %i.aqs = getelementptr [4 x i8], ptr %i.aqf, i64 %indvars.iv.i589
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !103
  %i.aqu = mul nsw i64 %indvars.iv.i589, %i.aqd
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqu
  store float %i.aqt, ptr %gep.i, align 4, !tbaa !103
  %indvars.iv.next.i590 = add nuw nsw i64 %indvars.iv.i589, 1 ; 2 uses
  %i.aqv = getelementptr [4 x i8], ptr %i.aqf, i64 %indvars.iv.next.i590
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !103
  %i.aqx = mul nsw i64 %indvars.iv.next.i590, %i.aqd
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqx
  store float %i.aqw, ptr %gep.i.1, align 4, !tbaa !103
  %indvars.iv.next.i590.1 = add nuw nsw i64 %indvars.iv.i589, 2 ; 2 uses
  %i.aqy = getelementptr [4 x i8], ptr %i.aqf, i64 %indvars.iv.next.i590.1
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !103
  %i.ara = mul nsw i64 %indvars.iv.next.i590.1, %i.aqd
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ara
  store float %i.aqz, ptr %gep.i.2, align 4, !tbaa !103
  %indvars.iv.next.i590.2 = add nuw nsw i64 %indvars.iv.i589, 3 ; 2 uses
  %i.arb = getelementptr [4 x i8], ptr %i.aqf, i64 %indvars.iv.next.i590.2
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !103
  %i.ard = mul nsw i64 %indvars.iv.next.i590.2, %i.aqd
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ard
  store float %i.arc, ptr %gep.i.3, align 4, !tbaa !103
  %indvars.iv.next.i590.3 = add nuw nsw i64 %indvars.iv.i589, 4 ; 2 uses
  %exitcond.not.i591.3 = icmp eq i64 %indvars.iv.next.i590.3, %indvars.iv22.i
  br i1 %exitcond.not.i591.3, label %._crit_edge.i592, label %scalar.ph1064.a, !llvm.loop !198

_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit: ; preds = %bb.dp, %bb.do
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull @.str.16)
          to label %bb.dq unwind label %bb.ec

bb.dq:                                            ; preds = %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 4 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !18 ; 3 uses
  %i.arg = icmp sgt i32 %i.e, %i.arf
  br i1 %i.arg, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.ari = load i32, ptr %i.arh, align 8, !tbaa !19
  %i.arj = icmp slt i32 %i.ari, %i.e
  br i1 %i.arj, label %bb.ds, label %..lr.ph.i_crit_edge.i593

..lr.ph.i_crit_edge.i593:                         ; preds = %bb.dr
  %.phi.trans.insert.i594 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre.i595 = load ptr, ptr %.phi.trans.insert.i594, align 8, !tbaa !17
  br label %.lr.ph.i.i596

bb.ds:                                            ; preds = %bb.dr
  br i1 %.not.i403, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i601, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ark = sext i32 %i.e to i64
  %i.arl = shl nsw i64 %i.ark, 2
  %i.arm = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.arl, i32 noundef 16)
          to label %.noexc612 unwind label %bb.ed

.noexc612:                                        ; preds = %bb.dt
  %.pre.i.i600 = load i32, ptr %i.are, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i601

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i601: ; preds = %.noexc612, %bb.ds
  %i.arn = phi i32 [ %.pre.i.i600, %.noexc612 ], [ %i.arf, %bb.ds ] ; 3 uses
  %.0.i.i.i.i602 = phi ptr [ %i.arm, %.noexc612 ], [ null, %bb.ds ] ; 9 uses
  %i.aro = icmp sgt i32 %i.arn, 0
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !17 ; 9 uses
  br i1 %i.aro, label %.lr.ph.i.i.i.i607, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i603

.lr.ph.i.i.i.i607:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i601
  %i.arr = ptrtoaddr ptr %i.arq to i64
  %.0.i.i.i.i6021077 = ptrtoaddr ptr %.0.i.i.i.i602 to i64
  %wide.trip.count.i.i.i.i608 = zext nneg i32 %i.arn to i64 ; 5 uses
  %min.iters.check1080.a = icmp ult i32 %i.arn, 8
  %i.ars = sub i64 %i.arr, %.0.i.i.i.i6021077
  %diff.check1078.a = icmp ugt i64 %i.ars, -32
  %or.cond1112 = select i1 %min.iters.check1080.a, i1 true, i1 %diff.check1078.a
  br i1 %or.cond1112, label %scalar.ph1079.preheader.a, label %vector.ph1081.a

vector.ph1081.a:                                  ; preds = %.lr.ph.i.i.i.i607
  %n.vec1082.a = and i64 %wide.trip.count.i.i.i.i608, 2147483640 ; 3 uses
  br label %vector.body1083.a

vector.body1083.a:                                ; preds = %vector.body1083.a, %vector.ph1081.a
  %index1084.a = phi i64 [ 0, %vector.ph1081.a ], [ %index.next1087.a, %vector.body1083.a ] ; 3 uses
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i602, i64 %index1084.a ; 2 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %index1084.a ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  %wide.load1085.a = load <4 x float>, ptr %i.aru, align 4, !tbaa !103
  %wide.load1086.a = load <4 x float>, ptr %i.arv, align 4, !tbaa !103
  %i.arw = getelementptr inbounds nuw i8, ptr %i.art, i64 16
  store <4 x float> %wide.load1085.a, ptr %i.art, align 4, !tbaa !103
  store <4 x float> %wide.load1086.a, ptr %i.arw, align 4, !tbaa !103
  %index.next1087.a = add nuw i64 %index1084.a, 8 ; 2 uses
  %i.arx = icmp eq i64 %index.next1087.a, %n.vec1082.a
  br i1 %i.arx, label %middle.block1088.a, label %vector.body1083.a, !llvm.loop !199

middle.block1088.a:                               ; preds = %vector.body1083.a
  %cmp.n1089.a = icmp eq i64 %n.vec1082.a, %wide.trip.count.i.i.i.i608
  br i1 %cmp.n1089.a, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605, label %scalar.ph1079.preheader.a

scalar.ph1079.preheader.a:                        ; preds = %.lr.ph.i.i.i.i607, %middle.block1088.a
  %indvars.iv.i.i.i.i609.ph = phi i64 [ 0, %.lr.ph.i.i.i.i607 ], [ %n.vec1082.a, %middle.block1088.a ] ; 3 uses
  %xtraiter1155 = and i64 %wide.trip.count.i.i.i.i608, 3 ; 2 uses
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1155, 0
  br i1 %lcmp.mod1156.not, label %scalar.ph1079.prol.loopexit.a, label %scalar.ph1079.prol.a

scalar.ph1079.prol.a:                             ; preds = %scalar.ph1079.preheader.a, %scalar.ph1079.prol.a
  %indvars.iv.i.i.i.i609.prol = phi i64 [ %indvars.iv.next.i.i.i.i610.prol, %scalar.ph1079.prol.a ], [ %indvars.iv.i.i.i.i609.ph, %scalar.ph1079.preheader.a ] ; 3 uses
  %prol.iter1157 = phi i64 [ %prol.iter1157.next, %scalar.ph1079.prol.a ], [ 0, %scalar.ph1079.preheader.a ]
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i602, i64 %indvars.iv.i.i.i.i609.prol
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %indvars.iv.i.i.i.i609.prol
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !103
  store float %i.asa, ptr %i.ary, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i610.prol = add nuw nsw i64 %indvars.iv.i.i.i.i609.prol, 1 ; 2 uses
  %prol.iter1157.next = add i64 %prol.iter1157, 1 ; 2 uses
  %prol.iter1157.cmp.not = icmp eq i64 %prol.iter1157.next, %xtraiter1155
  br i1 %prol.iter1157.cmp.not, label %scalar.ph1079.prol.loopexit.a, label %scalar.ph1079.prol.a, !llvm.loop !200

scalar.ph1079.prol.loopexit.a:                    ; preds = %scalar.ph1079.prol.a, %scalar.ph1079.preheader.a
  %indvars.iv.i.i.i.i609.unr = phi i64 [ %indvars.iv.i.i.i.i609.ph, %scalar.ph1079.preheader.a ], [ %indvars.iv.next.i.i.i.i610.prol, %scalar.ph1079.prol.a ]
  %i.asb = sub nsw i64 %indvars.iv.i.i.i.i609.ph, %wide.trip.count.i.i.i.i608
  %i.asc = icmp ugt i64 %i.asb, -4
  br i1 %i.asc, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605, label %scalar.ph1079.a

scalar.ph1079.a:                                  ; preds = %scalar.ph1079.prol.loopexit.a, %scalar.ph1079.a
  %indvars.iv.i.i.i.i609 = phi i64 [ %indvars.iv.next.i.i.i.i610.3, %scalar.ph1079.a ], [ %indvars.iv.i.i.i.i609.unr, %scalar.ph1079.prol.loopexit.a ] ; 6 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i602, i64 %indvars.iv.i.i.i.i609
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %indvars.iv.i.i.i.i609
  %i.asf = load float, ptr %i.ase, align 4, !tbaa !103
  store float %i.asf, ptr %i.asd, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i610 = add nuw nsw i64 %indvars.iv.i.i.i.i609, 1 ; 2 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i602, i64 %indvars.iv.next.i.i.i.i610
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %indvars.iv.next.i.i.i.i610
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !103
  store float %i.asi, ptr %i.asg, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i610.1 = add nuw nsw i64 %indvars.iv.i.i.i.i609, 2 ; 2 uses
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i602, i64 %indvars.iv.next.i.i.i.i610.1
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %indvars.iv.next.i.i.i.i610.1
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !103
  store float %i.asl, ptr %i.asj, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i610.2 = add nuw nsw i64 %indvars.iv.i.i.i.i609, 3 ; 2 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i602, i64 %indvars.iv.next.i.i.i.i610.2
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %indvars.iv.next.i.i.i.i610.2
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !103
  store float %i.aso, ptr %i.asm, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i610.3 = add nuw nsw i64 %indvars.iv.i.i.i.i609, 4 ; 2 uses
  %exitcond.not.i.i.i.i611.3 = icmp eq i64 %indvars.iv.next.i.i.i.i610.3, %wide.trip.count.i.i.i.i608
  br i1 %exitcond.not.i.i.i.i611.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605, label %scalar.ph1079.a, !llvm.loop !201

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i603: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i601
  %.not.i5.i.i.i604 = icmp eq ptr %i.arq, null
  br i1 %.not.i5.i.i.i604, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i606, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605: ; preds = %scalar.ph1079.prol.loopexit.a, %scalar.ph1079.a, %middle.block1088.a, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i603
  %i.asp = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.asq = load i8, ptr %i.asp, align 8, !tbaa !11, !range !63, !noundef !66
  %i.asr = trunc nuw i8 %i.asq to i1
  br i1 %i.asr, label %bb.du, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i606

bb.du:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.arq)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i606 unwind label %bb.ed

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i606: ; preds = %bb.du, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i605, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i603
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i8 1, ptr %i.ass, align 8, !tbaa !11
  store ptr %.0.i.i.i.i602, ptr %i.arp, align 8, !tbaa !17
  store i32 %i.e, ptr %i.arh, align 8, !tbaa !19
  br label %.lr.ph.i.i596

.lr.ph.i.i596:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i606, %..lr.ph.i_crit_edge.i593
  %i.ast = phi ptr [ %.pre.i595, %..lr.ph.i_crit_edge.i593 ], [ %.0.i.i.i.i602, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i606 ]
  %i.asu = sext i32 %i.arf to i64                 ; 2 uses
  %wide.trip.count.i.i597 = sext i32 %i.e to i64
  %i.asv = shl nsw i64 %i.asu, 2
  %scevgep.i598 = getelementptr i8, ptr %i.ast, i64 %i.asv
  %i.asw = sub nsw i64 %wide.trip.count.i.i597, %i.asu
  %i.asx = shl nsw i64 %i.asw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i598, i8 0, i64 %i.asx, i1 false), !tbaa !103
  br label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i596, %bb.dq
  store i32 %i.e, ptr %i.are, align 4, !tbaa !18
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 3 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !18 ; 3 uses
  %i.ata = icmp sgt i32 %i.e, %i.asz
  br i1 %i.ata, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12btMLCPSolver10createMLCPERK19btContactSolverInfo:bb.a
scalar.ph648.preheader:                           ; preds = %.lr.ph.i.i.i.i368, %middle.block657
  %indvars.iv.i.i.i.i370.ph = phi i64 [ 0, %.lr.ph.i.i.i.i368 ], [ %n.vec651, %middle.block657 ] ; 3 uses
  %xtraiter708 = and i64 %wide.trip.count.i.i.i.i369, 3 ; 2 uses
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %scalar.ph648.prol.loopexit, label %scalar.ph648.prol

scalar.ph648.prol:                                ; preds = %scalar.ph648.preheader, %scalar.ph648.prol
  %indvars.iv.i.i.i.i370.prol = phi i64 [ %indvars.iv.next.i.i.i.i371.prol, %scalar.ph648.prol ], [ %indvars.iv.i.i.i.i370.ph, %scalar.ph648.preheader ] ; 3 uses
  %prol.iter710 = phi i64 [ %prol.iter710.next, %scalar.ph648.prol ], [ 0, %scalar.ph648.preheader ]
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.i.i.i.i370.prol
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.i.i.i.i370.prol
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !103
  store float %i.ahq, ptr %i.aho, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.prol = add nuw nsw i64 %indvars.iv.i.i.i.i370.prol, 1 ; 2 uses
  %prol.iter710.next = add i64 %prol.iter710, 1   ; 2 uses
  %prol.iter710.cmp.not = icmp eq i64 %prol.iter710.next, %xtraiter708
  br i1 %prol.iter710.cmp.not, label %scalar.ph648.prol.loopexit, label %scalar.ph648.prol, !llvm.loop !247

scalar.ph648.prol.loopexit:                       ; preds = %scalar.ph648.prol, %scalar.ph648.preheader
  %indvars.iv.i.i.i.i370.unr = phi i64 [ %indvars.iv.i.i.i.i370.ph, %scalar.ph648.preheader ], [ %indvars.iv.next.i.i.i.i371.prol, %scalar.ph648.prol ]
  %i.ahr = sub nsw i64 %indvars.iv.i.i.i.i370.ph, %wide.trip.count.i.i.i.i369
  %i.ahs = icmp ugt i64 %i.ahr, -4
  br i1 %i.ahs, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, label %scalar.ph648

scalar.ph648:                                     ; preds = %scalar.ph648.prol.loopexit, %scalar.ph648
  %indvars.iv.i.i.i.i370 = phi i64 [ %indvars.iv.next.i.i.i.i371.3, %scalar.ph648 ], [ %indvars.iv.i.i.i.i370.unr, %scalar.ph648.prol.loopexit ] ; 6 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.i.i.i.i370
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.i.i.i.i370
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !103
  store float %i.ahv, ptr %i.aht, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 1 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.next.i.i.i.i371
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next.i.i.i.i371
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !103
  store float %i.ahy, ptr %i.ahw, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.1 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 2 ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.next.i.i.i.i371.1
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next.i.i.i.i371.1
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !103
  store float %i.aib, ptr %i.ahz, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.2 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 3 ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.next.i.i.i.i371.2
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next.i.i.i.i371.2
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !103
  store float %i.aie, ptr %i.aic, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.3 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 4 ; 2 uses
  %exitcond.not.i.i.i.i372.3 = icmp eq i64 %indvars.iv.next.i.i.i.i371.3, %wide.trip.count.i.i.i.i369
  br i1 %exitcond.not.i.i.i.i372.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, label %scalar.ph648, !llvm.loop !248

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i362
  %.not.i5.i.i.i365 = icmp eq ptr %i.ahg, null
  br i1 %.not.i5.i.i.i365, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366: ; preds = %scalar.ph648.prol.loopexit, %scalar.ph648, %middle.block657, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.aig = load i8, ptr %i.aif, align 8, !tbaa !11, !range !63, !noundef !66
  %i.aih = trunc nuw i8 %i.aig to i1
  br i1 %i.aih, label %bb.cd, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367

bb.cd:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ahg)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367: ; preds = %bb.cd, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.aii, align 8, !tbaa !11
  store ptr %.0.i.i.i.i363, ptr %i.ahf, align 8, !tbaa !17
  store i32 %i.d, ptr %i.agx, align 8, !tbaa !19
  br label %.lr.ph.i.i357

.lr.ph.i.i357:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367, %..lr.ph.i_crit_edge.i354
  %i.aij = phi ptr [ %.pre.i356, %..lr.ph.i_crit_edge.i354 ], [ %.0.i.i.i.i363, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367 ]
  %i.aik = sext i32 %i.agv to i64                 ; 2 uses
  %wide.trip.count.i.i358 = sext i32 %i.d to i64
  %i.ail = shl nsw i64 %i.aik, 2
  %scevgep.i359 = getelementptr i8, ptr %i.aij, i64 %i.ail
  %i.aim = sub nsw i64 %wide.trip.count.i.i358, %i.aik
  %i.ain = shl nsw i64 %i.aim, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i359, i8 0, i64 %i.ain, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit373

_ZN9btVectorXIfE6resizeEi.exit373:                ; preds = %bb.bz, %.lr.ph.i.i357
  store i32 %i.d, ptr %i.agu, align 4, !tbaa !18
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN9btVectorXIfE6resizeEi.exit373, %_ZN9btVectorXIfE6resizeEi.exit353
  %i.aio = load i32, ptr %i.c, align 4, !tbaa !40 ; 4 uses
  %i.aip = icmp sgt i32 %i.aio, 0
  br i1 %i.aip, label %.lr.ph406, label %._crit_edge407

.lr.ph406:                                        ; preds = %bb.ce
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !39 ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !17 ; 4 uses
  %i.aiu = load i32, ptr %i.ay, align 4, !tbaa !110
  %.not161 = icmp eq i32 %i.aiu, 0                ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %wide.trip.count446 = zext nneg i32 %i.aio to i64 ; 2 uses
  %xtraiter712 = and i64 %wide.trip.count446, 1
  %i.aiw = icmp eq i32 %i.aio, 1
  br i1 %i.aiw, label %.epil.preheader711, label %.lr.ph406.new

.lr.ph406.new:                                    ; preds = %.lr.ph406
  %unroll_iter715 = and i64 %wide.trip.count446, 2147483646
  br label %bb.cg

._crit_edge407.loopexit.unr-lcssa:                ; preds = %bb.ci
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %._crit_edge407, label %.epil.preheader711

.epil.preheader711:                               ; preds = %._crit_edge407.loopexit.unr-lcssa, %.lr.ph406
  %indvars.iv443.epil.init = phi i64 [ 0, %.lr.ph406 ], [ %indvars.iv.next444.1, %._crit_edge407.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod714 = trunc i32 %i.aio to i1
  call void @llvm.assume(i1 %lcmp.mod714)
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv443.epil.init
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !68 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 100
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !206
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv443.epil.init
  store float %i.aja, ptr %i.ajb, align 4, !tbaa !103
  br i1 %.not161, label %._crit_edge407, label %bb.cf

bb.cf:                                            ; preds = %.epil.preheader711
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiy, i64 96
  %i.ajd = load float, ptr %i.ajc, align 8, !tbaa !207
  %i.aje = load ptr, ptr %i.aiv, align 8, !tbaa !17
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %indvars.iv443.epil.init
  store float %i.ajd, ptr %i.ajf, align 4, !tbaa !103
  br label %._crit_edge407

._crit_edge407:                                   ; preds = %._crit_edge407.loopexit.unr-lcssa, %bb.cf, %.epil.preheader711, %bb.ce
  ret void

bb.cg:                                            ; preds = %bb.ci, %.lr.ph406.new
  %indvars.iv443 = phi i64 [ 0, %.lr.ph406.new ], [ %indvars.iv.next444.1, %bb.ci ] ; 6 uses
  %niter716 = phi i64 [ 0, %.lr.ph406.new ], [ %niter716.next.1, %bb.ci ]
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv443
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !68 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 100
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !206
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv443
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !103
  br i1 %.not161, label %.critedge, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 96
  %i.ajm = load float, ptr %i.ajl, align 8, !tbaa !207
  %i.ajn = load ptr, ptr %i.aiv, align 8, !tbaa !17
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %indvars.iv443
  store float %i.ajm, ptr %i.ajo, align 4, !tbaa !103
  %indvars.iv.next444 = or disjoint i64 %indvars.iv443, 1 ; 3 uses
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv.next444
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !68 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 100
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !206
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv.next444
  store float %i.ajs, ptr %i.ajt, align 4, !tbaa !103
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 96
  %i.ajv = load float, ptr %i.aju, align 8, !tbaa !207
  %i.ajw = load ptr, ptr %i.aiv, align 8, !tbaa !17
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %indvars.iv.next444
  store float %i.ajv, ptr %i.ajx, align 4, !tbaa !103
  br label %bb.ci

.critedge:                                        ; preds = %bb.cg
  %indvars.iv.next444.c = or disjoint i64 %indvars.iv443, 1 ; 2 uses
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv.next444.c
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !68
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 100
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !206
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv.next444.c
  store float %i.akb, ptr %i.akc, align 4, !tbaa !103
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge, %bb.ch
  %indvars.iv.next444.1 = add nuw nsw i64 %indvars.iv443, 2 ; 2 uses
  %niter716.next.1 = add i64 %niter716, 2         ; 2 uses
  %niter716.ncmp.1 = icmp eq i64 %niter716.next.1, %unroll_iter715
  br i1 %niter716.ncmp.1, label %._crit_edge407.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !249

bb.cj:                                            ; preds = %bb.bu, %bb.bx, %bb.br
  %.pn156.pn.pn = phi { ptr, i32 } [ %i.afw, %bb.br ], [ %.pn156, %bb.bx ], [ %.pn, %bb.bu ]
  resume { ptr, i32 } %.pn156.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK9btMatrixXIfE9transposeEv(ptr dead_on_unwind noalias writable sret(%struct.btMatrixX) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !106  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !105    ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !250
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !26
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.b, i32 noundef %i.c)
          to label %_ZN9btMatrixXIfEC2Eii.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.aj, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.q) #14
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.r) #14
  br label %common.resume

_ZN9btMatrixXIfEC2Eii.exit:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.22)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.s = load i32, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN9btMatrixXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %.noexc
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.u = sext i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.v, i1 false), !tbaa !103
  br label %_ZN9btMatrixXIfE7setZeroEv.exit

_ZN9btMatrixXIfE7setZeroEv.exit:                  ; preds = %.noexc, %_Z9btSetZeroIfEvPT_i.exit.i
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.w = load i32, ptr %i.a, align 4, !tbaa !106  ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader.lr.ph, label %._crit_edge20.split

.preheader.lr.ph:                                 ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit
  %i.y = load i32, ptr %1, align 8, !tbaa !105    ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader.lr.ph.split, label %._crit_edge20.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = zext nneg i32 %i.w to i64               ; 3 uses
  %wide.trip.count25 = zext nneg i32 %i.w to i64
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.y, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod30 = trunc i32 %i.y to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %.promoted = load i32, ptr %i.g, align 8        ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv22, %i.af
  %i.ah = load ptr, ptr %i.i, align 8
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv22 ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.ag ; 3 uses
  br i1 %i.ad, label %.epil.preheader, label %.preheader.new

bb.c:                                             ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #14
  br label %common.resume

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %.promoted, %.preheader ], [ %5, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod30)
  %i.ak = mul nuw nsw i64 %indvars.iv.epil.init, %i.ac
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ak
  %i.al = load float, ptr %gep.epil, align 4, !tbaa !103 ; 2 uses
  %i.am = fcmp une float %i.al, 0.000000e+00
  br i1 %i.am, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.epil.preheader
  %i.an = add nsw i32 %.epil.init, 1
  store i32 %i.an, ptr %i.g, align 8, !tbaa !160
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.epil.init
  store float %i.al, ptr %i.ao, align 4, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.d, %._crit_edge.unr-lcssa
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge20.split, label %.preheader, !llvm.loop !251

.preheader.new:                                   ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.h ], [ 0, %.preheader ] ; 4 uses
  %3 = phi i32 [ %5, %bb.h ], [ %.promoted, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader ]
  %i.ap = mul nuw nsw i64 %indvars.iv, %i.ac
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ap
  %i.aq = load float, ptr %gep, align 4, !tbaa !103 ; 2 uses
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.new
  %i.as = add nsw i32 %3, 1                       ; 2 uses
  store i32 %i.as, ptr %i.g, align 8, !tbaa !160
  %i.at = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv
  store float %i.aq, ptr %i.at, align 4, !tbaa !103
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.new
  %4 = phi i32 [ %i.as, %bb.e ], [ %3, %.preheader.new ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv.next, %i.ac
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.au
  %i.av = load float, ptr %gep.1, align 4, !tbaa !103 ; 2 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = add nsw i32 %4, 1                       ; 2 uses
  store i32 %i.ax, ptr %i.g, align 8, !tbaa !160
  %i.ay = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv.next
  store float %i.av, ptr %i.ay, align 4, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %5 = phi i32 [ %i.ax, %bb.g ], [ %4, %bb.f ]    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !252

._crit_edge20.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN9btMatrixXIfE7setZeroEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btMatrixXIfEmlERKS0_(ptr dead_on_unwind noalias writable sret(%struct.btMatrixX) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !106  ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !250
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr null, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 1, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !26
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.a, i32 noundef %i.c)
          to label %_ZN9btMatrixXIfEC2Eii.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.k, %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.bh, %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.q) #14
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.r) #14
  br label %common.resume

_ZN9btMatrixXIfEC2Eii.exit:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.22)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.s = load i32, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN9btMatrixXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %.noexc
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.u = sext i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.v, i1 false), !tbaa !103
  br label %_ZN9btMatrixXIfE7setZeroEv.exit

_ZN9btMatrixXIfE7setZeroEv.exit:                  ; preds = %.noexc, %_Z9btSetZeroIfEvPT_i.exit.i
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.w = load i32, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit
  %i.y = load i32, ptr %i.b, align 4, !tbaa !106  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  br i1 %i.z, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106 ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader.lr.ph.split.split.us, label %._crit_edge.split

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ah = zext nneg i32 %i.y to i64               ; 4 uses
  %i.ai = zext nneg i32 %i.ad to i64              ; 3 uses
  %wide.trip.count54 = zext nneg i32 %i.w to i64
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i32 %i.ad, 1
  %unroll_iter = and i64 %i.ai, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod68 = trunc i32 %i.ad to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge40.split.us.us, %.preheader.lr.ph.split.split.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %._crit_edge40.split.us.us ], [ 0, %.preheader.lr.ph.split.split.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.g, align 8
  %i.ak = mul nuw nsw i64 %indvars.iv51, %i.ai
  %i.al = load i32, ptr %i.d, align 4
  %i.am = trunc nuw nsw i64 %indvars.iv51 to i32
  %i.an = mul nsw i32 %i.al, %i.am
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = sext i32 %i.an to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ak ; 3 uses
  %invariant.gep65 = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.d, %.preheader.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %bb.d ], [ 0, %.preheader.us ] ; 3 uses
  %4 = phi i32 [ %5, %bb.d ], [ %.promoted.us, %.preheader.us ] ; 2 uses
  %invariant.gep63 = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv46 ; 3 uses
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.02636.us.us = phi float [ %.1.us.us.1, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aq = load float, ptr %gep, align 4, !tbaa !103
  %i.ar = mul nuw nsw i64 %indvars.iv, %i.ah
  %gep64 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep63, i64 %i.ar
  %i.as = load float, ptr %gep64, align 4, !tbaa !103 ; 2 uses
  %i.at = fcmp une float %i.as, 0.000000e+00
  %i.au = call float @llvm.fmuladd.f32(float %i.aq, float %i.as, float %.02636.us.us)
  %.1.us.us = select i1 %i.at, float %i.au, float %.02636.us.us ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.av = load float, ptr %gep.1, align 4, !tbaa !103
  %i.aw = mul nuw nsw i64 %indvars.iv.next, %i.ah
  %gep64.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep63, i64 %i.aw
  %i.ax = load float, ptr %gep64.1, align 4, !tbaa !103 ; 2 uses
  %i.ay = fcmp une float %i.ax, 0.000000e+00
  %i.az = call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %.1.us.us)
  %.1.us.us.1 = select i1 %i.ay, float %i.az, float %.1.us.us ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !253

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.ba = add nsw i32 %4, 1                       ; 2 uses
  store i32 %i.ba, ptr %i.g, align 8, !tbaa !160
  %gep66 = getelementptr [4 x i8], ptr %invariant.gep65, i64 %indvars.iv46
  store float %.1.us.us.lcssa, ptr %gep66, align 4, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.us, %bb.c
  %5 = phi i32 [ %i.ba, %bb.c ], [ %4, %._crit_edge.us.us ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %i.ah
  br i1 %exitcond50.not, label %._crit_edge40.split.us.us, label %.lr.ph.us.us, !llvm.loop !254

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.02636.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us ], [ %.1.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod68)
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.bb = load float, ptr %gep.epil, align 4, !tbaa !103
  %i.bc = mul nuw nsw i64 %indvars.iv.epil.init, %i.ah
  %gep64.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep63, i64 %i.bc
  %i.bd = load float, ptr %gep64.epil, align 4, !tbaa !103 ; 2 uses
  %i.be = fcmp une float %i.bd, 0.000000e+00
  %i.bf = call float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %.02636.us.us.epil.init)
  %.1.us.us.epil = select i1 %i.be, float %i.bf, float %.02636.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %.1.us.us.lcssa = phi float [ %.1.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.1.us.us.epil, %.epil.preheader ] ; 2 uses
  %i.bg = fcmp une float %.1.us.us.lcssa, 0.000000e+00
  br i1 %i.bg, label %bb.c, label %bb.d

._crit_edge40.split.us.us:                        ; preds = %bb.d
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !255

bb.e:                                             ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load i32, ptr %i.n, align 4, !tbaa !25  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i

._crit_edge.split:                                ; preds = %._crit_edge40.split.us.us, %.preheader.lr.ph.split, %.preheader.lr.ph, %_ZN9btMatrixXIfE7setZeroEv.exit
  ret void

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %zext.i.i.i = zext nneg i32 %i.bi to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.bn, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i8, ptr %i.bo, align 8, !range !63
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.bq, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.g, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #13
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i:    ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.bt = icmp eq i64 %indvars.iv.next.i.i.i.i, %zext.i.i.i
  br i1 %i.bt, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i, label %bb.f, !llvm.loop !64

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i, %bb.e
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !24  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.bu, null
  %i.bv = load i8, ptr %i.l, align 8, !range !63
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond = select i1 %.not.i.i.i.i, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.i, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i

bb.i:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bu)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #13
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i:      ; preds = %bb.i, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.bz, null
  %i.ca = load i8, ptr %i.h, align 8, !range !63
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1.i, i1 %i.cb, i1 false
  br i1 %or.cond.i.i.i, label %bb.k, label %common.resume

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bz)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #13
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN12btMLCPSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(1392) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(128) %7, ptr noundef %8) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.CProfileSample, align 1      ; 6 uses
  %10 = alloca %class.CProfileSample, align 1     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull @.str.19)
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(1392) %0, ptr noundef nonnull align 4 dereferenceable(128) %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br i1 %i.d, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull @.str.20)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = load i32, ptr %i.n, align 4, !tbaa !110
  %.not = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 672
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.m, %bb.c
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 14 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.u = load i32, ptr %i.t, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 156
  %i.w = load i32, ptr %i.v, align 4, !tbaa !143
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [248 x i8], ptr %i.k, i64 %i.x ; 19 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [248 x i8], ptr %i.k, i64 %i.z ; 19 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !103 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 100 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !206
  %i.af = fsub float %i.ac, %i.ae                 ; 6 uses
  store float %i.ac, ptr %i.ad, align 4, !tbaa !206
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 128 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.am, null               ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load float, ptr %i.ai, align 8, !tbaa !103
  %i.ao = load float, ptr %i.aj, align 8, !tbaa !103
  %i.ap = fmul float %i.an, %i.ao
  %i.aq = fmul float %i.af, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 120
end_hunk_1
