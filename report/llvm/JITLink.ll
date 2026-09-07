Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/JITLink?download=true
inline.NumInlined: 3592
inline.NumDeleted: 1662
begin_hunk_0_@_ZN4llvm7jitlink9LinkGraph4dumpERNS_11raw_ostreamE:bb.a

bb.bz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit159
  %i.wl = add i32 %i.wj, -1                       ; 2 uses
  %i.wm = ptrtoint ptr %i.tn to i64
  %i.wn = mul i64 %i.wm, -4658895280553007687     ; 2 uses
  %i.wo = lshr i64 %i.wn, 31
  %i.wp = xor i64 %i.wo, %i.wn
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = and i32 %i.wl, %i.wq                    ; 3 uses
  %i.ws = zext i32 %i.wr to i64                   ; 2 uses
  %i.wt = lshr i64 %i.ws, 5
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wt
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !70, !noalias !515
  %i.ww = and i32 %i.wr, 31
  %i.wx = lshr i32 %i.wv, %i.ww
  %i.wy = trunc i32 %i.wx to i1
  br i1 %i.wy, label %.lr.ph.i.i.i.i160, label %.loopexit.i.i, !prof !152

.lr.ph.i.i.i.i160:                                ; preds = %bb.bz, %bb.ca
  %i.wz = phi i64 [ %i.xf, %bb.ca ], [ %i.ws, %bb.bz ]
  %.017.i.i.i.i = phi i32 [ %i.xe, %bb.ca ], [ %i.wr, %bb.bz ]
  %i.xa = getelementptr inbounds nuw [32 x i8], ptr %i.wh, i64 %i.wz ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !80, !noalias !515
  %i.xc = icmp eq ptr %i.tn, %i.xb
  br i1 %i.xc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit, label %bb.ca, !prof !134

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i160
  %i.xd = add nuw i32 %.017.i.i.i.i, 1
  %i.xe = and i32 %i.xd, %i.wl                    ; 3 uses
  %i.xf = zext i32 %i.xe to i64                   ; 2 uses
  %i.xg = lshr i64 %i.xf, 5
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !70, !noalias !515
  %i.xj = and i32 %i.xe, 31
  %i.xk = lshr i32 %i.xi, %i.xj
  %i.xl = trunc i32 %i.xk to i1
  br i1 %i.xl, label %.lr.ph.i.i.i.i160, label %.loopexit.i.i, !prof !153

.loopexit.i.i:                                    ; preds = %bb.ca, %bb.bz, %_ZN4llvm11raw_ostreamlsEPKc.exit159
  %i.xm = zext i32 %i.wj to i64                   ; 2 uses
  %i.xn = getelementptr inbounds nuw [32 x i8], ptr %i.wh, i64 %i.xm
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i160
  %.pre748 = zext i32 %i.wj to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre748, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit ], [ %i.xm, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.xa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit ], [ %i.xn, %.loopexit.i.i ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [32 x i8], ptr %i.wh, i64 %.pre-phi
  %.not602 = icmp eq ptr %.lcssa.sink.i.i, %i.xo
  %i.xp = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.xq = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = ptrtoint ptr %i.xq to i64
  %i.xt = sub i64 %i.xr, %i.xs                    ; 2 uses
  br i1 %.not602, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %i.xu = icmp ult i64 %i.xt, 13
  br i1 %i.xu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.48, i64 noundef 13) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit163

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.xq, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, i64 13, i1 false)
  %i.xw = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 13
  store ptr %i.xx, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit163

_ZN4llvm11raw_ostreamlsEPKc.exit163:              ; preds = %bb.cc, %bb.cd
  %i.xy = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !151 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !151 ; 2 uses
  %.not603681 = icmp eq ptr %i.xz, %i.yb
  br i1 %.not603681, label %_ZN4llvm11raw_ostreamlsEPKc.exit172, label %.lr.ph683

.lr.ph683:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit163, %_ZN4llvm11raw_ostreamlsEPKc.exit169
  %.sroa.0456.0682 = phi ptr [ %i.yv, %_ZN4llvm11raw_ostreamlsEPKc.exit169 ], [ %i.xz, %_ZN4llvm11raw_ostreamlsEPKc.exit163 ] ; 2 uses
  %i.yc = load ptr, ptr %.sroa.0456.0682, align 8, !tbaa !89
  %i.yd = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.ye = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = icmp ult i64 %i.yh, 6
  br i1 %i.yi, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph683
  %i.yj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.49, i64 noundef 6) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

bb.cf:                                            ; preds = %.lr.ph683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ye, ptr noundef nonnull align 1 dereferenceable(6) @.str.49, i64 6, i1 false)
  %i.yk = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 6
  store ptr %i.yl, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

_ZN4llvm11raw_ostreamlsEPKc.exit166:              ; preds = %bb.ce, %bb.cf
  %.0.i.i165 = phi ptr [ %i.yj, %bb.ce ], [ %1, %bb.cf ] ; 4 uses
  %i.ym = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm7jitlinklsERNS_11raw_ostreamERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i165, ptr noundef nonnull align 8 dereferenceable(32) %i.yc) ; 0 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !54
  %i.yp = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 32 ; 3 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !55 ; 2 uses
  %i.yr = icmp eq ptr %i.yo, %i.yq
  br i1 %i.yr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit166
  %i.ys = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i165, ptr noundef nonnull @.str.47, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit169

bb.ch:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit166
  store i8 10, ptr %i.yq, align 1
  %i.yt = load ptr, ptr %i.yp, align 8, !tbaa !55
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  store ptr %i.yu, ptr %i.yp, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit169

_ZN4llvm11raw_ostreamlsEPKc.exit169:              ; preds = %bb.cg, %bb.ch
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0456.0682, i64 8 ; 2 uses
  %.not603 = icmp eq ptr %i.yv, %i.yb
  br i1 %.not603, label %_ZN4llvm11raw_ostreamlsEPKc.exit172, label %.lr.ph683

bb.ci:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockESt6vectorIPNS2_6SymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %i.yw = icmp ult i64 %i.xt, 15
  br i1 %i.yw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.50, i64 noundef 15) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit172

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.xq, ptr noundef nonnull align 1 dereferenceable(15) @.str.50, i64 15, i1 false)
  %i.yy = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 15
  store ptr %i.yz, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit172

_ZN4llvm11raw_ostreamlsEPKc.exit172:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit169, %_ZN4llvm11raw_ostreamlsEPKc.exit163, %bb.ck, %bb.cj
  %i.za = getelementptr inbounds nuw i8, ptr %i.tn, i64 40 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !135
  %i.zc = getelementptr inbounds nuw i8, ptr %i.tn, i64 48 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !135
  %i.ze = icmp eq ptr %i.zb, %i.zd
  %i.zf = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.zg = load ptr, ptr %i.d, align 8, !tbaa !55  ; 3 uses
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  br i1 %i.ze, label %bb.ec, label %bb.cl

bb.cl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit172
  %i.zk = icmp ult i64 %i.zj, 11
  br i1 %i.zk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.zl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.51, i64 noundef 11) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.zg, ptr noundef nonnull align 1 dereferenceable(11) @.str.51, i64 11, i1 false)
  %i.zm = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 11
  store ptr %i.zn, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175

_ZN4llvm11raw_ostreamlsEPKc.exit175:              ; preds = %bb.cm, %bb.cn
  %i.zo = load ptr, ptr %i.za, align 8, !tbaa !135 ; 3 uses
  %i.zp = load ptr, ptr %i.zc, align 8, !tbaa !135 ; 3 uses
  %.not84.i = icmp eq ptr %i.zo, %i.zp
  br i1 %.not84.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit175
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %i.zo to i64
  %i.zs = sub i64 %i.zq, %i.zr                    ; 3 uses
  %i.zt = icmp ugt i64 %i.zs, 9223372036854775776
  br i1 %i.zt, label %bb.cp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i

bb.cp:                                            ; preds = %bb.co
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #28
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i: ; preds = %bb.co
  %i.zu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zs) #29 ; 19 uses
  br label %.lr.ph.i.i.i.i58.i

.lr.ph.i.i.i.i58.i:                               ; preds = %.lr.ph.i.i.i.i58.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i
  %.09.i.i.i.i59.i.idx = phi i64 [ %.09.i.i.i.i59.i.add, %.lr.ph.i.i.i.i58.i ], [ 0, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i60.i = phi ptr [ %i.zv, %.lr.ph.i.i.i.i58.i ], [ %i.zo, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm7jitlink4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_.exit.i ] ; 2 uses
  %.09.i.i.i.i59.i.ptr = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.09.i.i.i.i59.i.idx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i59.i.ptr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i60.i, i64 32, i1 false), !tbaa.struct !136
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i60.i, i64 32 ; 2 uses
  %.09.i.i.i.i59.i.add = add nuw nsw i64 %.09.i.i.i.i59.i.idx, 32 ; 3 uses
  %.not.i.i.i.i61.i = icmp eq ptr %i.zv, %i.zp
  br i1 %.not.i.i.i.i61.i, label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575, label %.lr.ph.i.i.i.i58.i, !llvm.loop !441

_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575: ; preds = %.lr.ph.i.i.i.i58.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.09.i.i.i.i59.i.add ; 3 uses
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = lshr exact i64 %.09.i.i.i.i59.i.add, 5
  %i.zy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zx, i1 true)
  %i.zz = shl nuw nsw i64 %i.zy, 1
  %i.aaa = xor i64 %i.zz, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_SH_T0_T1_"(ptr nonnull %i.zu, ptr nonnull %.ptr.le, i64 noundef %i.aaa)
  %i.aab = icmp samesign ugt i64 %.09.i.i.i.i59.i.idx, 511
  br i1 %i.aab, label %.lr.ph.i.i.i.i.i.i177, label %.preheader.i27.i.i.i.i.i

.lr.ph.i.i.i.i.i.i177:                            ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575
  %i.aac = getelementptr i8, ptr %i.zu, i64 8
  %scevgep.i.i.i.i.i178 = getelementptr i8, ptr %i.zu, i64 32
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %.lr.ph.i.i.i.i.i.i177
  %.sroa.0.019.i.idx.i.i.i.i.i179 = phi i64 [ 32, %.lr.ph.i.i.i.i.i.i177 ], [ %.sroa.0.019.i.add.i.i.i.i.i184, %bb.cv ] ; 4 uses
  %.pn18.i.i.i.i.i.i180 = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i.i177 ], [ %.sroa.0.019.i.ptr.i.i.i.i.i181, %bb.cv ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.sroa.0.019.i.idx.i.i.i.i.i179 ; 5 uses
  %i.aad = getelementptr i8, ptr %.pn18.i.i.i.i.i.i180, i64 40
  %.val.i.i.i.i.i.i.i182 = load i32, ptr %i.aad, align 8, !tbaa !69 ; 4 uses
  %.val1.i.i.i.i.i.i.i183 = load i32, ptr %i.aac, align 8, !tbaa !69
  %i.aae = icmp ult i32 %.val.i.i.i.i.i.i.i182, %.val1.i.i.i.i.i.i.i183
  br i1 %i.aae, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr.i.i.i.i.i181, i64 32, i1 false), !tbaa.struct !136
  %i.aaf = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i179, 32
  br i1 %i.aaf, label %bb.cs, label %bb.ct, !prof !134

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i178, ptr noundef nonnull align 8 dereferenceable(1) %i.zu, i64 %.sroa.0.019.i.idx.i.i.i.i.i179, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.aag = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i180, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aag, ptr noundef nonnull align 8 dereferenceable(25) %i.zu, i64 25, i1 false), !tbaa.struct !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.zu, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i181, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i180, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.aah = getelementptr i8, ptr %.pn18.i.i.i.i.i.i180, i64 8
  %.val2.i11.i.i.i.i.i.i.i = load i32, ptr %i.aah, align 8, !tbaa !69
  %i.aai = icmp ult i32 %.val.i.i.i.i.i.i.i182, %.val2.i11.i.i.i.i.i.i.i
  br i1 %i.aai, label %.lr.ph.i.i.i.i.i.i.i188, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i188:                          ; preds = %bb.cu, %.lr.ph.i.i.i.i.i.i.i188
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i189, %.lr.ph.i.i.i.i.i.i.i188 ], [ %.sroa.0.019.i.ptr.i.i.i.i.i181, %bb.cu ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i189 = getelementptr inbounds i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i.i.i.i.i.i189, i64 25, i1 false), !tbaa.struct !136
  %i.aaj = getelementptr i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 -56
  %.val2.i.i.i.i.i.i.i.i190 = load i32, ptr %i.aaj, align 8, !tbaa !69
  %i.aak = icmp ult i32 %.val.i.i.i.i.i.i.i182, %.val2.i.i.i.i.i.i.i.i190
  br i1 %i.aak, label %.lr.ph.i.i.i.i.i.i.i188, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !442

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i188, %bb.cu
  %.sroa.08.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i181, %bb.cu ], [ %.sroa.0.0.i.i.i.i.i.i.i189, %.lr.ph.i.i.i.i.i.i.i188 ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i32 %.val.i.i.i.i.i.i.i182, ptr %.sroa.4.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  br label %bb.cv

bb.cv:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i.i184 = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i179, 32 ; 2 uses
  %.not.i.i.i.i.i.i185 = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i184, 512
  br i1 %.not.i.i.i.i.i.i185, label %.lr.ph.i13.i.i.i.i.i.preheader, label %bb.cq, !llvm.loop !443

.lr.ph.i13.i.i.i.i.i.preheader:                   ; preds = %bb.cv
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zu, i64 512
  br label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i.i.preheader, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i187 = phi ptr [ %i.aaq, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i" ], [ %i.aal, %.lr.ph.i13.i.i.i.i.i.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i14.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i187, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i12.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i15.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.aam = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 -24
  %.val2.i11.i.i16.i.i.i.i.i = load i32, ptr %i.aam, align 8, !tbaa !69
  %i.aan = icmp ult i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val2.i11.i.i16.i.i.i.i.i
  br i1 %i.aan, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i"

.lr.ph.i.i22.i.i.i.i.i:                           ; preds = %.lr.ph.i13.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i
  %.sroa.08.012.i.i23.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i187, %.lr.ph.i13.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i24.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i23.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i23.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i24.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.aao = getelementptr i8, ptr %.sroa.08.012.i.i23.i.i.i.i.i, i64 -56
  %.val2.i.i.i25.i.i.i.i.i = load i32, ptr %i.aao, align 8, !tbaa !69
  %i.aap = icmp ult i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.val2.i.i.i25.i.i.i.i.i
  br i1 %i.aap, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i", !llvm.loop !442

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i": ; preds = %.lr.ph.i.i22.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.08.0.lcssa.i.i18.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i187, %.lr.ph.i13.i.i.i.i.i ], [ %.sroa.0.0.i.i24.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i14.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i19.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i18.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i20.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i12.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i187, i64 32 ; 2 uses
  %.not.i21.i.i.i.i.i = icmp eq ptr %i.aaq, %.ptr.le
  br i1 %.not.i21.i.i.i.i.i, label %.lr.ph686.preheader, label %.lr.ph.i13.i.i.i.i.i, !llvm.loop !444

.preheader.i27.i.i.i.i.i:                         ; preds = %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit.thread575
  %.not17.i29.i.i.i.i.i = icmp samesign eq i64 %.09.i.i.i.i59.i.idx, 0
  br i1 %.not17.i29.i.i.i.i.i, label %.lr.ph686.preheader, label %.lr.ph.i30.i.i.i.i.i

.lr.ph686.preheader:                              ; preds = %bb.dc, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i17.i.i.i.i.i", %.preheader.i27.i.i.i.i.i
  br label %.lr.ph686

.lr.ph.i30.i.i.i.i.i:                             ; preds = %.preheader.i27.i.i.i.i.i
  %i.aar = getelementptr i8, ptr %i.zu, i64 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.dc, %.lr.ph.i30.i.i.i.i.i
  %.pn18.i32.i.i.i.i.i = phi ptr [ %i.zu, %.lr.ph.i30.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.0.019.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 32 ; 8 uses
  %i.aas = getelementptr i8, ptr %.pn18.i32.i.i.i.i.i, i64 40
  %.val.i.i33.i.i.i.i.i = load i32, ptr %i.aas, align 8, !tbaa !69 ; 4 uses
  %.val1.i.i34.i.i.i.i.i = load i32, ptr %i.aar, align 8, !tbaa !69
  %i.aat = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val1.i.i34.i.i.i.i.i
  br i1 %i.aat, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i31.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !136
  %i.aau = ptrtoint ptr %.sroa.0.019.i31.i.i.i.i.i to i64
  %i.aav = sub i64 %i.aau, %i.zw                  ; 3 uses
  %i.aaw = ashr exact i64 %i.aav, 5               ; 2 uses
  %i.aax = icmp sgt i64 %i.aaw, 1
  br i1 %i.aax, label %bb.cy, label %bb.cz, !prof !134

bb.cy:                                            ; preds = %bb.cx
  %i.aay = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 64
  %i.aaz = sub nsw i64 0, %i.aaw
  %i.aba = getelementptr inbounds [32 x i8], ptr %i.aay, i64 %i.aaz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aba, ptr noundef nonnull align 8 dereferenceable(1) %i.zu, i64 %i.aav, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.abb = icmp eq i64 %i.aav, 32
  br i1 %i.abb, label %bb.da, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.019.i31.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %i.zu, i64 25, i1 false), !tbaa.struct !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i: ; preds = %bb.da, %bb.cz, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.zu, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i26.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i35.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i31.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.5.0..sroa_idx.i.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i26.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i36.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !137
  %i.abc = getelementptr i8, ptr %.pn18.i32.i.i.i.i.i, i64 8
  %.val2.i11.i.i37.i.i.i.i.i = load i32, ptr %i.abc, align 8, !tbaa !69
  %i.abd = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val2.i11.i.i37.i.i.i.i.i
  br i1 %i.abd, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i"

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %bb.db, %.lr.ph.i.i44.i.i.i.i.i
  %.sroa.08.012.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.db ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.012.i.i45.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.08.012.i.i45.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.0.i.i46.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !136
  %i.abe = getelementptr i8, ptr %.sroa.08.012.i.i45.i.i.i.i.i, i64 -56
  %.val2.i.i.i47.i.i.i.i.i = load i32, ptr %i.abe, align 8, !tbaa !69
  %i.abf = icmp ult i32 %.val.i.i33.i.i.i.i.i, %.val2.i.i.i47.i.i.i.i.i
  br i1 %i.abf, label %.lr.ph.i.i44.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i", !llvm.loop !442

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i.i, %bb.db
  %.sroa.08.0.lcssa.i.i39.i.i.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i.i.i, %bb.db ], [ %.sroa.0.0.i.i46.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i35.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx5.i.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, i64 8
  store i32 %.val.i.i33.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i40.i.i.i.i.i, align 8, !tbaa !70
  %.sroa.5.0..sroa_idx7.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i39.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.0..sroa_idx7.i.i41.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.5.i.i26.i.i.i.i.i, i64 13, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i26.i.i.i.i.i)
  br label %bb.dc

bb.dc:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_9LinkGraph4dumpERNS2_11raw_ostreamEE3$_3EEEvT_T0_.exit.i38.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm7jitlink4EdgeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i48.i.i.i.i.i
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.019.i31.i.i.i.i.i, %.09.i.i.i.i59.i.ptr
  br i1 %.not.i43.i.i.i.i.i, label %.lr.ph686.preheader, label %bb.cw, !llvm.loop !443

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit243
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef %i.zs) #27
  br label %_ZNSt6vectorIN4llvm7jitlink4EdgeESaIS2_EED2Ev.exit

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %_ZN4llvm11raw_ostreamlsEPKc.exit243
  %.sroa.0440.0685 = phi ptr [ %i.afu, %_ZN4llvm11raw_ostreamlsEPKc.exit243 ], [ %i.zu, %.lr.ph686.preheader ] ; 7 uses
  %i.abg = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.abh = load ptr, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = icmp ult i64 %i.abk, 6
  br i1 %i.abl, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph686
  %i.abm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.49, i64 noundef 6) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit194

bb.de:                                            ; preds = %.lr.ph686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.abh, ptr noundef nonnull align 1 dereferenceable(6) @.str.49, i64 6, i1 false)
  %i.abn = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 6
  store ptr %i.abo, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit194

_ZN4llvm11raw_ostreamlsEPKc.exit194:              ; preds = %bb.dd, %bb.de
  %.0.i.i193 = phi ptr [ %i.abm, %bb.dd ], [ %1, %bb.de ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.tn, align 8, !tbaa !42
  %i.abp = getelementptr inbounds nuw i8, ptr %.sroa.0440.0685, i64 8 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !69
  %i.abr = zext i32 %i.abq to i64
  %i.abs = add i64 %.sroa.0.0.copyload.i.i, %i.abr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr @.str.33, ptr %4, align 8, !tbaa !43, !alias.scope !516
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i195, align 8, !tbaa !42, !alias.scope !516
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !45, !alias.scope !516
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i196, align 8, !tbaa !42, !alias.scope !516
  store i8 1, ptr %i.lh, align 8, !tbaa !50, !alias.scope !516
  store i64 %i.abs, ptr %i.li, align 8, !tbaa !42, !alias.scope !516
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %i.lf, align 8, !alias.scope !516
  store i64 %i.lj, ptr %.sroa.4.0..sroa_idx.i.i.i.i197, align 8, !tbaa !41, !alias.scope !516
  %i.abt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i193, ptr noundef nonnull align 8 dereferenceable(33) %4) #26 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !54
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abt, i64 32 ; 3 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !55 ; 2 uses
  %i.aby = ptrtoint ptr %i.abv to i64
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = icmp ult i64 %i.aca, 10
  br i1 %i.acb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit194
  %i.acc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.abt, ptr noundef nonnull @.str.52, i64 noundef 10) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit200

bb.dg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.abx, ptr noundef nonnull align 1 dereferenceable(10) @.str.52, i64 10, i1 false)
  %i.acd = load ptr, ptr %i.abw, align 8, !tbaa !55
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 10
  store ptr %i.ace, ptr %i.abw, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit200

_ZN4llvm11raw_ostreamlsEPKc.exit200:              ; preds = %bb.df, %bb.dg
  %.0.i.i199 = phi ptr [ %i.acc, %bb.df ], [ %i.abt, %bb.dg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.acf = load i32, ptr %i.abp, align 8, !tbaa !69
  store ptr @.str.12, ptr %13, align 8, !tbaa !43, !alias.scope !517
  store i64 6, ptr %.sroa.22.0..sroa_idx.i.i.i.i201, align 8, !tbaa !42, !alias.scope !517
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !45, !alias.scope !517
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i202, align 8, !tbaa !42, !alias.scope !517
  store i8 1, ptr %i.lm, align 8, !tbaa !50, !alias.scope !517
  store i32 %i.acf, ptr %i.ln, align 4, !tbaa !70, !alias.scope !517
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_, ptr %i.lk, align 8, !alias.scope !517
  store i64 %i.lo, ptr %.sroa.4.0..sroa_idx.i.i.i203, align 8, !tbaa !41, !alias.scope !517
  %i.acg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i199, ptr noundef nonnull align 8 dereferenceable(33) %13) #26 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !54
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 32 ; 3 uses
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !55 ; 2 uses
  %i.acl = ptrtoint ptr %i.aci to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = icmp ult i64 %i.acn, 12
  br i1 %i.aco, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit200
  %i.acp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.acg, ptr noundef nonnull @.str.53, i64 noundef 12) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206

bb.di:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ack, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, i64 12, i1 false)
  %i.acq = load ptr, ptr %i.acj, align 8, !tbaa !55
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 12
  store ptr %i.acr, ptr %i.acj, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206

_ZN4llvm11raw_ostreamlsEPKc.exit206:              ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.0440.0685, i64 16
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !82 ; 3 uses
  %i.acu = icmp sgt i64 %i.act, -1
  br i1 %i.acu, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr @.str.54, ptr %14, align 8, !tbaa !43, !alias.scope !518
  store i64 7, ptr %.sroa.22.0..sroa_idx.i.i.i.i207, align 8, !tbaa !42, !alias.scope !518
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !45, !alias.scope !518
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i208, align 8, !tbaa !42, !alias.scope !518
  store i8 1, ptr %i.lw, align 8, !tbaa !50, !alias.scope !518
  store i64 %i.act, ptr %i.lx, align 8, !tbaa !42, !alias.scope !518
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIlEEEEvlS2_S3_, ptr %i.lu, align 8, !alias.scope !518
  store i64 %i.ly, ptr %.sroa.4.0..sroa_idx.i.i.i209, align 8, !tbaa !41, !alias.scope !518
  %i.acv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(33) %14) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.acw = sub nsw i64 0, %i.act
  store ptr @.str.55, ptr %15, align 8, !tbaa !43, !alias.scope !519
end_hunk_0
