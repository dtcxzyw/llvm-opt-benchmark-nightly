Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/affine_feature2d?download=true
inline.NumInlined: 720
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12_GLOBAL__N_126calcAffineCovariantRegionsERKN2cv3MatERKSt6vectorINS0_8KeyPointESaIS5_EERS4_INS0_11xfeatures2d17Elliptic_KeyPointESaISB_EE:bb.a

bb.cr:                                            ; preds = %bb.cq
  %i.yf = load ptr, ptr %18, align 8, !tbaa !109  ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !14
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yi = load ptr, ptr %i.yh, align 8
  invoke void %i.yi(ptr noundef nonnull align 8 dereferenceable(8) %i.yf, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i unwind label %bb.da, !inline_history !79

_ZN2cv3MataSERKNS_7MatExprE.exit.i.i:             ; preds = %bb.cr
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eh) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ei) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ej) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 0)
          to label %bb.cs unwind label %bb.dc

bb.cs:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i
  %i.yj = load ptr, ptr %19, align 8, !tbaa !109  ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8
  invoke void %i.ym(ptr noundef nonnull align 8 dereferenceable(8) %i.yj, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef -1)
          to label %bb.ct unwind label %bb.dd, !inline_history !79

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ek) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.el) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.em) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.yn = load i32, ptr %i.en, align 4, !tbaa !103
  %i.yo = load ptr, ptr %i.eo, align 8, !tbaa !56 ; 3 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !36
  %i.yq = call noundef float @sqrtf(float noundef %i.yp) #21 ; 5 uses
  store float %i.yq, ptr %i.yo, align 4, !tbaa !36
  %i.yr = icmp slt i32 %i.yn, 2
  %i.ys = load i64, ptr %i.ep, align 8
  %.sink.idx.i.i287.i = select i1 %i.yr, i64 0, i64 %i.ys
  %.sink.i.i288.i = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.sink.idx.i.i287.i ; 2 uses
  %i.yt = load float, ptr %.sink.i.i288.i, align 4, !tbaa !36
  %i.yu = call noundef float @sqrtf(float noundef %i.yt) #21 ; 5 uses
  store float %i.yu, ptr %.sink.i.i288.i, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZN2cv3Mat4diagERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.cu unwind label %bb.df

bb.cu:                                            ; preds = %bb.ct
  %i.yv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.cv unwind label %bb.dg     ; 0 uses

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.cw unwind label %bb.di

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(688) %23, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.cx unwind label %bb.dj

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #21
  %i.yw = load ptr, ptr %22, align 8, !tbaa !109, !noalias !114 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !14
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8
  invoke void %i.yz(ptr noundef nonnull align 8 dereferenceable(8) %i.yw, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i unwind label %.body.i289.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i:             ; preds = %bb.cx
  %i.za = invoke { <2 x float>, <2 x float> } @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi2ELi2EEEv(ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.dn unwind label %.body.i289.i ; 2 uses

bb.cy:                                            ; preds = %bb.cp
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.dm

bb.cz:                                            ; preds = %bb.cq
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cr
  %i.zd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #21
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn22.i.i = phi { ptr, i32 } [ %i.zd, %bb.da ], [ %i.zc, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.dm

bb.dc:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cs
  %i.zf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #21
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn24.i.i = phi { ptr, i32 } [ %i.zf, %bb.dd ], [ %i.ze, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.dm

bb.df:                                            ; preds = %bb.ct
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %bb.cu
  %i.zh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn26.i.i = phi { ptr, i32 } [ %i.zh, %bb.dg ], [ %i.zg, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.dm

bb.di:                                            ; preds = %bb.cv
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dj:                                            ; preds = %bb.cw
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.body.i289.i:                                     ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i, %bb.cx
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #21
  br label %bb.dk

bb.dk:                                            ; preds = %.body.i289.i, %bb.dj
  %.pn28.pn.i.i = phi { ptr, i32 } [ %i.zk, %.body.i289.i ], [ %i.zj, %bb.dj ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %23) #21
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.di
  %.pn28.pn.pn.i.i = phi { ptr, i32 } [ %.pn28.pn.i.i, %bb.dk ], [ %i.zi, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dh, %bb.de, %bb.db, %bb.cy
  %.pn28.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn28.pn.pn.i.i, %bb.dl ], [ %.pn24.i.i, %bb.de ], [ %.pn22.i.i, %bb.db ], [ %i.zb, %bb.cy ], [ %.pn26.i.i, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body.i

bb.dn:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eq) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.er) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.es) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.et) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eu) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ev) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.zl = fcmp olt float %i.yu, %i.yq
  %.sroa.speculated42.i.i = select i1 %i.zl, float %i.yu, float %i.yq
  %i.zm = fcmp olt float %i.yq, %i.yu
  %.sroa.speculated.i291.i = select i1 %i.zm, float %i.yu, float %i.yq
  %i.zn = fdiv float %.sroa.speculated42.i.i, %.sroa.speculated.i291.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.zo = fsub float 1.000000e+00, %i.zn          ; 3 uses
  %94 = fcmp ord float %i.zo, 0.000000e+00
  %95 = fcmp une float %i.zo, 1.000000e+00
  %or.cond5.i = and i1 %94, %95
  br i1 %or.cond5.i, label %bb.do, label %bb.en

bb.do:                                            ; preds = %bb.dn
  %i.zp = extractvalue { <2 x float>, <2 x float> } %i.za, 1 ; 2 uses
  %i.zq = extractvalue { <2 x float>, <2 x float> } %i.za, 0 ; 2 uses
  %i.zr = load <2 x float>, ptr %69, align 16, !tbaa !36 ; 2 uses
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zs, <2 x float> %i.zq, <2 x float> zeroinitializer)
  %i.zu = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zu, <2 x float> %i.zp, <2 x float> %i.zt)
  %i.zw = load <2 x float>, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.zx = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zx, <2 x float> %i.zq, <2 x float> zeroinitializer)
  %i.zz = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aaa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zz, <2 x float> %i.zp, <2 x float> %i.zy)
  store <2 x float> %i.zv, ptr %69, align 16
  store <2 x float> %i.aaa, ptr %i.e, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %85) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %86) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #21
  store i32 -1056833531, ptr %87, align 8, !tbaa !25
  store ptr %69, ptr %i.ex, align 8, !tbaa !24
  store i64 8589934594, ptr %i.ew, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #21
  store i64 0, ptr %i.ez, align 8
  store i32 33619968, ptr %88, align 8, !tbaa !25
  store ptr %85, ptr %i.ey, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #21
  store i64 0, ptr %i.fb, align 8
  store i32 33619968, ptr %89, align 8, !tbaa !25
  store ptr %86, ptr %i.fa, align 8, !tbaa !24
  %i.aab = invoke noundef zeroext i1 @_ZN2cv5eigenERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(24) %88, ptr noundef nonnull align 8 dereferenceable(24) %89)
          to label %bb.dp unwind label %bb.eh     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %86)
          to label %.noexc.i unwind label %bb.ei

.noexc.i:                                         ; preds = %bb.dp
  %i.aac = load ptr, ptr %3, align 8, !tbaa !109  ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !14
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24
  %i.aaf = load ptr, ptr %i.aae, align 8
  invoke void %i.aaf(ptr noundef nonnull align 8 dereferenceable(8) %i.aac, ptr noundef nonnull align 8 dereferenceable(688) %3, ptr noundef nonnull align 8 dereferenceable(208) %86, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i298.i unwind label %bb.ds, !inline_history !79

_ZN2cv3MataSERKNS_7MatExprE.exit.i298.i:          ; preds = %.noexc.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fc) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %86, i32 noundef 0)
          to label %.noexc304.i unwind label %bb.ei

.noexc304.i:                                      ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i298.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  %i.aag = load ptr, ptr %5, align 8, !tbaa !109, !noalias !115 ; 2 uses
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !14
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %i.aaj = load ptr, ptr %i.aai, align 8
  invoke void %i.aaj(ptr noundef nonnull align 8 dereferenceable(8) %i.aag, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef -1)
          to label %bb.dq unwind label %.body.i299.i

.body.i299.i:                                     ; preds = %.noexc304.i
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ee

bb.dq:                                            ; preds = %.noexc304.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ff) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fg) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aal = load i32, ptr %i.fi, align 4, !tbaa !103
  %i.aam = load ptr, ptr %i.fj, align 8, !tbaa !56 ; 5 uses
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !36 ; 3 uses
  %i.aao = icmp slt i32 %i.aal, 2                 ; 2 uses
  %i.aap = load i64, ptr %i.fk, align 8
  %.sink.idx.i.i300.i = select i1 %i.aao, i64 0, i64 %i.aap
  %.sink.i.i301.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.sink.idx.i.i300.i ; 2 uses
  %i.aaq = load float, ptr %.sink.i.i301.i, align 4, !tbaa !36 ; 3 uses
  %i.aar = call noundef float @llvm.fabs.f32(float %i.aan)
  %i.aas = call noundef float @llvm.fabs.f32(float %i.aaq)
  %i.aat = fcmp olt float %i.aar, %i.aas
  br i1 %i.aat, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  store float 1.000000e+00, ptr %i.aam, align 4, !tbaa !36
  %i.aau = load i64, ptr %i.fk, align 8
  %.sink.idx.i50.i.i = select i1 %i.aao, i64 0, i64 %i.aau
  %.sink.i51.i.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.sink.idx.i50.i.i
  %i.aav = fdiv float %i.aaq, %i.aan
  store float %i.aav, ptr %.sink.i51.i.i, align 4, !tbaa !36
  br label %bb.du

bb.ds:                                            ; preds = %.noexc.i
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body305.i

bb.dt:                                            ; preds = %bb.dq
  store float 1.000000e+00, ptr %.sink.i.i301.i, align 4, !tbaa !36
  %i.aax = fdiv float %i.aan, %i.aaq
  store float %i.aax, ptr %i.aam, align 4, !tbaa !36
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN2cv3Mat4diagERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %85)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %86, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.dx unwind label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #21
  %i.aay = load ptr, ptr %8, align 8, !tbaa !109, !noalias !116 ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !14
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8
  invoke void %i.abb(ptr noundef nonnull align 8 dereferenceable(8) %i.aay, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i unwind label %.body56.i.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i:           ; preds = %bb.dx
  %i.abc = invoke { <2 x float>, <2 x float> } @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi2ELi2EEEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ef unwind label %.body56.i.i ; 2 uses

bb.dy:                                            ; preds = %bb.du
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dz:                                            ; preds = %bb.dv
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dw
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

.body56.i.i:                                      ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i, %bb.dx
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #21
  br label %bb.eb

bb.eb:                                            ; preds = %.body56.i.i, %bb.ea
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.abg, %.body56.i.i ], [ %i.abf, %bb.ea ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #21
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dz
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.eb ], [ %i.abe, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dy
  %.pn38.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.ec ], [ %i.abd, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.body.i299.i
  %.pn38.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.i.i, %bb.ed ], [ %i.aak, %.body.i299.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body305.i

bb.ef:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i
  %i.abh = extractvalue { <2 x float>, <2 x float> } %i.abc, 0
  %i.abi = extractvalue { <2 x float>, <2 x float> } %i.abc, 1
  store <2 x float> %i.abh, ptr %69, align 16
  store <2 x float> %i.abi, ptr %i.e, align 8, !tbaa !44
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fl) #21
end_hunk_0
