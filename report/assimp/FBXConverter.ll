inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter25ConvertMeshSingleMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.wh = load ptr, ptr %12, align 8              ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.sf
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.wj = load i64, ptr %i.sf, align 8
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

.loopexit417:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit419 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp418:                            ; preds = %bb.cw
  %lpad.loopexit.split-lp420 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.split-lp418, %.loopexit417
  %lpad.phi421 = phi { ptr, i32 } [ %lpad.loopexit419, %.loopexit417 ], [ %lpad.loopexit.split-lp420, %.loopexit.split-lp418 ] ; 2 uses
  %i.wl = load ptr, ptr %12, align 8              ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.sf
  br i1 %i.wm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.cx, %bb.cv
  %.sink = phi ptr [ %i.vz, %bb.cv ], [ %i.wl, %bb.cx ]
  %.pn235.ph = phi { ptr, i32 } [ %lpad.phi416, %bb.cv ], [ %lpad.phi421, %bb.cx ]
  %i.wn = load i64, ptr %i.sf, align 8
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.wo) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.cx, %bb.cv
  %.pn235 = phi { ptr, i32 } [ %lpad.phi416, %bb.cv ], [ %lpad.phi421, %bb.cx ], [ %.pn235.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.dr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cn, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %i.wp = load i64, ptr %i.sa, align 8            ; 4 uses
  %i.wq = icmp ugt i64 %i.wp, 1023
  br i1 %i.wq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.wr = trunc nuw nsw i64 %i.wp to i32
  store i32 %i.wr, ptr %i.tc, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.tc, i64 4 ; 2 uses
  %i.wt = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ws, ptr align 1 %i.wt, i64 %i.wp, i1 false)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wp
  store i8 0, ptr %i.wu, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.cy
  %i.wv = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8
  %i.wx = load ptr, ptr %i.te, align 8            ; 2 uses
  %.not700 = icmp eq ptr %i.ww, %i.wx
  br i1 %.not700, label %._crit_edge660, label %.lr.ph659

.lr.ph659:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.wy = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.tc, i64 1032
  %i.xa = getelementptr inbounds nuw i8, ptr %i.tc, i64 1040 ; 2 uses
  br label %bb.cz

._crit_edge660:                                   ; preds = %._crit_edge657, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.xb = load i64, ptr %i.st, align 8
  %i.xc = icmp ugt i64 %i.xb, 1
  br i1 %i.xc, label %bb.dk, label %bb.dl

bb.cz:                                            ; preds = %.lr.ph659, %._crit_edge657
  %i.xd = phi ptr [ %i.wx, %.lr.ph659 ], [ %i.yc, %._crit_edge657 ]
  %.0186658 = phi i64 [ 0, %.lr.ph659 ], [ %i.ya, %._crit_edge657 ] ; 8 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.0186658
  %i.xf = load i32, ptr %i.xe, align 4
  %i.xg = load ptr, ptr %i.wy, align 8
  %i.xh = load ptr, ptr %i.td, align 8            ; 2 uses
  %i.xi = ptrtoint ptr %i.xg to i64
  %i.xj = ptrtoint ptr %i.xh to i64
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = sdiv exact i64 %i.xk, 12                ; 2 uses
  %.not.i.i307 = icmp ult i64 %.0186658, %i.xl
  br i1 %.not.i.i307, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %.0186658, i64 noundef %i.xl) #31
          to label %.noexc308 unwind label %bb.dg

.noexc308:                                        ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.xm = getelementptr inbounds nuw [12 x i8], ptr %i.xh, i64 %.0186658 ; 2 uses
  %i.xn = load <2 x float>, ptr %i.xm, align 4
  %.sroa.6344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %.sroa.6344.0.copyload = load float, ptr %.sroa.6344.0..sroa_idx, align 4
  %i.xo = load ptr, ptr %i.sx, align 8            ; 3 uses
  %i.xp = load ptr, ptr %i.sz, align 8            ; 2 uses
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %i.xo to i64
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = sdiv exact i64 %i.xt, 12                ; 2 uses
  %.not.i.i309 = icmp ult i64 %.0186658, %i.xu
  br i1 %.not.i.i309, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %.0186658, i64 noundef %i.xu) #31
          to label %.noexc310 unwind label %bb.dh

.noexc310:                                        ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.xv = getelementptr inbounds nuw [12 x i8], ptr %i.xo, i64 %.0186658 ; 2 uses
  %i.xw = load <2 x float>, ptr %i.xv, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.db, %bb.de
  %.sroa.8.0 = phi float [ %.sroa.8.0.copyload, %bb.de ], [ 0.000000e+00, %bb.db ]
  %i.xx = phi <2 x float> [ %i.xw, %bb.de ], [ zeroinitializer, %bb.db ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 0, ptr %i.f, align 4
  %i.xy = invoke noundef ptr @_ZNK6Assimp3FBX12MeshGeometry19ToOutputVertexIndexEjRj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef %i.xf, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.preheader unwind label %bb.di

.preheader:                                       ; preds = %bb.df
  %i.xz = load i32, ptr %i.f, align 4
  %.not701 = icmp eq i32 %i.xz, 0
  br i1 %.not701, label %._crit_edge657, label %.lr.ph656

._crit_edge657:                                   ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ya = add nuw i64 %.0186658, 1                ; 2 uses
  %i.yb = load ptr, ptr %i.wv, align 8
  %i.yc = load ptr, ptr %i.te, align 8            ; 2 uses
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = ptrtoint ptr %i.yc to i64
  %i.yf = sub i64 %i.yd, %i.ye
  %i.yg = ashr exact i64 %i.yf, 2
  %i.yh = icmp ult i64 %i.ya, %i.yg
  br i1 %i.yh, label %bb.cz, label %._crit_edge660, !llvm.loop !163

bb.dg:                                            ; preds = %bb.da
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dh:                                            ; preds = %bb.dd
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.di:                                            ; preds = %bb.df
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.dr

.lr.ph656:                                        ; preds = %.preheader, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit ], [ 0, %.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv772
  %i.ym = load i32, ptr %i.yl, align 4
  %i.yn = load ptr, ptr %i.wz, align 8
  %i.yo = zext i32 %i.ym to i64                   ; 3 uses
  %i.yp = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %i.yo ; 3 uses
  %i.yq = load <2 x float>, ptr %i.yp, align 4
  %i.yr = fadd <2 x float> %i.xn, %i.yq
  store <2 x float> %i.yr, ptr %i.yp, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 2 uses
  %i.yt = load float, ptr %i.ys, align 4
  %i.yu = fadd float %.sroa.6344.0.copyload, %i.yt
  store float %i.yu, ptr %i.ys, align 4
  %i.yv = load ptr, ptr %i.xa, align 8            ; 2 uses
  %.not237 = icmp eq ptr %i.yv, null
  br i1 %.not237, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph656
  %i.yw = getelementptr inbounds nuw [12 x i8], ptr %i.yv, i64 %i.yo ; 3 uses
  %i.yx = load <2 x float>, ptr %i.yw, align 4
  %i.yy = fadd <2 x float> %i.xx, %i.yx
  store <2 x float> %i.yy, ptr %i.yw, align 4
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.za = load float, ptr %i.yz, align 4
  %i.zb = fadd float %.sroa.8.0, %i.za
  store float %i.zb, ptr %i.yz, align 4
  %i.zc = load ptr, ptr %i.xa, align 8
  %i.zd = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.yo ; 3 uses
  %13 = load <2 x float>, ptr %i.zd, align 4      ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %13, %13
  %14 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %15 = extractelement <2 x float> %13, i64 0     ; 2 uses
  %i.ze = call float @llvm.fmuladd.f32(float %15, float %15, float %14)
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 8 ; 2 uses
  %i.zg = load float, ptr %i.zf, align 4          ; 3 uses
  %i.zh = call noundef float @llvm.fmuladd.f32(float %i.zg, float %i.zg, float %i.ze) ; 2 uses
  %i.zi = fcmp ogt float %i.zh, 0.000000e+00
  br i1 %i.zi, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.dj
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.zh)
  %i.zj = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %16 = insertelement <2 x float> poison, float %i.zj, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %13, %17
  store <2 x float> %18, ptr %i.zd, align 4
  %i.zk = fmul float %i.zg, %i.zj
  store float %i.zk, ptr %i.zf, align 4
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.dj, %.lr.ph656
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 1 ; 2 uses
  %i.zl = load i32, ptr %i.f, align 4
  %i.zm = zext i32 %i.zl to i64
  %i.zn = icmp samesign ult i64 %indvars.iv.next773, %i.zm
  br i1 %i.zn, label %.lr.ph656, label %._crit_edge657, !llvm.loop !164

bb.dk:                                            ; preds = %._crit_edge660
  %i.zo = load float, ptr %i.su, align 8
  %i.zp = fdiv float %i.zo, 1.000000e+02
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge660, %bb.dk
  %i.zq = phi float [ %i.zp, %bb.dk ], [ 1.000000e+00, %._crit_edge660 ]
  %i.zr = getelementptr inbounds nuw i8, ptr %i.tc, i64 1196
  store float %i.zq, ptr %i.zr, align 4
  %.not.i312 = icmp eq ptr %.sroa.10.2664, %.sroa.16.2663
  br i1 %.not.i312, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store ptr %i.tc, ptr %.sroa.10.2664, align 8
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit

bb.dn:                                            ; preds = %bb.dl
  %i.zs = ptrtoint ptr %.sroa.10.2664 to i64
  %i.zt = ptrtoint ptr %.sroa.0363.2665 to i64
  %i.zu = sub i64 %i.zs, %i.zt                    ; 6 uses
  %i.zv = icmp eq i64 %i.zu, 9223372036854775800
  br i1 %i.zv, label %bb.do, label %_ZNKSt6vectorIP10aiAnimMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc316 unwind label %.loopexit.split-lp423

.noexc316:                                        ; preds = %bb.do
  unreachable

_ZNKSt6vectorIP10aiAnimMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dn
  %i.zw = ashr exact i64 %i.zu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i313 = call i64 @llvm.umax.i64(i64 %i.zw, i64 1)
  %i.zx = add nsw i64 %.sroa.speculated.i.i.i313, %i.zw ; 2 uses
  %i.zy = icmp ult i64 %i.zx, %i.zw
  %i.zz = call i64 @llvm.umin.i64(i64 %i.zx, i64 1152921504606846975)
  %i.aaa = select i1 %i.zy, i64 1152921504606846975, i64 %i.zz ; 3 uses
  %.not.i.i.i314 = icmp ne i64 %i.aaa, 0
  call void @llvm.assume(i1 %.not.i.i.i314)
  %i.aab = shl nuw nsw i64 %i.aaa, 3
  %i.aac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aab) #30
          to label %.noexc317 unwind label %.loopexit422 ; 4 uses

.noexc317:                                        ; preds = %_ZNKSt6vectorIP10aiAnimMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 %i.zu ; 2 uses
  store ptr %i.tc, ptr %i.aad, align 8
  %i.aae = icmp sgt i64 %i.zu, 0
  br i1 %i.aae, label %bb.dp, label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.dp:                                            ; preds = %.noexc317
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aac, ptr align 8 %.sroa.0363.2665, i64 %i.zu, i1 false)
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.dp, %.noexc317
  %.not.i17.i.i315 = icmp eq ptr %.sroa.0363.2665, null
  br i1 %.not.i17.i.i315, label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0363.2665, i64 noundef %i.zu) #29
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.dq, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %i.aaa
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.dm
  %.sroa.16.4 = phi ptr [ %i.aaf, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.16.2663, %bb.dm ] ; 2 uses
  %.pn = phi ptr [ %i.aad, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.2664, %bb.dm ]
  %.sroa.0363.4 = phi ptr [ %i.aac, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0363.2665, %bb.dm ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aag = load ptr, ptr %11, align 8             ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.sc
  br i1 %i.aah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit
  %i.aai = load i64, ptr %i.sc, align 8
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aaj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.aak = load ptr, ptr %10, align 8             ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.rz
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.aam = load i64, ptr %i.rz, align 8
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.sroa.0352.0 = load ptr, ptr %.sroa.0352.0666, align 8 ; 2 uses
  %.not404 = icmp eq ptr %.sroa.0352.0, null
  br i1 %.not404, label %.loopexit405, label %bb.bo

bb.dr:                                            ; preds = %.loopexit422, %.loopexit.split-lp423, %bb.dg, %bb.di, %bb.dh, %.body
  %.sroa.16.2663732 = phi ptr [ %.sroa.16.2663, %.body ], [ %.sroa.16.2663, %bb.dh ], [ %.sroa.16.2663, %bb.dg ], [ %.sroa.16.2663, %bb.di ], [ %.sroa.16.2663.lcssa724, %.loopexit422 ], [ %.sroa.10.2664, %.loopexit.split-lp423 ] ; 2 uses
  %.pn238.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn235, %.body ], [ %i.yj, %bb.dh ], [ %i.yi, %bb.dg ], [ %i.yk, %bb.di ], [ %lpad.loopexit424, %.loopexit422 ], [ %lpad.loopexit.split-lp425, %.loopexit.split-lp423 ] ; 2 uses
  %i.aao = load ptr, ptr %11, align 8             ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.sc
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.dr
  %i.aaq = load i64, ptr %i.sc, align 8
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.dr, %.loopexit407, %.loopexit.split-lp408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  %.sroa.16.2663731 = phi ptr [ %.sroa.16.2663732, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324 ], [ %.sroa.16.2663, %.loopexit.split-lp408 ], [ %.sroa.16.2663, %.loopexit407 ], [ %.sroa.16.2663732, %bb.dr ] ; 2 uses
  %.pn238.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324 ], [ %lpad.loopexit.split-lp410, %.loopexit.split-lp408 ], [ %lpad.loopexit409, %.loopexit407 ], [ %.pn238.pn.pn.pn.pn, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.aas = load ptr, ptr %10, align 8             ; 2 uses
  %i.aat = icmp eq ptr %i.aas, %i.rz
  br i1 %i.aat, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.aau = load i64, ptr %i.rz, align 8
  %i.aav = add i64 %i.aau, 1
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aav) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %.loopexit406, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  %.sroa.16.2663730 = phi ptr [ %.sroa.16.2663731, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327 ], [ %.sroa.16.2663, %.loopexit.split-lp ], [ %.sroa.16.2663, %.loopexit406 ], [ %.sroa.16.2663731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ]
  %.pn238.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit406 ], [ %.pn238.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dv

bb.ds:                                            ; preds = %._crit_edge691
  %i.aaw = trunc i64 %i.sk to i32
  %i.aax = getelementptr inbounds nuw i8, ptr %i.h, i64 1264
  store i32 %i.aaw, ptr %i.aax, align 8
  %i.aay = icmp ugt i64 %i.sk, 2305843009213693951
  %i.aaz = select i1 %i.aay, i64 -1, i64 %i.sj
  %i.aba = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aaz) #30
          to label %.lr.ph697.preheader unwind label %bb.dt

.lr.ph697.preheader:                              ; preds = %bb.ds
  %i.abb = getelementptr inbounds nuw i8, ptr %i.h, i64 1272 ; 6 uses
  store ptr %i.aba, ptr %i.abb, align 8
  %xtraiter1117 = and i64 %i.sk, 3                ; 3 uses
  %i.abc = icmp ult i64 %i.sk, 4
  br i1 %i.abc, label %.lr.ph697.epil.preheader, label %.lr.ph697.preheader.new

.lr.ph697.preheader.new:                          ; preds = %.lr.ph697.preheader
  %unroll_iter1121 = and i64 %i.sk, -4
  br label %.lr.ph697

bb.dt:                                            ; preds = %bb.ds
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.lr.ph697:                                        ; preds = %.lr.ph697, %.lr.ph697.preheader.new
  %.0695 = phi i64 [ 0, %.lr.ph697.preheader.new ], [ %i.abx, %.lr.ph697 ] ; 6 uses
  %niter1122 = phi i64 [ 0, %.lr.ph697.preheader.new ], [ %niter1122.next.3, %.lr.ph697 ]
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0363.1.lcssa, i64 %.0695
  %i.abf = load ptr, ptr %i.abe, align 8
  %i.abg = load ptr, ptr %i.abb, align 8
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %.0695
  store ptr %i.abf, ptr %i.abh, align 8
  %i.abi = or disjoint i64 %.0695, 1              ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0363.1.lcssa, i64 %i.abi
  %i.abk = load ptr, ptr %i.abj, align 8
  %i.abl = load ptr, ptr %i.abb, align 8
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %i.abi
  store ptr %i.abk, ptr %i.abm, align 8
  %i.abn = or disjoint i64 %.0695, 2              ; 2 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0363.1.lcssa, i64 %i.abn
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = load ptr, ptr %i.abb, align 8
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %i.abn
  store ptr %i.abp, ptr %i.abr, align 8
  %i.abs = or disjoint i64 %.0695, 3              ; 2 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0363.1.lcssa, i64 %i.abs
  %i.abu = load ptr, ptr %i.abt, align 8
  %i.abv = load ptr, ptr %i.abb, align 8
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %i.abs
  store ptr %i.abu, ptr %i.abw, align 8
  %i.abx = add nuw i64 %.0695, 4                  ; 2 uses
  %niter1122.next.3 = add i64 %niter1122, 4       ; 2 uses
  %niter1122.ncmp.3 = icmp eq i64 %niter1122.next.3, %unroll_iter1121
  br i1 %niter1122.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph697, !llvm.loop !165

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph697
  %lcmp.mod1119.not = icmp eq i64 %xtraiter1117, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_:bb.a
  %i.ri = ptrtoint ptr %i.re to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = sdiv exact i64 %i.rj, 12                ; 2 uses
  %.not.i.i296 = icmp ult i64 %.0217625, %i.rk
  br i1 %.not.i.i296, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %.0217625, i64 noundef %i.rk) #31
          to label %.noexc297 unwind label %bb.eg

.noexc297:                                        ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.eb
  %i.rl = getelementptr inbounds nuw [12 x i8], ptr %i.re, i64 %.0217625 ; 2 uses
  %i.rm = load <2 x float>, ptr %i.rl, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ea, %bb.ed
  %.sroa.8.0 = phi float [ %.sroa.8.0.copyload, %bb.ed ], [ 0.000000e+00, %bb.ea ]
  %i.rn = phi <2 x float> [ %i.rm, %bb.ed ], [ zeroinitializer, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4
  %i.ro = invoke noundef ptr @_ZNK6Assimp3FBX12MeshGeometry19ToOutputVertexIndexEjRj(ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef %i.qv, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.preheader unwind label %bb.eh

.preheader:                                       ; preds = %bb.ee
  %i.rp = load i32, ptr %i.c, align 4
  %.not670 = icmp eq i32 %i.rp, 0
  %i.rq = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.rr = icmp eq ptr %i.rq, null
  %or.cond = select i1 %.not670, i1 true, i1 %i.rr
  br i1 %or.cond, label %._crit_edge624, label %.lr.ph623.split

._crit_edge624:                                   ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.rs = add nuw i64 %.0217625, 1                ; 2 uses
  %i.rt = load ptr, ptr %i.qi, align 8
  %i.ru = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = ashr exact i64 %i.rx, 2
  %i.rz = icmp ult i64 %i.rs, %i.ry
  br i1 %i.rz, label %bb.dy, label %._crit_edge627, !llvm.loop !201

bb.ef:                                            ; preds = %bb.dz
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.eg:                                            ; preds = %bb.ec
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.eh:                                            ; preds = %bb.ee
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %.body319

.lr.ph623.splitthread-pre-split:                  ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %.pr803 = load ptr, ptr %i.v, align 8
  br label %.lr.ph623.split

.lr.ph623.split:                                  ; preds = %.preheader, %.lr.ph623.splitthread-pre-split
  %i.sd = phi ptr [ %.pr803, %.lr.ph623.splitthread-pre-split ], [ %i.rq, %.preheader ] ; 3 uses
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %.lr.ph623.splitthread-pre-split ], [ 0, %.preheader ] ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv737
  %i.sf = load i32, ptr %i.se, align 4            ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not10.i.i.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph623.split, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.sd, %.lr.ph623.split ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %.lr.ph623.split ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = icmp ult i32 %i.sh, %i.sf               ; 3 uses
  %.19.i.i.i = select i1 %i.si, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.si, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !189

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.sj = icmp eq ptr %.19.i.i.i, %i.u
  br i1 %i.sj, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit

_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.si, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.sk = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.sl = icmp ult i32 %i.sf, %i.sk
  br i1 %i.sl, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %.lr.ph.i.i.i.i301

.lr.ph.i.i.i.i301:                                ; preds = %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit, %.lr.ph.i.i.i.i301
  %.012.i.i.i.i302 = phi ptr [ %.1.i.i.i.i307, %.lr.ph.i.i.i.i301 ], [ %i.sd, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit ] ; 4 uses
  %.0811.i.i.i.i303 = phi ptr [ %.19.i.i.i.i304, %.lr.ph.i.i.i.i301 ], [ %i.u, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i302, i64 32
  %i.sn = load i32, ptr %i.sm, align 4
  %i.so = icmp ult i32 %i.sn, %i.sf               ; 3 uses
  %.19.i.i.i.i304 = select i1 %i.so, ptr %.0811.i.i.i.i303, ptr %.012.i.i.i.i302 ; 4 uses
  %.1.in.v.i.i.i.i305 = select i1 %i.so, i64 24, i64 16
  %.1.in.i.i.i.i306 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i302, i64 %.1.in.v.i.i.i.i305
  %.1.i.i.i.i307 = load ptr, ptr %.1.in.i.i.i.i306, align 8 ; 2 uses
  %.not.i.i.i.i308 = icmp eq ptr %.1.i.i.i.i307, null
  br i1 %.not.i.i.i.i308, label %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i309, label %.lr.ph.i.i.i.i301, !llvm.loop !189

_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i309: ; preds = %.lr.ph.i.i.i.i301
  %i.sp = icmp eq ptr %.19.i.i.i.i304, %i.u
  br i1 %i.sp, label %.critedge.i311, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i309
  %.19.i.i.i.i304.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.so, ptr %.0811.i.i.i.i303, ptr %.012.i.i.i.i302
  %.19.i.i.i.i304.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i304.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.sq = load i32, ptr %.19.i.i.i.i304.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.sr = icmp ult i32 %i.sf, %i.sq
  br i1 %i.sr, label %.critedge.i311, label %bb.en

.critedge.i311:                                   ; preds = %bb.ei, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i309
  %i.ss = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc318 unwind label %bb.ep ; 6 uses

.noexc318:                                        ; preds = %.critedge.i311
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 32 ; 3 uses
  store i32 %i.sf, ptr %i.st, align 4
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 36
  store i32 0, ptr %i.su, align 4
  %i.sv = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr %.19.i.i.i.i304, ptr noundef nonnull align 4 dereferenceable(4) %i.st)
          to label %bb.ej unwind label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i313 ; 2 uses

bb.ej:                                            ; preds = %.noexc318
  %i.sw = extractvalue { ptr, ptr } %i.sv, 0      ; 2 uses
  %i.sx = extractvalue { ptr, ptr } %i.sv, 1      ; 4 uses
  %.not.i.i314 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i314, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.not.i.i.i4.i315 = icmp ne ptr %i.sw, null
  %i.sy = icmp eq ptr %i.sx, %i.u
  %or.cond.i.i.i.i316 = or i1 %.not.i.i.i4.i315, %i.sy
  br i1 %or.cond.i.i.i.i316, label %.thread.i.i317, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.ta = load i32, ptr %i.st, align 4
  %i.tb = load i32, ptr %i.sz, align 4
  %i.tc = icmp ult i32 %i.ta, %i.tb
  br label %.thread.i.i317

.thread.i.i317:                                   ; preds = %bb.el, %bb.ek
  %i.td = phi i1 [ %i.tc, %bb.el ], [ true, %bb.ek ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.td, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.sx, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #27
  %i.te = load i64, ptr %i.y, align 8
  %i.tf = add i64 %i.te, 1
  store i64 %i.tf, ptr %i.y, align 8
  br label %bb.en

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i313: ; preds = %.noexc318
  %i.tg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef 40) #29
  br label %.body319

bb.em:                                            ; preds = %bb.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef 40) #29
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.thread.i.i317, %bb.ei
  %.sroa.09.0.i310 = phi ptr [ %.19.i.i.i.i304, %bb.ei ], [ %i.ss, %.thread.i.i317 ], [ %i.sw, %bb.em ]
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i310, i64 36
  %i.ti = load i32, ptr %i.th, align 4
  %i.tj = load ptr, ptr %i.qm, align 8
  %i.tk = zext i32 %i.ti to i64                   ; 3 uses
  %i.tl = getelementptr inbounds nuw [12 x i8], ptr %i.tj, i64 %i.tk ; 3 uses
  %i.tm = load <2 x float>, ptr %i.tl, align 4
  %i.tn = fadd <2 x float> %i.rd, %i.tm
  store <2 x float> %i.tn, ptr %i.tl, align 4
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.tp = load float, ptr %i.to, align 4
  %i.tq = fadd float %.sroa.6355.0.copyload, %i.tp
  store float %i.tq, ptr %i.to, align 4
  %i.tr = load ptr, ptr %i.qn, align 8            ; 2 uses
  %.not252 = icmp eq ptr %i.tr, null
  br i1 %.not252, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ts = getelementptr inbounds nuw [12 x i8], ptr %i.tr, i64 %i.tk ; 3 uses
  %i.tt = load <2 x float>, ptr %i.ts, align 4
  %i.tu = fadd <2 x float> %i.rn, %i.tt
  store <2 x float> %i.tu, ptr %i.ts, align 4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 2 uses
  %i.tw = load float, ptr %i.tv, align 4
  %i.tx = fadd float %.sroa.8.0, %i.tw
  store float %i.tx, ptr %i.tv, align 4
  %i.ty = load ptr, ptr %i.qn, align 8
  %i.tz = getelementptr inbounds nuw [12 x i8], ptr %i.ty, i64 %i.tk ; 3 uses
  %10 = load <2 x float>, ptr %i.tz, align 4      ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %10, %10
  %11 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %12 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %i.ua = call float @llvm.fmuladd.f32(float %12, float %12, float %11)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4          ; 3 uses
  %i.ud = call noundef float @llvm.fmuladd.f32(float %i.uc, float %i.uc, float %i.ua) ; 2 uses
  %i.ue = fcmp ogt float %i.ud, 0.000000e+00
  br i1 %i.ue, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.eo
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ud)
  %i.uf = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %13 = insertelement <2 x float> poison, float %i.uf, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %10, %14
  store <2 x float> %15, ptr %i.tz, align 4
  %i.ug = fmul float %i.uc, %i.uf
  store float %i.ug, ptr %i.ub, align 4
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

bb.ep:                                            ; preds = %.critedge.i311
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %.body319

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.lr.ph623.split, %_ZN10aiVector3tIfEdVEf.exit.i, %bb.eo, %bb.en, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.ui = load i32, ptr %i.c, align 4
  %i.uj = zext i32 %i.ui to i64
  %i.uk = icmp samesign ult i64 %indvars.iv.next738, %i.uj
  br i1 %i.uk, label %.lr.ph623.splitthread-pre-split, label %._crit_edge624, !llvm.loop !202

.body319:                                         ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i313, %bb.ep, %bb.eh
  %.pn253.pn = phi { ptr, i32 } [ %i.sc, %bb.eh ], [ %i.tg, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i313 ], [ %i.uh, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.fd

bb.eq:                                            ; preds = %._crit_edge627
  %i.ul = load float, ptr %i.ol, align 8
  %i.um = fdiv float %i.ul, 1.000000e+02
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge627, %bb.eq
  %i.un = phi float [ %i.um, %bb.eq ], [ 1.000000e+00, %._crit_edge627 ]
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ot, i64 1196
  store float %i.un, ptr %i.uo, align 4
  %.not.i322 = icmp eq ptr %.sroa.10.2631, %.sroa.16.2630
  br i1 %.not.i322, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  store ptr %i.ot, ptr %.sroa.10.2631, align 8
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit

bb.et:                                            ; preds = %bb.er
  %i.up = ptrtoint ptr %.sroa.10.2631 to i64
  %i.uq = ptrtoint ptr %.sroa.0374.2632 to i64
  %i.ur = sub i64 %i.up, %i.uq                    ; 6 uses
  %i.us = icmp eq i64 %i.ur, 9223372036854775800
  br i1 %i.us, label %bb.eu, label %_ZNKSt6vectorIP10aiAnimMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc324 unwind label %.loopexit.split-lp

.noexc324:                                        ; preds = %bb.eu
  unreachable

_ZNKSt6vectorIP10aiAnimMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.et
  %i.ut = ashr exact i64 %i.ur, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ut, i64 1)
  %i.uu = add nsw i64 %.sroa.speculated.i.i.i, %i.ut ; 2 uses
  %i.uv = icmp ult i64 %i.uu, %i.ut
  %i.uw = call i64 @llvm.umin.i64(i64 %i.uu, i64 1152921504606846975)
  %i.ux = select i1 %i.uv, i64 1152921504606846975, i64 %i.uw ; 3 uses
  %.not.i.i.i323 = icmp ne i64 %i.ux, 0
  call void @llvm.assume(i1 %.not.i.i.i323)
  %i.uy = shl nuw nsw i64 %i.ux, 3
  %i.uz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uy) #30
          to label %.noexc325 unwind label %.loopexit427 ; 4 uses

.noexc325:                                        ; preds = %_ZNKSt6vectorIP10aiAnimMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.va = getelementptr inbounds i8, ptr %i.uz, i64 %i.ur ; 2 uses
  store ptr %i.ot, ptr %i.va, align 8
  %i.vb = icmp sgt i64 %i.ur, 0
  br i1 %i.vb, label %bb.ev, label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ev:                                            ; preds = %.noexc325
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uz, ptr align 8 %.sroa.0374.2632, i64 %i.ur, i1 false)
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ev, %.noexc325
  %.not.i17.i.i = icmp eq ptr %.sroa.0374.2632, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0374.2632, i64 noundef %i.ur) #29
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ew, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.ux
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiAnimMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.es
  %.sroa.16.4 = phi ptr [ %i.vc, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.16.2630, %bb.es ] ; 2 uses
  %.pn = phi ptr [ %i.va, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.2631, %bb.es ]
  %.sroa.0374.4 = phi ptr [ %i.uz, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0374.2632, %bb.es ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.sroa.0363.0 = load ptr, ptr %.sroa.0363.0633, align 8 ; 2 uses
  %.not425 = icmp eq ptr %.sroa.0363.0, null
  br i1 %.not425, label %.loopexit426, label %bb.de

bb.ex:                                            ; preds = %._crit_edge658
  %i.vd = trunc i64 %i.oc to i32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.d, i64 1264
  store i32 %i.vd, ptr %i.ve, align 8
  %i.vf = icmp ugt i64 %i.oc, 2305843009213693951
  %i.vg = select i1 %i.vf, i64 -1, i64 %i.ob
  %i.vh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vg) #30
          to label %.lr.ph664.preheader unwind label %bb.ey

.lr.ph664.preheader:                              ; preds = %bb.ex
  %i.vi = getelementptr inbounds nuw i8, ptr %i.d, i64 1272 ; 6 uses
  store ptr %i.vh, ptr %i.vi, align 8
  %xtraiter992 = and i64 %i.oc, 3                 ; 3 uses
  %i.vj = icmp ult i64 %i.oc, 4
  br i1 %i.vj, label %.lr.ph664.epil.preheader, label %.lr.ph664.preheader.new

.lr.ph664.preheader.new:                          ; preds = %.lr.ph664.preheader
  %unroll_iter = and i64 %i.oc, -4
  br label %.lr.ph664

bb.ey:                                            ; preds = %bb.ex
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

.lr.ph664:                                        ; preds = %.lr.ph664, %.lr.ph664.preheader.new
  %.0662 = phi i64 [ 0, %.lr.ph664.preheader.new ], [ %i.we, %.lr.ph664 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph664.preheader.new ], [ %niter.next.3, %.lr.ph664 ]
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0374.1.lcssa, i64 %.0662
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = load ptr, ptr %i.vi, align 8
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %.0662
  store ptr %i.vm, ptr %i.vo, align 8
  %i.vp = or disjoint i64 %.0662, 1               ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0374.1.lcssa, i64 %i.vp
  %i.vr = load ptr, ptr %i.vq, align 8
  %i.vs = load ptr, ptr %i.vi, align 8
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.vp
  store ptr %i.vr, ptr %i.vt, align 8
  %i.vu = or disjoint i64 %.0662, 2               ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0374.1.lcssa, i64 %i.vu
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = load ptr, ptr %i.vi, align 8
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %i.vu
  store ptr %i.vw, ptr %i.vy, align 8
  %i.vz = or disjoint i64 %.0662, 3               ; 2 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0374.1.lcssa, i64 %i.vz
  %i.wb = load ptr, ptr %i.wa, align 8
  %i.wc = load ptr, ptr %i.vi, align 8
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %i.vz
  store ptr %i.wb, ptr %i.wd, align 8
  %i.we = add nuw i64 %.0662, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph664, !llvm.loop !204

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph664
  %lcmp.mod993.not = icmp eq i64 %xtraiter992, 0
  br i1 %lcmp.mod993.not, label %.loopexit, label %.lr.ph664.epil.preheader

.lr.ph664.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph664.preheader
  %.0662.epil.init = phi i64 [ 0, %.lr.ph664.preheader ], [ %i.we, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod994 = icmp ne i64 %xtraiter992, 0
  call void @llvm.assume(i1 %lcmp.mod994)
  br label %.lr.ph664.epil

.lr.ph664.epil:                                   ; preds = %.lr.ph664.epil, %.lr.ph664.epil.preheader
  %.0662.epil = phi i64 [ %i.wj, %.lr.ph664.epil ], [ %.0662.epil.init, %.lr.ph664.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph664.epil ], [ 0, %.lr.ph664.epil.preheader ]
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0374.1.lcssa, i64 %.0662.epil
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = load ptr, ptr %i.vi, align 8
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %.0662.epil
  store ptr %i.wg, ptr %i.wi, align 8
  %i.wj = add nuw i64 %.0662.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter992
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph664.epil, !llvm.loop !205

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph664.epil, %._crit_edge658
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wm = load ptr, ptr %i.wl, align 8            ; 2 uses
  %i.wn = load ptr, ptr %i.wk, align 8            ; 2 uses
  %.not.i.i.i328 = icmp eq ptr %.sroa.0374.1.lcssa, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %.loopexit
  %i.wo = ptrtoint ptr %.sroa.16.1.lcssa to i64
  %i.wp = sub i64 %i.wo, %i.oa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0374.1.lcssa, i64 noundef %i.wp) #29
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit:      ; preds = %.loopexit.thread, %.loopexit, %bb.ez
  %i.wq = phi ptr [ %i.nv, %.loopexit.thread ], [ %i.wn, %.loopexit ], [ %i.wn, %bb.ez ]
  %i.wr = phi ptr [ %i.nu, %.loopexit.thread ], [ %i.wm, %.loopexit ], [ %i.wm, %bb.ez ]
  %.sroa.0.0..sroa.0.0..sroa.0.0.741 = load ptr, ptr %.sroa.0, align 8 ; 3 uses
  %.not.i.i.i329 = icmp eq ptr %.sroa.0.0..sroa.0.0..sroa.0.0.741, null
  br i1 %.not.i.i.i329, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit
  %i.ws = ptrtoint ptr %.sroa.14.3 to i64
  %i.wt = ptrtoint ptr %.sroa.0.0..sroa.0.0..sroa.0.0.741 to i64
  %i.wu = sub i64 %i.ws, %i.wt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0..sroa.0.0..sroa.0.0.741, i64 noundef %i.wu) #29
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP11aiVectorKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_:bb.a
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 4 uses
  %.not.i.i84.us = icmp ugt i64 %i.bm, %i.ao
  br i1 %.not.i.i84.us, label %bb.j, label %.split121.us

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ao
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i87.us = icmp ult i64 %i.ar, %i.bm
  br i1 %.not.i.i87.us, label %bb.k, label %.split125.us

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ar
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = sub nsw i64 %i.p, %i.bo
  %i.bt = sitofp i64 %i.bs to float
  %i.bu = sub nsw i64 %i.bq, %i.bo
  %i.bv = sitofp i64 %i.bu to float
  %i.bw = fdiv float %i.bt, %i.bv
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi float [ %i.bw, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.by = fsub float %i.be, %i.bc
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.bx, float %i.bc)
  %i.ca = load i32, ptr %i.t, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb
  store float %i.bz, ptr %i.cc, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.cd = add nuw i64 %.067109.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.i
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !392

._crit_edge.us:                                   ; preds = %bb.n
  %i.ce = sitofp i64 %i.p to double
  %i.cf = fdiv nnan double %i.ce, f0x422581D1AF600000
  %i.cg = load double, ptr %i.o, align 8
  %i.ch = fmul double %i.cf, %i.cg                ; 3 uses
  store double %i.ch, ptr %.0112.us, align 8
  %i.ci = load double, ptr %6, align 8            ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  %i.ck = select i1 %i.cj, double %i.ch, double %i.ci
  store double %i.ck, ptr %6, align 8
  %i.cl = load double, ptr %5, align 8            ; 2 uses
  %i.cm = load double, ptr %.0112.us, align 8     ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm
  %i.co = select i1 %i.cn, double %i.cm, double %i.cl
  store double %i.co, ptr %5, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0112.us, i64 8
  %i.cq = load <2 x float>, ptr %i.b, align 8
  store <2 x float> %i.cq, ptr %i.cp, align 8
  %i.cr = load float, ptr %i.m, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.0112.us, i64 16
  store float %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0112.us, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.092.0111.us, i64 8 ; 2 uses
  %.not95.us = icmp eq ptr %i.cu, %i.l
  br i1 %.not95.us, label %._crit_edge114, label %.lr.ph.us

._crit_edge114:                                   ; preds = %._crit_edge.us, %.lr.ph113.split, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.cv = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge114
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge114, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.p:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.v

.lr.ph113.split:                                  ; preds = %.lr.ph113, %.lr.ph113.split
  %.0112 = phi ptr [ %i.ds, %.lr.ph113.split ], [ %1, %.lr.ph113 ] ; 5 uses
  %.sroa.092.0111 = phi ptr [ %i.dt, %.lr.ph113.split ], [ %i.j, %.lr.ph113 ] ; 2 uses
  %i.dc = load i64, ptr %.sroa.092.0111, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dd = load float, ptr %i.n, align 4
  %i.de = sitofp i64 %i.dc to double
  %i.df = fdiv nnan double %i.de, f0x422581D1AF600000
  %i.dg = load double, ptr %i.o, align 8
  %i.dh = fmul double %i.df, %i.dg                ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0112, i64 8
  %i.dj = load <2 x float>, ptr %4, align 4
  store double %i.dh, ptr %.0112, align 8
  %i.dk = load double, ptr %6, align 8            ; 2 uses
  %i.dl = fcmp olt double %i.dh, %i.dk
  %i.dm = select i1 %i.dl, double %i.dh, double %i.dk
  store double %i.dm, ptr %6, align 8
  %i.dn = load double, ptr %5, align 8            ; 2 uses
  %i.do = load double, ptr %.0112, align 8        ; 2 uses
  %i.dp = fcmp olt double %i.dn, %i.do
  %i.dq = select i1 %i.dp, double %i.do, double %i.dn
  store double %i.dq, ptr %5, align 8
  store <2 x float> %i.dj, ptr %i.di, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0112, i64 16
  store float %i.dd, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0112, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.092.0111, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.dt, %i.l
  br i1 %.not95, label %._crit_edge114, label %.lr.ph113.split

.split.us:                                        ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ao, i64 noundef %i.ba) #31
          to label %.noexc80 unwind label %bb.q

.noexc80:                                         ; preds = %.split.us
  unreachable

.split117.us:                                     ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ar, i64 noundef %i.ba) #31
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %.split117.us
  unreachable

.split121.us:                                     ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ao, i64 noundef %i.bm) #31
          to label %.noexc85 unwind label %bb.s

.noexc85:                                         ; preds = %.split121.us
  unreachable

.split125.us:                                     ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ar, i64 noundef %i.bm) #31
          to label %.noexc88 unwind label %bb.t

.noexc88:                                         ; preds = %.split125.us
  unreachable

bb.q:                                             ; preds = %.split.us
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %.split117.us
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %.split121.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %.split125.us
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.s, %bb.t, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.s ], [ %i.du, %bb.q ], [ %i.dv, %bb.r ], [ %i.dx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.u ], [ %i.db, %bb.p ]
  %i.dy = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIjSaIjEED2Ev.exit91, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit91

_ZNSt6vectorIjSaIjEED2Ev.exit91:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP9aiQuatKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_NS0_5Model8RotOrderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.aiMatrix4x4t, align 4        ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 24) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #30 ; 6 uses
  %i.m = icmp eq ptr %i.b, %i.c
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  invoke void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP11aiVectorKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store float 1.000000e+00, ptr %8, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.y, %i.z
  br i1 %.not, label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.f

_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25

bb.f:                                             ; preds = %.lr.ph, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %.01967 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 3 uses
  %.sroa.12.066 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dn, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %.sroa.957.065 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dm, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %.sroa.6.064 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dl, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %.sroa.056.063 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.dk, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.01967 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.01967 ; 2 uses
  store double %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  invoke void @_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE(ptr nonnull align 8 poison, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(64) %8)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.al = load float, ptr %8, align 4             ; 6 uses
  %i.am = load float, ptr %i.ae, align 4          ; 4 uses
  %i.an = load float, ptr %i.t, align 4           ; 6 uses
  %i.ao = load float, ptr %i.u, align 4           ; 4 uses
  %9 = load <2 x float>, ptr %i.s, align 4        ; 7 uses
  %10 = load <2 x float>, ptr %i.af, align 4      ; 7 uses
  %i.ap = load float, ptr %i.v, align 4           ; 6 uses
  %i.aq = fadd float %i.al, %i.an
  %i.ar = fadd float %i.aq, %i.ap                 ; 2 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = fadd float %i.ar, 1.000000e+00
  %i.au = tail call noundef float @sqrtf(float noundef %i.at) #27
  %11 = extractelement <2 x float> %9, i64 0
  %i.av = fsub float %i.am, %11
  %shift = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %10
  %12 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %13 = extractelement <2 x float> %10, i64 1
  %i.aw = fsub float %13, %i.ao
  %i.ax = fmul float %i.au, 2.000000e+00
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0 ; 2 uses
  %i.az = insertelement <4 x float> %i.ay, float %i.aw, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %12, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.av, i64 3 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.ay, <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %i.bd = fmul <4 x float> %i.bb, %i.bc
  %i.be = fdiv <4 x float> %i.bb, %i.bc
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = fcmp ogt float %i.al, %i.an
  %i.bh = fcmp ogt float %i.al, %i.ap
  %or.cond.i = and i1 %i.bg, %i.bh
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = fadd float %i.al, 1.000000e+00
  %i.bj = fsub float %i.bi, %i.an
  %i.bk = fsub float %i.bj, %i.ap
  %i.bl = tail call noundef float @sqrtf(float noundef %i.bk) #27
  %.scalar = fmul float %i.bl, 2.000000e+00
  %i.bm = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %14 = insertelement <2 x float> poison, float %i.am, i64 0
  %15 = extractelement <2 x float> %10, i64 1
  %i.bo = fsub float %15, %i.ao
  %i.bp = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bn, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %16 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <2 x float> %14, <2 x float> %10, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %18 = fadd <4 x float> %16, %17
  %19 = shufflevector <4 x float> %i.bq, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.br = fdiv <4 x float> %19, %i.bn
  %i.bs = fmul <4 x float> %19, %i.bn
  %i.bt = shufflevector <4 x float> %i.br, <4 x float> %i.bs, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = fcmp ogt float %i.an, %i.ap
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = fadd float %i.an, 1.000000e+00
  %i.bw = fsub float %i.bv, %i.al
  %i.bx = fsub float %i.bw, %i.ap
  %i.by = tail call noundef float @sqrtf(float noundef %i.bx) #27
  %i.bz = fmul float %i.by, 2.000000e+00
  %20 = extractelement <2 x float> %9, i64 0
  %i.ca = fadd float %20, %i.am
  %21 = extractelement <2 x float> %10, i64 1
  %i.cb = fadd float %i.ao, %21
  %shift75 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop76 = fsub <2 x float> %shift75, %10
  %22 = extractelement <2 x float> %foldExtExtBinop76, i64 0
  %i.cc = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %22, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.ca, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.cb, i64 3 ; 2 uses
  %i.cf = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ch = fdiv <4 x float> %i.ce, %i.cg
  %i.ci = fmul <4 x float> %i.ce, %i.cg
  %i.cj = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.m:                                             ; preds = %bb.k
  %i.ck = fadd float %i.ap, 1.000000e+00
  %i.cl = fsub float %i.ck, %i.al
  %i.cm = fsub float %i.cl, %i.an
  %i.cn = tail call noundef float @sqrtf(float noundef %i.cm) #27
  %i.co = fmul float %i.cn, 2.000000e+00
  %23 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %24 = insertelement <2 x float> %23, float %i.ao, i64 1
  %25 = fadd <2 x float> %24, %10
  %26 = extractelement <2 x float> %9, i64 0
  %i.cp = fsub float %i.am, %26
  %i.cq = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.cp, i64 0
  %27 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x float> %i.cq, <4 x float> %27, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.cr = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ct = fdiv <4 x float> %28, %i.cs
  %i.cu = fmul <4 x float> %28, %i.cs
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %i.cw = phi <4 x float> [ %i.bf, %bb.h ], [ %i.bt, %bb.j ], [ %i.cj, %bb.l ], [ %i.cv, %bb.m ] ; 6 uses
  %i.cx = extractelement <4 x float> %i.cw, i64 2
  %i.cy = fmul float %.sroa.957.065, %i.cx
  %i.cz = extractelement <4 x float> %i.cw, i64 1
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %.sroa.6.064, float %i.cy)
  %i.db = extractelement <4 x float> %i.cw, i64 3
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %.sroa.12.066, float %i.da)
  %i.dd = extractelement <4 x float> %i.cw, i64 0
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %.sroa.056.063, float %i.dc)
  %i.df = fcmp olt float %i.de, 0.000000e+00
  %i.dg = fneg <4 x float> %i.cw
  %i.dh = select i1 %i.df, <4 x float> %i.dg, <4 x float> %i.cw ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store <4 x float> %i.dh, ptr %i.di, align 8
  %i.dj = add nuw i64 %.01967, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %i.ad
  %i.dk = extractelement <4 x float> %i.dh, i64 0
  %i.dl = extractelement <4 x float> %i.dh, i64 1
  %i.dm = extractelement <4 x float> %i.dh, i64 2
  %i.dn = extractelement <4 x float> %i.dh, i64 3
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit, label %bb.f, !llvm.loop !393

bb.n:                                             ; preds = %bb.f
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25: ; preds = %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.do, %bb.n ], [ %i.ag, %bb.e ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, <2 x float> } @_ZN6Assimp3FBX12FBXConverter17EulerToQuaternionERK10aiVector3tIfENS0_5Model8RotOrderE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE(ptr nonnull align 8 poison, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.e = load float, ptr %3, align 4              ; 6 uses
  %i.f = load <2 x float>, ptr %i.a, align 4      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load float, ptr %i.g, align 4            ; 4 uses
  %i.i = load float, ptr %i.b, align 4            ; 6 uses
  %i.j = load float, ptr %i.c, align 4            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = load float, ptr %i.k, align 4            ; 4 uses
  %i.n = load float, ptr %i.l, align 4            ; 4 uses
  %i.o = load float, ptr %i.d, align 4            ; 6 uses
  %i.p = fadd float %i.e, %i.i
  %i.q = fadd float %i.p, %i.o                    ; 2 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd float %i.q, 1.000000e+00
  %i.t = tail call noundef float @sqrtf(float noundef %i.s) #27
  %i.u = fmul float %i.t, 2.000000e+00            ; 3 uses
  %i.v = fsub float %i.n, %i.j
  %i.w = fdiv float %i.v, %i.u
  %.sroa.020.4.vec.insert27 = insertelement <2 x float> <float undef, float poison>, float %i.w, i64 1
  %i.x = extractelement <2 x float> %i.f, i64 1
  %i.y = fsub float %i.x, %i.m
  %i.z = extractelement <2 x float> %i.f, i64 0
  %i.aa = fsub float %i.h, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x float> %i.ac, %i.ae
  %i.ag = fmul float %i.u, 2.500000e-01
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = fcmp ogt float %i.e, %i.i
  %i.ai = fcmp ogt float %i.e, %i.o
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = fadd float %i.e, 1.000000e+00
  %i.ak = fsub float %i.aj, %i.i
  %i.al = fsub float %i.ak, %i.o
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #27
  %i.an = fmul float %i.am, 2.000000e+00          ; 3 uses
  %i.ao = fmul float %i.an, 2.500000e-01
  %.sroa.020.4.vec.insert25 = insertelement <2 x float> <float undef, float poison>, float %i.ao, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.m, i64 1
  %i.ar = fadd <2 x float> %i.f, %i.aq
  %i.as = insertelement <2 x float> poison, float %i.an, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.ar, %i.at
  %i.av = fsub float %i.n, %i.j
  %i.aw = fdiv float %i.av, %i.an
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = fcmp ogt float %i.i, %i.o
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fadd float %i.i, 1.000000e+00
  %i.az = fsub float %i.ay, %i.e
  %i.ba = fsub float %i.az, %i.o
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #27
  %i.bc = fmul float %i.bb, 2.000000e+00          ; 3 uses
  %i.bd = extractelement <2 x float> %i.f, i64 0
  %i.be = fadd float %i.bd, %i.h
  %i.bf = fdiv float %i.be, %i.bc
  %.sroa.020.4.vec.insert23 = insertelement <2 x float> <float undef, float poison>, float %i.bf, i64 1
  %i.bg = fmul float %i.bc, 2.500000e-01
  %i.bh = extractelement <2 x float> %i.f, i64 1
  %i.bi = fsub float %i.bh, %i.m
  %i.bj = fadd float %i.j, %i.n
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %i.bg, i64 0
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.br = fadd float %i.o, 1.000000e+00
  %i.bs = fsub float %i.br, %i.e
  %i.bt = fsub float %i.bs, %i.i
  %i.bu = tail call noundef float @sqrtf(float noundef %i.bt) #27
  %i.bv = fmul float %i.bu, 2.000000e+00          ; 3 uses
  %i.bw = extractelement <2 x float> %i.f, i64 1
  %i.bx = fadd float %i.bw, %i.m
  %i.by = fdiv float %i.bx, %i.bv
  %.sroa.020.4.vec.insert = insertelement <2 x float> <float undef, float poison>, float %i.by, i64 1
  %i.bz = fmul float %i.bv, 2.500000e-01
  %i.ca = extractelement <2 x float> %i.f, i64 0
  %i.cb = fsub float %i.h, %i.ca
  %i.cc = fadd float %i.j, %i.n
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.cb, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x float> %i.ce, %i.cg           ; 2 uses
  %.sroa.6.12.vec.insert = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.ci = extractelement <2 x float> %i.ch, i64 1
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.sroa.020.0 = phi <2 x float> [ %.sroa.020.4.vec.insert27, %bb.b ], [ %.sroa.020.4.vec.insert25, %bb.d ], [ %.sroa.020.4.vec.insert23, %bb.f ], [ %.sroa.020.4.vec.insert, %bb.g ]
  %.sroa.6.0 = phi <2 x float> [ %i.af, %bb.b ], [ %i.au, %bb.d ], [ %i.bp, %bb.f ], [ %.sroa.6.12.vec.insert, %bb.g ]
  %.sink.i = phi float [ %i.ag, %bb.b ], [ %i.aw, %bb.d ], [ %i.bq, %bb.f ], [ %i.ci, %bb.g ]
  %.sroa.020.0.vec.insert = insertelement <2 x float> %.sroa.020.0, float %.sink.i, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.020.0.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.k, align 4            ; 4 uses
  %i.w = load float, ptr %0, align 4              ; 3 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.c, align 4            ; 2 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
end_hunk_2
