Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Composite?download=true
inline.NumInlined: 54585
inline.NumDeleted: 17591
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 858
begin_hunk_0_@_ZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEvRT_SE_:bb.a
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %indvars.iv.i94
  %.0.i.i13.i = select i1 %.not.i.i12.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.yj
  store ptr %.0.i.i13.i, ptr %i.bw, align 8, !tbaa !959
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xx
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !896
  %i.ym = lshr i64 %i.yl, %i.ya
  %i.yn = trunc i64 %i.ym to i8
  %i.yo = and i8 %i.yn, 1                         ; 2 uses
  store i8 %i.yo, ptr %i.bu, align 1, !tbaa !949
  %i.yp = load i8, ptr %i.bt, align 8, !tbaa !948, !range !867, !noundef !637
  %i.yq = or i8 %i.yo, %i.yp
  store i8 %i.yq, ptr %i.bv, align 2, !tbaa !950
  %i.yr = load atomic i32, ptr %i.xp seq_cst, align 8
  %.not.i.i.i14.i = icmp eq i32 %i.yr, 0
  br i1 %.not.i.i.i14.i, label %.noexc107, label %bb.da

bb.da:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit.i
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.tu)
          to label %.noexc107 unwind label %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit.i, %bb.da
  %i.ys = load ptr, ptr %i.tu, align 8, !tbaa !575 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.ys, null
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %indvars.iv.i94
  %.0.i.i16.i = select i1 %.not.i.i15.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.yt ; 2 uses
  store ptr %.0.i.i16.i, ptr %i.br, align 8, !tbaa !947
  %i.yu = load ptr, ptr %3, align 8, !tbaa !958
  %i.yv = load ptr, ptr %i.bw, align 8, !tbaa !959
  %i.yw = load double, ptr %i.yu, align 8, !tbaa !705
  %i.yx = load double, ptr %i.yv, align 8, !tbaa !705
  %i.yy = fdiv double %i.yw, %i.yx
  store double %i.yy, ptr %.0.i.i16.i, align 8, !tbaa !705
  %i.yz = load i8, ptr %i.bv, align 2, !tbaa !950, !range !867, !noundef !637
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.noexc107
  %i.zb = load i64, ptr %i.xy, align 8, !tbaa !896
  %i.zc = or i64 %i.zb, %i.yb
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i99

bb.dc:                                            ; preds = %.noexc107
  %i.zd = xor i64 %i.yb, -1
  %i.ze = load i64, ptr %i.xy, align 8, !tbaa !896
  %i.zf = and i64 %i.ze, %i.zd
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i99

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i99: ; preds = %bb.dc, %bb.db
  %storemerge.i100 = phi i64 [ %i.zf, %bb.dc ], [ %i.zc, %bb.db ]
  store i64 %storemerge.i100, ptr %i.xy, align 8, !tbaa !896
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, 512
  br i1 %exitcond.not.i102, label %.noexc56, label %bb.cx, !llvm.loop !84

.noexc56:                                         ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit.i30

_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit.i30: ; preds = %.noexc56, %bb.cu, %.noexc55, %bb.cm, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE7combineIFvRNS0_11CombineArgsIddEEEEEvRKdbRT_.exit.i48, %bb.ce, %bb.cc, %bb.cb
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, 4096
  br i1 %exitcond.not.i32, label %.noexc11, label %bb.bz, !llvm.loop !85

.noexc11:                                         ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit.i

_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit.i: ; preds = %.noexc11, %bb.bx, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE7combineINS0_16SwappedCombineOpIdFvRNS0_11CombineArgsIddEEEEEEEvRKdbRT_.exit.i, %bb.bk, %.noexc8, %bb.ax, %bb.av, %bb.au
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32768
  br i1 %exitcond.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRS6_RT_.exit, label %bb.as, !llvm.loop !86

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRS6_RT_.exit: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dd

.loopexit129:                                     ; preds = %bb.bt, %bb.bu
  %lpad.loopexit131 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit:                   ; preds = %bb.bh, %bb.bg
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit.split-lp.loopexit: ; preds = %bb.cq, %bb.cr
  %lpad.loopexit137 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cj, %bb.ci
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cy, %bb.cz, %bb.da
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.br
  %lpad.loopexit146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.be
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cg, %bb.cw, %bb.co
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.dd:                                            ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRS6_RT_.exit, %bb.ap, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRKdbRT_.exit.i, %bb.t
  %i.zg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.082.093.i) #31 ; 2 uses
  %.not.i = icmp eq ptr %i.zg, %i.h
  br i1 %.not.i, label %.loopexit152, label %bb.b, !llvm.loop !87

.loopexit152:                                     ; preds = %bb.dd, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10insertKeysERSt3setINS0_4math5CoordESt4lessISB_ESaISB_EE.exit30.i
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.zh, ptr %22, align 8, !tbaa !958
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !959
  %i.zk = load double, ptr %i.zh, align 8, !tbaa !705
  %i.zl = load double, ptr %i.zi, align 8, !tbaa !705
  %i.zm = fdiv double %i.zk, %i.zl                ; 2 uses
  %i.zn = load ptr, ptr %i.c, align 8, !tbaa !947
  store double %i.zm, ptr %i.zn, align 8, !tbaa !705
  store double %i.zm, ptr %i.zh, align 8, !tbaa !964
  call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.zo = load ptr, ptr %i.i, align 8, !tbaa !879
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.zo)
          to label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIddEEEEEvRS8_RT_b.exit unwind label %bb.de

bb.de:                                            ; preds = %.loopexit152
  %i.zp = landingpad { ptr, i32 }
          catch ptr null
  %i.zq = extractvalue { ptr, i32 } %i.zp, 0
  call void @__clang_call_terminate(ptr %i.zq) #30
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit129, %.loopexit.split-lp130.loopexit.split-lp.loopexit, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp130.loopexit, %.loopexit, %.loopexit.split-lp, %bb.aq, %bb.v, %bb.u, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn21.pn.pn.i = phi { ptr, i32 } [ %i.ky, %bb.aq ], [ %i.hc, %bb.u ], [ %lpad.loopexit89.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.hd, %bb.v ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit131, %.loopexit129 ], [ %lpad.loopexit134, %.loopexit.split-lp130.loopexit ], [ %lpad.loopexit137, %.loopexit.split-lp130.loopexit.split-lp.loopexit ], [ %lpad.loopexit140, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit143, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit146, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit149, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp130.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.zr = load ptr, ptr %i.i, align 8, !tbaa !879
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.zr)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.df

bb.df:                                            ; preds = %.loopexit.split-lp.i
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  %i.zt = extractvalue { ptr, i32 } %i.zs, 0
  call void @__clang_call_terminate(ptr %i.zt) #30
  unreachable

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  resume { ptr, i32 } %.pn21.pn.pn.i

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIddEEEEEvRS8_RT_b.exit: ; preds = %.loopexit152
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEvRT_SE_EN5Local2opERNS0_11CombineArgsIddEE(ptr noundef nonnull align 8 dereferenceable(35) %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !958
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !959
  %i.d = load double, ptr %i.a, align 8, !tbaa !705
  %i.e = load double, ptr %i.c, align 8, !tbaa !705
  %i.f = fdiv double %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !947
  store double %i.f, ptr %i.h, align 8, !tbaa !705
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1240) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIS7_S7_EEEEEvRSB_RT_b(ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef nonnull align 8 dereferenceable(76) %i.b, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_EN5Local2opERNS0_11CombineArgsISA_SA_EE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_EN5Local2opERNS0_11CombineArgsISA_SA_EE(ptr noundef nonnull align 8 dereferenceable(43) %0) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !969    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !970  ; 2 uses
  %1 = load <2 x float>, ptr %i.a, align 4, !tbaa !613
  %2 = load <2 x float>, ptr %i.c, align 4, !tbaa !613
  %3 = fdiv <2 x float> %1, %2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load float, ptr %i.d, align 4, !tbaa !613
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %6 = load float, ptr %5, align 4, !tbaa !613
  %7 = fdiv float %4, %6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !971  ; 2 uses
  store <2 x float> %3, ptr %i.f, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float %7, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(1248) %1) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1248) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIS7_S7_EEEEEvRSB_RT_b(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_EN5Local2opERNS0_11CombineArgsISA_SA_EE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_EN5Local2opERNS0_11CombineArgsISA_SA_EE(ptr noundef nonnull align 8 dereferenceable(51) %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !976    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !977  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !705, !noalias !4542
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !705, !noalias !4542
  %i.h = fdiv double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !978  ; 2 uses
  %i.k = load <2 x double>, ptr %i.a, align 8, !tbaa !705, !noalias !4542
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !705, !noalias !4542
  %i.m = fdiv <2 x double> %i.k, %i.l
  store <2 x double> %i.m, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store double %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1240) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIS7_S7_EEEEEvRSB_RT_b(ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef nonnull align 8 dereferenceable(76) %i.b, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_EN5Local2opERNS0_11CombineArgsISA_SA_EE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEvRT_SH_EN5Local2opERNS0_11CombineArgsISA_SA_EE(ptr noundef nonnull align 8 dereferenceable(43) %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !983    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !984  ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !548
  %i.e = load i32, ptr %i.c, align 4, !tbaa !548
  %i.f = sdiv i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !548
  %i.j = load <2 x i32>, ptr %i.h, align 4, !tbaa !548
  %i.k = sdiv <2 x i32> %i.i, %i.j                ; 2 uses
  %i.l = extractelement <2 x i32> %i.k, i64 0
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.l to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.f to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !985  ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.n, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = extractelement <2 x i32> %i.k, i64 1
  store i32 %i.o, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !988  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !988
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIbbEEEEEvRS8_RT_b(ptr noundef nonnull align 8 dereferenceable(68) %i.e, ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIbbEE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIbbEE(ptr noundef nonnull align 8 dereferenceable(35) %0) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !865
  %i.b = load i8, ptr %i.a, align 1, !tbaa !664, !range !867, !noundef !637
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !868
  store i8 %i.b, ptr %i.d, align 1, !tbaa !664
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !991  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !991
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIiiEEEEEvRS8_RT_b(ptr noundef nonnull align 8 dereferenceable(68) %i.e, ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIiiEE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIiiEE(ptr noundef nonnull align 8 dereferenceable(35) %0) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !894
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !895
  %i.d = load i32, ptr %i.c, align 4, !tbaa !548  ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = load i32, ptr %i.a, align 4, !tbaa !548  ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i32 %i.e, %i.d
  br label %_ZN7openvdb5v13_05tools9composite6divideIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %_ZN7openvdb5v13_05tools9composite6divideIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = select i1 %i.h, i32 2147483647, i32 -2147483647
  br label %_ZN7openvdb5v13_05tools9composite6divideIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit

_ZN7openvdb5v13_05tools9composite6divideIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !870
  store i32 %.0.i, ptr %i.k, align 4, !tbaa !548
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !994  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !994
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIllEEEEEvRS8_RT_b(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIllEE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIllEE(ptr noundef nonnull align 8 dereferenceable(35) %0) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !920
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !921
  %i.d = load i64, ptr %i.c, align 8, !tbaa !896  ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = load i64, ptr %i.a, align 8, !tbaa !896  ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 %i.e, %i.d
  br label %_ZN7openvdb5v13_05tools9composite6divideIlEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_ZN7openvdb5v13_05tools9composite6divideIlEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i64 %i.e, 0
  %i.i = select i1 %i.h, i64 9223372036854775807, i64 -9223372036854775807
  br label %_ZN7openvdb5v13_05tools9composite6divideIlEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit

_ZN7openvdb5v13_05tools9composite6divideIlEENSt9enable_ifIXsr3std11is_integralIT_EE5valueES5_E4typeERKS5_S9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !908
  store i64 %.0.i, ptr %i.k, align 8, !tbaa !896
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 11 uses
  %3 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 11 uses
  %4 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 11 uses
  %5 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 10 uses
  %6 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 11 uses
  %7 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 11 uses
  %8 = alloca %"class.openvdb::v13_0::CombineArgs.507", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_:bb.a
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !896
  %i.yq = lshr i64 %i.yp, %i.ye
  %i.yr = trunc i64 %i.yq to i8
  %i.ys = and i8 %i.yr, 1                         ; 2 uses
  store i8 %i.ys, ptr %i.by, align 1, !tbaa !949
  %i.yt = load i8, ptr %i.bx, align 8, !tbaa !948, !range !867, !noundef !637
  %i.yu = or i8 %i.ys, %i.yt
  store i8 %i.yu, ptr %i.bz, align 2, !tbaa !950
  %i.yv = load atomic i32, ptr %i.xt seq_cst, align 8
  %.not.i.i.i14.i = icmp eq i32 %i.yv, 0
  br i1 %.not.i.i.i14.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit17.i, label %bb.de

bb.de:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit.i
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ty)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit17.i unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit17.i: ; preds = %bb.de, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit.i
  %i.yw = load ptr, ptr %i.ty, align 8, !tbaa !575 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.yw, null
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv.i87
  %.0.i.i16.i = select i1 %.not.i.i15.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.yx ; 2 uses
  store ptr %.0.i.i16.i, ptr %i.bv, align 8, !tbaa !947
  %i.yy = load ptr, ptr %3, align 8, !tbaa !958
  %i.yz = load ptr, ptr %i.ca, align 8, !tbaa !959
  %i.za = load double, ptr %i.yy, align 8, !tbaa !705
  %i.zb = load double, ptr %i.yz, align 8, !tbaa !705
  %i.zc = fdiv double %i.za, %i.zb
  store double %i.zc, ptr %.0.i.i16.i, align 8, !tbaa !705
  %i.zd = load i8, ptr %i.bz, align 2, !tbaa !950, !range !867, !noundef !637
  %i.ze = trunc nuw i8 %i.zd to i1
  br i1 %i.ze, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit17.i
  %i.zf = load i64, ptr %i.yc, align 8, !tbaa !896
  %i.zg = or i64 %i.zf, %i.yf
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i92

bb.dg:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EEixEj.exit17.i
  %i.zh = xor i64 %i.yf, -1
  %i.zi = load i64, ptr %i.yc, align 8, !tbaa !896
  %i.zj = and i64 %i.zi, %i.zh
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i92

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i92: ; preds = %bb.dg, %bb.df
  %storemerge.i93 = phi i64 [ %i.zj, %bb.dg ], [ %i.zg, %bb.df ]
  store i64 %storemerge.i93, ptr %i.yc, align 8, !tbaa !896
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, 512
  br i1 %exitcond.not.i95, label %.noexc51, label %bb.db, !llvm.loop !84

.noexc51:                                         ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit.i27

_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit.i27: ; preds = %.noexc51, %bb.cy, %.noexc50, %bb.cq, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE7combineIFvRNS0_11CombineArgsIddEEEEEvRKdbRT_.exit.i45, %bb.ci, %bb.cg, %bb.cf
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, 4096
  br i1 %exitcond.not.i29, label %.noexc10, label %bb.cc, !llvm.loop !85

.noexc10:                                         ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit.i

_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit.i: ; preds = %.noexc10, %bb.ca, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE7combineINS0_16SwappedCombineOpIdFvRNS0_11CombineArgsIddEEEEEEEvRKdbRT_.exit.i, %bb.bn, %.noexc, %bb.az, %bb.ax, %bb.aw
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32768
  br i1 %exitcond.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRS6_RT_.exit, label %bb.at, !llvm.loop !86

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRS6_RT_.exit: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dh

.loopexit121:                                     ; preds = %bb.bw, %bb.bx
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit:                   ; preds = %bb.bk, %bb.bj
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit.split-lp.loopexit: ; preds = %bb.cu, %bb.cv
  %lpad.loopexit129 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cn, %bb.cm
  %lpad.loopexit132 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.dc, %bb.dd, %bb.de
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bu
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bh
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ck, %bb.da, %bb.cs
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRS6_RT_.exit, %bb.aq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7combineIFvRNS0_11CombineArgsIddEEEEEvRKdbRT_.exit.i, %bb.t
  %i.zk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.082.093.i) #31 ; 2 uses
  %.not.i = icmp eq ptr %i.zk, %i.l
  br i1 %.not.i, label %.loopexit144, label %bb.b, !llvm.loop !87

.loopexit144:                                     ; preds = %bb.dh, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10insertKeysERSt3setINS0_4math5CoordESt4lessISB_ESaISB_EE.exit30.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr %i.zl, ptr %22, align 8, !tbaa !958
  %i.zm = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.zm, ptr %i.zn, align 8, !tbaa !959
  %i.zo = load double, ptr %i.zl, align 8, !tbaa !705
  %i.zp = load double, ptr %i.zm, align 8, !tbaa !705
  %i.zq = fdiv double %i.zo, %i.zp                ; 2 uses
  %i.zr = load ptr, ptr %i.g, align 8, !tbaa !947
  store double %i.zq, ptr %i.zr, align 8, !tbaa !705
  store double %i.zq, ptr %i.zl, align 8, !tbaa !964
  call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.f)
  %i.zs = load ptr, ptr %i.m, align 8, !tbaa !879
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.zs)
          to label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIddEEEEEvRS8_RT_b.exit unwind label %bb.di

bb.di:                                            ; preds = %.loopexit144
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  %i.zu = extractvalue { ptr, i32 } %i.zt, 0
  call void @__clang_call_terminate(ptr %i.zu) #30
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit121, %.loopexit.split-lp122.loopexit.split-lp.loopexit, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp122.loopexit, %.loopexit, %.loopexit.split-lp, %bb.ar, %bb.v, %bb.u, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn21.pn.pn.i = phi { ptr, i32 } [ %i.lc, %bb.ar ], [ %i.hg, %bb.u ], [ %lpad.loopexit89.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.hh, %bb.v ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit123, %.loopexit121 ], [ %lpad.loopexit126, %.loopexit.split-lp122.loopexit ], [ %lpad.loopexit129, %.loopexit.split-lp122.loopexit.split-lp.loopexit ], [ %lpad.loopexit132, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit135, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit138, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit141, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.zv = load ptr, ptr %i.m, align 8, !tbaa !879
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.zv)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.dj

bb.dj:                                            ; preds = %.loopexit.split-lp.i
  %i.zw = landingpad { ptr, i32 }
          catch ptr null
  %i.zx = extractvalue { ptr, i32 } %i.zw, 0
  call void @__clang_call_terminate(ptr %i.zx) #30
  unreachable

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  resume { ptr, i32 } %.pn21.pn.pn.i

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIddEEEEEvRS8_RT_b.exit: ; preds = %.loopexit144
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEEvRT_SG_EN5Local2opERNS0_11CombineArgsIddEE(ptr noundef nonnull align 8 dereferenceable(35) %0) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !958
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !959
  %i.d = load double, ptr %i.a, align 8, !tbaa !705
  %i.e = load double, ptr %i.c, align 8, !tbaa !705
  %i.f = fdiv double %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !947
  store double %i.f, ptr %i.h, align 8, !tbaa !705
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !997  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !997
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1240) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIS7_S7_EEEEEvRSB_RT_b(ptr noundef nonnull align 8 dereferenceable(76) %i.e, ptr noundef nonnull align 8 dereferenceable(76) %i.f, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_EN5Local2opERNS0_11CombineArgsISB_SB_EE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_EN5Local2opERNS0_11CombineArgsISB_SB_EE(ptr noundef nonnull align 8 dereferenceable(43) %0) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !969    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !970  ; 2 uses
  %1 = load <2 x float>, ptr %i.a, align 4, !tbaa !613
  %2 = load <2 x float>, ptr %i.c, align 4, !tbaa !613
  %3 = fdiv <2 x float> %1, %2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load float, ptr %i.d, align 4, !tbaa !613
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %6 = load float, ptr %5, align 4, !tbaa !613
  %7 = fdiv float %4, %6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !971  ; 2 uses
  store <2 x float> %3, ptr %i.f, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float %7, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1000 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1000
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1248) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIS7_S7_EEEEEvRSB_RT_b(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_EN5Local2opERNS0_11CombineArgsISB_SB_EE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_EN5Local2opERNS0_11CombineArgsISB_SB_EE(ptr noundef nonnull align 8 dereferenceable(51) %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !976    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !977  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !705, !noalias !4571
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !705, !noalias !4571
  %i.h = fdiv double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !978  ; 2 uses
  %i.k = load <2 x double>, ptr %i.a, align 8, !tbaa !705, !noalias !4571
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !705, !noalias !4571
  %i.m = fdiv <2 x double> %i.k, %i.l
  store <2 x double> %i.m, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store double %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1003 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1003
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1240) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7combineIFvRNS0_11CombineArgsIS7_S7_EEEEEvRSB_RT_b(ptr noundef nonnull align 8 dereferenceable(76) %i.e, ptr noundef nonnull align 8 dereferenceable(76) %i.f, ptr noundef nonnull @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_EN5Local2opERNS0_11CombineArgsISB_SB_EE, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7openvdb5v13_05tools7compDivINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEEvRT_SJ_EN5Local2opERNS0_11CombineArgsISB_SB_EE(ptr noundef nonnull align 8 dereferenceable(43) %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !983    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !984  ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !548
  %i.e = load i32, ptr %i.c, align 4, !tbaa !548
  %i.f = sdiv i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !548
  %i.j = load <2 x i32>, ptr %i.h, align 4, !tbaa !548
  %i.k = sdiv <2 x i32> %i.i, %i.j                ; 2 uses
  %i.l = extractelement <2 x i32> %i.k, i64 0
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.l to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.f to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !985  ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.n, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = extractelement <2 x i32> %i.k, i64 1
  store i32 %i.o, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools11compReplaceINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEvRT_RKSD_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::tree::IteratorRange", align 8 ; 27 uses
  %3 = alloca %"class.openvdb::v13_0::tools::valxform::SharedOpApplier.2531", align 8 ; 14 uses
  %4 = alloca %"class.openvdb::v13_0::tools::valxform::SharedOpApplier", align 8 ; 25 uses
  %5 = alloca %"struct.openvdb::v13_0::tools::CompReplaceOp", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::tree::TreeValueIteratorBase", align 8 ; 19 uses
  %7 = alloca %"class.openvdb::v13_0::tree::LeafIteratorBase", align 8 ; 8 uses
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE17clearAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE13topologyUnionIS7_EEvRKNS2_IT_EEb(ptr noundef nonnull align 8 dereferenceable(68) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %i.b, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8, !tbaa !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::tree::TreeValueIteratorBase") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1232) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 244 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !1070
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1071
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE11setMaxDepthEj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.h = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(264) %6, i1 noundef zeroext false)
  br i1 %i.h, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE11setMaxDepthEj.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.backedge.i.i
  %i.i = load i32, ptr %i.d, align 8, !tbaa !1071 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !1070
  %i.k = icmp slt i32 %i.i, %i.j
  %i.l = load i32, ptr %i.g, align 8
  %i.m = icmp sgt i32 %i.i, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %.critedge.backedge.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE11setMaxDepthEj.exit

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.n = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(264) %6, i1 noundef zeroext false)
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE11setMaxDepthEj.exit, !llvm.loop !98

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENSA_9ValueIterIKSA_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSA_10NodeStructEEENSA_11ValueOnPredEKbEEE11setMaxDepthEj.exit: ; preds = %.lr.ph.i.i, %.critedge.backedge.i.i, %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(264) %6, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(120) %i.r, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !1071 ; 2 uses
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !1071
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !1070 ; 2 uses
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !1070
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1072 ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !1072
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1073 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !1073
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.ap, align 8, !tbaa !1074
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %4, ptr %i.aq, align 8, !tbaa !1075
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.v, ptr %i.ar, align 8, !tbaa !1076
  store ptr %i.w, ptr %i.y, align 8, !tbaa !1077
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %i.z, ptr %i.as, align 8, !tbaa !1078
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 216
  store ptr %i.aa, ptr %i.at, align 8, !tbaa !1079
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !1080
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 264
  store ptr %5, ptr %i.au, align 8, !tbaa !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 240
end_hunk_1
