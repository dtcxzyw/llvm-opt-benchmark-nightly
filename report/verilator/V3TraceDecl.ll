Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3TraceDecl?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1351
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_:bb.a
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 80 ; 5 uses
  %i.vy = icmp ne ptr %.1.i, %i.ng
  %i.vz = icmp ne ptr %.117.i, %i.nh
  %i.wa = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %i.wa, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.dt
  %i.wb = ptrtoint ptr %i.ng to i64
  %i.wc = ptrtoint ptr %.1.i to i64
  %i.wd = sub i64 %i.wb, %i.wc                    ; 2 uses
  %i.we = icmp sgt i64 %i.wd, 0
  br i1 %i.we, label %.lr.ph.preheader.i.i.i.i.i.i33, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.preheader.i.i.i.i.i.i33:                   ; preds = %._crit_edge.i
  %i.wf = udiv exact i64 %i.wd, 80
  br label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131, %.lr.ph.preheader.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i35 = phi i64 [ %i.yk, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131 ], [ %i.wf, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %.0811.i.i.i.i.i.i36 = phi ptr [ %i.yj, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131 ], [ %i.vx, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 14 uses
  %.0910.i.i.i.i.i.i37 = phi ptr [ %i.yi, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i.i37, i64 16, i1 false)
  %i.wg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 16 ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 16 ; 4 uses
  %i.wi = load ptr, ptr %i.wg, align 8, !tbaa !44 ; 6 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 32 ; 4 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  %i.wl = load ptr, ptr %i.wh, align 8, !tbaa !44 ; 6 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 32 ; 6 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm                ; 2 uses
  br i1 %i.wk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %.lr.ph.i.i.i.i.i.i34
  br i1 %i.wn, label %bb.du, label %.thread.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114: ; preds = %.lr.ph.i.i.i.i.i.i34
  br i1 %i.wn, label %bb.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i115

bb.du:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  %i.wo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 24 ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !45 ; 3 uses
  %i.wq = icmp ult i64 %i.wp, 16
  tail call void @llvm.assume(i1 %i.wq)
  %.not21.i.i126 = icmp eq ptr %.0910.i.i.i.i.i.i37, %.0811.i.i.i.i.i.i36
  br i1 %.not21.i.i126, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117, label %bb.dv, !prof !38

bb.dv:                                            ; preds = %bb.du
  switch i64 %i.wp, label %bb.dx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i127
    i64 1, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.wr = load i8, ptr %i.wl, align 1, !tbaa !46
  store i8 %i.wr, ptr %i.wi, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i127

bb.dx:                                            ; preds = %bb.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wi, ptr align 1 %i.wl, i64 %i.wp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i127: ; preds = %bb.dx, %bb.dw, %bb.dv
  %i.ws = load i64, ptr %i.wo, align 8, !tbaa !45 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 24
  store i64 %i.ws, ptr %i.wt, align 8, !tbaa !45
  %i.wu = load ptr, ptr %i.wg, align 8, !tbaa !44
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.ws
  store i8 0, ptr %i.wv, align 1, !tbaa !46
  %.pre.i.i128 = load ptr, ptr %i.wh, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117

.thread.i.i130:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  %i.ww = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 24
  store ptr %i.wl, ptr %i.wg, align 8, !tbaa !44
  %i.wx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 24
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !45
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !45
  %i.wz = load i64, ptr %i.wm, align 8, !tbaa !46
  store i64 %i.wz, ptr %i.wj, align 8, !tbaa !46
  br label %bb.dz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i115: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114
  %i.xa = load i64, ptr %i.wj, align 8, !tbaa !46
  store ptr %i.wl, ptr %i.wg, align 8, !tbaa !44
  %i.xb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 24
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !45
  %i.xd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 24
  store i64 %i.xc, ptr %i.xd, align 8, !tbaa !45
  %i.xe = load i64, ptr %i.wm, align 8, !tbaa !46
  store i64 %i.xe, ptr %i.wj, align 8, !tbaa !46
  %.not.i.i116 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i116, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i115
  store ptr %i.wi, ptr %i.wh, align 8, !tbaa !44
  store i64 %i.xa, ptr %i.wm, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i115, %.thread.i.i130
  store ptr %i.wm, ptr %i.wh, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117: ; preds = %bb.dz, %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i127, %bb.du
  %i.xf = phi ptr [ %.pre.i.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i127 ], [ %i.wi, %bb.dy ], [ %i.wm, %bb.dz ], [ %i.wl, %bb.du ]
  %i.xg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 24
  store i64 0, ptr %i.xg, align 8, !tbaa !45
  store i8 0, ptr %i.xf, align 1, !tbaa !46
  %i.xh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 48 ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 48 ; 4 uses
  %i.xj = load ptr, ptr %i.xh, align 8, !tbaa !44 ; 6 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 64 ; 4 uses
  %i.xl = icmp eq ptr %i.xj, %i.xk
  %i.xm = load ptr, ptr %i.xi, align 8, !tbaa !44 ; 6 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 64 ; 6 uses
  %i.xo = icmp eq ptr %i.xm, %i.xn                ; 2 uses
  br i1 %i.xl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117
  br i1 %i.xo, label %bb.ea, label %.thread.i11.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i117
  br i1 %i.xo, label %bb.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i119

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i124
  %i.xp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 56 ; 2 uses
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !45 ; 3 uses
  %i.xr = icmp ult i64 %i.xq, 16
  tail call void @llvm.assume(i1 %i.xr)
  %.not21.i7.i121 = icmp eq ptr %.0910.i.i.i.i.i.i37, %.0811.i.i.i.i.i.i36
  br i1 %.not21.i7.i121, label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131, label %bb.eb, !prof !38

bb.eb:                                            ; preds = %bb.ea
  switch i64 %i.xq, label %bb.ed [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i122
    i64 1, label %bb.ec
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.xs = load i8, ptr %i.xm, align 1, !tbaa !46
  store i8 %i.xs, ptr %i.xj, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i122

bb.ed:                                            ; preds = %bb.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xj, ptr align 1 %i.xm, i64 %i.xq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i122: ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.xt = load i64, ptr %i.xp, align 8, !tbaa !45 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 56
  store i64 %i.xt, ptr %i.xu, align 8, !tbaa !45
  %i.xv = load ptr, ptr %i.xh, align 8, !tbaa !44
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xt
  store i8 0, ptr %i.xw, align 1, !tbaa !46
  %.pre.i9.i123 = load ptr, ptr %i.xi, align 8, !tbaa !44
  br label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131

.thread.i11.i125:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i124
  %i.xx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 56
  store ptr %i.xm, ptr %i.xh, align 8, !tbaa !44
  %i.xy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 56
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !45
  store i64 %i.xz, ptr %i.xx, align 8, !tbaa !45
  %i.ya = load i64, ptr %i.xn, align 8, !tbaa !46
  store i64 %i.ya, ptr %i.xk, align 8, !tbaa !46
  br label %bb.ef

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i119: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i118
  %i.yb = load i64, ptr %i.xk, align 8, !tbaa !46
  store ptr %i.xm, ptr %i.xh, align 8, !tbaa !44
  %i.yc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 56
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !45
  %i.ye = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 56
  store i64 %i.yd, ptr %i.ye, align 8, !tbaa !45
  %i.yf = load i64, ptr %i.xn, align 8, !tbaa !46
  store i64 %i.yf, ptr %i.xk, align 8, !tbaa !46
  %.not.i6.i120 = icmp eq ptr %i.xj, null
  br i1 %.not.i6.i120, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i119
  store ptr %i.xj, ptr %i.xi, align 8, !tbaa !44
  store i64 %i.yb, ptr %i.xn, align 8, !tbaa !46
  br label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i119, %.thread.i11.i125
  store ptr %i.xn, ptr %i.xi, align 8, !tbaa !44
  br label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131

_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131: ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i122, %bb.ee, %bb.ef
  %i.yg = phi ptr [ %.pre.i9.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i122 ], [ %i.xj, %bb.ee ], [ %i.xn, %bb.ef ], [ %i.xm, %bb.ea ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 56
  store i64 0, ptr %i.yh, align 8, !tbaa !45
  store i8 0, ptr %i.yg, align 1, !tbaa !46
  %i.yi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 80
  %i.yj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 80 ; 2 uses
  %i.yk = add nsw i64 %.012.i.i.i.i.i.i35, -1
  %i.yl = icmp samesign ugt i64 %.012.i.i.i.i.i.i35, 1
  br i1 %i.yl, label %.lr.ph.i.i.i.i.i.i34, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !22

_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %i.vx, %._crit_edge.i ], [ %i.yj, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit131 ]
  %i.ym = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.yn = ptrtoint ptr %i.vx to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = getelementptr inbounds i8, ptr %i.vx, i64 %i.yo ; 2 uses
  %i.yq = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.yr = ptrtoint ptr %.117.i to i64
  %i.ys = sub i64 %i.yq, %i.yr                    ; 2 uses
  %i.yt = icmp sgt i64 %i.ys, 0
  br i1 %i.yt, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %i.yu = udiv exact i64 %i.ys, 80
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.aaz, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113 ], [ %i.yu, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.aay, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113 ], [ %i.yp, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 14 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.aax, %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i23.i, i64 16, i1 false)
  %i.yv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16 ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 4 uses
  %i.yx = load ptr, ptr %i.yv, align 8, !tbaa !44 ; 6 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 32 ; 4 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  %i.za = load ptr, ptr %i.yw, align 8, !tbaa !44 ; 6 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 32 ; 6 uses
  %i.zc = icmp eq ptr %i.za, %i.zb                ; 2 uses
  br i1 %i.yz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.zc, label %bb.eg, label %.thread.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96: ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.zc, label %bb.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i97

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.zd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24 ; 2 uses
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !45 ; 3 uses
  %i.zf = icmp ult i64 %i.ze, 16
  tail call void @llvm.assume(i1 %i.zf)
  %.not21.i.i108 = icmp eq ptr %.0910.i.i.i.i.i23.i, %.0811.i.i.i.i.i22.i
  br i1 %.not21.i.i108, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99, label %bb.eh, !prof !38

bb.eh:                                            ; preds = %bb.eg
  switch i64 %i.ze, label %bb.ej [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i109
    i64 1, label %bb.ei
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.zg = load i8, ptr %i.za, align 1, !tbaa !46
  store i8 %i.zg, ptr %i.yx, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i109

bb.ej:                                            ; preds = %bb.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yx, ptr align 1 %i.za, i64 %i.ze, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i109: ; preds = %bb.ej, %bb.ei, %bb.eh
  %i.zh = load i64, ptr %i.zd, align 8, !tbaa !45 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  store i64 %i.zh, ptr %i.zi, align 8, !tbaa !45
  %i.zj = load ptr, ptr %i.yv, align 8, !tbaa !44
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zh
  store i8 0, ptr %i.zk, align 1, !tbaa !46
  %.pre.i.i110 = load ptr, ptr %i.yw, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99

.thread.i.i112:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.zl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  store ptr %i.za, ptr %i.yv, align 8, !tbaa !44
  %i.zm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !45
  store i64 %i.zn, ptr %i.zl, align 8, !tbaa !45
  %i.zo = load i64, ptr %i.zb, align 8, !tbaa !46
  store i64 %i.zo, ptr %i.yy, align 8, !tbaa !46
  br label %bb.el

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i97: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96
  %i.zp = load i64, ptr %i.yy, align 8, !tbaa !46
  store ptr %i.za, ptr %i.yv, align 8, !tbaa !44
  %i.zq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !45
  %i.zs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  store i64 %i.zr, ptr %i.zs, align 8, !tbaa !45
  %i.zt = load i64, ptr %i.zb, align 8, !tbaa !46
  store i64 %i.zt, ptr %i.yy, align 8, !tbaa !46
  %.not.i.i98 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i98, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i97
  store ptr %i.yx, ptr %i.yw, align 8, !tbaa !44
  store i64 %i.zp, ptr %i.zb, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i97, %.thread.i.i112
  store ptr %i.zb, ptr %i.yw, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99: ; preds = %bb.el, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i109, %bb.eg
  %i.zu = phi ptr [ %.pre.i.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i109 ], [ %i.yx, %bb.ek ], [ %i.zb, %bb.el ], [ %i.za, %bb.eg ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24
  store i64 0, ptr %i.zv, align 8, !tbaa !45
  store i8 0, ptr %i.zu, align 1, !tbaa !46
  %i.zw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 48 ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 48 ; 4 uses
  %i.zy = load ptr, ptr %i.zw, align 8, !tbaa !44 ; 6 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 64 ; 4 uses
  %i.aaa = icmp eq ptr %i.zy, %i.zz
  %i.aab = load ptr, ptr %i.zx, align 8, !tbaa !44 ; 6 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 64 ; 6 uses
  %i.aad = icmp eq ptr %i.aab, %i.aac             ; 2 uses
  br i1 %i.aaa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99
  br i1 %i.aad, label %bb.em, label %.thread.i11.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i99
  br i1 %i.aad, label %bb.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i101

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i106
  %i.aae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 56 ; 2 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !45 ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, 16
  tail call void @llvm.assume(i1 %i.aag)
  %.not21.i7.i103 = icmp eq ptr %.0910.i.i.i.i.i23.i, %.0811.i.i.i.i.i22.i
  br i1 %.not21.i7.i103, label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113, label %bb.en, !prof !38

bb.en:                                            ; preds = %bb.em
  switch i64 %i.aaf, label %bb.ep [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i104
    i64 1, label %bb.eo
  ]

bb.eo:                                            ; preds = %bb.en
  %i.aah = load i8, ptr %i.aab, align 1, !tbaa !46
  store i8 %i.aah, ptr %i.zy, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i104

bb.ep:                                            ; preds = %bb.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zy, ptr align 1 %i.aab, i64 %i.aaf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i104: ; preds = %bb.ep, %bb.eo, %bb.en
  %i.aai = load i64, ptr %i.aae, align 8, !tbaa !45 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 56
  store i64 %i.aai, ptr %i.aaj, align 8, !tbaa !45
  %i.aak = load ptr, ptr %i.zw, align 8, !tbaa !44
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aai
  store i8 0, ptr %i.aal, align 1, !tbaa !46
  %.pre.i9.i105 = load ptr, ptr %i.zx, align 8, !tbaa !44
  br label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113

.thread.i11.i107:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i106
  %i.aam = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 56
  store ptr %i.aab, ptr %i.zw, align 8, !tbaa !44
  %i.aan = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 56
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !45
  store i64 %i.aao, ptr %i.aam, align 8, !tbaa !45
  %i.aap = load i64, ptr %i.aac, align 8, !tbaa !46
  store i64 %i.aap, ptr %i.zz, align 8, !tbaa !46
  br label %bb.er

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i100
  %i.aaq = load i64, ptr %i.zz, align 8, !tbaa !46
  store ptr %i.aab, ptr %i.zw, align 8, !tbaa !44
  %i.aar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 56
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !45
  %i.aat = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 56
  store i64 %i.aas, ptr %i.aat, align 8, !tbaa !45
  %i.aau = load i64, ptr %i.aac, align 8, !tbaa !46
  store i64 %i.aau, ptr %i.zz, align 8, !tbaa !46
  %.not.i6.i102 = icmp eq ptr %i.zy, null
  br i1 %.not.i6.i102, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i101
  store ptr %i.zy, ptr %i.zx, align 8, !tbaa !44
  store i64 %i.aaq, ptr %i.aac, align 8, !tbaa !46
  br label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113

bb.er:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i101, %.thread.i11.i107
  store ptr %i.aac, ptr %i.zx, align 8, !tbaa !44
  br label %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113

_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113: ; preds = %bb.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i104, %bb.eq, %bb.er
  %i.aav = phi ptr [ %.pre.i9.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i104 ], [ %i.zy, %bb.eq ], [ %i.aac, %bb.er ], [ %i.aab, %bb.em ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 56
  store i64 0, ptr %i.aaw, align 8, !tbaa !45
  store i8 0, ptr %i.aav, align 1, !tbaa !46
  %i.aax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 80
  %i.aay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 80 ; 2 uses
  %i.aaz = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.aba = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.aba, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit.i, !llvm.loop !22

_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit.i: ; preds = %_ZN16TraceDeclVisitor10TraceEntryaSEOS0_.exit113
  %3 = ptrtoint ptr %i.aay to i64
  br label %_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit

_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit: ; preds = %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.ym, %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %3, %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit.i ]
  %i.abb = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.ym
  %i.abc = getelementptr inbounds i8, ptr %i.yp, i64 %i.abb ; 2 uses
  %i.abd = sub i64 %i.i, %i.yq
  %i.abe = sdiv exact i64 %i.abd, 80              ; 2 uses
  %.not.i24 = icmp slt i64 %i.abe, %i.nf
  br i1 %.not.i24, label %_ZSt17__merge_sort_loopIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_T1_T2_.exit, label %.lr.ph.i23, !llvm.loop !838

_ZSt17__merge_sort_loopIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_T2_.exit
  %.0.lcssa.i25 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_T2_.exit ], [ %i.nh, %_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_T2_.exit ], [ %i.abc, %_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit ]
  %.lcssa.i26 = phi i64 [ %i.j, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_T2_.exit ], [ %i.abe, %_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_.exit ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.lcssa.i26)
  %i.abf = getelementptr inbounds [80 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  %i.abg = tail call ptr @_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_(ptr noundef %.0.lcssa.i25, ptr noundef %i.abf, ptr noundef %i.abf, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i) ; 0 uses
  %i.abh = icmp slt i64 %i.nf, %i.d
  br i1 %i.abh, label %bb.b, label %._crit_edge, !llvm.loop !839

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_SH_T0_SI_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_SI_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i) #25 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80 ; 3 uses
  %i.i = add nsw i64 %.012.i.i.i.i.i, -1
  %i.j = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !22

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.026.i = phi ptr [ %i.p, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.016.025.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.025.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.025.i, ptr noundef nonnull align 8 dereferenceable(80) %.027.i)
  %.not20.i = icmp eq i32 %i.k, 0
  br i1 %.not20.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.026.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.025.i) #25 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 80
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.026.i, ptr noundef nonnull align 8 dereferenceable(80) %.027.i) #25 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.027.i, i64 80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.016.025.i, %bb.e ]
  %.1.i = phi ptr [ %.027.i, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 80
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_SI_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !840

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %.027.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_SI_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.u = udiv exact i64 %i.s, 80
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i.i) #25 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 80
  %i.y = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.z = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_SI_T1_T2_.exit, !llvm.loop !22

bb.g:                                             ; preds = %bb.a
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.ae = udiv exact i64 %i.ac, 80
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i25 ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i27, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i28) #25 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 80 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.ah, %.lr.ph.i.i.i.i.i25 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_SI_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i23, ptr %2)
  br label %_ZSt21__move_merge_adaptiveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_SI_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEEvT_SH_T0_SI_T1_T2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %bb.b, %.critedge.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.TraceDeclVisitor::TraceEntry", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.022 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 7 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.q ] ; 9 uses
  %i.i = call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.022, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.022, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.pn21, i64 96 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !47
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn21, i64 112 ; 5 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn21, i64 104
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.k, ptr %i.b, align 8, !tbaa !44
  %i.r = load i64, ptr %i.l, align 8, !tbaa !46
  store i64 %i.r, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.pn21, i64 104 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45
  store i64 %i.t, ptr %i.d, align 8, !tbaa !45
  store ptr %i.l, ptr %i.j, align 8, !tbaa !44
  store i64 0, ptr %i.s, align 8, !tbaa !45
  store i8 0, ptr %i.l, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21, i64 128 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 144 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pn21, i64 136
end_hunk_0
begin_hunk_1_@_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_:bb.a
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !9

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311
  tail call void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !46
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !867

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK11V3ErrorCodecvNS_2enEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !333
  ret i8 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET0_T_SI_SI_SI_SH_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond24 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond24, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.027 = phi ptr [ %i.h, %bb.d ], [ %4, %bb.a ]  ; 3 uses
  %.sroa.020.026 = phi ptr [ %.sroa.020.1, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %.sroa.016.025 = phi ptr [ %.sroa.016.1, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %i.c = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.025, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.020.026)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.027, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.016.025) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 80
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.f = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.027, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.020.026) #25 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.020.026, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.016.1 = phi ptr [ %i.e, %bb.b ], [ %.sroa.016.025, %bb.c ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.026, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.027, i64 80 ; 2 uses
  %i.i = icmp ne ptr %.sroa.020.1, %1
  %i.j = icmp ne ptr %.sroa.016.1, %3
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.016.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.016.1, %bb.d ] ; 2 uses
  %.sroa.020.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.020.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.sroa.020.0.lcssa to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.o = udiv exact i64 %i.m, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %.sroa.020.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i) #25 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80 ; 2 uses
  %i.s = add nsw i64 %.012.i.i.i.i.i, -1
  %i.t = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.r, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.u = ptrtoint ptr %3 to i64
  %i.v = ptrtoint ptr %.sroa.016.0.lcssa to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit15

.lr.ph.preheader.i.i.i.i.i10:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.y = udiv exact i64 %i.w, 80
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11, %.lr.ph.preheader.i.i.i.i.i10
  %.012.i.i.i.i.i12 = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i11 ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %.0811.i.i.i.i.i13 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i11 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %.0910.i.i.i.i.i14 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i11 ], [ %.sroa.016.0.lcssa, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i13, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i14) #25 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13, i64 80 ; 2 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i12, -1
  %i.ad = icmp samesign ugt i64 %.012.i.i.i.i.i12, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i11, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit15, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit15: ; preds = %.lr.ph.i.i.i.i.i11, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i9 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ab, %.lr.ph.i.i.i.i.i11 ]
  ret ptr %.08.lcssa.i.i.i.i.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_5visitEP8AstScopeEUlRKS1_SE_E_EEET0_T_SI_SI_SI_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.030 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 4 uses
  %.01629 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.028 = phi ptr [ %i.i, %bb.d ], [ %4, %bb.a ] ; 3 uses
  %i.d = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.01629, ptr noundef nonnull align 8 dereferenceable(80) %.030)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.028, ptr noundef nonnull align 8 dereferenceable(80) %.01629) #25 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01629, i64 80
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.g = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.028, ptr noundef nonnull align 8 dereferenceable(80) %.030) #25 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.030, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi ptr [ %i.f, %bb.b ], [ %.01629, %bb.c ] ; 3 uses
  %.1 = phi ptr [ %.030, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 80 ; 2 uses
  %i.j = icmp ne ptr %.1, %1
  %i.k = icmp ne ptr %.117, %3
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.i, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %.0.lcssa to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.q = udiv exact i64 %i.o, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i) #25 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80 ; 2 uses
  %i.u = add nsw i64 %.012.i.i.i.i.i, -1
  %i.v = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !22

_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.t, %.lr.ph.i.i.i.i.i ]
  %i.w = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.x = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.y ; 2 uses
  %i.aa = ptrtoint ptr %3 to i64
  %i.ab = ptrtoint ptr %.016.lcssa to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i19, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24

.lr.ph.preheader.i.i.i.i.i19:                     ; preds = %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %i.ae = udiv exact i64 %i.ac, 80
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20, %.lr.ph.preheader.i.i.i.i.i19
  %.012.i.i.i.i.i21 = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i20 ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i20 ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i20 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(80) %.0910.i.i.i.i.i23) #25 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 80 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit, !llvm.loop !22

_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit: ; preds = %.lr.ph.i.i.i.i.i20
  %5 = ptrtoint ptr %i.ah to i64
  br label %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24

_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24: ; preds = %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit, %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i18 = phi i64 [ %i.w, %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %5, %_ZSt4moveIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24.loopexit ]
  %i.ak = sub i64 %.08.lcssa.i.i.i.i.i18, %i.w
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 %i.ak
  ret ptr %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_T0_SI_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = udiv exact i64 %i.d, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %4, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %3, %.lr.ph.preheader.i.i.i.i.i ]
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -80 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -80 ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.g) #25 ; 0 uses
  %i.j = add nsw i64 %.010.i.i.i.i.i, -1
  %i.k = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !24

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %2, %3
  br i1 %i.l, label %_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %3, i64 -80
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.d
  %.sroa.028.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.028.0.ph, %bb.f ]
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.o, %bb.f ]
  %.0.ph = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.f ]
  %.sroa.028.0.ph = getelementptr inbounds i8, ptr %.sroa.028.0.ph.pn, i64 -80 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.o, %bb.i ], [ %.sroa.0.0.ph, %.outer ]
  %.0 = phi ptr [ %i.ae, %bb.i ], [ %.0.ph, %.outer ] ; 6 uses
  %i.n = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.0.ph)
  %.not = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -80 ; 5 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.0.ph) #25 ; 0 uses
  %i.q = icmp eq ptr %0, %.sroa.028.0.ph
  br i1 %i.q, label %bb.g, label %.outer, !llvm.loop !868

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 80 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i.i.i.i.i19, label %_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i19:                     ; preds = %bb.g
  %i.w = udiv exact i64 %i.u, 80
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20, %.lr.ph.preheader.i.i.i.i.i19
  %.010.i.i.i.i.i21 = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i20 ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.069.i.i.i.i.i22 = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i20 ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i19 ]
  %.078.i.i.i.i.i23 = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i20 ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i19 ]
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23, i64 -80 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22, i64 -80 ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.x) #25 ; 0 uses
  %i.aa = add nsw i64 %.010.i.i.i.i.i21, -1
  %i.ab = icmp samesign ugt i64 %.010.i.i.i.i.i21, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i20, label %_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !24

bb.h:                                             ; preds = %bb.e
  %i.ac = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN16TraceDeclVisitor10TraceEntryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.0) #25 ; 0 uses
  %i.ad = icmp eq ptr %2, %.0
  br i1 %i.ad, label %_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %.0, i64 -80
  br label %bb.e, !llvm.loop !868

_ZSt13move_backwardIPN16TraceDeclVisitor10TraceEntryEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %bb.h, %.lr.ph.i.i.i.i.i20, %.lr.ph.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEEvT_SH_SH_T0_SI_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8088 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 4 uses
  %.tr7987 = phi i64 [ %3, %.lr.ph ], [ %i.am, %tailrecurse ] ; 4 uses
  %.tr7785 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8088, %.tr7987
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.tr7785, ptr noundef nonnull align 8 dereferenceable(80) %.tr84)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt4swapIN16TraceDeclVisitor10TraceEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(80) %.tr84, ptr noundef nonnull align 8 dereferenceable(80) %.tr7785) #25
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.tr7987, %.tr8088
  %i.h = ptrtoint ptr %.tr7785 to i64             ; 4 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %.tr7987, 2                     ; 2 uses
  %i.j = getelementptr inbounds [80 x i8], ptr %.tr84, i64 %i.i ; 2 uses
  %i.k = sub i64 %i.c, %i.h                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.m = udiv exact i64 %i.k, 80
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.n = lshr i64 %.016.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.sroa.011.015.i, i64 %i.n ; 2 uses
  %i.p = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.j)
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.r = xor i64 %i.n, -1
  %i.s = add nsw i64 %.016.i, %i.r
  %.sroa.011.1.i = select i1 %.not.i, ptr %.sroa.011.015.i, ptr %i.q ; 3 uses
  %.1.i = select i1 %.not.i, i64 %i.n, i64 %i.s   ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit, !llvm.loop !27

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.h
  %i.v = sdiv exact i64 %i.u, 80
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.w = sdiv i64 %.tr8088, 2                     ; 2 uses
  %i.x = getelementptr inbounds [80 x i8], ptr %.tr7785, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr84 to i64               ; 3 uses
  %i.z = sub i64 %i.h, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i55, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %i.ab = udiv exact i64 %i.z, 80
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i55
  %.016.i57 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ], [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i55 ] ; 2 uses
  %.sroa.011.015.i58 = phi ptr [ %.sroa.011.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i55 ] ; 2 uses
  %i.ac = lshr i64 %.016.i57, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %.sroa.011.015.i58, i64 %i.ac ; 2 uses
  %i.ae = tail call noundef i32 @_ZNK16TraceDeclVisitor10TraceEntry15operatorCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.ad)
  %.not.i61 = icmp eq i32 %i.ae, 0                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.016.i57, %i.ag
  %.sroa.011.1.i62 = select i1 %.not.i61, ptr %i.af, ptr %.sroa.011.015.i58 ; 3 uses
  %.1.i63 = select i1 %.not.i61, i64 %i.ah, i64 %i.ac ; 2 uses
  %i.ai = icmp sgt i64 %.1.i63, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit, !llvm.loop !28

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56
  %.pre91 = ptrtoint ptr %.sroa.011.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_5visitEP8AstScopeEUlRKS3_SE_E_EEET_SH_SH_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN16TraceDeclVisitor10TraceEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
end_hunk_1
