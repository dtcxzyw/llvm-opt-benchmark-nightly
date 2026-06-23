inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_ZN6Assimp13glTF2Exporter12ExportMeshesEv:bb.a
  %i.vs = select i1 %.not.i485, i1 %i.vr, i1 false
  br i1 %i.vs, label %bb.bp, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503

bb.bp:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv973 ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4            ; 2 uses
  %i.vv = icmp ugt i32 %i.vu, 1
  br i1 %i.vv, label %.lr.ph906, label %bb.bq

.lr.ph906:                                        ; preds = %bb.bp, %.lr.ph906
  %indvars.iv970 = phi i64 [ %indvars.iv.next971, %.lr.ph906 ], [ 0, %bb.bp ] ; 2 uses
  %i.vw = load ptr, ptr %i.vo, align 8
  %i.vx = getelementptr inbounds nuw [12 x i8], ptr %i.vw, i64 %indvars.iv970
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4 ; 2 uses
  %i.vz = load float, ptr %i.vy, align 4
  %i.wa = fsub float 1.000000e+00, %i.vz
  store float %i.wa, ptr %i.vy, align 4
  %indvars.iv.next971 = add nuw nsw i64 %indvars.iv970, 1 ; 2 uses
  %i.wb = load i32, ptr %i.mh, align 4            ; 2 uses
  %i.wc = zext i32 %i.wb to i64
  %i.wd = icmp samesign ult i64 %indvars.iv.next971, %i.wc
  br i1 %i.wd, label %.lr.ph906, label %thread-pre-split, !llvm.loop !56

thread-pre-split:                                 ; preds = %.lr.ph906
  %.pr.pre = load i32, ptr %i.vt, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %thread-pre-split, %bb.bp
  %i.we = phi i32 [ %i.wb, %thread-pre-split ], [ %i.vq, %bb.bp ]
  %i.wf = phi i32 [ %.pr.pre, %thread-pre-split ], [ %i.vu, %bb.bp ] ; 2 uses
  %.not378 = icmp eq i32 %i.wf, 0
  br i1 %.not378, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.wg = icmp eq i32 %i.wf, 2
  %i.wh = select i1 %i.wg, i32 1, i32 2
  %i.wi = load ptr, ptr %i.af, align 8
  %i.wj = zext i32 %i.we to i64
  %i.wk = load ptr, ptr %i.vo, align 8
  %i.wl = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %i.wi, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.wj, ptr noundef %i.wk, i32 noundef 2, i32 noundef %i.wh, i32 noundef 5126, i32 noundef 34962)
          to label %bb.bs unwind label %.loopexit792 ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %.fca.0.extract132 = extractvalue { ptr, i32 } %i.wl, 0 ; 5 uses
  %.fca.1.extract133 = extractvalue { ptr, i32 } %i.wl, 1 ; 3 uses
  %.not.i486 = icmp eq ptr %.fca.0.extract132, null
  br i1 %.not.i486, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit487

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit487: ; preds = %bb.bs
  %i.wm = zext i32 %.fca.1.extract133 to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %.fca.0.extract132, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  %i.wp = load ptr, ptr %.fca.0.extract132, align 8
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = sub i64 %i.wq, %i.wr
  %i.wt = ashr exact i64 %i.ws, 3
  %i.wu = icmp ugt i64 %i.wt, %i.wm
  br i1 %i.wu, label %bb.bt, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503

bb.bt:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit487
  %i.wv = load ptr, ptr %i.vb, align 8            ; 6 uses
  %i.ww = load ptr, ptr %i.vc, align 8
  %.not.i488 = icmp eq ptr %i.wv, %i.ww
  br i1 %.not.i488, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %.fca.0.extract132, ptr %i.wv, align 8
  %.sroa.7707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store i32 %.fca.1.extract133, ptr %.sroa.7707.0..sroa_idx, align 8
  %i.wx = load ptr, ptr %i.vb, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  store ptr %i.wy, ptr %i.vb, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503

bb.bv:                                            ; preds = %bb.bt
  %i.wz = load ptr, ptr %i.va, align 8            ; 5 uses
  %i.xa = ptrtoint ptr %i.wv to i64
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = sub i64 %i.xa, %i.xb                    ; 4 uses
  %i.xd = icmp eq i64 %i.xc, 9223372036854775792
  br i1 %i.xd, label %bb.bw, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i489

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc501 unwind label %.loopexit.split-lp793

.noexc501:                                        ; preds = %bb.bw
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i489: ; preds = %bb.bv
  %i.xe = ashr exact i64 %i.xc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i490 = call i64 @llvm.umax.i64(i64 %i.xe, i64 1)
  %i.xf = add nsw i64 %.sroa.speculated.i.i.i490, %i.xe ; 2 uses
  %i.xg = icmp ult i64 %i.xf, %i.xe
  %i.xh = call i64 @llvm.umin.i64(i64 %i.xf, i64 576460752303423487)
  %i.xi = select i1 %i.xg, i64 576460752303423487, i64 %i.xh ; 3 uses
  %.not.i.i.i491 = icmp ne i64 %i.xi, 0
  call void @llvm.assume(i1 %.not.i.i.i491)
  %i.xj = shl nuw nsw i64 %i.xi, 4
  %i.xk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xj) #33
          to label %.noexc502 unwind label %.loopexit792 ; 5 uses

.noexc502:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i489
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xc ; 2 uses
  store ptr %.fca.0.extract132, ptr %i.xl, align 8
  %.sroa.7707.0..sroa_idx708 = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i32 %.fca.1.extract133, ptr %.sroa.7707.0..sroa_idx708, align 8
  %.not10.i.i.i.i.i492 = icmp eq ptr %i.wz, %i.wv
  br i1 %.not10.i.i.i.i.i492, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497, label %.lr.ph.i.i.i.i.i493

.lr.ph.i.i.i.i.i493:                              ; preds = %.noexc502, %.lr.ph.i.i.i.i.i493
  %.012.i.i.i.i.i494 = phi ptr [ %i.xn, %.lr.ph.i.i.i.i.i493 ], [ %i.xk, %.noexc502 ] ; 2 uses
  %.0911.i.i.i.i.i495 = phi ptr [ %i.xm, %.lr.ph.i.i.i.i.i493 ], [ %i.wz, %.noexc502 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i494, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i495, i64 16, i1 false), !alias.scope !57
  %i.xm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i495, i64 16 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i494, i64 16 ; 2 uses
  %.not.i.i.i.i.i496 = icmp eq ptr %i.xm, %i.wv
  br i1 %.not.i.i.i.i.i496, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497, label %.lr.ph.i.i.i.i.i493, !llvm.loop !45

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497: ; preds = %.lr.ph.i.i.i.i.i493, %.noexc502
  %.0.lcssa.i.i.i.i.i498 = phi ptr [ %i.xk, %.noexc502 ], [ %i.xn, %.lr.ph.i.i.i.i.i493 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i498, i64 16
  %.not.i23.i.i499 = icmp eq ptr %i.wz, null
  br i1 %.not.i23.i.i499, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xc) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500: ; preds = %bb.bx, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i497
  store ptr %i.xk, ptr %i.va, align 8
  store ptr %i.xo, ptr %i.vb, align 8
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.xi
  store ptr %i.xp, ptr %i.vc, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503

.loopexit792:                                     ; preds = %bb.br, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i489
  %lpad.loopexit794 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

.loopexit.split-lp793:                            ; preds = %bb.bw
  %lpad.loopexit.split-lp795 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit503: ; preds = %bb.bs, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit487, %bb.bu, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i500, %bb.bq, %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1 ; 2 uses
  %exitcond976.not = icmp eq i64 %indvars.iv.next974, 8
  br i1 %exitcond976.not, label %.preheader786, label %_ZNK6aiMesh16HasTextureCoordsEj.exit, !llvm.loop !61

bb.by:                                            ; preds = %.preheader786, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522
  %indvars.iv977 = phi i64 [ 0, %.preheader786 ], [ %indvars.iv.next978, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522 ] ; 3 uses
  %i.xq = load ptr, ptr %i.vd, align 8
  %.not.i504 = icmp eq ptr %i.xq, null
  br i1 %.not.i504, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.xr = load ptr, ptr %i.ve, align 8
  %.not.1.i = icmp eq ptr %i.xr, null
  br i1 %.not.1.i, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xs = load ptr, ptr %i.vf, align 8
  %.not.2.i = icmp eq ptr %i.xs, null
  br i1 %.not.2.i, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.xt = load ptr, ptr %i.vg, align 8
  %.not.3.i = icmp eq ptr %i.xt, null
  br i1 %.not.3.i, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.xu = load ptr, ptr %i.vh, align 8
  %.not.4.i = icmp eq ptr %i.xu, null
  br i1 %.not.4.i, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.xv = load ptr, ptr %i.vi, align 8
  %.not.5.i = icmp eq ptr %i.xv, null
  br i1 %.not.5.i, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.xw = load ptr, ptr %i.vj, align 8
  %.not.6.i = icmp eq ptr %i.xw, null
  br i1 %.not.6.i, label %_ZNK6aiMesh19GetNumColorChannelsEv.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xx = load ptr, ptr %i.vk, align 8
  %.not.7.i = icmp eq ptr %i.xx, null
  %i.xy = select i1 %.not.7.i, i64 7, i64 8
  br label %_ZNK6aiMesh19GetNumColorChannelsEv.exit

_ZNK6aiMesh19GetNumColorChannelsEv.exit:          ; preds = %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf
  %.0.lcssa.i = phi i64 [ 4, %bb.cc ], [ 0, %bb.by ], [ 1, %bb.bz ], [ %i.xy, %bb.cf ], [ 2, %bb.ca ], [ 5, %bb.cd ], [ 3, %bb.cb ], [ 6, %bb.ce ]
  %i.xz = icmp samesign ult i64 %indvars.iv977, %.0.lcssa.i
  br i1 %i.xz, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNK6aiMesh19GetNumColorChannelsEv.exit
  %i.ya = load i32, ptr %i.fy, align 8            ; 3 uses
  %.not362 = icmp eq i32 %i.ya, 0
  br i1 %.not362, label %bb.cq, label %bb.co

bb.ch:                                            ; preds = %_ZNK6aiMesh19GetNumColorChannelsEv.exit
  %i.yb = load ptr, ptr %i.af, align 8
  %i.yc = load i32, ptr %i.mh, align 4
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv977
  %i.yf = load ptr, ptr %i.ye, align 8
  %i.yg = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.yd, ptr noundef %i.yf, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 34962)
          to label %bb.ci unwind label %.loopexit787 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %.fca.0.extract125 = extractvalue { ptr, i32 } %i.yg, 0 ; 5 uses
  %.fca.1.extract126 = extractvalue { ptr, i32 } %i.yg, 1 ; 3 uses
  %.not.i505 = icmp eq ptr %.fca.0.extract125, null
  br i1 %.not.i505, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit506

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit506: ; preds = %bb.ci
  %i.yh = zext i32 %.fca.1.extract126 to i64
  %i.yi = getelementptr inbounds nuw i8, ptr %.fca.0.extract125, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8
  %i.yk = load ptr, ptr %.fca.0.extract125, align 8
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = ashr exact i64 %i.yn, 3
  %i.yp = icmp ugt i64 %i.yo, %i.yh
  br i1 %i.yp, label %bb.cj, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522

bb.cj:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit506
  %i.yq = load ptr, ptr %i.vm, align 8            ; 6 uses
  %i.yr = load ptr, ptr %i.vn, align 8
  %.not.i507 = icmp eq ptr %i.yq, %i.yr
  br i1 %.not.i507, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store ptr %.fca.0.extract125, ptr %i.yq, align 8
  %.sroa.7699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store i32 %.fca.1.extract126, ptr %.sroa.7699.0..sroa_idx, align 8
  %i.ys = load ptr, ptr %i.vm, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store ptr %i.yt, ptr %i.vm, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522

bb.cl:                                            ; preds = %bb.cj
  %i.yu = load ptr, ptr %i.vl, align 8            ; 5 uses
  %i.yv = ptrtoint ptr %i.yq to i64
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = sub i64 %i.yv, %i.yw                    ; 4 uses
  %i.yy = icmp eq i64 %i.yx, 9223372036854775792
  br i1 %i.yy, label %bb.cm, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i508

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc520 unwind label %.loopexit.split-lp788

.noexc520:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i508: ; preds = %bb.cl
  %i.yz = ashr exact i64 %i.yx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i509 = call i64 @llvm.umax.i64(i64 %i.yz, i64 1)
  %i.za = add nsw i64 %.sroa.speculated.i.i.i509, %i.yz ; 2 uses
  %i.zb = icmp ult i64 %i.za, %i.yz
  %i.zc = call i64 @llvm.umin.i64(i64 %i.za, i64 576460752303423487)
  %i.zd = select i1 %i.zb, i64 576460752303423487, i64 %i.zc ; 3 uses
  %.not.i.i.i510 = icmp ne i64 %i.zd, 0
  call void @llvm.assume(i1 %.not.i.i.i510)
  %i.ze = shl nuw nsw i64 %i.zd, 4
  %i.zf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ze) #33
          to label %.noexc521 unwind label %.loopexit787 ; 5 uses

.noexc521:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i508
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.yx ; 2 uses
  store ptr %.fca.0.extract125, ptr %i.zg, align 8
  %.sroa.7699.0..sroa_idx700 = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store i32 %.fca.1.extract126, ptr %.sroa.7699.0..sroa_idx700, align 8
  %.not10.i.i.i.i.i511 = icmp eq ptr %i.yu, %i.yq
  br i1 %.not10.i.i.i.i.i511, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i516, label %.lr.ph.i.i.i.i.i512

.lr.ph.i.i.i.i.i512:                              ; preds = %.noexc521, %.lr.ph.i.i.i.i.i512
  %.012.i.i.i.i.i513 = phi ptr [ %i.zi, %.lr.ph.i.i.i.i.i512 ], [ %i.zf, %.noexc521 ] ; 2 uses
  %.0911.i.i.i.i.i514 = phi ptr [ %i.zh, %.lr.ph.i.i.i.i.i512 ], [ %i.yu, %.noexc521 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i513, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i514, i64 16, i1 false), !alias.scope !62
  %i.zh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i514, i64 16 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i513, i64 16 ; 2 uses
  %.not.i.i.i.i.i515 = icmp eq ptr %i.zh, %i.yq
  br i1 %.not.i.i.i.i.i515, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i516, label %.lr.ph.i.i.i.i.i512, !llvm.loop !45

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i516: ; preds = %.lr.ph.i.i.i.i.i512, %.noexc521
  %.0.lcssa.i.i.i.i.i517 = phi ptr [ %i.zf, %.noexc521 ], [ %i.zi, %.lr.ph.i.i.i.i.i512 ]
  %i.zj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i517, i64 16
  %.not.i23.i.i518 = icmp eq ptr %i.yu, null
  br i1 %.not.i23.i.i518, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i519, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i516
  call void @_ZdlPvm(ptr noundef nonnull %i.yu, i64 noundef %i.yx) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i519

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i519: ; preds = %bb.cn, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i516
  store ptr %i.zf, ptr %i.vl, align 8
  store ptr %i.zj, ptr %i.vm, align 8
  %i.zk = getelementptr inbounds nuw [16 x i8], ptr %i.zf, i64 %i.zd
  store ptr %i.zk, ptr %i.vn, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522

.loopexit787:                                     ; preds = %bb.ch, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i508
  %lpad.loopexit789 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

.loopexit.split-lp788:                            ; preds = %bb.cm
  %lpad.loopexit.split-lp790 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit522: ; preds = %bb.ci, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i519, %bb.ck, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit506
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1
  br label %bb.by, !llvm.loop !66

bb.co:                                            ; preds = %bb.cg
  %i.zl = getelementptr inbounds nuw i8, ptr %i.fx, i64 208 ; 4 uses
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = load i32, ptr %i.zm, align 8            ; 5 uses
  %i.zo = mul i32 %i.zn, %i.ya                    ; 2 uses
  %i.zp = zext i32 %i.zo to i64                   ; 3 uses
  %.not763 = icmp eq i32 %i.zo, 0
  br i1 %.not763, label %.preheader772.lr.ph, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.co
  %i.zq = shl nuw nsw i64 %i.zp, 2
  %i.zr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zq) #33
          to label %.noexc658 unwind label %.thread757 ; 5 uses

.noexc658:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.zr, align 4
  %i.zs = add nsw i64 %i.zp, -1                   ; 2 uses
  %i.zt = icmp eq i64 %i.zs, 0
  br i1 %i.zt, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc658
  %i.zu = getelementptr i8, ptr %i.zr, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.zs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.zu, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %.noexc658, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.zp
  %i.zw = ptrtoint ptr %i.zv to i64               ; 2 uses
  %.pre1002 = load i32, ptr %i.fy, align 8        ; 2 uses
  %.not941 = icmp eq i32 %.pre1002, 0
  br i1 %.not941, label %._crit_edge912, label %.preheader772.lr.ph

.preheader772.lr.ph:                              ; preds = %bb.co, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.sroa.12.01132 = phi i64 [ %i.zw, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ 0, %bb.co ]
  %.sroa.0686.11130 = phi ptr [ %i.zr, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ null, %bb.co ] ; 2 uses
  %16 = phi i32 [ %.pre1002, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %i.ya, %bb.co ]
  %i.zx = zext i32 %i.zn to i64                   ; 3 uses
  %.not942 = icmp eq i32 %i.zn, 0
  %xtraiter = and i64 %i.zx, 1
  %17 = icmp eq i32 %i.zn, 1
  %unroll_iter = and i64 %i.zx, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1189 = trunc i32 %i.zn to i1
  br label %.preheader772.a

.preheader772.a:                                  ; preds = %.preheader772.lr.ph, %._crit_edge910
  %18 = phi i32 [ %16, %.preheader772.lr.ph ], [ %19, %._crit_edge910 ]
  %.0338911 = phi i64 [ 0, %.preheader772.lr.ph ], [ %20, %._crit_edge910 ] ; 5 uses
  br i1 %.not942, label %._crit_edge910, label %.lr.ph909

.lr.ph909:                                        ; preds = %.preheader772.a
  %i.zy = mul nuw i64 %.0338911, %i.zx
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0686.11130, i64 %i.zy ; 3 uses
  br i1 %17, label %.epil.preheader, label %.lr.ph909.new

._crit_edge912:                                   ; preds = %._crit_edge910, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.sroa.12.01133 = phi i64 [ %i.zw, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.12.01132, %._crit_edge910 ]
  %.sroa.0686.11131 = phi ptr [ %i.zr, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.0686.11130, %._crit_edge910 ] ; 4 uses
  %i.aaa = load ptr, ptr %i.af, align 8
  %i.aab = ptrtoint ptr %.sroa.0686.11131 to i64
  %i.aac = sub i64 %.sroa.12.01133, %i.aab        ; 3 uses
  %i.aad = ashr exact i64 %i.aac, 2
  %i.aae = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %i.aaa, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.aad, ptr noundef nonnull %.sroa.0686.11131, i32 noundef 0, i32 noundef 0, i32 noundef 5125, i32 noundef 34963)
          to label %_ZNSt6vectorIjSaIjEED2Ev.exit unwind label %bb.cp ; 2 uses

.thread757:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

._crit_edge910.loopexit.unr-lcssa:                ; preds = %.lr.ph909.new
  br i1 %lcmp.mod.not, label %._crit_edge910.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge910.loopexit.unr-lcssa, %.lr.ph909
  %.0339908.epil.init = phi i64 [ 0, %.lr.ph909 ], [ %i.abe, %._crit_edge910.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1189)
  %i.aag = load ptr, ptr %i.zl, align 8
  %i.aah = getelementptr inbounds nuw [16 x i8], ptr %i.aag, i64 %.0338911
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %.0339908.epil.init
  %i.aal = load i32, ptr %i.aak, align 4
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %.0339908.epil.init
  store i32 %i.aal, ptr %i.aam, align 4
  br label %._crit_edge910.loopexit

._crit_edge910.loopexit:                          ; preds = %._crit_edge910.loopexit.unr-lcssa, %.epil.preheader
  %.pre1003 = load i32, ptr %i.fy, align 8
  br label %._crit_edge910

._crit_edge910:                                   ; preds = %._crit_edge910.loopexit, %.preheader772.a
  %19 = phi i32 [ %.pre1003, %._crit_edge910.loopexit ], [ %18, %.preheader772.a ] ; 2 uses
  %20 = add nuw nsw i64 %.0338911, 1              ; 2 uses
  %i.aan = zext i32 %19 to i64
  %i.aao = icmp samesign ult i64 %20, %i.aan
  br i1 %i.aao, label %.preheader772.a, label %._crit_edge912, !llvm.loop !67

.lr.ph909.new:                                    ; preds = %.lr.ph909, %.lr.ph909.new
  %.0339908 = phi i64 [ %i.abe, %.lr.ph909.new ], [ 0, %.lr.ph909 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph909.new ], [ 0, %.lr.ph909 ]
  %i.aap = load ptr, ptr %i.zl, align 8
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %i.aap, i64 %.0338911
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %.0339908
  %i.aau = load i32, ptr %i.aat, align 4
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %.0339908
  store i32 %i.aau, ptr %i.aav, align 4
  %i.aaw = or disjoint i64 %.0339908, 1           ; 2 uses
  %i.aax = load ptr, ptr %i.zl, align 8
  %i.aay = getelementptr inbounds nuw [16 x i8], ptr %i.aax, i64 %.0338911
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.aaw
  %i.abc = load i32, ptr %i.abb, align 4
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.aaw
  store i32 %i.abc, ptr %i.abd, align 4
  %i.abe = add nuw nsw i64 %.0339908, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge910.loopexit.unr-lcssa, label %.lr.ph909.new, !llvm.loop !68

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge912
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.aae, 0
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.aae, 1
  %i.abf = getelementptr inbounds i8, ptr %i.lt, i64 -64
  store ptr %.fca.0.extract107, ptr %i.abf, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds i8, ptr %i.lt, i64 -56
  store i32 %.fca.1.extract108, ptr %.sroa.5112.0..sroa_idx, align 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0686.11131, i64 noundef %i.aac) #32
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge912
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0686.11131, i64 noundef %i.aac) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

bb.cq:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.cg
  %i.abh = load i32, ptr %i.fx, align 8           ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.abh, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 4
  %switch.selectcmp1151 = icmp eq i32 %i.abh, 1
  %switch.select1152 = select i1 %switch.selectcmp1151, i32 0, i32 %switch.select
  store i32 %switch.select1152, ptr %i.lu, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.fx, i64 224
  %i.abj = load ptr, ptr %i.abi, align 8
  %.not.i528 = icmp ne ptr %i.abj, null
  %i.abk = getelementptr inbounds nuw i8, ptr %i.fx, i64 216
  %i.abl = load i32, ptr %i.abk, align 8
  %i.abm = icmp ne i32 %i.abl, 0
  %i.abn = select i1 %.not.i528, i1 %i.abm, i1 false
  br i1 %i.abn, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.abo = load ptr, ptr %i.fo, align 8
  %i.abp = invoke noundef zeroext i1 @_ZNK6Assimp16ExportProperties15HasPropertyBoolEPKc(ptr noundef nonnull align 8 dereferenceable(240) %i.abo, ptr noundef nonnull @.str.61)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.abp, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.abq = load ptr, ptr %i.fo, align 8
  %i.abr = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.abq, ptr noundef nonnull @.str.61, i32 noundef 0)
          to label %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit unwind label %bb.cv

_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit: ; preds = %bb.ct
  %i.abs = icmp ne i32 %i.abr, 0
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit, %bb.cs
  %i.abt = phi i1 [ false, %bb.cs ], [ %i.abs, %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit ]
  %i.abu = load ptr, ptr %i.af, align 8
  invoke void @_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb(ptr noundef nonnull align 8 dereferenceable(3624) %i.abu, ptr noundef nonnull %i.fx, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext %i.abt)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu, %bb.cr
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

bb.cw:                                            ; preds = %bb.cu, %bb.cq
  %i.abw = getelementptr inbounds nuw i8, ptr %i.fx, i64 1264 ; 4 uses
  %i.abx = load i32, ptr %i.abw, align 8
  %.not365 = icmp eq i32 %i.abx, 0
  br i1 %.not365, label %.loopexit775, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aby = load ptr, ptr %i.fo, align 8
  %i.abz = invoke noundef zeroext i1 @_ZNK6Assimp16ExportProperties15HasPropertyBoolEPKc(ptr noundef nonnull align 8 dereferenceable(240) %i.aby, ptr noundef nonnull @.str.62)
          to label %bb.cy unwind label %bb.dh

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.abz, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aca = load ptr, ptr %i.fo, align 8
  %i.acb = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.aca, ptr noundef nonnull @.str.62, i32 noundef 0)
          to label %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit531 unwind label %bb.dh

_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit531: ; preds = %bb.cz
  %i.acc = icmp ne i32 %i.acb, 0
  br label %bb.da

bb.da:                                            ; preds = %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit531, %bb.cy
  %i.acd = phi i1 [ false, %bb.cy ], [ %i.acc, %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit531 ] ; 2 uses
  %i.ace = load ptr, ptr %i.fo, align 8
  %i.acf = invoke noundef zeroext i1 @_ZNK6Assimp16ExportProperties15HasPropertyBoolEPKc(ptr noundef nonnull align 8 dereferenceable(240) %i.ace, ptr noundef nonnull @.str.63)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %bb.da
  br i1 %i.acf, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.acg = load ptr, ptr %i.fo, align 8
  %i.ach = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.acg, ptr noundef nonnull @.str.63, i32 noundef 0)
          to label %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit533 unwind label %bb.di

_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit533: ; preds = %bb.dc
  %i.aci = icmp ne i32 %i.ach, 0
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit533, %bb.db
  %i.acj = phi i1 [ false, %bb.db ], [ %i.aci, %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit533 ]
  %i.ack = load ptr, ptr %i.fo, align 8
  %i.acl = invoke noundef zeroext i1 @_ZNK6Assimp16ExportProperties15HasPropertyBoolEPKc(ptr noundef nonnull align 8 dereferenceable(240) %i.ack, ptr noundef nonnull @.str.64)
          to label %bb.de unwind label %bb.dj

bb.de:                                            ; preds = %bb.dd
  br i1 %i.acl, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.acm = load ptr, ptr %i.fo, align 8
  %i.acn = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.acm, ptr noundef nonnull @.str.64, i32 noundef 0)
          to label %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit535 unwind label %bb.dj

_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit535: ; preds = %bb.df
  %i.aco = icmp ne i32 %i.acn, 0
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit535, %bb.de
  %i.acp = phi i1 [ false, %bb.de ], [ %i.aco, %_ZNK6Assimp16ExportProperties15GetPropertyBoolEPKcb.exit535 ]
  %i.acq = getelementptr inbounds i8, ptr %i.lt, i64 -32 ; 3 uses
  %i.acr = load i32, ptr %i.abw, align 8
  %i.acs = zext i32 %i.acr to i64
  invoke void @_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.acq, i64 noundef %i.acs)
          to label %.preheader774 unwind label %bb.dj

.preheader774:                                    ; preds = %bb.dg
  %i.act = load i32, ptr %i.abw, align 8
  %.not943 = icmp eq i32 %i.act, 0
  br i1 %.not943, label %.loopexit775, label %.lr.ph924

.lr.ph924:                                        ; preds = %.preheader774
  %i.acu = getelementptr inbounds nuw i8, ptr %i.fx, i64 1272
  br label %bb.dk

bb.dh:                                            ; preds = %bb.cz, %bb.cx
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

bb.di:                                            ; preds = %bb.dc, %bb.da
  %i.acw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

bb.dj:                                            ; preds = %bb.df, %bb.dg, %bb.dd
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit484

bb.dk:                                            ; preds = %.lr.ph924, %bb.es
  %indvars.iv987 = phi i64 [ 0, %.lr.ph924 ], [ %indvars.iv.next988, %bb.es ] ; 4 uses
  %i.acy = load ptr, ptr %i.acu, align 8
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %indvars.iv987
  %i.ada = load ptr, ptr %i.acz, align 8          ; 5 uses
  br i1 %i.acp, label %bb.dl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA1024_cEEERS5_DpOT_.exit

bb.dl:                                            ; preds = %bb.dk
  %i.adb = load ptr, ptr %.fca.0.extract206, align 8
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.hp
  %i.add = load ptr, ptr %i.adc, align 8          ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 4 ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 320 ; 3 uses
  %i.adg = load ptr, ptr %i.adf, align 8          ; 8 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 328
  %i.adi = load ptr, ptr %i.adh, align 8
  %.not.i536 = icmp eq ptr %i.adg, %i.adi
  br i1 %.not.i536, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 16 ; 3 uses
  store ptr %i.adj, ptr %i.adg, align 8
  %i.adk = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %i.ade) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.adk, ptr %i.b, align 8
  %i.adl = icmp ugt i64 %i.adk, 15
  br i1 %i.adl, label %.noexc.i.i, label %._crit_edge.i.i.i537

.noexc.i.i:                                       ; preds = %bb.dm
  %i.adm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.adg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc538 unwind label %bb.dq ; 2 uses

.noexc538:                                        ; preds = %.noexc.i.i
  store ptr %i.adm, ptr %i.adg, align 8
  %i.adn = load i64, ptr %i.b, align 8
  store i64 %i.adn, ptr %i.adj, align 8
  br label %._crit_edge.i.i.i537

._crit_edge.i.i.i537:                             ; preds = %.noexc538, %bb.dm
  %i.ado = phi ptr [ %i.adm, %.noexc538 ], [ %i.adj, %bb.dm ] ; 2 uses
  switch i64 %i.adk, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRA1024_cEEEvPT_DpOT0_.exit.i
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i.i537
  %i.adp = load i8, ptr %i.ade, align 1
  store i8 %i.adp, ptr %i.ado, align 1
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRA1024_cEEEvPT_DpOT0_.exit.i

bb.do:                                            ; preds = %._crit_edge.i.i.i537
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ado, ptr nonnull align 1 dereferenceable(1024) %i.ade, i64 %i.adk, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRA1024_cEEEvPT_DpOT0_.exit.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRA1024_cEEEvPT_DpOT0_.exit.i: ; preds = %bb.do, %bb.dn, %._crit_edge.i.i.i537
  %i.adq = load i64, ptr %i.b, align 8            ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store i64 %i.adq, ptr %i.adr, align 8
  %i.ads = load ptr, ptr %i.adg, align 8
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.adq
  store i8 0, ptr %i.adt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.adu = load ptr, ptr %i.adf, align 8
end_hunk_0
begin_hunk_1_@_ZN5glTF28LazyDictINS_8AccessorEE3AddEPS1_:bb.a
  store i32 %i.z, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.at, align 4
  %i.au = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 noundef %i.ad, i64 noundef %i.aa, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixEOj.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 16) #32
  resume { ptr, i32 } %i.av

_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixEOj.exit: ; preds = %bb.h, %bb.g, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.au, %.loopexit.i.i ], [ %i.ah, %bb.g ], [ %i.am, %bb.h ]
  %i.aw = trunc i64 %i.h to i32                   ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %i.aw, ptr %.1.i.i, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  store i32 %i.aw, ptr %i.az, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.aw, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5glTF28AccessorD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5glTF28AccessorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #31, !inline_history !548
  br label %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 88) #32
  br label %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIdSaIdEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit3

_ZNSt6vectorIdSaIdEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.e
  tail call void @_ZN5glTF26ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5glTF28AccessorD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5glTF28AccessorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #31, !inline_history !549
  br label %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32, !inline_history !550
  br label %_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 88) #32, !inline_history !550
  br label %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5glTF28Accessor6SparseEEclEPS2_.exit.i.i, %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32, !inline_history !550
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt10unique_ptrIN5glTF28Accessor6SparseESt14default_deleteIS2_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN5glTF28AccessorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32, !inline_history !550
  br label %_ZN5glTF28AccessorD2Ev.exit

_ZN5glTF28AccessorD2Ev.exit:                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.e
  tail call void @_ZN5glTF26ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(376) %0) #31, !inline_history !550
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16SetAccessorRangeIsEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj(ptr %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %i.c = mul i64 %3, %i.b                         ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not56 = icmp eq i64 %i.c, 0
  br i1 %.not56, label %._crit_edge55, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge53.us
  %.02654.us = phi ptr [ %28, %._crit_edge53.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br label %6

6:                                                ; preds = %.preheader.us, %27
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %27 ] ; 4 uses
  %7 = getelementptr inbounds nuw [2 x i8], ptr %.02654.us, i64 %indvars.iv
  %8 = load i16, ptr %7, align 2
  %9 = sitofp i16 %8 to double                    ; 4 uses
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.e
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 336
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %16, %9
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store double %9, ptr %15, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = phi ptr [ %.pre61, %18 ], [ %12, %6 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 312
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv ; 2 uses
  %24 = load double, ptr %23, align 8
  %25 = fcmp olt double %24, %9
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store double %9, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53.us, label %6, !llvm.loop !551

._crit_edge53.us:                                 ; preds = %27
  %28 = getelementptr inbounds nuw [2 x i8], ptr %.02654.us, i64 %i.b ; 2 uses
  %29 = icmp ult ptr %28, %i.d
  br i1 %29, label %.preheader.us, label %._crit_edge55, !llvm.loop !552

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 320 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not.i.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aj, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ap = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.bb, align 8
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ba, ptr %i.ai, align 8
  store ptr %i.bd, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bf = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !553

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16SetAccessorRangeItEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj(ptr %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %i.c = mul i64 %3, %i.b                         ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not56 = icmp eq i64 %i.c, 0
  br i1 %.not56, label %._crit_edge55, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge53.us
  %.02654.us = phi ptr [ %28, %._crit_edge53.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br label %6

6:                                                ; preds = %.preheader.us, %27
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %27 ] ; 4 uses
  %7 = getelementptr inbounds nuw [2 x i8], ptr %.02654.us, i64 %indvars.iv
  %8 = load i16, ptr %7, align 2
  %9 = uitofp i16 %8 to double                    ; 4 uses
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.e
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 336
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %16, %9
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store double %9, ptr %15, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = phi ptr [ %.pre61, %18 ], [ %12, %6 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 312
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv ; 2 uses
  %24 = load double, ptr %23, align 8
  %25 = fcmp olt double %24, %9
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store double %9, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53.us, label %6, !llvm.loop !554

._crit_edge53.us:                                 ; preds = %27
  %28 = getelementptr inbounds nuw [2 x i8], ptr %.02654.us, i64 %i.b ; 2 uses
  %29 = icmp ult ptr %28, %i.d
  br i1 %29, label %.preheader.us, label %._crit_edge55, !llvm.loop !555

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 320 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not.i.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aj, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ap = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.bb, align 8
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ba, ptr %i.ai, align 8
  store ptr %i.bd, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bf = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !556

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16SetAccessorRangeIjEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj(ptr %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %i.c = mul i64 %3, %i.b                         ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not56 = icmp eq i64 %i.c, 0
  br i1 %.not56, label %._crit_edge55, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge53.us
  %.02654.us = phi ptr [ %28, %._crit_edge53.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br label %6

6:                                                ; preds = %.preheader.us, %27
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %27 ] ; 4 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.02654.us, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = uitofp i32 %8 to double                    ; 4 uses
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.e
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 336
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %16, %9
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store double %9, ptr %15, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = phi ptr [ %.pre61, %18 ], [ %12, %6 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 312
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv ; 2 uses
  %24 = load double, ptr %23, align 8
  %25 = fcmp olt double %24, %9
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store double %9, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53.us, label %6, !llvm.loop !557

._crit_edge53.us:                                 ; preds = %27
  %28 = getelementptr inbounds nuw [4 x i8], ptr %.02654.us, i64 %i.b ; 2 uses
  %29 = icmp ult ptr %28, %i.d
  br i1 %29, label %.preheader.us, label %._crit_edge55, !llvm.loop !558

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 320 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not.i.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aj, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ap = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.bb, align 8
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ba, ptr %i.ai, align 8
  store ptr %i.bd, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bf = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !559

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16SetAccessorRangeIfEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj(ptr %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %i.c = mul i64 %3, %i.b                         ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not56 = icmp eq i64 %i.c, 0
  br i1 %.not56, label %._crit_edge55, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge53.us
  %.02654.us = phi ptr [ %31, %._crit_edge53.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br label %6

6:                                                ; preds = %.preheader.us, %30
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %30 ] ; 4 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.02654.us, i64 %indvars.iv
  %8 = load float, ptr %7, align 4
  %9 = fpext float %8 to double                   ; 5 uses
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ueq double %10, +inf
  br i1 %11, label %30, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.e
  %15 = load ptr, ptr %14, align 8                ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 336
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv ; 2 uses
  %19 = load double, ptr %18, align 8
  %20 = fcmp ogt double %19, %9
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store double %9, ptr %18, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi ptr [ %.pre61, %21 ], [ %15, %12 ]
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 312
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %indvars.iv ; 2 uses
  %27 = load double, ptr %26, align 8
  %28 = fcmp olt double %27, %9
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store double %9, ptr %26, align 8
  br label %30

30:                                               ; preds = %29, %22, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53.us, label %6, !llvm.loop !560

._crit_edge53.us:                                 ; preds = %30
  %31 = getelementptr inbounds nuw [4 x i8], ptr %.02654.us, i64 %i.b ; 2 uses
  %32 = icmp ult ptr %31, %i.d
  br i1 %32, label %.preheader.us, label %._crit_edge55, !llvm.loop !561

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 320 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not.i.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aj, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ap = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.bb, align 8
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ba, ptr %i.ai, align 8
  store ptr %i.bd, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bf = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !562

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16SetAccessorRangeIaEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj(ptr %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %i.c = mul i64 %3, %i.b                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not56 = icmp eq i64 %i.c, 0
  br i1 %.not56, label %._crit_edge55, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge53.us
  %.02654.us = phi ptr [ %28, %._crit_edge53.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br label %6

6:                                                ; preds = %.preheader.us, %27
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %27 ] ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %.02654.us, i64 %indvars.iv
  %8 = load i8, ptr %7, align 1
  %9 = sitofp i8 %8 to double                     ; 4 uses
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.e
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 336
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %16, %9
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store double %9, ptr %15, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = phi ptr [ %.pre61, %18 ], [ %12, %6 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 312
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv ; 2 uses
  %24 = load double, ptr %23, align 8
  %25 = fcmp olt double %24, %9
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store double %9, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53.us, label %6, !llvm.loop !563

._crit_edge53.us:                                 ; preds = %27
  %28 = getelementptr inbounds nuw i8, ptr %.02654.us, i64 %i.b ; 2 uses
  %29 = icmp ult ptr %28, %i.d
  br i1 %29, label %.preheader.us, label %._crit_edge55, !llvm.loop !564

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 320 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not.i.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aj, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ap = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.bb, align 8
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ba, ptr %i.ai, align 8
  store ptr %i.bd, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bf = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !565

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16SetAccessorRangeIhEvN10glTFCommon3RefIN5glTF28AccessorEEEPvmjj(ptr %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %i.c = mul i64 %3, %i.b                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not56 = icmp eq i64 %i.c, 0
  br i1 %.not56, label %._crit_edge55, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge53.us
  %.02654.us = phi ptr [ %28, %._crit_edge53.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br label %6

6:                                                ; preds = %.preheader.us, %27
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %27 ] ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %.02654.us, i64 %indvars.iv
  %8 = load i8, ptr %7, align 1
  %9 = uitofp i8 %8 to double                     ; 4 uses
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.e
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 336
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %16, %9
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store double %9, ptr %15, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = phi ptr [ %.pre61, %18 ], [ %12, %6 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 312
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv ; 2 uses
  %24 = load double, ptr %23, align 8
  %25 = fcmp olt double %24, %9
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store double %9, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53.us, label %6, !llvm.loop !566

._crit_edge53.us:                                 ; preds = %27
  %28 = getelementptr inbounds nuw i8, ptr %.02654.us, i64 %i.b ; 2 uses
  %29 = icmp ult ptr %28, %i.d
  br i1 %29, label %.preheader.us, label %._crit_edge55, !llvm.loop !567

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36 ]
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x0010000000000000, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.j, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store double f0x0010000000000000, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.a
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 320 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not.i.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ak, align 8
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aj, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.ap = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.bb, align 8
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.k, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35: ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.ba, ptr %i.ai, align 8
  store ptr %i.bd, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.al, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit36

_ZNSt6vectorIdSaIdEE9push_backEOd.exit36:         ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i35
  %i.bf = add nuw i32 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !568

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIN5glTF213ComponentTypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !575
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !575
  store i8 0, ptr %i.b, align 8, !alias.scope !575
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !575 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !575 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !575 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !575 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !575
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #32
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  resume { ptr, i32 } %i.o
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %2) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(34) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #31
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #31
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #10

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_1
