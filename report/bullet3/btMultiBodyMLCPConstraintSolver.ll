Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyMLCPConstraintSolver?download=true
inline.NumInlined: 604
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo:bb.a
  br i1 %i.xb, label %bb.bb, label %._crit_edge783, !llvm.loop !114

bb.bu:                                            ; preds = %bb.br, %bb.bj
  %.sroa.22664.3 = phi ptr [ %.sroa.22664.1, %bb.br ], [ %.sroa.22664.0773, %bb.bj ]
  %.pn367.pn.pn = phi { ptr, i32 } [ %i.ty, %bb.br ], [ %i.pj, %bb.bj ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  br label %bb.bz

bb.bv:                                            ; preds = %._crit_edge783
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.xc, i32 noundef %i.b, i32 noundef %i.b)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull @.str.9)
          to label %bb.bx unwind label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.20)
          to label %.noexc542 unwind label %bb.ce

.noexc542:                                        ; preds = %bb.bx
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !16 ; 2 uses
  %.not.i540 = icmp eq i32 %i.xe, 0
  br i1 %.not.i540, label %bb.by, label %_Z9btSetZeroIfEvPT_i.exit.i541

_Z9btSetZeroIfEvPT_i.exit.i541:                   ; preds = %.noexc542
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !21
  %i.xh = sext i32 %i.xe to i64
  %i.xi = shl nuw nsw i64 %i.xh, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.xg, i8 0, i64 %i.xi, i1 false), !tbaa !22
  br label %bb.by

bb.by:                                            ; preds = %_Z9btSetZeroIfEvPT_i.exit.i541, %.noexc542
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull @.str.10)
          to label %.preheader728 unwind label %bb.cg

.preheader728:                                    ; preds = %bb.by
  %i.xj = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.xk = icmp sgt i32 %i.xj, 0
  br i1 %i.xk, label %.lr.ph798, label %._crit_edge799

.lr.ph798:                                        ; preds = %.preheader728
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !65 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !37 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !78 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  br label %bb.ch

._crit_edge799:                                   ; preds = %._crit_edge794, %.preheader728
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull @.str.11)
          to label %bb.cx unwind label %bb.de

bb.bz:                                            ; preds = %bb.bu, %bb.ba
  %.sroa.22664.4 = phi ptr [ %.sroa.22664.3, %bb.bu ], [ %.sroa.22664.6, %bb.ba ]
  %.pn367.pn.pn.pn = phi { ptr, i32 } [ %.pn367.pn.pn, %bb.bu ], [ %i.mr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.ed

bb.ca:                                            ; preds = %._crit_edge783
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bv
  %i.xw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn341 = phi { ptr, i32 } [ %i.xw, %bb.cb ], [ %i.xv, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.ed

bb.cd:                                            ; preds = %bb.bw
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bx
  %i.xy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn343 = phi { ptr, i32 } [ %i.xy, %bb.ce ], [ %i.xx, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.ed

bb.cg:                                            ; preds = %bb.by
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ch:                                            ; preds = %.lr.ph798, %._crit_edge794
  %indvars.iv875.a = phi i64 [ 0, %.lr.ph798 ], [ %indvars.iv.next876.a, %._crit_edge794 ] ; 5 uses
  %.0279797 = phi i32 [ 0, %.lr.ph798 ], [ %i.aey, %._crit_edge794 ] ; 3 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %indvars.iv875.a
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !59 ; 4 uses
  %i.yc = sext i32 %.0279797 to i64
  %i.yd = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.yc
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !44 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 152
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !70 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 156
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !71 ; 2 uses
  %i.yj = icmp slt i32 %.0279797, %i.xq
  br i1 %i.yj, label %bb.ci, label %.thread956

bb.ci:                                            ; preds = %bb.ch
  %i.yk = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %indvars.iv875.a
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !85
  %i.yn = freeze i32 %i.ym                        ; 3 uses
  %i.yo = sext i32 %i.yb to i64
  %.idx = shl nsw i64 %i.yo, 6
  %i.yp = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx ; 2 uses
  %i.yq = sext i32 %i.yg to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %.sroa.10698.2, i64 %i.yq
  %.0278785 = load i32, ptr %i.yr, align 4, !tbaa !59 ; 2 uses
  %i.ys = icmp sgt i32 %.0278785, -1
  %i.yt = icmp sgt i32 %i.yn, 0
  %or.cond976 = and i1 %i.ys, %i.yt
  br i1 %or.cond976, label %.lr.ph788.split.us.preheader, label %._crit_edge789

.thread956:                                       ; preds = %bb.ch
  %i.yu = sext i32 %i.yb to i64
  %.idx958 = shl nsw i64 %i.yu, 6
  %i.yv = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx958 ; 2 uses
  %i.yw = sext i32 %i.yg to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %.sroa.10698.2, i64 %i.yw
  %.0278785959 = load i32, ptr %i.yx, align 4, !tbaa !59 ; 2 uses
  %i.yy = icmp sgt i32 %.0278785959, -1
  br i1 %i.yy, label %.lr.ph788.split.us.preheader, label %._crit_edge789

.lr.ph788.split.us.preheader:                     ; preds = %bb.ci, %.thread956
  %.fr814961966 = phi i32 [ %i.yn, %bb.ci ], [ 1, %.thread956 ] ; 2 uses
  %i.yz = phi ptr [ %i.yp, %bb.ci ], [ %i.yv, %.thread956 ] ; 2 uses
  %.0278785962965 = phi i32 [ %.0278785, %bb.ci ], [ %.0278785959, %.thread956 ]
  br label %.lr.ph788.split.us

.lr.ph788.split.us:                               ; preds = %.lr.ph788.split.us.preheader, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us
  %.0278786.us = phi i32 [ %.0278.us, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ], [ %.0278785962965, %.lr.ph788.split.us.preheader ]
  %i.za = zext nneg i32 %.0278786.us to i64
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22664.0.lcssa, i64 %i.za ; 3 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !91
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !92 ; 2 uses
  %i.zf = sext i32 %i.zc to i64                   ; 3 uses
  %i.zg = icmp sgt i64 %indvars.iv875.a, %i.zf
  br i1 %i.zg, label %bb.cj, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

bb.cj:                                            ; preds = %.lr.ph788.split.us
  %i.zh = icmp slt i32 %i.ze, %i.xq
  br i1 %i.zh, label %bb.ck, label %.preheader.lr.ph.i.us

bb.ck:                                            ; preds = %bb.cj
  %i.zi = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.zi, i64 %i.zf
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !85
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.ck, %bb.cj
  %i.zl = phi i32 [ %i.zk, %bb.ck ], [ 1, %bb.cj ] ; 3 uses
  %i.zm = sext i32 %i.ze to i64
  %i.zn = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.zm
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !44
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 156
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !71
  %i.zr = icmp eq i32 %i.zq, %i.yg
  %i.zs = shl nsw i32 %i.zl, 3
  %i.zt = select i1 %i.zr, i32 %i.zs, i32 0
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.zf
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !59 ; 2 uses
  %i.zx = sext i32 %i.zw to i64
  %.idx354.us = shl nsw i64 %i.zx, 6
  %i.zy = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx354.us
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.zu
  %i.aaa = icmp sgt i32 %i.zl, 0
  br i1 %i.aaa, label %.preheader.preheader.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

.preheader.preheader.i.us:                        ; preds = %.preheader.lr.ph.i.us
  %.promoted.i.us = load i32, ptr %i.xu, align 8
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us, %.preheader.preheader.i.us
  %19 = phi i32 [ %22, %._crit_edge.i.us ], [ %.promoted.i.us, %.preheader.preheader.i.us ]
  %.038.i.us = phi ptr [ %i.abs, %._crit_edge.i.us ], [ %i.yz, %.preheader.preheader.i.us ] ; 7 uses
  %.03437.i.us = phi i32 [ %i.abt, %._crit_edge.i.us ], [ 0, %.preheader.preheader.i.us ] ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 4
  %i.aac = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 16
  %i.aae = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 20
  %i.aaf = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 24
  %i.aag = add nsw i32 %.03437.i.us, %i.yb
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us, %.preheader.i.us
  %20 = phi i32 [ %19, %.preheader.i.us ], [ %22, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 3 uses
  %.03236.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.abr, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 2 uses
  %.03335.i.us = phi ptr [ %i.zz, %.preheader.i.us ], [ %i.abq, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 7 uses
  %i.aah = load float, ptr %.038.i.us, align 4, !tbaa !22
  %i.aai = load float, ptr %.03335.i.us, align 4, !tbaa !22
  %i.aaj = fmul float %i.aah, %i.aai
  %i.aak = load float, ptr %i.aab, align 4, !tbaa !22
  %i.aal = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 4
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !22
  %i.aan = call float @llvm.fmuladd.f32(float %i.aak, float %i.aam, float %i.aaj)
  %i.aao = load float, ptr %i.aac, align 4, !tbaa !22
  %i.aap = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 8
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !22
  %i.aar = call float @llvm.fmuladd.f32(float %i.aao, float %i.aaq, float %i.aan)
  %i.aas = load float, ptr %i.aad, align 4, !tbaa !22
  %i.aat = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 16
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !22
  %i.aav = call float @llvm.fmuladd.f32(float %i.aas, float %i.aau, float %i.aar)
  %i.aaw = load float, ptr %i.aae, align 4, !tbaa !22
  %i.aax = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 20
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !22
  %i.aaz = call float @llvm.fmuladd.f32(float %i.aaw, float %i.aay, float %i.aav)
  %i.aba = load float, ptr %i.aaf, align 4, !tbaa !22
  %i.abb = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 24
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !22
  %i.abd = call float @llvm.fmuladd.f32(float %i.aba, float %i.abc, float %i.aaz) ; 3 uses
  %i.abe = fcmp une float %i.abd, 0.000000e+00
  br i1 %i.abe, label %bb.cm, label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

bb.cm:                                            ; preds = %bb.cl
  %i.abf = add nsw i32 %.03236.i.us, %i.zw
  %i.abg = load i32, ptr %i.xs, align 4, !tbaa !94
  %i.abh = mul nsw i32 %i.abg, %i.aag
  %i.abi = add nsw i32 %i.abf, %i.abh
  %i.abj = load ptr, ptr %i.xt, align 8, !tbaa !21
  %i.abk = sext i32 %i.abi to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.abk ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !22 ; 2 uses
  %i.abn = fcmp oeq float %i.abm, 0.000000e+00
  br i1 %i.abn, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.abo = fadd float %i.abd, %i.abm
  br label %.sink.split.i.i.us

bb.co:                                            ; preds = %bb.cm
  %i.abp = add nsw i32 %20, 1                     ; 2 uses
  store i32 %i.abp, ptr %i.xu, align 8, !tbaa !99
  br label %.sink.split.i.i.us

.sink.split.i.i.us:                               ; preds = %bb.co, %bb.cn
  %21 = phi i32 [ %i.abp, %bb.co ], [ %20, %bb.cn ]
  %.sink.i.i.us = phi float [ %i.abd, %bb.co ], [ %i.abo, %bb.cn ]
  store float %.sink.i.i.us, ptr %i.abl, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

_ZN9btMatrixXIfE7addElemEiif.exit.i.us:           ; preds = %.sink.split.i.i.us, %bb.cl
  %22 = phi i32 [ %20, %bb.cl ], [ %21, %.sink.split.i.i.us ] ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 32
  %i.abr = add nuw nsw i32 %.03236.i.us, 1        ; 2 uses
  %exitcond.not.i544.us = icmp eq i32 %i.abr, %i.zl
  br i1 %exitcond.not.i544.us, label %._crit_edge.i.us, label %bb.cl, !llvm.loop !115

._crit_edge.i.us:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us
  %i.abs = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 32
  %i.abt = add nuw nsw i32 %.03437.i.us, 1        ; 2 uses
  %exitcond40.not.i.us = icmp eq i32 %i.abt, %.fr814961966
  br i1 %exitcond40.not.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, label %.preheader.i.us, !llvm.loop !116

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us: ; preds = %._crit_edge.i.us, %.preheader.lr.ph.i.us, %.lr.ph788.split.us
  %i.abu = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.0278.us = load i32, ptr %i.abu, align 4, !tbaa !59 ; 2 uses
  %i.abv = icmp sgt i32 %.0278.us, -1
  br i1 %i.abv, label %.lr.ph788.split.us, label %._crit_edge789, !llvm.loop !117

._crit_edge789:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, %.thread956, %bb.ci
  %i.abw = phi ptr [ %i.yv, %.thread956 ], [ %i.yp, %bb.ci ], [ %i.yz, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ]
  %.fr814960 = phi i32 [ 1, %.thread956 ], [ %i.yn, %bb.ci ], [ %.fr814961966, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ] ; 4 uses
  %i.abx = sext i32 %i.yi to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %.sroa.10698.2, i64 %i.abx
  %.0277790 = load i32, ptr %i.aby, align 4, !tbaa !59 ; 2 uses
  %i.abz = icmp sgt i32 %.0277790, -1
  br i1 %i.abz, label %.lr.ph793, label %._crit_edge794

.lr.ph793:                                        ; preds = %._crit_edge789
  %i.aca = sext i32 %.fr814960 to i64
  %.idx352 = shl nsw i64 %i.aca, 5
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx352
  %23 = icmp sgt i32 %.fr814960, 0
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph793, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559
  %.0277791 = phi i32 [ %.0277790, %.lr.ph793 ], [ %.0277, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559 ]
  %i.acc = zext nneg i32 %.0277791 to i64
  %i.acd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22664.0.lcssa, i64 %i.acc ; 3 uses
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !91
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 12
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !92 ; 2 uses
  %i.ach = sext i32 %i.ace to i64                 ; 3 uses
  %i.aci = icmp sgt i64 %indvars.iv875.a, %i.ach
  br i1 %i.aci, label %bb.cq, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559

bb.cq:                                            ; preds = %bb.cp
  %i.acj = icmp slt i32 %i.acg, %i.xq
  br i1 %i.acj, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ack = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.ach
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !85
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.acn = phi i32 [ %i.acm, %bb.cr ], [ 1, %bb.cq ] ; 3 uses
  %i.aco = sext i32 %i.acg to i64
  %i.acp = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.aco
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !44
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 156
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !71
  %i.act = icmp eq i32 %i.acs, %i.yi
  %i.acu = shl nsw i32 %i.acn, 3
  %i.acv = select i1 %i.act, i32 %i.acu, i32 0
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.ach
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !59 ; 2 uses
  %i.acz = sext i32 %i.acy to i64
  %.idx353 = shl nsw i64 %i.acz, 6
  %i.ada = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx353
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.acw
  %i.adc = icmp sgt i32 %i.acn, 0
  %or.cond = select i1 %23, i1 %i.adc, i1 false
  br i1 %or.cond, label %.preheader.preheader.i546, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559

.preheader.preheader.i546:                        ; preds = %bb.cs
  %.promoted.i547 = load i32, ptr %i.xu, align 8
  br label %.preheader.i548

.preheader.i548:                                  ; preds = %._crit_edge.i555, %.preheader.preheader.i546
  %24 = phi i32 [ %27, %._crit_edge.i555 ], [ %.promoted.i547, %.preheader.preheader.i546 ]
  %.038.i549 = phi ptr [ %i.adj, %._crit_edge.i555 ], [ %i.acb, %.preheader.preheader.i546 ] ; 7 uses
  %.03437.i550 = phi i32 [ %i.adk, %._crit_edge.i555 ], [ 0, %.preheader.preheader.i546 ] ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.038.i549, i64 4
  %i.ade = getelementptr inbounds nuw i8, ptr %.038.i549, i64 8
  %i.adf = getelementptr inbounds nuw i8, ptr %.038.i549, i64 16
  %i.adg = getelementptr inbounds nuw i8, ptr %.038.i549, i64 20
  %i.adh = getelementptr inbounds nuw i8, ptr %.038.i549, i64 24
  %i.adi = add nsw i32 %.03437.i550, %i.yb
  br label %bb.ct

._crit_edge.i555:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i553
  %i.adj = getelementptr inbounds nuw i8, ptr %.038.i549, i64 32
  %i.adk = add nuw nsw i32 %.03437.i550, 1        ; 2 uses
  %exitcond40.not.i556 = icmp eq i32 %i.adk, %.fr814960
  br i1 %exitcond40.not.i556, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559, label %.preheader.i548, !llvm.loop !116

bb.ct:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i553, %.preheader.i548
  %25 = phi i32 [ %24, %.preheader.i548 ], [ %27, %_ZN9btMatrixXIfE7addElemEiif.exit.i553 ] ; 3 uses
  %.03236.i551 = phi i32 [ 0, %.preheader.i548 ], [ %i.aev, %_ZN9btMatrixXIfE7addElemEiif.exit.i553 ] ; 2 uses
  %.03335.i552 = phi ptr [ %i.adb, %.preheader.i548 ], [ %i.aeu, %_ZN9btMatrixXIfE7addElemEiif.exit.i553 ] ; 7 uses
  %i.adl = load float, ptr %.038.i549, align 4, !tbaa !22
  %i.adm = load float, ptr %.03335.i552, align 4, !tbaa !22
  %i.adn = fmul float %i.adl, %i.adm
  %i.ado = load float, ptr %i.add, align 4, !tbaa !22
  %i.adp = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 4
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !22
  %i.adr = call float @llvm.fmuladd.f32(float %i.ado, float %i.adq, float %i.adn)
  %i.ads = load float, ptr %i.ade, align 4, !tbaa !22
  %i.adt = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 8
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !22
  %i.adv = call float @llvm.fmuladd.f32(float %i.ads, float %i.adu, float %i.adr)
  %i.adw = load float, ptr %i.adf, align 4, !tbaa !22
  %i.adx = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 16
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !22
  %i.adz = call float @llvm.fmuladd.f32(float %i.adw, float %i.ady, float %i.adv)
  %i.aea = load float, ptr %i.adg, align 4, !tbaa !22
  %i.aeb = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 20
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !22
  %i.aed = call float @llvm.fmuladd.f32(float %i.aea, float %i.aec, float %i.adz)
  %i.aee = load float, ptr %i.adh, align 4, !tbaa !22
  %i.aef = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 24
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !22
  %i.aeh = call float @llvm.fmuladd.f32(float %i.aee, float %i.aeg, float %i.aed) ; 3 uses
  %i.aei = fcmp une float %i.aeh, 0.000000e+00
  br i1 %i.aei, label %bb.cu, label %_ZN9btMatrixXIfE7addElemEiif.exit.i553

bb.cu:                                            ; preds = %bb.ct
  %i.aej = add nsw i32 %.03236.i551, %i.acy
  %i.aek = load i32, ptr %i.xs, align 4, !tbaa !94
  %i.ael = mul nsw i32 %i.aek, %i.adi
  %i.aem = add nsw i32 %i.aej, %i.ael
  %i.aen = load ptr, ptr %i.xt, align 8, !tbaa !21
  %i.aeo = sext i32 %i.aem to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.aeo ; 2 uses
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !22 ; 2 uses
  %i.aer = fcmp oeq float %i.aeq, 0.000000e+00
  br i1 %i.aer, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aes = add nsw i32 %25, 1                     ; 2 uses
  store i32 %i.aes, ptr %i.xu, align 8, !tbaa !99
  br label %.sink.split.i.i557

bb.cw:                                            ; preds = %bb.cu
  %i.aet = fadd float %i.aeh, %i.aeq
  br label %.sink.split.i.i557

.sink.split.i.i557:                               ; preds = %bb.cw, %bb.cv
  %26 = phi i32 [ %i.aes, %bb.cv ], [ %25, %bb.cw ]
  %.sink.i.i558 = phi float [ %i.aeh, %bb.cv ], [ %i.aet, %bb.cw ]
  store float %.sink.i.i558, ptr %i.aep, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i553

_ZN9btMatrixXIfE7addElemEiif.exit.i553:           ; preds = %.sink.split.i.i557, %bb.ct
  %27 = phi i32 [ %25, %bb.ct ], [ %26, %.sink.split.i.i557 ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 32
  %i.aev = add nuw nsw i32 %.03236.i551, 1        ; 2 uses
  %exitcond.not.i554 = icmp eq i32 %i.aev, %i.acn
  br i1 %exitcond.not.i554, label %._crit_edge.i555, label %bb.ct, !llvm.loop !115

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559: ; preds = %._crit_edge.i555, %bb.cs, %bb.cp
  %i.aew = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %.0277 = load i32, ptr %i.aew, align 4, !tbaa !59 ; 2 uses
  %i.aex = icmp sgt i32 %.0277, -1
  br i1 %i.aex, label %bb.cp, label %._crit_edge794, !llvm.loop !118

._crit_edge794:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559, %._crit_edge789
  %i.aey = add nsw i32 %.fr814960, %.0279797      ; 2 uses
  %indvars.iv.next876.a = add nuw nsw i64 %indvars.iv875.a, 1
  %i.aez = icmp slt i32 %i.aey, %i.xj
  br i1 %i.aez, label %bb.ch, label %._crit_edge799, !llvm.loop !119

bb.cx:                                            ; preds = %._crit_edge799
  %i.afa = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.afb = icmp sgt i32 %i.afa, 0
  br i1 %i.afb, label %.lr.ph804, label %._crit_edge805

.lr.ph804:                                        ; preds = %bb.cx
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !37
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !72
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !78
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %scevgep1042 = getelementptr i8, ptr %i.mb, i64 28
  %scevgep1047 = getelementptr i8, ptr %i.mf, i64 -4
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph804, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585
  %indvars.iv878 = phi i64 [ 0, %.lr.ph804 ], [ %indvars.iv.next879, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585 ] ; 2 uses
  %.0276800 = phi i32 [ 0, %.lr.ph804 ], [ %i.aoa, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585 ] ; 8 uses
  %i.afm = sext i32 %.0276800 to i64              ; 3 uses
  %i.afn = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %i.afm
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !44
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 156
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !71
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [248 x i8], ptr %i.aff, i64 %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 240
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !73
  %i.afv = icmp slt i32 %.0276800, %i.afh
  br i1 %i.afv, label %bb.cz, label %.preheader.lr.ph.i560

bb.cz:                                            ; preds = %bb.cy
  %i.afw = load ptr, ptr %i.afi, align 8, !tbaa !81
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %indvars.iv878
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !85 ; 3 uses
  %i.afz = icmp sgt i32 %i.afy, 0
  br i1 %i.afz, label %.preheader.lr.ph.i560, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585

.preheader.lr.ph.i560:                            ; preds = %bb.cy, %bb.cz
  %i.aga = phi i32 [ %i.afy, %bb.cz ], [ 1, %bb.cy ] ; 11 uses
  %.pn977 = shl nsw i64 %i.afm, 4                 ; 2 uses
  %i.agb = getelementptr [4 x i8], ptr %i.mb, i64 %.pn977 ; 3 uses
  %i.agc = getelementptr [4 x i8], ptr %i.mf, i64 %.pn977 ; 10 uses
  %i.agd = load i32, ptr %i.afk, align 4          ; 3 uses
  %i.age = load ptr, ptr %i.afl, align 8          ; 4 uses
  %.promoted40.i = load i32, ptr %i.afj, align 8
  %wide.trip.count.i562 = zext nneg i32 %i.aga to i64 ; 6 uses
  %i.agf = add nsw i64 %wide.trip.count.i562, -1  ; 2 uses
  %i.agg = shl nsw i64 %i.afm, 6                  ; 2 uses
  %i.agh = add nsw i32 %i.aga, -1
  %i.agi = zext i32 %i.agh to i64
  %i.agj = shl nuw nsw i64 %i.agi, 5
  %i.agk = getelementptr i8, ptr %scevgep1042, i64 %i.agg
  %scevgep1043 = getelementptr i8, ptr %i.agk, i64 %i.agj
  %i.agl = add i32 %i.agd, 1
  %i.agm = mul i32 %.0276800, %i.agl
  %i.agn = shl nuw nsw i64 %wide.trip.count.i562, 2
  %scevgep1045 = getelementptr i8, ptr %i.age, i64 %i.agn
  %i.ago = shl nuw nsw i64 %wide.trip.count.i562, 5
  %i.agp = getelementptr i8, ptr %scevgep1047, i64 %i.agg
  %scevgep1048 = getelementptr i8, ptr %i.agp, i64 %i.ago
  %min.iters.check1053 = icmp samesign ult i32 %i.aga, 5
  %i.agq = trunc nsw i64 %i.agf to i32
  %i.agr = icmp ugt i64 %i.agf, 4294967295
  %i.ags = and i64 %wide.trip.count.i562, 3       ; 2 uses
  %i.agt = icmp eq i64 %i.ags, 0
  %i.agu = select i1 %i.agt, i64 4, i64 %i.ags
  %n.vec1055 = sub nsw i64 %wide.trip.count.i562, %i.agu ; 3 uses
  %i.agv = shl nsw i64 %n.vec1055, 5
  %i.agw = getelementptr i8, ptr %i.agc, i64 %i.agv
  br label %.preheader.i563

.preheader.i563:                                  ; preds = %._crit_edge.i570, %.preheader.lr.ph.i560
  %.038.i564 = phi ptr [ %i.akw, %._crit_edge.i570 ], [ %i.agb, %.preheader.lr.ph.i560 ] ; 8 uses
  %.03437.i565 = phi i32 [ %i.akx, %._crit_edge.i570 ], [ 0, %.preheader.lr.ph.i560 ] ; 3 uses
  %i.agx = mul i32 %i.agd, %.03437.i565
  %i.agy = add i32 %i.agm, %i.agx
  %i.agz = sext i32 %i.agy to i64
  %i.aha = shl nsw i64 %i.agz, 2                  ; 2 uses
  %scevgep1044 = getelementptr i8, ptr %i.age, i64 %i.aha ; 2 uses
  %scevgep1046 = getelementptr i8, ptr %scevgep1045, i64 %i.aha ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.038.i564, i64 4 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.038.i564, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.038.i564, i64 16 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.038.i564, i64 20 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.038.i564, i64 24 ; 2 uses
  %i.ahg = add nsw i32 %.03437.i565, %.0276800
  %i.ahh = mul nsw i32 %i.ahg, %i.agd
  %invariant.op.i = add i32 %i.ahh, %.0276800     ; 4 uses
  br i1 %min.iters.check1053, label %scalar.ph1052.preheader, label %vector.scevcheck

scalar.ph1052.preheader:                          ; preds = %vector.body1056, %vector.memcheck1041, %vector.scevcheck, %.preheader.i563
  %indvars.iv.i566.ph = phi i64 [ 0, %vector.memcheck1041 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i563 ], [ %n.vec1055, %vector.body1056 ]
  %.03335.i567.ph = phi ptr [ %i.agc, %vector.memcheck1041 ], [ %i.agc, %vector.scevcheck ], [ %i.agc, %.preheader.i563 ], [ %i.agw, %vector.body1056 ]
  br label %scalar.ph1052

vector.scevcheck:                                 ; preds = %.preheader.i563
  %i.ahi = add i32 %invariant.op.i, %i.agq
  %i.ahj = icmp slt i32 %i.ahi, %invariant.op.i
  %i.ahk = or i1 %i.ahj, %i.agr
  br i1 %i.ahk, label %scalar.ph1052.preheader, label %vector.memcheck1041

vector.memcheck1041:                              ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.agb, %scevgep1046
  %bound1 = icmp ult ptr %scevgep1044, %scevgep1043
  %found.conflict = and i1 %bound0, %bound1
  %bound01049 = icmp ult ptr %i.agc, %scevgep1046
  %bound11050 = icmp ult ptr %scevgep1044, %scevgep1048
  %found.conflict1051 = and i1 %bound01049, %bound11050
  %conflict.rdx = or i1 %found.conflict, %found.conflict1051
  br i1 %conflict.rdx, label %scalar.ph1052.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %vector.memcheck1041
  %i.ahl = load float, ptr %.038.i564, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ahl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahm = load float, ptr %i.ahb, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1061 = insertelement <4 x float> poison, float %i.ahm, i64 0
  %broadcast.splat1062 = shufflevector <4 x float> %broadcast.splatinsert1061, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahn = load float, ptr %i.ahc, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1063 = insertelement <4 x float> poison, float %i.ahn, i64 0
  %broadcast.splat1064 = shufflevector <4 x float> %broadcast.splatinsert1063, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aho = load float, ptr %i.ahd, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1065 = insertelement <4 x float> poison, float %i.aho, i64 0
  %broadcast.splat1066 = shufflevector <4 x float> %broadcast.splatinsert1065, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahp = load float, ptr %i.ahe, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1067 = insertelement <4 x float> poison, float %i.ahp, i64 0
  %broadcast.splat1068 = shufflevector <4 x float> %broadcast.splatinsert1067, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahq = load float, ptr %i.ahf, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1069 = insertelement <4 x float> poison, float %i.ahq, i64 0
  %broadcast.splat1070 = shufflevector <4 x float> %broadcast.splatinsert1069, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1071, %vector.body1056 ] ; 3 uses
  %i.ahr = shl i64 %index1057, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.agc, i64 %i.ahr ; 6 uses
  %i.ahs = getelementptr i8, ptr %i.agc, i64 %i.ahr ; 6 uses
  %next.gep1058 = getelementptr i8, ptr %i.ahs, i64 32
  %i.aht = getelementptr i8, ptr %i.agc, i64 %i.ahr ; 6 uses
  %next.gep1059 = getelementptr i8, ptr %i.aht, i64 64
  %i.ahu = getelementptr i8, ptr %i.agc, i64 %i.ahr ; 6 uses
  %next.gep1060 = getelementptr i8, ptr %i.ahu, i64 96
  %i.ahv = load float, ptr %next.gep, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ahw = load float, ptr %next.gep1058, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ahx = load float, ptr %next.gep1059, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ahy = load float, ptr %next.gep1060, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ahz = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.aia = insertelement <4 x float> %i.ahz, float %i.ahw, i64 1
  %i.aib = insertelement <4 x float> %i.aia, float %i.ahx, i64 2
  %i.aic = insertelement <4 x float> %i.aib, float %i.ahy, i64 3
  %i.aid = fmul <4 x float> %broadcast.splat, %i.aic
  %i.aie = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aif = getelementptr i8, ptr %i.ahs, i64 36
  %i.aig = getelementptr i8, ptr %i.aht, i64 68
  %i.aih = getelementptr i8, ptr %i.ahu, i64 100
  %i.aii = load float, ptr %i.aie, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aij = load float, ptr %i.aif, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aik = load float, ptr %i.aig, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ail = load float, ptr %i.aih, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aim = insertelement <4 x float> poison, float %i.aii, i64 0
  %i.ain = insertelement <4 x float> %i.aim, float %i.aij, i64 1
  %i.aio = insertelement <4 x float> %i.ain, float %i.aik, i64 2
  %i.aip = insertelement <4 x float> %i.aio, float %i.ail, i64 3
  %i.aiq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1062, <4 x float> %i.aip, <4 x float> %i.aid)
  %i.air = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ais = getelementptr i8, ptr %i.ahs, i64 40
  %i.ait = getelementptr i8, ptr %i.aht, i64 72
  %i.aiu = getelementptr i8, ptr %i.ahu, i64 104
  %i.aiv = load float, ptr %i.air, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aiw = load float, ptr %i.ais, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aix = load float, ptr %i.ait, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aiy = load float, ptr %i.aiu, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aiz = insertelement <4 x float> poison, float %i.aiv, i64 0
  %i.aja = insertelement <4 x float> %i.aiz, float %i.aiw, i64 1
  %i.ajb = insertelement <4 x float> %i.aja, float %i.aix, i64 2
  %i.ajc = insertelement <4 x float> %i.ajb, float %i.aiy, i64 3
  %i.ajd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1064, <4 x float> %i.ajc, <4 x float> %i.aiq)
  %i.aje = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ajf = getelementptr i8, ptr %i.ahs, i64 48
  %i.ajg = getelementptr i8, ptr %i.aht, i64 80
  %i.ajh = getelementptr i8, ptr %i.ahu, i64 112
  %i.aji = load float, ptr %i.aje, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajj = load float, ptr %i.ajf, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajk = load float, ptr %i.ajg, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajl = load float, ptr %i.ajh, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajm = insertelement <4 x float> poison, float %i.aji, i64 0
  %i.ajn = insertelement <4 x float> %i.ajm, float %i.ajj, i64 1
  %i.ajo = insertelement <4 x float> %i.ajn, float %i.ajk, i64 2
  %i.ajp = insertelement <4 x float> %i.ajo, float %i.ajl, i64 3
  %i.ajq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1066, <4 x float> %i.ajp, <4 x float> %i.ajd)
  %i.ajr = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.ajs = getelementptr i8, ptr %i.ahs, i64 52
  %i.ajt = getelementptr i8, ptr %i.aht, i64 84
  %i.aju = getelementptr i8, ptr %i.ahu, i64 116
  %i.ajv = load float, ptr %i.ajr, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajw = load float, ptr %i.ajs, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajx = load float, ptr %i.ajt, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajy = load float, ptr %i.aju, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajz = insertelement <4 x float> poison, float %i.ajv, i64 0
  %i.aka = insertelement <4 x float> %i.ajz, float %i.ajw, i64 1
  %i.akb = insertelement <4 x float> %i.aka, float %i.ajx, i64 2
  %i.akc = insertelement <4 x float> %i.akb, float %i.ajy, i64 3
  %i.akd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1068, <4 x float> %i.akc, <4 x float> %i.ajq)
  %i.ake = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.akf = getelementptr i8, ptr %i.ahs, i64 56
  %i.akg = getelementptr i8, ptr %i.aht, i64 88
  %i.akh = getelementptr i8, ptr %i.ahu, i64 120
  %i.aki = load float, ptr %i.ake, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akj = load float, ptr %i.akf, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akk = load float, ptr %i.akg, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akl = load float, ptr %i.akh, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akm = insertelement <4 x float> poison, float %i.aki, i64 0
  %i.akn = insertelement <4 x float> %i.akm, float %i.akj, i64 1
  %i.ako = insertelement <4 x float> %i.akn, float %i.akk, i64 2
  %i.akp = insertelement <4 x float> %i.ako, float %i.akl, i64 3
  %i.akq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1070, <4 x float> %i.akp, <4 x float> %i.akd)
  %i.akr = trunc nuw nsw i64 %index1057 to i32
  %i.aks = add i32 %invariant.op.i, %i.akr
  %i.akt = sext i32 %i.aks to i64
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.akt
  store <4 x float> %i.akq, ptr %i.aku, align 4, !tbaa !22, !alias.scope !123
  %index.next1071 = add nuw i64 %index1057, 4     ; 2 uses
  %i.akv = icmp eq i64 %index.next1071, %n.vec1055
  br i1 %i.akv, label %scalar.ph1052.preheader, label %vector.body1056, !llvm.loop !127

._crit_edge.i570:                                 ; preds = %scalar.ph1052
  %i.akw = getelementptr inbounds nuw i8, ptr %.038.i564, i64 32
  %i.akx = add nuw nsw i32 %.03437.i565, 1        ; 2 uses
  %exitcond44.not.i = icmp eq i32 %i.akx, %i.aga
  br i1 %exitcond44.not.i, label %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit, label %.preheader.i563, !llvm.loop !128

scalar.ph1052:                                    ; preds = %scalar.ph1052.preheader, %scalar.ph1052
  %indvars.iv.i566 = phi i64 [ %indvars.iv.next.i568, %scalar.ph1052 ], [ %indvars.iv.i566.ph, %scalar.ph1052.preheader ] ; 2 uses
  %.03335.i567 = phi ptr [ %i.aly, %scalar.ph1052 ], [ %.03335.i567.ph, %scalar.ph1052.preheader ] ; 7 uses
  %i.aky = load float, ptr %.038.i564, align 4, !tbaa !22
  %i.akz = load float, ptr %.03335.i567, align 4, !tbaa !22
  %i.ala = fmul float %i.aky, %i.akz
  %i.alb = load float, ptr %i.ahb, align 4, !tbaa !22
  %i.alc = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 4
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !22
  %i.ale = call float @llvm.fmuladd.f32(float %i.alb, float %i.ald, float %i.ala)
  %i.alf = load float, ptr %i.ahc, align 4, !tbaa !22
  %i.alg = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 8
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !22
  %i.ali = call float @llvm.fmuladd.f32(float %i.alf, float %i.alh, float %i.ale)
  %i.alj = load float, ptr %i.ahd, align 4, !tbaa !22
  %i.alk = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 16
  %i.all = load float, ptr %i.alk, align 4, !tbaa !22
  %i.alm = call float @llvm.fmuladd.f32(float %i.alj, float %i.all, float %i.ali)
  %i.aln = load float, ptr %i.ahe, align 4, !tbaa !22
  %i.alo = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 20
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !22
  %i.alq = call float @llvm.fmuladd.f32(float %i.aln, float %i.alp, float %i.alm)
  %i.alr = load float, ptr %i.ahf, align 4, !tbaa !22
  %i.als = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 24
  %i.alt = load float, ptr %i.als, align 4, !tbaa !22
  %i.alu = call float @llvm.fmuladd.f32(float %i.alr, float %i.alt, float %i.alq)
  %i.alv = trunc nuw nsw i64 %indvars.iv.i566 to i32
  %.reass.i = add i32 %invariant.op.i, %i.alv
  %i.alw = sext i32 %.reass.i to i64
  %i.alx = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.alw
  store float %i.alu, ptr %i.alx, align 4, !tbaa !22
  %i.aly = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 32
  %indvars.iv.next.i568 = add nuw nsw i64 %indvars.iv.i566, 1 ; 2 uses
  %exitcond.not.i569 = icmp eq i64 %indvars.iv.next.i568, %wide.trip.count.i562
  br i1 %exitcond.not.i569, label %._crit_edge.i570, label %scalar.ph1052, !llvm.loop !129

_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit:  ; preds = %._crit_edge.i570
  %i.alz = mul i32 %i.aga, %i.aga
  %i.ama = add i32 %.promoted40.i, %i.alz
  store i32 %i.ama, ptr %i.afj, align 8, !tbaa !99
  %.not349 = icmp eq ptr %i.afu, null
  br i1 %.not349, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585, label %.preheader.lr.ph.i571

.preheader.lr.ph.i571:                            ; preds = %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit
  %i.amb = zext nneg i32 %i.aga to i64
  %i.amc = shl nuw nsw i64 %i.amb, 3              ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.amc
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.amc
  %.promoted.i573 = load i32, ptr %i.afj, align 8
  br label %.preheader.i574

.preheader.i574:                                  ; preds = %._crit_edge.i581, %.preheader.lr.ph.i571
  %28 = phi i32 [ %31, %._crit_edge.i581 ], [ %.promoted.i573, %.preheader.lr.ph.i571 ]
  %.038.i575 = phi ptr [ %i.aml, %._crit_edge.i581 ], [ %i.ame, %.preheader.lr.ph.i571 ] ; 7 uses
  %.03437.i576 = phi i32 [ %i.amm, %._crit_edge.i581 ], [ 0, %.preheader.lr.ph.i571 ] ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.038.i575, i64 4
  %i.amg = getelementptr inbounds nuw i8, ptr %.038.i575, i64 8
  %i.amh = getelementptr inbounds nuw i8, ptr %.038.i575, i64 16
  %i.ami = getelementptr inbounds nuw i8, ptr %.038.i575, i64 20
  %i.amj = getelementptr inbounds nuw i8, ptr %.038.i575, i64 24
  %i.amk = add nsw i32 %.03437.i576, %.0276800
  br label %bb.da

._crit_edge.i581:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i579
  %i.aml = getelementptr inbounds nuw i8, ptr %.038.i575, i64 32
  %i.amm = add nuw nsw i32 %.03437.i576, 1        ; 2 uses
  %exitcond40.not.i582 = icmp eq i32 %i.amm, %i.aga
  br i1 %exitcond40.not.i582, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585, label %.preheader.i574, !llvm.loop !116

bb.da:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i579, %.preheader.i574
  %29 = phi i32 [ %28, %.preheader.i574 ], [ %31, %_ZN9btMatrixXIfE7addElemEiif.exit.i579 ] ; 3 uses
  %.03236.i577 = phi i32 [ 0, %.preheader.i574 ], [ %i.anx, %_ZN9btMatrixXIfE7addElemEiif.exit.i579 ] ; 2 uses
  %.03335.i578 = phi ptr [ %i.amd, %.preheader.i574 ], [ %i.anw, %_ZN9btMatrixXIfE7addElemEiif.exit.i579 ] ; 7 uses
  %i.amn = load float, ptr %.038.i575, align 4, !tbaa !22
  %i.amo = load float, ptr %.03335.i578, align 4, !tbaa !22
  %i.amp = fmul float %i.amn, %i.amo
  %i.amq = load float, ptr %i.amf, align 4, !tbaa !22
  %i.amr = getelementptr inbounds nuw i8, ptr %.03335.i578, i64 4
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !22
  %i.amt = call float @llvm.fmuladd.f32(float %i.amq, float %i.ams, float %i.amp)
  %i.amu = load float, ptr %i.amg, align 4, !tbaa !22
  %i.amv = getelementptr inbounds nuw i8, ptr %.03335.i578, i64 8
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !22
  %i.amx = call float @llvm.fmuladd.f32(float %i.amu, float %i.amw, float %i.amt)
  %i.amy = load float, ptr %i.amh, align 4, !tbaa !22
  %i.amz = getelementptr inbounds nuw i8, ptr %.03335.i578, i64 16
  %i.ana = load float, ptr %i.amz, align 4, !tbaa !22
  %i.anb = call float @llvm.fmuladd.f32(float %i.amy, float %i.ana, float %i.amx)
  %i.anc = load float, ptr %i.ami, align 4, !tbaa !22
  %i.and = getelementptr inbounds nuw i8, ptr %.03335.i578, i64 20
  %i.ane = load float, ptr %i.and, align 4, !tbaa !22
  %i.anf = call float @llvm.fmuladd.f32(float %i.anc, float %i.ane, float %i.anb)
  %i.ang = load float, ptr %i.amj, align 4, !tbaa !22
  %i.anh = getelementptr inbounds nuw i8, ptr %.03335.i578, i64 24
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !22
  %i.anj = call float @llvm.fmuladd.f32(float %i.ang, float %i.ani, float %i.anf) ; 3 uses
  %i.ank = fcmp une float %i.anj, 0.000000e+00
  br i1 %i.ank, label %bb.db, label %_ZN9btMatrixXIfE7addElemEiif.exit.i579

bb.db:                                            ; preds = %bb.da
  %i.anl = add nsw i32 %.03236.i577, %.0276800
  %i.anm = load i32, ptr %i.afk, align 4, !tbaa !94
  %i.ann = mul nsw i32 %i.anm, %i.amk
  %i.ano = add nsw i32 %i.anl, %i.ann
  %i.anp = load ptr, ptr %i.afl, align 8, !tbaa !21
  %i.anq = sext i32 %i.ano to i64
  %i.anr = getelementptr inbounds [4 x i8], ptr %i.anp, i64 %i.anq ; 2 uses
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !22 ; 2 uses
  %i.ant = fcmp oeq float %i.ans, 0.000000e+00
  br i1 %i.ant, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.anu = add nsw i32 %29, 1                     ; 2 uses
  store i32 %i.anu, ptr %i.afj, align 8, !tbaa !99
  br label %.sink.split.i.i583

bb.dd:                                            ; preds = %bb.db
  %i.anv = fadd float %i.anj, %i.ans
  br label %.sink.split.i.i583

.sink.split.i.i583:                               ; preds = %bb.dd, %bb.dc
  %30 = phi i32 [ %i.anu, %bb.dc ], [ %29, %bb.dd ]
  %.sink.i.i584 = phi float [ %i.anj, %bb.dc ], [ %i.anv, %bb.dd ]
  store float %.sink.i.i584, ptr %i.anr, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i579

_ZN9btMatrixXIfE7addElemEiif.exit.i579:           ; preds = %.sink.split.i.i583, %bb.da
  %31 = phi i32 [ %29, %bb.da ], [ %30, %.sink.split.i.i583 ] ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.03335.i578, i64 32
  %i.anx = add nuw nsw i32 %.03236.i577, 1        ; 2 uses
  %exitcond.not.i580 = icmp eq i32 %i.anx, %i.aga
  br i1 %exitcond.not.i580, label %._crit_edge.i581, label %bb.da, !llvm.loop !115

bb.de:                                            ; preds = %._crit_edge799
  %i.any = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #16
  br label %bb.dg

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585: ; preds = %._crit_edge.i581, %bb.cz, %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit
  %i.anz = phi i32 [ %i.afy, %bb.cz ], [ %i.aga, %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit ], [ %i.aga, %._crit_edge.i581 ]
  %i.aoa = add i32 %i.anz, %.0276800              ; 2 uses
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 1
  %i.aob = icmp slt i32 %i.aoa, %i.afa
  br i1 %i.aob, label %bb.cy, label %._crit_edge805, !llvm.loop !130

._crit_edge805:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585, %bb.cx
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.aoc = load i32, ptr %i.xc, align 8, !tbaa !131 ; 5 uses
  %i.aod = icmp sgt i32 %i.aoc, 0
  br i1 %i.aod, label %.lr.ph808, label %bb.df

.lr.ph808:                                        ; preds = %._crit_edge805
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !94
  %i.aog = add i32 %i.aof, 1                      ; 3 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !21 ; 3 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %.promoted810 = load i32, ptr %i.aol, align 8, !tbaa !99
  %wide.trip.count884 = zext nneg i32 %i.aoc to i64 ; 2 uses
  %xtraiter1157 = and i64 %wide.trip.count884, 1
  %i.aom = icmp eq i32 %i.aoc, 1
  br i1 %i.aom, label %.epil.preheader1156, label %.lr.ph808.new

.lr.ph808.new:                                    ; preds = %.lr.ph808
  %unroll_iter1160 = and i64 %wide.trip.count884, 2147483646
  br label %bb.dh

._crit_edge809.unr-lcssa:                         ; preds = %bb.dh
  %lcmp.mod1158.not = icmp eq i64 %xtraiter1157, 0
  br i1 %lcmp.mod1158.not, label %._crit_edge809, label %.epil.preheader1156

.epil.preheader1156:                              ; preds = %._crit_edge809.unr-lcssa, %.lr.ph808
  %indvars.iv881.epil.init = phi i64 [ 0, %.lr.ph808 ], [ %indvars.iv.next882.1, %._crit_edge809.unr-lcssa ]
  %lcmp.mod1159 = trunc i32 %i.aoc to i1
  call void @llvm.assume(i1 %lcmp.mod1159)
  %i.aon = trunc nuw nsw i64 %indvars.iv881.epil.init to i32
  %i.aoo = mul i32 %i.aog, %i.aon
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aop ; 2 uses
  %i.aor = load float, ptr %i.aoq, align 4, !tbaa !22
  %i.aos = load float, ptr %i.aoj, align 4, !tbaa !132
  %i.aot = load float, ptr %i.aok, align 4, !tbaa !134
  %i.aou = fdiv float %i.aos, %i.aot
  %i.aov = fadd float %i.aor, %i.aou
  store float %i.aov, ptr %i.aoq, align 4, !tbaa !22
  br label %._crit_edge809

._crit_edge809:                                   ; preds = %._crit_edge809.unr-lcssa, %.epil.preheader1156
  %i.aow = add i32 %i.aoc, %.promoted810
  store i32 %i.aow, ptr %i.aol, align 8, !tbaa !99
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge809, %._crit_edge805
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull @.str.12)
          to label %bb.di unwind label %bb.dt

bb.dg:                                            ; preds = %bb.de, %bb.cg
  %.pn355.pn.pn = phi { ptr, i32 } [ %i.any, %bb.de ], [ %i.xz, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.ed

bb.dh:                                            ; preds = %bb.dh, %.lr.ph808.new
  %indvars.iv881 = phi i64 [ 0, %.lr.ph808.new ], [ %indvars.iv.next882.1, %bb.dh ] ; 3 uses
  %niter1161 = phi i64 [ 0, %.lr.ph808.new ], [ %niter1161.next.1, %bb.dh ]
  %i.aox = trunc nuw nsw i64 %indvars.iv881 to i32
  %i.aoy = mul i32 %i.aog, %i.aox
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aoz ; 2 uses
  %i.apb = load float, ptr %i.apa, align 4, !tbaa !22
  %i.apc = load float, ptr %i.aoj, align 4, !tbaa !132
  %i.apd = load float, ptr %i.aok, align 4, !tbaa !134
  %i.ape = fdiv float %i.apc, %i.apd
  %i.apf = fadd float %i.apb, %i.ape
  store float %i.apf, ptr %i.apa, align 4, !tbaa !22
  %i.apg = trunc i64 %indvars.iv881 to i32
  %i.aph = or disjoint i32 %i.apg, 1
  %i.api = mul i32 %i.aog, %i.aph
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.apj ; 2 uses
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !22
  %i.apm = load float, ptr %i.aoj, align 4, !tbaa !132
  %i.apn = load float, ptr %i.aok, align 4, !tbaa !134
  %i.apo = fdiv float %i.apm, %i.apn
  %i.app = fadd float %i.apl, %i.apo
  store float %i.app, ptr %i.apk, align 4, !tbaa !22
  %indvars.iv.next882.1 = add nuw nsw i64 %indvars.iv881, 2 ; 2 uses
  %niter1161.next.1 = add i64 %niter1161, 2       ; 2 uses
  %niter1161.ncmp.1 = icmp eq i64 %niter1161.next.1, %unroll_iter1160
  br i1 %niter1161.ncmp.1, label %._crit_edge809.unr-lcssa, label %bb.dh, !llvm.loop !135

bb.di:                                            ; preds = %bb.df
  %i.apq = load i32, ptr %i.xc, align 8, !tbaa !131 ; 2 uses
  %i.apr = icmp sgt i32 %i.apq, 0
  br i1 %i.apr, label %.preheader.lr.ph.i586, label %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit

.preheader.lr.ph.i586:                            ; preds = %bb.di
  %i.aps = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.apt = load i32, ptr %i.aps, align 4          ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.apv = load ptr, ptr %i.apu, align 8          ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %.promoted17.i = load i32, ptr %i.apw, align 8
  %i.apx = sext i32 %i.apt to i64                 ; 6 uses
  %wide.trip.count25.i = zext nneg i32 %i.apq to i64
  %ident.check.not = icmp eq i32 %i.apt, 1
  br label %.preheader.i587

.preheader.i587:                                  ; preds = %bb.dj, %.preheader.lr.ph.i586
  %indvars.iv22.i = phi i64 [ 0, %.preheader.lr.ph.i586 ], [ %indvars.iv.next23.i, %bb.dj ] ; 11 uses
  %.lcssa19.i = phi i32 [ %.promoted17.i, %.preheader.lr.ph.i586 ], [ %.lcssa18.i, %bb.dj ] ; 2 uses
  %.not.i588 = icmp eq i64 %indvars.iv22.i, 0
  br i1 %.not.i588, label %bb.dj, label %.lr.ph.i589

.lr.ph.i589:                                      ; preds = %.preheader.i587
  %i.apy = mul nsw i64 %indvars.iv22.i, %i.apx
  %i.apz = getelementptr [4 x i8], ptr %i.apv, i64 %i.apy ; 6 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.apv, i64 %indvars.iv22.i ; 6 uses
  %min.iters.check1077 = icmp samesign ugt i64 %indvars.iv22.i, 7
  %or.cond1121 = select i1 %min.iters.check1077, i1 %ident.check.not, i1 false
  br i1 %or.cond1121, label %vector.ph1078, label %scalar.ph1076.preheader

vector.ph1078:                                    ; preds = %.lr.ph.i589
  %n.vec1079 = and i64 %indvars.iv22.i, 9223372036854775800 ; 3 uses
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1078
  %index1081 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1084, %vector.body1080 ] ; 3 uses
  %i.aqa = getelementptr [4 x i8], ptr %i.apz, i64 %index1081 ; 2 uses
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 16
  %wide.load1082.a = load <4 x float>, ptr %i.aqa, align 4, !tbaa !22
  %wide.load1083 = load <4 x float>, ptr %i.aqb, align 4, !tbaa !22
  %i.aqc = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index1081 ; 2 uses
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 16
  store <4 x float> %wide.load1082.a, ptr %i.aqc, align 4, !tbaa !22
  store <4 x float> %wide.load1083, ptr %i.aqd, align 4, !tbaa !22
  %index.next1084 = add nuw i64 %index1081, 8     ; 2 uses
  %i.aqe = icmp eq i64 %index.next1084, %n.vec1079
  br i1 %i.aqe, label %middle.block1085, label %vector.body1080, !llvm.loop !136

middle.block1085:                                 ; preds = %vector.body1080
  %cmp.n1086 = icmp eq i64 %indvars.iv22.i, %n.vec1079
  br i1 %cmp.n1086, label %._crit_edge.i593, label %scalar.ph1076.preheader

scalar.ph1076.preheader:                          ; preds = %.lr.ph.i589, %middle.block1085
  %indvars.iv.i590.ph = phi i64 [ 0, %.lr.ph.i589 ], [ %n.vec1079, %middle.block1085 ] ; 3 uses
  %xtraiter1162 = and i64 %indvars.iv22.i, 3      ; 2 uses
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1162, 0
  br i1 %lcmp.mod1163.not, label %scalar.ph1076.prol.loopexit, label %scalar.ph1076.prol

scalar.ph1076.prol:                               ; preds = %scalar.ph1076.preheader, %scalar.ph1076.prol
  %indvars.iv.i590.prol = phi i64 [ %indvars.iv.next.i591.prol, %scalar.ph1076.prol ], [ %indvars.iv.i590.ph, %scalar.ph1076.preheader ] ; 3 uses
  %prol.iter1164 = phi i64 [ %prol.iter1164.next, %scalar.ph1076.prol ], [ 0, %scalar.ph1076.preheader ]
  %i.aqf = getelementptr [4 x i8], ptr %i.apz, i64 %indvars.iv.i590.prol
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !22
  %i.aqh = mul nsw i64 %indvars.iv.i590.prol, %i.apx
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqh
  store float %i.aqg, ptr %gep.i.prol, align 4, !tbaa !22
  %indvars.iv.next.i591.prol = add nuw nsw i64 %indvars.iv.i590.prol, 1 ; 2 uses
  %prol.iter1164.next = add i64 %prol.iter1164, 1 ; 2 uses
  %prol.iter1164.cmp.not = icmp eq i64 %prol.iter1164.next, %xtraiter1162
  br i1 %prol.iter1164.cmp.not, label %scalar.ph1076.prol.loopexit, label %scalar.ph1076.prol, !llvm.loop !137

scalar.ph1076.prol.loopexit:                      ; preds = %scalar.ph1076.prol, %scalar.ph1076.preheader
  %indvars.iv.i590.unr = phi i64 [ %indvars.iv.i590.ph, %scalar.ph1076.preheader ], [ %indvars.iv.next.i591.prol, %scalar.ph1076.prol ]
  %i.aqi = sub nsw i64 %indvars.iv.i590.ph, %indvars.iv22.i
  %i.aqj = icmp ugt i64 %i.aqi, -4
  br i1 %i.aqj, label %._crit_edge.i593, label %scalar.ph1076

._crit_edge.i593:                                 ; preds = %scalar.ph1076.prol.loopexit, %scalar.ph1076, %middle.block1085
  %i.aqk = trunc nuw nsw i64 %indvars.iv22.i to i32
  %i.aql = add i32 %.lcssa19.i, %i.aqk            ; 2 uses
  store i32 %i.aql, ptr %i.apw, align 8, !tbaa !99
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.i593, %.preheader.i587
  %.lcssa18.i = phi i32 [ %i.aql, %._crit_edge.i593 ], [ %.lcssa19.i, %.preheader.i587 ]
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count25.i
  br i1 %exitcond26.not.i, label %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit, label %.preheader.i587, !llvm.loop !138

scalar.ph1076:                                    ; preds = %scalar.ph1076.prol.loopexit, %scalar.ph1076
  %indvars.iv.i590 = phi i64 [ %indvars.iv.next.i591.3, %scalar.ph1076 ], [ %indvars.iv.i590.unr, %scalar.ph1076.prol.loopexit ] ; 6 uses
  %i.aqm = getelementptr [4 x i8], ptr %i.apz, i64 %indvars.iv.i590
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !22
  %i.aqo = mul nsw i64 %indvars.iv.i590, %i.apx
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqo
  store float %i.aqn, ptr %gep.i, align 4, !tbaa !22
  %indvars.iv.next.i591 = add nuw nsw i64 %indvars.iv.i590, 1 ; 2 uses
  %i.aqp = getelementptr [4 x i8], ptr %i.apz, i64 %indvars.iv.next.i591
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !22
  %i.aqr = mul nsw i64 %indvars.iv.next.i591, %i.apx
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqr
  store float %i.aqq, ptr %gep.i.1, align 4, !tbaa !22
  %indvars.iv.next.i591.1 = add nuw nsw i64 %indvars.iv.i590, 2 ; 2 uses
  %i.aqs = getelementptr [4 x i8], ptr %i.apz, i64 %indvars.iv.next.i591.1
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !22
  %i.aqu = mul nsw i64 %indvars.iv.next.i591.1, %i.apx
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqu
  store float %i.aqt, ptr %gep.i.2, align 4, !tbaa !22
  %indvars.iv.next.i591.2 = add nuw nsw i64 %indvars.iv.i590, 3 ; 2 uses
  %i.aqv = getelementptr [4 x i8], ptr %i.apz, i64 %indvars.iv.next.i591.2
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !22
  %i.aqx = mul nsw i64 %indvars.iv.next.i591.2, %i.apx
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqx
  store float %i.aqw, ptr %gep.i.3, align 4, !tbaa !22
  %indvars.iv.next.i591.3 = add nuw nsw i64 %indvars.iv.i590, 4 ; 2 uses
  %exitcond.not.i592.3 = icmp eq i64 %indvars.iv.next.i591.3, %indvars.iv22.i
  br i1 %exitcond.not.i592.3, label %._crit_edge.i593, label %scalar.ph1076, !llvm.loop !139

_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit: ; preds = %bb.dj, %bb.di
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull @.str.13)
          to label %bb.dk unwind label %bb.du

bb.dk:                                            ; preds = %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 4 uses
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !16 ; 2 uses
  %i.ara = icmp sgt i32 %i.b, %i.aqz
  br i1 %i.ara, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.arc = load i32, ptr %i.arb, align 8, !tbaa !20
  %i.ard = icmp slt i32 %i.arc, %i.b
  br i1 %i.ard, label %bb.dm, label %..lr.ph.i_crit_edge.i594

..lr.ph.i_crit_edge.i594:                         ; preds = %bb.dl
  %.phi.trans.insert.i595 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %.pre.i596 = load ptr, ptr %.phi.trans.insert.i595, align 8, !tbaa !21
  br label %.lr.ph.i.i597

bb.dm:                                            ; preds = %bb.dl
  %i.are = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i602 unwind label %bb.dv ; 9 uses

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i602: ; preds = %bb.dm
  %.pre.i.i601 = load i32, ptr %i.aqy, align 4, !tbaa !16 ; 3 uses
  %i.arf = icmp sgt i32 %.pre.i.i601, 0
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !21 ; 9 uses
  br i1 %i.arf, label %.lr.ph.i.i.i.i608, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i604

.lr.ph.i.i.i.i608:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i602
  %i.ari = ptrtoaddr ptr %i.arh to i64
  %i.arj = ptrtoaddr ptr %i.are to i64
  %wide.trip.count.i.i.i.i609 = zext nneg i32 %.pre.i.i601 to i64 ; 5 uses
  %min.iters.check1091 = icmp ult i32 %.pre.i.i601, 8
  %i.ark = sub i64 %i.ari, %i.arj
  %diff.check1089 = icmp ugt i64 %i.ark, -32
  %or.cond1122 = select i1 %min.iters.check1091, i1 true, i1 %diff.check1089
  br i1 %or.cond1122, label %scalar.ph1090.preheader, label %vector.ph1092

vector.ph1092:                                    ; preds = %.lr.ph.i.i.i.i608
  %n.vec1093 = and i64 %wide.trip.count.i.i.i.i609, 2147483640 ; 3 uses
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1092
  %index1095 = phi i64 [ 0, %vector.ph1092 ], [ %index.next1098, %vector.body1094 ] ; 3 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %index1095 ; 2 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %index1095 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 16
  %wide.load1096.a = load <4 x float>, ptr %i.arm, align 4, !tbaa !22
  %wide.load1097 = load <4 x float>, ptr %i.arn, align 4, !tbaa !22
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  store <4 x float> %wide.load1096.a, ptr %i.arl, align 4, !tbaa !22
  store <4 x float> %wide.load1097, ptr %i.aro, align 4, !tbaa !22
  %index.next1098 = add nuw i64 %index1095, 8     ; 2 uses
  %i.arp = icmp eq i64 %index.next1098, %n.vec1093
  br i1 %i.arp, label %middle.block1099, label %vector.body1094, !llvm.loop !140

middle.block1099:                                 ; preds = %vector.body1094
  %cmp.n1100 = icmp eq i64 %n.vec1093, %wide.trip.count.i.i.i.i609
  br i1 %cmp.n1100, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606, label %scalar.ph1090.preheader

scalar.ph1090.preheader:                          ; preds = %.lr.ph.i.i.i.i608, %middle.block1099
  %indvars.iv.i.i.i.i610.ph = phi i64 [ 0, %.lr.ph.i.i.i.i608 ], [ %n.vec1093, %middle.block1099 ] ; 3 uses
  %xtraiter1165 = and i64 %wide.trip.count.i.i.i.i609, 3 ; 2 uses
  %lcmp.mod1166.not = icmp eq i64 %xtraiter1165, 0
  br i1 %lcmp.mod1166.not, label %scalar.ph1090.prol.loopexit, label %scalar.ph1090.prol

scalar.ph1090.prol:                               ; preds = %scalar.ph1090.preheader, %scalar.ph1090.prol
  %indvars.iv.i.i.i.i610.prol = phi i64 [ %indvars.iv.next.i.i.i.i611.prol, %scalar.ph1090.prol ], [ %indvars.iv.i.i.i.i610.ph, %scalar.ph1090.preheader ] ; 3 uses
  %prol.iter1167 = phi i64 [ %prol.iter1167.next, %scalar.ph1090.prol ], [ 0, %scalar.ph1090.preheader ]
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %indvars.iv.i.i.i.i610.prol
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.i.i.i.i610.prol
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !22
  store float %i.ars, ptr %i.arq, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i611.prol = add nuw nsw i64 %indvars.iv.i.i.i.i610.prol, 1 ; 2 uses
  %prol.iter1167.next = add i64 %prol.iter1167, 1 ; 2 uses
  %prol.iter1167.cmp.not = icmp eq i64 %prol.iter1167.next, %xtraiter1165
  br i1 %prol.iter1167.cmp.not, label %scalar.ph1090.prol.loopexit, label %scalar.ph1090.prol, !llvm.loop !141

scalar.ph1090.prol.loopexit:                      ; preds = %scalar.ph1090.prol, %scalar.ph1090.preheader
  %indvars.iv.i.i.i.i610.unr = phi i64 [ %indvars.iv.i.i.i.i610.ph, %scalar.ph1090.preheader ], [ %indvars.iv.next.i.i.i.i611.prol, %scalar.ph1090.prol ]
  %i.art = sub nsw i64 %indvars.iv.i.i.i.i610.ph, %wide.trip.count.i.i.i.i609
  %i.aru = icmp ugt i64 %i.art, -4
  br i1 %i.aru, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606, label %scalar.ph1090

scalar.ph1090:                                    ; preds = %scalar.ph1090.prol.loopexit, %scalar.ph1090
  %indvars.iv.i.i.i.i610 = phi i64 [ %indvars.iv.next.i.i.i.i611.3, %scalar.ph1090 ], [ %indvars.iv.i.i.i.i610.unr, %scalar.ph1090.prol.loopexit ] ; 6 uses
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %indvars.iv.i.i.i.i610
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.i.i.i.i610
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !22
  store float %i.arx, ptr %i.arv, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i611 = add nuw nsw i64 %indvars.iv.i.i.i.i610, 1 ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %indvars.iv.next.i.i.i.i611
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.next.i.i.i.i611
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !22
  store float %i.asa, ptr %i.ary, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i611.1 = add nuw nsw i64 %indvars.iv.i.i.i.i610, 2 ; 2 uses
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %indvars.iv.next.i.i.i.i611.1
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.next.i.i.i.i611.1
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !22
  store float %i.asd, ptr %i.asb, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i611.2 = add nuw nsw i64 %indvars.iv.i.i.i.i610, 3 ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %indvars.iv.next.i.i.i.i611.2
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.next.i.i.i.i611.2
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !22
  store float %i.asg, ptr %i.ase, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i611.3 = add nuw nsw i64 %indvars.iv.i.i.i.i610, 4 ; 2 uses
  %exitcond.not.i.i.i.i612.3 = icmp eq i64 %indvars.iv.next.i.i.i.i611.3, %wide.trip.count.i.i.i.i609
  br i1 %exitcond.not.i.i.i.i612.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606, label %scalar.ph1090, !llvm.loop !142

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i604: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i602
  %.not.i5.i.i.i605 = icmp eq ptr %i.arh, null
  br i1 %.not.i5.i.i.i605, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i607, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606: ; preds = %scalar.ph1090.prol.loopexit, %scalar.ph1090, %middle.block1099, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i604
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.asi = load i8, ptr %i.ash, align 8, !tbaa !31, !range !32, !noundef !33
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %bb.dn, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i607

bb.dn:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.arh)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i607 unwind label %bb.dv

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i607: ; preds = %bb.dn, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i606, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i604
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i8 1, ptr %i.ask, align 8, !tbaa !31
  store ptr %i.are, ptr %i.arg, align 8, !tbaa !21
  store i32 %i.b, ptr %i.arb, align 8, !tbaa !20
  br label %.lr.ph.i.i597

.lr.ph.i.i597:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i607, %..lr.ph.i_crit_edge.i594
  %i.asl = phi ptr [ %.pre.i596, %..lr.ph.i_crit_edge.i594 ], [ %i.are, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i607 ]
  %i.asm = sext i32 %i.aqz to i64                 ; 2 uses
  %i.asn = shl nsw i64 %i.asm, 2
  %scevgep.i599 = getelementptr i8, ptr %i.asl, i64 %i.asn
  %i.aso = sub nsw i64 %.pre-phi, %i.asm
  %i.asp = shl nsw i64 %i.aso, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i599, i8 0, i64 %i.asp, i1 false), !tbaa !22
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph.i.i597, %bb.dk
  store i32 %i.b, ptr %i.aqy, align 4, !tbaa !16
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 3 uses
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !16 ; 2 uses
  %i.ass = icmp sgt i32 %i.b, %i.asr
  br i1 %i.ass, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.asu = load i32, ptr %i.ast, align 8, !tbaa !20
  %i.asv = icmp slt i32 %i.asu, %i.b
  br i1 %i.asv, label %bb.dq, label %..lr.ph.i_crit_edge.i616

..lr.ph.i_crit_edge.i616:                         ; preds = %bb.dp
  %.phi.trans.insert.i617 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.pre.i618 = load ptr, ptr %.phi.trans.insert.i617, align 8, !tbaa !21
  br label %.lr.ph.i.i619

bb.dq:                                            ; preds = %bb.dp
  %i.asw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
end_hunk_0
begin_hunk_1_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastMultiBodyERK19btContactSolverInfo:bb.a

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next301, %vector.body297 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index298 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index298 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load299 = load <4 x float>, ptr %i.eo, align 4, !tbaa !22
  %wide.load300 = load <4 x float>, ptr %i.ep, align 4, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x float> %wide.load299, ptr %i.en, align 4, !tbaa !22
  store <4 x float> %wide.load300, ptr %i.eq, align 4, !tbaa !22
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.er, label %middle.block302, label %vector.body297, !llvm.loop !169

middle.block302:                                  ; preds = %vector.body297
  %cmp.n303 = icmp eq i64 %n.vec296, %wide.trip.count.i.i.i.i125
  br i1 %cmp.n303, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph293.preheader

scalar.ph293.preheader:                           ; preds = %.lr.ph.i.i.i.i124, %middle.block302
  %indvars.iv.i.i.i.i126.ph = phi i64 [ 0, %.lr.ph.i.i.i.i124 ], [ %n.vec296, %middle.block302 ] ; 3 uses
  %xtraiter333 = and i64 %wide.trip.count.i.i.i.i125, 3 ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol

scalar.ph293.prol:                                ; preds = %scalar.ph293.preheader, %scalar.ph293.prol
  %indvars.iv.i.i.i.i126.prol = phi i64 [ %indvars.iv.next.i.i.i.i127.prol, %scalar.ph293.prol ], [ %indvars.iv.i.i.i.i126.ph, %scalar.ph293.preheader ] ; 3 uses
  %prol.iter335 = phi i64 [ %prol.iter335.next, %scalar.ph293.prol ], [ 0, %scalar.ph293.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i126.prol
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i.i126.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !22
  store float %i.eu, ptr %i.es, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.prol = add nuw nsw i64 %indvars.iv.i.i.i.i126.prol, 1 ; 2 uses
  %prol.iter335.next = add i64 %prol.iter335, 1   ; 2 uses
  %prol.iter335.cmp.not = icmp eq i64 %prol.iter335.next, %xtraiter333
  br i1 %prol.iter335.cmp.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol, !llvm.loop !170

scalar.ph293.prol.loopexit:                       ; preds = %scalar.ph293.prol, %scalar.ph293.preheader
  %indvars.iv.i.i.i.i126.unr = phi i64 [ %indvars.iv.i.i.i.i126.ph, %scalar.ph293.preheader ], [ %indvars.iv.next.i.i.i.i127.prol, %scalar.ph293.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i.i.i.i126.ph, %wide.trip.count.i.i.i.i125
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph293

scalar.ph293:                                     ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293
  %indvars.iv.i.i.i.i126 = phi i64 [ %indvars.iv.next.i.i.i.i127.3, %scalar.ph293 ], [ %indvars.iv.i.i.i.i126.unr, %scalar.ph293.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i126
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i.i126
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22
  store float %i.ez, ptr %i.ex, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !22
  store float %i.fc, ptr %i.fa, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.1 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127.1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127.1
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !22
  store float %i.ff, ptr %i.fd, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.2 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127.2
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127.2
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !22
  store float %i.fi, ptr %i.fg, align 4, !tbaa !22
  %indvars.iv.next.i.i.i.i127.3 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 4 ; 2 uses
  %exitcond.not.i.i.i.i128.3 = icmp eq i64 %indvars.iv.next.i.i.i.i127.3, %wide.trip.count.i.i.i.i125
  br i1 %exitcond.not.i.i.i.i128.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph293, !llvm.loop !171

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i118
  %.not.i5.i.i.i121 = icmp eq ptr %i.ej, null
  br i1 %.not.i5.i.i.i121, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122: ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293, %middle.block302, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !31, !range !32, !noundef !33
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.s, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ej)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123 unwind label %bb.t

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i8 1, ptr %i.fm, align 8, !tbaa !31
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !21
  store i32 %i.b, ptr %i.ed, align 8, !tbaa !20
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123, %..lr.ph.i_crit_edge.i110
  %i.fn = phi ptr [ %.pre.i112, %..lr.ph.i_crit_edge.i110 ], [ %i.eg, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123 ]
  %i.fo = sext i32 %i.eb to i64                   ; 2 uses
  %i.fp = shl nsw i64 %i.fo, 2
  %scevgep.i115 = getelementptr i8, ptr %i.fn, i64 %i.fp
  %i.fq = sub nsw i64 %.pre-phi, %i.fo
  %i.fr = shl nsw i64 %i.fq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i115, i8 0, i64 %i.fr, i1 false), !tbaa !22
  br label %_ZN9btVectorXIfE6resizeEi.exit131

_ZN9btVectorXIfE6resizeEi.exit131:                ; preds = %bb.p, %.lr.ph.i.i113
  store i32 %i.b, ptr %i.ea, align 4, !tbaa !16
  br i1 %i.az, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit131
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !157 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !21 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !21 ; 3 uses
  %wide.trip.count209 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter337 = and i64 %wide.trip.count209, 1
  %i.fy = icmp eq i32 %i.b, 1
  br i1 %i.fy, label %.epil.preheader336, label %.lr.ph178.new

.lr.ph178.new:                                    ; preds = %.lr.ph178
  %unroll_iter340 = and i64 %wide.trip.count209, 2147483646
  br label %bb.u

._crit_edge179.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %._crit_edge179, label %.epil.preheader336

.epil.preheader336:                               ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178
  %indvars.iv206.epil.init = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next207.1, %._crit_edge179.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod339 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod339)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv206.epil.init
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !158 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 136
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !172
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv206.epil.init
  store float %i.gc, ptr %i.gd, align 4, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 140
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !173
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv206.epil.init
  store float %i.gf, ptr %i.gg, align 4, !tbaa !22
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.epil.preheader336, %._crit_edge179.loopexit.unr-lcssa, %_ZN9btVectorXIfE6resizeEi.exit131
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.8)
          to label %bb.v unwind label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.i, %bb.h
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.bt

bb.u:                                             ; preds = %bb.u, %.lr.ph178.new
  %indvars.iv206 = phi i64 [ 0, %.lr.ph178.new ], [ %indvars.iv.next207.1, %bb.u ] ; 5 uses
  %niter341 = phi i64 [ 0, %.lr.ph178.new ], [ %niter341.next.1, %bb.u ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv206
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !158 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 136
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !172
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv206
  store float %i.gl, ptr %i.gm, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 140
  %i.go = load float, ptr %i.gn, align 4, !tbaa !173
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv206
  store float %i.go, ptr %i.gp, align 4, !tbaa !22
  %indvars.iv.next207 = or disjoint i64 %indvars.iv206, 1 ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next207
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !158 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 136
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !172
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next207
  store float %i.gt, ptr %i.gu, align 4, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 140
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !173
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next207
  store float %i.gw, ptr %i.gx, align 4, !tbaa !22
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  %niter341.next.1 = add i64 %niter341, 2         ; 2 uses
  %niter341.ncmp.1 = icmp eq i64 %niter341.next.1, %unroll_iter340
  br i1 %niter341.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %bb.u, !llvm.loop !174

bb.v:                                             ; preds = %._crit_edge179
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.gy, i32 noundef %i.b, i32 noundef %i.b)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.az, label %.lr.ph186, label %bb.x

.lr.ph186:                                        ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !157 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !94
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !21 ; 3 uses
  %.promoted188 = load i32, ptr %i.he, align 8, !tbaa !99
  %i.hj = sext i32 %i.hg to i64                   ; 2 uses
  %i.hk = shl nuw i32 %i.b, 1
  %7 = add i32 %i.hk, -1
  %wide.trip.count223 = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.ab

.loopexit169.loopexit:                            ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i
  %i.hl = add i32 %.lcssa183189, %indvars.iv215
  br label %.loopexit169

.loopexit169:                                     ; preds = %.loopexit169.loopexit, %.loopexit170
  %.lcssa183190 = phi i32 [ %i.mx, %.loopexit170 ], [ %i.hl, %.loopexit169.loopexit ] ; 2 uses
  %indvars.iv.next212.a = add nuw nsw i64 %indvars.iv211.a, 1
  %indvars.iv.next216 = add i32 %indvars.iv215, -2
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge187, label %bb.ab, !llvm.loop !175

._crit_edge187:                                   ; preds = %.loopexit169
  store i32 %.lcssa183190, ptr %i.he, align 8, !tbaa !99
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge187, %bb.w
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.hm = load i32, ptr %i.gy, align 8, !tbaa !131 ; 5 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph193, label %bb.bj

.lr.ph193:                                        ; preds = %bb.x
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !94
  %i.hq = add i32 %i.hp, 1                        ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !21 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %.promoted = load i32, ptr %i.hv, align 8, !tbaa !99
  %wide.trip.count228 = zext nneg i32 %i.hm to i64 ; 2 uses
  %xtraiter384 = and i64 %wide.trip.count228, 1
  %i.hw = icmp eq i32 %i.hm, 1
  br i1 %i.hw, label %.epil.preheader383, label %.lr.ph193.new

.lr.ph193.new:                                    ; preds = %.lr.ph193
  %unroll_iter388 = and i64 %wide.trip.count228, 2147483646
  br label %bb.bn

bb.y:                                             ; preds = %._crit_edge179
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.z ], [ %i.hx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bt

bb.ab:                                            ; preds = %.lr.ph186, %.loopexit169
  %indvars.iv220 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next221, %.loopexit169 ] ; 5 uses
  %indvars.iv215 = phi i32 [ %7, %.lr.ph186 ], [ %indvars.iv.next216, %.loopexit169 ] ; 2 uses
  %indvars.iv211.a = phi i64 [ 1, %.lr.ph186 ], [ %indvars.iv.next212.a, %.loopexit169 ] ; 2 uses
  %.lcssa183189 = phi i32 [ %.promoted188, %.lr.ph186 ], [ %.lcssa183190, %.loopexit169 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv220
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !158 ; 34 uses
  %.val = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.val82 = load ptr, ptr %i.hc, align 8          ; 2 uses
  %.val83 = load ptr, ptr %i.hd, align 8          ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 176
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !176 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 192
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !177 ; 5 uses
  %.not.i132 = icmp eq ptr %i.ic, null
  br i1 %.not.i132, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !178
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %.val82, i64 %i.ih ; 5 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.ih ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 628
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !179 ; 3 uses
  %i.im = icmp sgt i32 %i.il, -6
  br i1 %i.im, label %.lr.ph.preheader.i.i, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ac
  %i.in = add nsw i32 %i.il, 6
  %wide.trip.count.i.i133 = zext nneg i32 %i.in to i64 ; 2 uses
  %xtraiter342 = and i64 %wide.trip.count.i.i133, 3 ; 3 uses
  %i.io = add i32 %i.il, 5
  %i.ip = icmp ult i32 %i.io, 3
  br i1 %i.ip, label %.lr.ph.i.i134.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter346 = and i64 %wide.trip.count.i.i133, 2147483644
  br label %.lr.ph.i.i134

.lr.ph.i.i134:                                    ; preds = %.lr.ph.i.i134, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i134 ] ; 6 uses
  %.089.i.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.jj, %.lr.ph.i.i134 ]
  %niter347 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter347.next.3, %.lr.ph.i.i134 ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.i.i
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !22
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !22
  %i.iu = call float @llvm.fmuladd.f32(float %i.ir, float %i.it, float %.089.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !22
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !22
  %i.iz = call float @llvm.fmuladd.f32(float %i.iw, float %i.iy, float %i.iu)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i.1
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !22
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.1
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !22
  %i.je = call float @llvm.fmuladd.f32(float %i.jb, float %i.jd, float %i.iz)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i.2
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !22
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.2
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !22
  %i.jj = call float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float %i.je) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter347.next.3 = add i64 %niter347, 4         ; 2 uses
  %niter347.ncmp.3 = icmp eq i64 %niter347.next.3, %unroll_iter346
  br i1 %niter347.ncmp.3, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i134, !llvm.loop !194

bb.ad:                                            ; preds = %bb.ab
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ia, i64 168
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !195
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [248 x i8], ptr %.val, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 240
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !73 ; 2 uses
  %.not44.i = icmp eq ptr %i.jp, null
  br i1 %.not44.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 452
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !100
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.js = phi float [ %i.jr, %bb.ae ], [ 0.000000e+00, %bb.ad ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ia, i64 80
  %i.jv = load float, ptr %i.jt, align 8, !tbaa !22
  %i.jw = load float, ptr %i.ju, align 8, !tbaa !22
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ia, i64 20
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !22
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ia, i64 84
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !22
  %i.kb = fmul float %i.jy, %i.ka
  %i.kc = call float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !22
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !22
  %i.kh = call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.kg, float %i.kc)
  %i.ki = fadd float %i.js, %i.kh
  br label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i134
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i, label %.lr.ph.i.i134.epil.preheader

.lr.ph.i.i134.epil.preheader:                     ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.jj, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod345 = icmp ne i64 %xtraiter342, 0
  call void @llvm.assume(i1 %lcmp.mod345)
  br label %.lr.ph.i.i134.epil

.lr.ph.i.i134.epil:                               ; preds = %.lr.ph.i.i134.epil, %.lr.ph.i.i134.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i134.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i134.epil ] ; 3 uses
  %.089.i.i.epil = phi float [ %.089.i.i.epil.init, %.lr.ph.i.i134.epil.preheader ], [ %i.kn, %.lr.ph.i.i134.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i134.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i134.epil ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.i.i.epil
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !22
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i.i.epil
  %i.km = load float, ptr %i.kl, align 4, !tbaa !22
  %i.kn = call float @llvm.fmuladd.f32(float %i.kk, float %i.km, float %.089.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter342
  br i1 %epil.iter.cmp.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i, label %.lr.ph.i.i134.epil, !llvm.loop !196

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i: ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i134.epil, %bb.af, %bb.ac
  %.0.in.i = phi float [ %i.ki, %bb.af ], [ 0.000000e+00, %bb.ac ], [ %i.jj, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa ], [ %i.kn, %.lr.ph.i.i134.epil ]
  %.not45.i = icmp eq ptr %i.ie, null
  br i1 %.not45.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !197
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %.val82, i64 %i.kq ; 5 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.kq ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ie, i64 628
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !179 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, -6
  br i1 %i.kv, label %.lr.ph.preheader.i48.i, label %.loopexit170

.lr.ph.preheader.i48.i:                           ; preds = %bb.ag
  %i.kw = add nsw i32 %i.ku, 6
  %wide.trip.count.i49.i = zext nneg i32 %i.kw to i64 ; 2 uses
  %xtraiter348 = and i64 %wide.trip.count.i49.i, 3 ; 3 uses
  %i.kx = add i32 %i.ku, 5
  %i.ky = icmp ult i32 %i.kx, 3
  br i1 %i.ky, label %.lr.ph.i50.i.epil.preheader, label %.lr.ph.preheader.i48.i.new

.lr.ph.preheader.i48.i.new:                       ; preds = %.lr.ph.preheader.i48.i
  %unroll_iter353 = and i64 %wide.trip.count.i49.i, 2147483644
  br label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i, %.lr.ph.preheader.i48.i.new
  %indvars.iv.i51.i = phi i64 [ 0, %.lr.ph.preheader.i48.i.new ], [ %indvars.iv.next.i53.i.3, %.lr.ph.i50.i ] ; 6 uses
  %.089.i52.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i48.i.new ], [ %i.ls, %.lr.ph.i50.i ]
  %niter354 = phi i64 [ 0, %.lr.ph.preheader.i48.i.new ], [ %niter354.next.3, %.lr.ph.i50.i ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i51.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !22
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.i51.i
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !22
  %i.ld = call float @llvm.fmuladd.f32(float %i.la, float %i.lc, float %.089.i52.i)
  %indvars.iv.next.i53.i = or disjoint i64 %indvars.iv.i51.i, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i53.i
  %i.lf = load float, ptr %i.le, align 4, !tbaa !22
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next.i53.i
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !22
  %i.li = call float @llvm.fmuladd.f32(float %i.lf, float %i.lh, float %i.ld)
  %indvars.iv.next.i53.i.1 = or disjoint i64 %indvars.iv.i51.i, 2 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i53.i.1
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !22
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next.i53.i.1
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !22
  %i.ln = call float @llvm.fmuladd.f32(float %i.lk, float %i.lm, float %i.li)
  %indvars.iv.next.i53.i.2 = or disjoint i64 %indvars.iv.i51.i, 3 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i53.i.2
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !22
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next.i53.i.2
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !22
  %i.ls = call float @llvm.fmuladd.f32(float %i.lp, float %i.lr, float %i.ln) ; 3 uses
  %indvars.iv.next.i53.i.3 = add nuw nsw i64 %indvars.iv.i51.i, 4 ; 2 uses
  %niter354.next.3 = add i64 %niter354, 4         ; 2 uses
  %niter354.ncmp.3 = icmp eq i64 %niter354.next.3, %unroll_iter353
  br i1 %niter354.ncmp.3, label %.loopexit170.loopexit.unr-lcssa, label %.lr.ph.i50.i, !llvm.loop !194

bb.ah:                                            ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ia, i64 188
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !198
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [248 x i8], ptr %.val, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 240
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !73 ; 2 uses
  %.not46.i = icmp eq ptr %i.ly, null
  br i1 %.not46.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 452
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !100
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.mb = phi float [ %i.ma, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.md = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.me = load float, ptr %i.mc, align 8, !tbaa !22
  %i.mf = load float, ptr %i.md, align 8, !tbaa !22
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ia, i64 52
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !22
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ia, i64 100
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !22
  %i.mk = fmul float %i.mh, %i.mj
  %i.ml = call float @llvm.fmuladd.f32(float %i.me, float %i.mf, float %i.mk)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.mn = load float, ptr %i.mm, align 8, !tbaa !22
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !22
  %i.mq = call noundef float @llvm.fmuladd.f32(float %i.mn, float %i.mp, float %i.ml)
  %i.mr = fadd float %i.mb, %i.mq
  br label %.loopexit170

.loopexit170.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i50.i
  %lcmp.mod350.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod350.not, label %.loopexit170, label %.lr.ph.i50.i.epil.preheader

.lr.ph.i50.i.epil.preheader:                      ; preds = %.loopexit170.loopexit.unr-lcssa, %.lr.ph.preheader.i48.i
  %indvars.iv.i51.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i48.i ], [ %indvars.iv.next.i53.i.3, %.loopexit170.loopexit.unr-lcssa ]
  %.089.i52.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i48.i ], [ %i.ls, %.loopexit170.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter348, 0
  call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.i50.i.epil

.lr.ph.i50.i.epil:                                ; preds = %.lr.ph.i50.i.epil, %.lr.ph.i50.i.epil.preheader
  %indvars.iv.i51.i.epil = phi i64 [ %indvars.iv.i51.i.epil.init, %.lr.ph.i50.i.epil.preheader ], [ %indvars.iv.next.i53.i.epil, %.lr.ph.i50.i.epil ] ; 3 uses
  %.089.i52.i.epil = phi float [ %.089.i52.i.epil.init, %.lr.ph.i50.i.epil.preheader ], [ %i.mw, %.lr.ph.i50.i.epil ]
  %epil.iter349 = phi i64 [ 0, %.lr.ph.i50.i.epil.preheader ], [ %epil.iter349.next, %.lr.ph.i50.i.epil ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i51.i.epil
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !22
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.i51.i.epil
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !22
  %i.mw = call float @llvm.fmuladd.f32(float %i.mt, float %i.mv, float %.089.i52.i.epil) ; 2 uses
  %indvars.iv.next.i53.i.epil = add nuw nsw i64 %indvars.iv.i51.i.epil, 1
  %epil.iter349.next = add i64 %epil.iter349, 1   ; 2 uses
  %epil.iter349.cmp.not = icmp eq i64 %epil.iter349.next, %xtraiter348
  br i1 %epil.iter349.cmp.not, label %.loopexit170, label %.lr.ph.i50.i.epil, !llvm.loop !199

.loopexit170:                                     ; preds = %.loopexit170.loopexit.unr-lcssa, %.lr.ph.i50.i.epil, %bb.ag, %bb.aj
  %.pn.i = phi float [ %i.mr, %bb.aj ], [ 0.000000e+00, %bb.ag ], [ %i.ls, %.loopexit170.loopexit.unr-lcssa ], [ %i.mw, %.lr.ph.i50.i.epil ]
  %.0.i = fadd float %.0.in.i, 0.000000e+00
  %.1.i = fadd float %.0.i, %.pn.i
  %i.mx = add nsw i32 %.lcssa183189, 1
  %i.my = mul nsw i64 %indvars.iv220, %i.hj       ; 2 uses
  %i.mz = getelementptr [4 x i8], ptr %i.hi, i64 %i.my
  %i.na = getelementptr [4 x i8], ptr %i.mz, i64 %indvars.iv220
  store float %.1.i, ptr %i.na, align 4, !tbaa !22
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 3 uses
  %i.nb = icmp slt i64 %indvars.iv.next221, %.pre-phi
  br i1 %i.nb, label %.lr.ph182, label %.loopexit169

.lr.ph182:                                        ; preds = %.loopexit170
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ie, i64 628 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ic, i64 628 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ia, i64 168 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ia, i64 188 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ia, i64 96 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ia, i64 64 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ia, i64 100 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ia, i64 104 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ia, i64 68 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ia, i64 72 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ia, i64 80 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ia, i64 84 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ia, i64 88 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ia, i64 36 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ia, i64 40 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.hi, i64 %i.my
  %invariant.gep269 = getelementptr [4 x i8], ptr %i.hi, i64 %indvars.iv220
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph182, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i
  %indvars.iv213.a = phi i64 [ %indvars.iv211.a, %.lr.ph182 ], [ %indvars.iv.next214, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i ] ; 4 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv213.a
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !158 ; 30 uses
  %.val84 = load ptr, ptr %i.hb, align 8          ; 4 uses
  %.val85 = load ptr, ptr %i.hc, align 8          ; 2 uses
  %.val86 = load ptr, ptr %i.hd, align 8          ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 176
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !176 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 192
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !177 ; 3 uses
  %.not.i135 = icmp eq ptr %i.nx, null
  br i1 %.not.i135, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !178
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %.val85, i64 %i.oc ; 10 uses
  %i.oe = icmp eq ptr %i.nx, %i.ic
  br i1 %i.oe, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.of = load i32, ptr %i.ne, align 4, !tbaa !179 ; 3 uses
  %i.og = load i32, ptr %i.nf, align 4, !tbaa !178
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %.val86, i64 %i.oh ; 5 uses
  %i.oj = icmp sgt i32 %i.of, -6
  br i1 %i.oj, label %.lr.ph.preheader.i.i137, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

.lr.ph.preheader.i.i137:                          ; preds = %bb.am
  %i.ok = add nsw i32 %i.of, 6
  %wide.trip.count.i.i138 = zext nneg i32 %i.ok to i64 ; 2 uses
  %xtraiter362 = and i64 %wide.trip.count.i.i138, 3 ; 3 uses
  %i.ol = add i32 %i.of, 5
  %i.om = icmp ult i32 %i.ol, 3
  br i1 %i.om, label %.lr.ph.i.i139.epil.preheader, label %.lr.ph.preheader.i.i137.new

.lr.ph.preheader.i.i137.new:                      ; preds = %.lr.ph.preheader.i.i137
  %unroll_iter367 = and i64 %wide.trip.count.i.i138, 2147483644
  br label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139, %.lr.ph.preheader.i.i137.new
  %indvars.iv.i.i140 = phi i64 [ 0, %.lr.ph.preheader.i.i137.new ], [ %indvars.iv.next.i.i142.3, %.lr.ph.i.i139 ] ; 6 uses
  %.089.i.i141 = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i137.new ], [ %i.pg, %.lr.ph.i.i139 ]
  %niter368 = phi i64 [ 0, %.lr.ph.preheader.i.i137.new ], [ %niter368.next.3, %.lr.ph.i.i139 ]
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.i.i140
  %i.oo = load float, ptr %i.on, align 4, !tbaa !22
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i.i140
  %i.oq = load float, ptr %i.op, align 4, !tbaa !22
  %i.or = call float @llvm.fmuladd.f32(float %i.oo, float %i.oq, float %.089.i.i141)
  %indvars.iv.next.i.i142 = or disjoint i64 %indvars.iv.i.i140, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i142
  %i.ot = load float, ptr %i.os, align 4, !tbaa !22
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i.i142
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !22
  %i.ow = call float @llvm.fmuladd.f32(float %i.ot, float %i.ov, float %i.or)
  %indvars.iv.next.i.i142.1 = or disjoint i64 %indvars.iv.i.i140, 2 ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i142.1
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !22
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i.i142.1
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !22
  %i.pb = call float @llvm.fmuladd.f32(float %i.oy, float %i.pa, float %i.ow)
  %indvars.iv.next.i.i142.2 = or disjoint i64 %indvars.iv.i.i140, 3 ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i142.2
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !22
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i.i142.2
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !22
  %i.pg = call float @llvm.fmuladd.f32(float %i.pd, float %i.pf, float %i.pb) ; 3 uses
  %indvars.iv.next.i.i142.3 = add nuw nsw i64 %indvars.iv.i.i140, 4 ; 2 uses
  %niter368.next.3 = add i64 %niter368, 4         ; 2 uses
  %niter368.ncmp.3 = icmp eq i64 %niter368.next.3, %unroll_iter367
  br i1 %niter368.ncmp.3, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i139, !llvm.loop !194

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i139
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod364.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i, label %.lr.ph.i.i139.epil.preheader

.lr.ph.i.i139.epil.preheader:                     ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i137
  %indvars.iv.i.i140.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i137 ], [ %indvars.iv.next.i.i142.3, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa ]
  %.089.i.i141.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i137 ], [ %i.pg, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter362, 0
  call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph.i.i139.epil

.lr.ph.i.i139.epil:                               ; preds = %.lr.ph.i.i139.epil, %.lr.ph.i.i139.epil.preheader
  %indvars.iv.i.i140.epil = phi i64 [ %indvars.iv.i.i140.epil.init, %.lr.ph.i.i139.epil.preheader ], [ %indvars.iv.next.i.i142.epil, %.lr.ph.i.i139.epil ] ; 3 uses
  %.089.i.i141.epil = phi float [ %.089.i.i141.epil.init, %.lr.ph.i.i139.epil.preheader ], [ %i.pl, %.lr.ph.i.i139.epil ]
  %epil.iter363 = phi i64 [ 0, %.lr.ph.i.i139.epil.preheader ], [ %epil.iter363.next, %.lr.ph.i.i139.epil ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.i.i140.epil
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !22
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i.i140.epil
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !22
  %i.pl = call float @llvm.fmuladd.f32(float %i.pi, float %i.pk, float %.089.i.i141.epil) ; 2 uses
  %indvars.iv.next.i.i142.epil = add nuw nsw i64 %indvars.iv.i.i140.epil, 1
  %epil.iter363.next = add i64 %epil.iter363, 1   ; 2 uses
  %epil.iter363.cmp.not = icmp eq i64 %epil.iter363.next, %xtraiter362
  br i1 %epil.iter363.cmp.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i, label %.lr.ph.i.i139.epil, !llvm.loop !200

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i: ; preds = %.lr.ph.i.i139.epil, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa
  %.lcssa324.a = phi float [ %i.pg, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa ], [ %i.pl, %.lr.ph.i.i139.epil ]
  %i.pm = fadd float %.lcssa324.a, 0.000000e+00
  br label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

bb.an:                                            ; preds = %bb.al
  %i.pn = icmp eq ptr %i.nx, %i.ie
  br i1 %i.pn, label %bb.ao, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

bb.ao:                                            ; preds = %bb.an
  %i.po = load i32, ptr %i.nc, align 4, !tbaa !179 ; 3 uses
  %i.pp = load i32, ptr %i.nd, align 4, !tbaa !197
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %.val86, i64 %i.pq ; 5 uses
  %i.ps = icmp sgt i32 %i.po, -6
  br i1 %i.ps, label %.lr.ph.preheader.i122.i, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

.lr.ph.preheader.i122.i:                          ; preds = %bb.ao
  %i.pt = add nsw i32 %i.po, 6
  %wide.trip.count.i123.i = zext nneg i32 %i.pt to i64 ; 2 uses
  %xtraiter355 = and i64 %wide.trip.count.i123.i, 3 ; 3 uses
  %i.pu = add i32 %i.po, 5
  %i.pv = icmp ult i32 %i.pu, 3
  br i1 %i.pv, label %.lr.ph.i124.i.epil.preheader, label %.lr.ph.preheader.i122.i.new

.lr.ph.preheader.i122.i.new:                      ; preds = %.lr.ph.preheader.i122.i
  %unroll_iter360 = and i64 %wide.trip.count.i123.i, 2147483644
  br label %.lr.ph.i124.i

.lr.ph.i124.i:                                    ; preds = %.lr.ph.i124.i, %.lr.ph.preheader.i122.i.new
  %indvars.iv.i125.i = phi i64 [ 0, %.lr.ph.preheader.i122.i.new ], [ %indvars.iv.next.i127.i.3, %.lr.ph.i124.i ] ; 6 uses
  %.089.i126.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i122.i.new ], [ %i.qp, %.lr.ph.i124.i ]
  %niter361 = phi i64 [ 0, %.lr.ph.preheader.i122.i.new ], [ %niter361.next.3, %.lr.ph.i124.i ]
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.i125.i
  %i.px = load float, ptr %i.pw, align 4, !tbaa !22
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i125.i
  %i.pz = load float, ptr %i.py, align 4, !tbaa !22
  %i.qa = call float @llvm.fmuladd.f32(float %i.px, float %i.pz, float %.089.i126.i)
  %indvars.iv.next.i127.i = or disjoint i64 %indvars.iv.i125.i, 1 ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.i127.i
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !22
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i127.i
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !22
  %i.qf = call float @llvm.fmuladd.f32(float %i.qc, float %i.qe, float %i.qa)
  %indvars.iv.next.i127.i.1 = or disjoint i64 %indvars.iv.i125.i, 2 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.i127.i.1
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !22
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i127.i.1
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !22
  %i.qk = call float @llvm.fmuladd.f32(float %i.qh, float %i.qj, float %i.qf)
  %indvars.iv.next.i127.i.2 = or disjoint i64 %indvars.iv.i125.i, 3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.i127.i.2
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !22
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i127.i.2
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !22
  %i.qp = call float @llvm.fmuladd.f32(float %i.qm, float %i.qo, float %i.qk) ; 3 uses
  %indvars.iv.next.i127.i.3 = add nuw nsw i64 %indvars.iv.i125.i, 4 ; 2 uses
  %niter361.next.3 = add i64 %niter361, 4         ; 2 uses
  %niter361.ncmp.3 = icmp eq i64 %niter361.next.3, %unroll_iter360
  br i1 %niter361.ncmp.3, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa, label %.lr.ph.i124.i, !llvm.loop !194

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i124.i
  %lcmp.mod357.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod357.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i, label %.lr.ph.i124.i.epil.preheader

.lr.ph.i124.i.epil.preheader:                     ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa, %.lr.ph.preheader.i122.i
  %indvars.iv.i125.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i122.i ], [ %indvars.iv.next.i127.i.3, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa ]
  %.089.i126.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i122.i ], [ %i.qp, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa ]
  %lcmp.mod359 = icmp ne i64 %xtraiter355, 0
  call void @llvm.assume(i1 %lcmp.mod359)
end_hunk_1
