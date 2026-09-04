Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/message_differencer?download=true
inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_:bb.a

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.wm, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.wu, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.wt, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.ws, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.wv = icmp ult i64 %i.wm, 4
  br i1 %i.wv, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.xu, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.xt, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.xs, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.ww = load i32, ptr %.0910.i.i.i.i.i13.i27.i, align 4, !tbaa !20
  store i32 %i.ww, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !231
  %i.wx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !267
  %i.wz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.wy, ptr %i.wz, align 8, !tbaa !224
  %i.xa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.xb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.xc = load i32, ptr %i.xa, align 8, !tbaa !20
  store i32 %i.xc, ptr %i.xb, align 8, !tbaa !231
  %i.xd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !267
  %i.xf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.xe, ptr %i.xf, align 8, !tbaa !224
  %i.xg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.xh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.xi = load i32, ptr %i.xg, align 8, !tbaa !20
  store i32 %i.xi, ptr %i.xh, align 8, !tbaa !231
  %i.xj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !267
  %i.xl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.xk, ptr %i.xl, align 8, !tbaa !224
  %i.xm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.xn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.xo = load i32, ptr %i.xm, align 8, !tbaa !20
  store i32 %i.xo, ptr %i.xn, align 8, !tbaa !231
  %i.xp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !267
  %i.xr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.xq, ptr %i.xr, align 8, !tbaa !224
  %i.xs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.xt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.xu = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.xv = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.xv, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, !llvm.loop !11

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i
  %i.xw = shl nsw i64 %.058, 2                    ; 4 uses
  %.not66.i = icmp slt i64 %i.d, %i.xw
  br i1 %.not66.i, label %._crit_edge.i34, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit
  %.idx.i29 = shl nsw i64 %.058, 5                ; 2 uses
  %.idx57.i = shl nsw i64 %.058, 6                ; 2 uses
  %.not58.i = icmp eq i64 %.idx.i29, %.idx57.i
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, %.lr.ph.i28
  %.sroa.022.068.i = phi ptr [ %0, %.lr.ph.i28 ], [ %i.abz, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 2 uses
  %.067.i = phi ptr [ %2, %.lr.ph.i28 ], [ %i.xy, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 4 uses
  %i.xx = getelementptr inbounds i8, ptr %.067.i, i64 %.idx.i29 ; 4 uses
  %i.xy = getelementptr inbounds i8, ptr %.067.i, i64 %.idx57.i ; 4 uses
  br i1 %.not58.i, label %._crit_edge.i.i, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.aj, %bb.al
  %.033.i.i = phi ptr [ %.1.i.i, %bb.al ], [ %.067.i, %bb.aj ] ; 4 uses
  %.01632.i.i = phi ptr [ %.117.i.i, %bb.al ], [ %i.xx, %bb.aj ] ; 4 uses
  %.sroa.0.030.i.i = phi ptr [ %i.yq, %bb.al ], [ %.sroa.022.068.i, %bb.aj ] ; 5 uses
  %i.xz = getelementptr i8, ptr %.01632.i.i, i64 8
  %.016.val.i.i = load ptr, ptr %i.xz, align 8, !tbaa !224 ; 3 uses
  %i.ya = getelementptr i8, ptr %.033.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.ya, align 8, !tbaa !224 ; 3 uses
  %i.yb = load i32, ptr %.016.val.i.i, align 8, !tbaa !226 ; 2 uses
  %i.yc = load i32, ptr %.0.val.i.i, align 8, !tbaa !226 ; 2 uses
  %i.yd = icmp slt i32 %i.yb, %i.yc
  br i1 %i.yd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i30
  %i.ye = icmp sgt i32 %i.yb, %i.yc
  br i1 %i.ye, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i: ; preds = %bb.ak
  %i.yf = getelementptr inbounds nuw i8, ptr %.016.val.i.i, i64 4
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !227
  %i.yh = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !227
  %i.yj = icmp slt i32 %i.yg, %i.yi
  br i1 %i.yj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i, %.lr.ph.i.i30
  %i.yk = load i32, ptr %.01632.i.i, align 8, !tbaa !20
  store i32 %i.yk, ptr %.sroa.0.030.i.i, align 8, !tbaa !231
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  store ptr %.016.val.i.i, ptr %i.yl, align 8, !tbaa !224
  %i.ym = getelementptr inbounds nuw i8, ptr %.01632.i.i, i64 16
  br label %bb.al

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i, %bb.ak
  %i.yn = load i32, ptr %.033.i.i, align 8, !tbaa !20
  store i32 %i.yn, ptr %.sroa.0.030.i.i, align 8, !tbaa !231
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  store ptr %.0.val.i.i, ptr %i.yo, align 8, !tbaa !224
  %i.yp = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 16
  br label %bb.al

bb.al:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i
  %.117.i.i = phi ptr [ %i.ym, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i ], [ %.01632.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %.033.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i ], [ %i.yp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i ] ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 16 ; 2 uses
  %i.yr = icmp ne ptr %.1.i.i, %i.xx
  %i.ys = icmp ne ptr %.117.i.i, %i.xy
  %i.yt = select i1 %i.yr, i1 %i.ys, i1 false
  br i1 %i.yt, label %.lr.ph.i.i30, label %._crit_edge.i.i, !llvm.loop !938

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.aj
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.068.i, %bb.aj ], [ %i.yq, %bb.al ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.xx, %bb.aj ], [ %.117.i.i, %bb.al ] ; 3 uses
  %.0.lcssa.i.i31 = phi ptr [ %.067.i, %bb.aj ], [ %.1.i.i, %bb.al ] ; 3 uses
  %i.yu = ptrtoint ptr %i.xx to i64
  %i.yv = ptrtoint ptr %.0.lcssa.i.i31 to i64
  %i.yw = sub i64 %i.yu, %i.yv
  %i.yx = ashr exact i64 %i.yw, 4                 ; 5 uses
  %i.yy = icmp sgt i64 %i.yx, 0
  br i1 %i.yy, label %.lr.ph.i.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter206 = and i64 %i.yx, 3                 ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i.i37.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i.i38.prol = phi i64 [ %i.zf, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %i.yx, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i.i39.prol = phi ptr [ %i.ze, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i40.prol = phi ptr [ %i.zd, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter208 = phi i64 [ %prol.iter208.next, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %i.yz = load i32, ptr %.0910.i.i.i.i.i.i.i40.prol, align 4, !tbaa !20
  store i32 %i.yz, ptr %.0811.i.i.i.i.i.i.i39.prol, align 8, !tbaa !231
  %i.za = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !267
  %i.zc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.zb, ptr %i.zc, align 8, !tbaa !224
  %i.zd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.zf = add nsw i64 %.012.i.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, %xtraiter206
  br i1 %prol.iter208.cmp.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol, !llvm.loop !939

.lr.ph.i.i.i.i.i.i.i37.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i.i38.unr = phi i64 [ %i.yx, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.zf, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.ze, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.zd, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.lcssa167.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.ze, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %i.zg = icmp ult i64 %i.yx, 4
  br i1 %i.zg, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i37:                           ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i38 = phi i64 [ %i.aaf, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i39 = phi ptr [ %i.aae, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i40 = phi ptr [ %i.aad, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.zh = load i32, ptr %.0910.i.i.i.i.i.i.i40, align 4, !tbaa !20
  store i32 %i.zh, ptr %.0811.i.i.i.i.i.i.i39, align 8, !tbaa !231
  %i.zi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !267
  %i.zk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 8
  store ptr %i.zj, ptr %i.zk, align 8, !tbaa !224
  %i.zl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 16
  %i.zn = load i32, ptr %i.zl, align 8, !tbaa !20
  store i32 %i.zn, ptr %i.zm, align 8, !tbaa !231
  %i.zo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 24
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !267
  %i.zq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 24
  store ptr %i.zp, ptr %i.zq, align 8, !tbaa !224
  %i.zr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 32
  %i.zs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 32
  %i.zt = load i32, ptr %i.zr, align 8, !tbaa !20
  store i32 %i.zt, ptr %i.zs, align 8, !tbaa !231
  %i.zu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 40
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !267
  %i.zw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 40
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !224
  %i.zx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 48
  %i.zy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 48
  %i.zz = load i32, ptr %i.zx, align 8, !tbaa !20
  store i32 %i.zz, ptr %i.zy, align 8, !tbaa !231
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 56
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !267
  %i.aac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 56
  store ptr %i.aab, ptr %i.aac, align 8, !tbaa !224
  %i.aad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 64
  %i.aae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.aaf = add nsw i64 %.012.i.i.i.i.i.i.i38, -4
  %i.aag = icmp sgt i64 %.012.i.i.i.i.i.i.i38, 4
  br i1 %i.aag, label %.lr.ph.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i, !llvm.loop !11

_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa167.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ], [ %i.aae, %.lr.ph.i.i.i.i.i.i.i37 ]
  %i.aah = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.aai = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  %i.aak = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.aaj ; 3 uses
  %i.aal = ptrtoint ptr %i.xy to i64              ; 2 uses
  %i.aam = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.aan = sub i64 %i.aal, %i.aam
  %i.aao = ashr exact i64 %i.aan, 4               ; 5 uses
  %i.aap = icmp sgt i64 %i.aao, 0
  br i1 %i.aap, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i
  %xtraiter209 = and i64 %i.aao, 3                ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.aaw, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.aao, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.aav, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.aak, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.aau, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter211 = phi i64 [ %prol.iter211.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.aaq = load i32, ptr %.0910.i.i.i.i.i22.i.i.prol, align 4, !tbaa !20
  store i32 %i.aaq, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !231
  %i.aar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !267
  %i.aat = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.aas, ptr %i.aat, align 8, !tbaa !224
  %i.aau = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.aaw = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter211.next = add i64 %prol.iter211, 1   ; 2 uses
  %prol.iter211.cmp.not = icmp eq i64 %prol.iter211.next, %xtraiter209
  br i1 %prol.iter211.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !940

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.aao, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.aaw, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.aak, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.aav, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.aau, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa168.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.aav, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.aax = icmp ult i64 %i.aao, 4
  br i1 %i.aax, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i, label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.abw, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.abv, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.abu, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.aay = load i32, ptr %.0910.i.i.i.i.i22.i.i, align 4, !tbaa !20
  store i32 %i.aay, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !231
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !267
  %i.abb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.aba, ptr %i.abb, align 8, !tbaa !224
  %i.abc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.abd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.abe = load i32, ptr %i.abc, align 8, !tbaa !20
  store i32 %i.abe, ptr %i.abd, align 8, !tbaa !231
  %i.abf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !267
  %i.abh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !224
  %i.abi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.abj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.abk = load i32, ptr %i.abi, align 8, !tbaa !20
  store i32 %i.abk, ptr %i.abj, align 8, !tbaa !231
  %i.abl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !267
  %i.abn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.abm, ptr %i.abn, align 8, !tbaa !224
  %i.abo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.abp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.abq = load i32, ptr %i.abo, align 8, !tbaa !20
  store i32 %i.abq, ptr %i.abp, align 8, !tbaa !231
  %i.abr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !267
  %i.abt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !224
  %i.abu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.abv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.abw = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.abx = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.abx, label %.lr.ph.i.i.i.i.i19.i.i, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i, !llvm.loop !11

_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit
  %.lcssa168 = phi ptr [ %.lcssa168.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.abv, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.lcssa168 to i64
  br label %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i

_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i: ; preds = %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.aah, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i ], [ %3, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i ]
  %i.aby = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.aah
  %i.abz = getelementptr inbounds i8, ptr %i.aak, i64 %i.aby ; 2 uses
  %i.aca = sub i64 %i.qa, %i.aal
  %i.acb = ashr exact i64 %i.aca, 4               ; 2 uses
  %.not.i33 = icmp slt i64 %i.acb, %i.xw
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.aj, !llvm.loop !941

._crit_edge.i34:                                  ; preds = %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit
  %.0.lcssa.i35 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ], [ %i.xy, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ], [ %i.abz, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 2 uses
  %.lcssa64.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ], [ %i.acb, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.qb, i64 %.lcssa64.i) ; 2 uses
  %.idx59.i = shl nsw i64 %.sroa.speculated.i36, 4
  %i.acc = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx59.i ; 5 uses
  %i.acd = icmp ne i64 %.sroa.speculated.i36, 0
  %i.ace = icmp ne ptr %i.acc, %i.e
  %i.acf = and i1 %i.acd, %i.ace
  br i1 %i.acf, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i34, %bb.an
  %.033.i42.i = phi ptr [ %.1.i50.i, %bb.an ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01632.i43.i = phi ptr [ %.117.i49.i, %bb.an ], [ %i.acc, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.030.i44.i = phi ptr [ %i.acx, %bb.an ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 5 uses
  %i.acg = getelementptr i8, ptr %.01632.i43.i, i64 8
  %.016.val.i45.i = load ptr, ptr %i.acg, align 8, !tbaa !224 ; 3 uses
  %i.ach = getelementptr i8, ptr %.033.i42.i, i64 8
  %.0.val.i46.i = load ptr, ptr %i.ach, align 8, !tbaa !224 ; 3 uses
  %i.aci = load i32, ptr %.016.val.i45.i, align 8, !tbaa !226 ; 2 uses
  %i.acj = load i32, ptr %.0.val.i46.i, align 8, !tbaa !226 ; 2 uses
  %i.ack = icmp slt i32 %i.aci, %i.acj
  br i1 %i.ack, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i41.i
  %i.acl = icmp sgt i32 %i.aci, %i.acj
  br i1 %i.acl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i: ; preds = %bb.am
  %i.acm = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 4
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !227
  %i.aco = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 4
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !227
  %i.acq = icmp slt i32 %i.acn, %i.acp
  br i1 %i.acq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i, %.lr.ph.i41.i
  %i.acr = load i32, ptr %.01632.i43.i, align 8, !tbaa !20
  store i32 %i.acr, ptr %.sroa.0.030.i44.i, align 8, !tbaa !231
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i44.i, i64 8
  store ptr %.016.val.i45.i, ptr %i.acs, align 8, !tbaa !224
  %i.act = getelementptr inbounds nuw i8, ptr %.01632.i43.i, i64 16
  br label %bb.an

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i, %bb.am
  %i.acu = load i32, ptr %.033.i42.i, align 8, !tbaa !20
  store i32 %i.acu, ptr %.sroa.0.030.i44.i, align 8, !tbaa !231
  %i.acv = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i44.i, i64 8
  store ptr %.0.val.i46.i, ptr %i.acv, align 8, !tbaa !224
  %i.acw = getelementptr inbounds nuw i8, ptr %.033.i42.i, i64 16
  br label %bb.an

bb.an:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i
  %.117.i49.i = phi ptr [ %i.act, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i ], [ %.01632.i43.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i ] ; 3 uses
  %.1.i50.i = phi ptr [ %.033.i42.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i ], [ %i.acw, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i ] ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i44.i, i64 16 ; 2 uses
  %i.acy = icmp ne ptr %.1.i50.i, %i.acc
  %i.acz = icmp ne ptr %.117.i49.i, %i.e
  %i.ada = select i1 %i.acy, i1 %i.acz, i1 false
  br i1 %i.ada, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !938

._crit_edge.i25.i:                                ; preds = %bb.an, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.acx, %bb.an ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.acc, %._crit_edge.i34 ], [ %.117.i49.i, %bb.an ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i50.i, %bb.an ] ; 3 uses
  %i.adb = ptrtoint ptr %i.acc to i64
  %i.adc = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.add = sub i64 %i.adb, %i.adc
  %i.ade = ashr exact i64 %i.add, 4               ; 5 uses
  %i.adf = icmp sgt i64 %i.ade, 0
  br i1 %i.adf, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter212 = and i64 %i.ade, 3                ; 2 uses
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.adm, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.ade, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.adk, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter214 = phi i64 [ %prol.iter214.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.adg = load i32, ptr %.0910.i.i.i.i.i.i40.i.prol, align 4, !tbaa !20
  store i32 %i.adg, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !231
  %i.adh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !267
  %i.adj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.adi, ptr %i.adj, align 8, !tbaa !224
  %i.adk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.adm = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter214.next = add i64 %prol.iter214, 1   ; 2 uses
  %prol.iter214.cmp.not = icmp eq i64 %prol.iter214.next, %xtraiter212
  br i1 %prol.iter214.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !942

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.ade, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.adm, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.adl, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.adk, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa173.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.adl, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.adn = icmp ult i64 %i.ade, 4
  br i1 %i.adn, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.aem, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.ael, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.aek, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.ado = load i32, ptr %.0910.i.i.i.i.i.i40.i, align 4, !tbaa !20
  store i32 %i.ado, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !231
  %i.adp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !267
  %i.adr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !224
  %i.ads = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.adt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.adu = load i32, ptr %i.ads, align 8, !tbaa !20
  store i32 %i.adu, ptr %i.adt, align 8, !tbaa !231
  %i.adv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !267
  %i.adx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.adw, ptr %i.adx, align 8, !tbaa !224
  %i.ady = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.adz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.aea = load i32, ptr %i.ady, align 8, !tbaa !20
  store i32 %i.aea, ptr %i.adz, align 8, !tbaa !231
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !267
  %i.aed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.aec, ptr %i.aed, align 8, !tbaa !224
  %i.aee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.aef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.aeg = load i32, ptr %i.aee, align 8, !tbaa !20
  store i32 %i.aeg, ptr %i.aef, align 8, !tbaa !231
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !267
  %i.aej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.aei, ptr %i.aej, align 8, !tbaa !224
  %i.aek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.ael = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.aem = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.aen = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.aen, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i, !llvm.loop !11

_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa173.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.ael, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.aeo = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.aep = sub i64 %i.qa, %i.aeo
  %i.aeq = ashr exact i64 %i.aep, 4               ; 5 uses
  %i.aer = icmp sgt i64 %i.aeq, 0
  br i1 %i.aer, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i
  %i.aes = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.aet = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.aeu = sub i64 %i.aes, %i.aet
  %i.aev = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.aeu ; 2 uses
  %xtraiter215 = and i64 %i.aeq, 3                ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.afc, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.aeq, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.afb, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.aev, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.afa, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter217 = phi i64 [ %prol.iter217.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.aew = load i32, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 4, !tbaa !20
  store i32 %i.aew, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !231
  %i.aex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !267
  %i.aez = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.aey, ptr %i.aez, align 8, !tbaa !224
  %i.afa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.afc = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter217.next = add i64 %prol.iter217, 1   ; 2 uses
  %prol.iter217.cmp.not = icmp eq i64 %prol.iter217.next, %xtraiter215
  br i1 %prol.iter217.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !943

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.aeq, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.afc, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.aev, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.afb, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.afa, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.afd = icmp ult i64 %i.aeq, 4
  br i1 %i.afd, label %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.agc, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.agb, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.aga, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.afe = load i32, ptr %.0910.i.i.i.i.i22.i35.i, align 4, !tbaa !20
  store i32 %i.afe, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !231
  %i.aff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !267
end_hunk_0
