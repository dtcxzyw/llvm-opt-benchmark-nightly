inline.NumInlined: 9358
inline.NumDeleted: 4125
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6duckdb6Binder4BindERNS_7JoinRefE:bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.vv, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.gw

bb.gw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.vv) #26
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.gw
  %i.wg = load ptr, ptr %42, align 16, !tbaa !287 ; 3 uses
  %i.wh = load ptr, ptr %i.vy, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wg, %i.wh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.wl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.wg, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 3 uses
  %i.wi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !149 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.wi) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i462 = icmp eq ptr %i.wl, %i.wh
  br i1 %.not.i.i.i462, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !319

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %42, align 16, !tbaa !287
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.wm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.wg, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.wm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.gx

bb.gx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.wm) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.wn = load ptr, ptr %26, align 16, !tbaa !102
  %i.wo = load ptr, ptr %i.tn, align 8, !tbaa !102
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %bb.jn, label %.lr.ph1047

.lr.ph1047:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  %i.wq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  br label %bb.gy

.preheader:                                       ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit490
  %.not1066 = icmp eq ptr %i.aaz, %i.aba
  br i1 %.not1066, label %._crit_edge1050, label %.lr.ph1049

.lr.ph1049:                                       ; preds = %.preheader
  %i.ww = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.wy = getelementptr inbounds nuw i8, ptr %48, i64 64
  %i.wz = getelementptr inbounds nuw i8, ptr %48, i64 80
  %i.xa = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.xb = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.xc = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.xd = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %50, i64 64
  %i.xg = getelementptr inbounds nuw i8, ptr %50, i64 80
  %i.xh = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.xi = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.xj = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.xo = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.xp = getelementptr inbounds nuw i8, ptr %46, i64 80
  %i.xq = getelementptr inbounds nuw i8, ptr %46, i64 48
  %i.xr = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.xs = getelementptr inbounds nuw i8, ptr %45, i64 80
  %i.xt = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.xu = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.xv = getelementptr inbounds nuw i8, ptr %49, i64 20
  %i.xw = getelementptr inbounds nuw i8, ptr %51, i64 21
  br label %bb.hq

bb.gy:                                            ; preds = %.lr.ph1047, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit490
  %.02371045 = phi i64 [ 0, %.lr.ph1047 ], [ %i.aay, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit490 ] ; 2 uses
  %i.xx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %.02371045)
          to label %bb.gz unwind label %bb.hd     ; 4 uses

bb.gz:                                            ; preds = %bb.gy
  %i.xy = invoke ptr @_ZN6duckdb11BindContext15GetUsingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.wq, ptr noundef nonnull align 8 dereferenceable(32) %i.xx)
          to label %bb.ha unwind label %bb.he     ; 3 uses

bb.ha:                                            ; preds = %bb.gz
  %i.xz = invoke ptr @_ZN6duckdb11BindContext15GetUsingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.wr, ptr noundef nonnull align 8 dereferenceable(32) %i.xx)
          to label %bb.hb unwind label %.loopexit887 ; 3 uses

bb.hb:                                            ; preds = %bb.ha
  %.not879 = icmp eq ptr %i.xy, null
  br i1 %.not879, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.ya = invoke ptr @_ZN6duckdb11BindContext18GetMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(112) %i.wq, ptr noundef nonnull align 8 dereferenceable(32) %i.xx, i64 -1)
          to label %bb.hf unwind label %.loopexit887 ; 0 uses

bb.hd:                                            ; preds = %bb.gy
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.he:                                            ; preds = %bb.gz
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.loopexit887:                                     ; preds = %bb.ha, %bb.hc, %bb.hg, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i476
  %lpad.loopexit888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp889 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.hf:                                            ; preds = %bb.hc, %bb.hb
  %.not880 = icmp eq ptr %i.xz, null
  br i1 %.not880, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.yd = invoke ptr @_ZN6duckdb11BindContext18GetMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(112) %i.wr, ptr noundef nonnull align 8 dereferenceable(32) %i.xx, i64 -1)
          to label %bb.hh unwind label %.loopexit887 ; 0 uses

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.ye = load ptr, ptr %i.ws, align 8, !tbaa !749 ; 6 uses
  %i.yf = load ptr, ptr %i.wt, align 8, !tbaa !752
  %.not.i463 = icmp eq ptr %i.ye, %i.yf
  br i1 %.not.i463, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.yg = ptrtoint ptr %i.xy to i64
  store i64 %i.yg, ptr %i.ye, align 8, !tbaa !753
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store ptr %i.yh, ptr %i.ws, align 8, !tbaa !749
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit

bb.hj:                                            ; preds = %bb.hh
  %i.yi = load ptr, ptr %43, align 8, !tbaa !754  ; 7 uses
  %i.yj = ptrtoint ptr %i.ye to i64               ; 2 uses
  %i.yk = ptrtoint ptr %i.yi to i64               ; 3 uses
  %i.yl = sub i64 %i.yj, %i.yk                    ; 3 uses
  %i.ym = icmp eq i64 %i.yl, 9223372036854775800
  br i1 %i.ym, label %.invoke, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.hm, %bb.hj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.hj
  %i.yn = ashr exact i64 %i.yl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i464 = call i64 @llvm.umax.i64(i64 %i.yn, i64 1)
  %i.yo = add nsw i64 %.sroa.speculated.i.i.i464, %i.yn ; 2 uses
  %i.yp = icmp ult i64 %i.yo, %i.yn
  %i.yq = call i64 @llvm.umin.i64(i64 %i.yo, i64 1152921504606846975)
  %i.yr = select i1 %i.yp, i64 1152921504606846975, i64 %i.yq ; 3 uses
  %.not.i.i.i465 = icmp ne i64 %i.yr, 0
  call void @llvm.assume(i1 %.not.i.i.i465)
  %i.ys = shl nuw nsw i64 %i.yr, 3
  %i.yt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ys) #25
          to label %.noexc474 unwind label %.loopexit887 ; 8 uses

.noexc474:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yl
  %i.yv = ptrtoint ptr %i.xy to i64
  store i64 %i.yv, ptr %i.yu, align 8, !tbaa !753
  %.not10.i.i.i.i.i.i466 = icmp eq ptr %i.yi, %i.ye
  br i1 %.not10.i.i.i.i.i.i466, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i467.preheader

.lr.ph.i.i.i.i.i.i467.preheader:                  ; preds = %.noexc474
  %i.yw = ptrtoaddr ptr %i.yt to i64
  %i.yx = sub i64 %i.yj, %i.yk
  %i.yy = add i64 %i.yx, -8                       ; 2 uses
  %i.yz = lshr i64 %i.yy, 3
  %i.za = add nuw nsw i64 %i.yz, 1                ; 2 uses
  %min.iters.check1492 = icmp ult i64 %i.yy, 24
  %i.zb = sub i64 %i.yk, %i.yw
  %diff.check1490 = icmp ugt i64 %i.zb, -32
  %or.cond = or i1 %min.iters.check1492, %diff.check1490
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i467.preheader1561, label %vector.ph1493

vector.ph1493:                                    ; preds = %.lr.ph.i.i.i.i.i.i467.preheader
  %n.vec1495 = and i64 %i.za, 4611686018427387900 ; 3 uses
  %i.zc = shl i64 %n.vec1495, 3                   ; 2 uses
  %i.zd = getelementptr i8, ptr %i.yt, i64 %i.zc  ; 2 uses
  %i.ze = getelementptr i8, ptr %i.yi, i64 %i.zc
  br label %vector.body1496

vector.body1496:                                  ; preds = %vector.body1496, %vector.ph1493
  %index1497 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1502, %vector.body1496 ] ; 2 uses
  %i.zf = shl i64 %index1497, 3                   ; 2 uses
  %next.gep1498 = getelementptr i8, ptr %i.yt, i64 %i.zf ; 2 uses
  %next.gep1499 = getelementptr i8, ptr %i.yi, i64 %i.zf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.zg = getelementptr i8, ptr %next.gep1499, i64 16
  %wide.load1500 = load <2 x i64>, ptr %next.gep1499, align 8, !tbaa !753, !alias.scope !758, !noalias !755
  %wide.load1501 = load <2 x i64>, ptr %i.zg, align 8, !tbaa !753, !alias.scope !758, !noalias !755
  %i.zh = getelementptr i8, ptr %next.gep1498, i64 16
  store <2 x i64> %wide.load1500, ptr %next.gep1498, align 8, !tbaa !753, !alias.scope !755, !noalias !758
  store <2 x i64> %wide.load1501, ptr %i.zh, align 8, !tbaa !753, !alias.scope !755, !noalias !758
  %index.next1502 = add nuw i64 %index1497, 4     ; 2 uses
  %i.zi = icmp eq i64 %index.next1502, %n.vec1495
  br i1 %i.zi, label %middle.block1503, label %vector.body1496, !llvm.loop !760

middle.block1503:                                 ; preds = %vector.body1496
  %cmp.n1504 = icmp eq i64 %i.za, %n.vec1495
  br i1 %cmp.n1504, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i467.preheader1561

.lr.ph.i.i.i.i.i.i467.preheader1561:              ; preds = %.lr.ph.i.i.i.i.i.i467.preheader, %middle.block1503
  %.012.i.i.i.i.i.i468.ph = phi ptr [ %i.yt, %.lr.ph.i.i.i.i.i.i467.preheader ], [ %i.zd, %middle.block1503 ]
  %.0911.i.i.i.i.i.i469.ph = phi ptr [ %i.yi, %.lr.ph.i.i.i.i.i.i467.preheader ], [ %i.ze, %middle.block1503 ]
  br label %.lr.ph.i.i.i.i.i.i467

.lr.ph.i.i.i.i.i.i467:                            ; preds = %.lr.ph.i.i.i.i.i.i467.preheader1561, %.lr.ph.i.i.i.i.i.i467
  %.012.i.i.i.i.i.i468 = phi ptr [ %i.zl, %.lr.ph.i.i.i.i.i.i467 ], [ %.012.i.i.i.i.i.i468.ph, %.lr.ph.i.i.i.i.i.i467.preheader1561 ] ; 2 uses
  %.0911.i.i.i.i.i.i469 = phi ptr [ %i.zk, %.lr.ph.i.i.i.i.i.i467 ], [ %.0911.i.i.i.i.i.i469.ph, %.lr.ph.i.i.i.i.i.i467.preheader1561 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.zj = load i64, ptr %.0911.i.i.i.i.i.i469, align 8, !tbaa !753, !alias.scope !758, !noalias !755
  store i64 %i.zj, ptr %.012.i.i.i.i.i.i468, align 8, !tbaa !753, !alias.scope !755, !noalias !758
  %i.zk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i469, i64 8 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i468, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i470 = icmp eq ptr %i.zk, %i.ye
  br i1 %.not.i.i.i.i.i.i470, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i467, !llvm.loop !761

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i467, %middle.block1503, %.noexc474
  %.0.lcssa.i.i.i.i.i.i471 = phi ptr [ %i.yt, %.noexc474 ], [ %i.zd, %middle.block1503 ], [ %i.zl, %.lr.ph.i.i.i.i.i.i467 ]
  %i.zm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i471, i64 8
  %.not.i23.i.i472 = icmp eq ptr %i.yi, null
  br i1 %.not.i23.i.i472, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.yi) #26
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.hk, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.yt, ptr %43, align 8, !tbaa !754
  store ptr %i.zm, ptr %i.ws, align 8, !tbaa !749
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.yr
  store ptr %i.zn, ptr %i.wt, align 8, !tbaa !752
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.hi
  %i.zo = load ptr, ptr %i.wu, align 8, !tbaa !749 ; 6 uses
  %i.zp = load ptr, ptr %i.wv, align 8, !tbaa !752
  %.not.i475 = icmp eq ptr %i.zo, %i.zp
  br i1 %.not.i475, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit
  %i.zq = ptrtoint ptr %i.xz to i64
  store i64 %i.zq, ptr %i.zo, align 8, !tbaa !753
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  store ptr %i.zr, ptr %i.wu, align 8, !tbaa !749
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit490

bb.hm:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit
  %i.zs = load ptr, ptr %44, align 8, !tbaa !754  ; 7 uses
  %i.zt = ptrtoint ptr %i.zo to i64               ; 2 uses
  %i.zu = ptrtoint ptr %i.zs to i64               ; 3 uses
  %i.zv = sub i64 %i.zt, %i.zu                    ; 3 uses
  %i.zw = icmp eq i64 %i.zv, 9223372036854775800
  br i1 %i.zw, label %.invoke, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i476

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i476: ; preds = %bb.hm
  %i.zx = ashr exact i64 %i.zv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i477 = call i64 @llvm.umax.i64(i64 %i.zx, i64 1)
  %i.zy = add nsw i64 %.sroa.speculated.i.i.i477, %i.zx ; 2 uses
  %i.zz = icmp ult i64 %i.zy, %i.zx
  %i.aaa = call i64 @llvm.umin.i64(i64 %i.zy, i64 1152921504606846975)
  %i.aab = select i1 %i.zz, i64 1152921504606846975, i64 %i.aaa ; 3 uses
  %.not.i.i.i478 = icmp ne i64 %i.aab, 0
  call void @llvm.assume(i1 %.not.i.i.i478)
  %i.aac = shl nuw nsw i64 %i.aab, 3
  %i.aad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aac) #25
          to label %.noexc489 unwind label %.loopexit887 ; 8 uses

.noexc489:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i476
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.zv
  %i.aaf = ptrtoint ptr %i.xz to i64
  store i64 %i.aaf, ptr %i.aae, align 8, !tbaa !753
  %.not10.i.i.i.i.i.i479 = icmp eq ptr %i.zs, %i.zo
  br i1 %.not10.i.i.i.i.i.i479, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i484, label %.lr.ph.i.i.i.i.i.i480.preheader

.lr.ph.i.i.i.i.i.i480.preheader:                  ; preds = %.noexc489
  %i.aag = ptrtoaddr ptr %i.aad to i64
  %i.aah = sub i64 %i.zt, %i.zu
  %i.aai = add i64 %i.aah, -8                     ; 2 uses
  %i.aaj = lshr i64 %i.aai, 3
  %i.aak = add nuw nsw i64 %i.aaj, 1              ; 2 uses
  %min.iters.check1474 = icmp ult i64 %i.aai, 24
  %i.aal = sub i64 %i.zu, %i.aag
  %diff.check = icmp ugt i64 %i.aal, -32
  %or.cond1531 = or i1 %min.iters.check1474, %diff.check
  br i1 %or.cond1531, label %.lr.ph.i.i.i.i.i.i480.preheader1560, label %vector.ph1475

vector.ph1475:                                    ; preds = %.lr.ph.i.i.i.i.i.i480.preheader
  %n.vec1477 = and i64 %i.aak, 4611686018427387900 ; 3 uses
  %i.aam = shl i64 %n.vec1477, 3                  ; 2 uses
  %i.aan = getelementptr i8, ptr %i.aad, i64 %i.aam ; 2 uses
  %i.aao = getelementptr i8, ptr %i.zs, i64 %i.aam
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1475
  %index1479 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1484, %vector.body1478 ] ; 2 uses
  %i.aap = shl i64 %index1479, 3                  ; 2 uses
  %next.gep1480 = getelementptr i8, ptr %i.aad, i64 %i.aap ; 2 uses
  %next.gep1481 = getelementptr i8, ptr %i.zs, i64 %i.aap ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.aaq = getelementptr i8, ptr %next.gep1481, i64 16
  %wide.load1482 = load <2 x i64>, ptr %next.gep1481, align 8, !tbaa !753, !alias.scope !765, !noalias !762
  %wide.load1483 = load <2 x i64>, ptr %i.aaq, align 8, !tbaa !753, !alias.scope !765, !noalias !762
  %i.aar = getelementptr i8, ptr %next.gep1480, i64 16
  store <2 x i64> %wide.load1482, ptr %next.gep1480, align 8, !tbaa !753, !alias.scope !762, !noalias !765
  store <2 x i64> %wide.load1483, ptr %i.aar, align 8, !tbaa !753, !alias.scope !762, !noalias !765
  %index.next1484 = add nuw i64 %index1479, 4     ; 2 uses
  %i.aas = icmp eq i64 %index.next1484, %n.vec1477
  br i1 %i.aas, label %middle.block1485, label %vector.body1478, !llvm.loop !767

middle.block1485:                                 ; preds = %vector.body1478
  %cmp.n1486 = icmp eq i64 %i.aak, %n.vec1477
  br i1 %cmp.n1486, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i484, label %.lr.ph.i.i.i.i.i.i480.preheader1560

.lr.ph.i.i.i.i.i.i480.preheader1560:              ; preds = %.lr.ph.i.i.i.i.i.i480.preheader, %middle.block1485
  %.012.i.i.i.i.i.i481.ph = phi ptr [ %i.aad, %.lr.ph.i.i.i.i.i.i480.preheader ], [ %i.aan, %middle.block1485 ]
  %.0911.i.i.i.i.i.i482.ph = phi ptr [ %i.zs, %.lr.ph.i.i.i.i.i.i480.preheader ], [ %i.aao, %middle.block1485 ]
  br label %.lr.ph.i.i.i.i.i.i480

.lr.ph.i.i.i.i.i.i480:                            ; preds = %.lr.ph.i.i.i.i.i.i480.preheader1560, %.lr.ph.i.i.i.i.i.i480
  %.012.i.i.i.i.i.i481 = phi ptr [ %i.aav, %.lr.ph.i.i.i.i.i.i480 ], [ %.012.i.i.i.i.i.i481.ph, %.lr.ph.i.i.i.i.i.i480.preheader1560 ] ; 2 uses
  %.0911.i.i.i.i.i.i482 = phi ptr [ %i.aau, %.lr.ph.i.i.i.i.i.i480 ], [ %.0911.i.i.i.i.i.i482.ph, %.lr.ph.i.i.i.i.i.i480.preheader1560 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.aat = load i64, ptr %.0911.i.i.i.i.i.i482, align 8, !tbaa !753, !alias.scope !765, !noalias !762
  store i64 %i.aat, ptr %.012.i.i.i.i.i.i481, align 8, !tbaa !753, !alias.scope !762, !noalias !765
  %i.aau = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i482, i64 8 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i481, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i483 = icmp eq ptr %i.aau, %i.zo
  br i1 %.not.i.i.i.i.i.i483, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i484, label %.lr.ph.i.i.i.i.i.i480, !llvm.loop !768

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i484: ; preds = %.lr.ph.i.i.i.i.i.i480, %middle.block1485, %.noexc489
  %.0.lcssa.i.i.i.i.i.i485 = phi ptr [ %i.aad, %.noexc489 ], [ %i.aan, %middle.block1485 ], [ %i.aav, %.lr.ph.i.i.i.i.i.i480 ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i485, i64 8
  %.not.i23.i.i486 = icmp eq ptr %i.zs, null
  br i1 %.not.i23.i.i486, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i487, label %bb.hn

bb.hn:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i484
  call void @_ZdlPv(ptr noundef nonnull %i.zs) #26
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i487

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i487: ; preds = %bb.hn, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i484
  store ptr %i.aad, ptr %44, align 8, !tbaa !754
  store ptr %i.aaw, ptr %i.wu, align 8, !tbaa !749
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.aab
  store ptr %i.aax, ptr %i.wv, align 8, !tbaa !752
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit490

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE9push_backERKS3_.exit490: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i487, %bb.hl
  %i.aay = add nuw i64 %.02371045, 1              ; 2 uses
  %i.aaz = load ptr, ptr %i.tn, align 8, !tbaa !288 ; 2 uses
  %i.aba = load ptr, ptr %26, align 16, !tbaa !287 ; 2 uses
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = sub i64 %i.abb, %i.abc
  %i.abe = ashr exact i64 %i.abd, 5
  %i.abf = icmp ult i64 %i.aay, %i.abe
  br i1 %i.abf, label %bb.gy, label %.preheader, !llvm.loop !769

._crit_edge1050:                                  ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit565, %.preheader
  %i.abg = load ptr, ptr %44, align 8, !tbaa !754 ; 2 uses
  %.not.i.i.i491 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i491, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge1050
  call void @_ZdlPv(ptr noundef nonnull %i.abg) #26
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit: ; preds = %._crit_edge1050, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  %i.abh = load ptr, ptr %43, align 8, !tbaa !754 ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i492, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit493, label %bb.hp

bb.hp:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.abh) #26
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit493

_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit493: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_14UsingColumnSetELb1EEESaIS3_EED2Ev.exit, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.jn

bb.hq:                                            ; preds = %.lr.ph1049, %_ZN6duckdb12BindingAliasD2Ev.exit565
  %.02381048 = phi i64 [ 0, %.lr.ph1049 ], [ %i.agg, %_ZN6duckdb12BindingAliasD2Ev.exit565 ] ; 5 uses
  %i.abi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %.02381048)
          to label %bb.hr unwind label %bb.ix     ; 6 uses

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  invoke void @_ZN6duckdb12BindingAliasC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %45)
          to label %bb.hs unwind label %bb.iy

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  invoke void @_ZN6duckdb12BindingAliasC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %46)
          to label %bb.ht unwind label %bb.iz

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.abj = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc494 unwind label %bb.ja ; 5 uses

.noexc494:                                        ; preds = %bb.ht
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.abj, i8 0, i64 120, i1 false), !noalias !770
  invoke void @_ZN6duckdb12BindingAliasC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.abj)
          to label %bb.hv unwind label %bb.hu, !noalias !770

bb.hu:                                            ; preds = %.noexc494
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.abj) #26, !noalias !770
  br label %.body495

bb.hv:                                            ; preds = %.noexc494
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abl, i8 0, i64 24, i1 false), !noalias !770
  store ptr %i.abj, ptr %47, align 8, !tbaa !753, !alias.scope !770
  %i.abm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_12optional_ptrINS_14UsingColumnSetELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef %.02381048)
          to label %bb.hw unwind label %bb.jb     ; 3 uses

bb.hw:                                            ; preds = %bb.hv
  %i.abn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_12optional_ptrINS_14UsingColumnSetELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %44, i64 noundef %.02381048)
          to label %._crit_edge.i.i497 unwind label %bb.jc ; 3 uses

._crit_edge.i.i497:                               ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  %.sroa.038.0.copyload = load ptr, ptr %i.abm, align 8, !tbaa !753
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #24
  store ptr %i.ww, ptr %49, align 8, !tbaa !144
  store i32 1952867692, ptr %i.ww, align 8
  store i64 4, ptr %i.wx, align 8, !tbaa !117
  store i8 0, ptr %i.xv, align 4, !tbaa !148
  invoke void @_ZN6duckdb6Binder20RetrieveUsingBindingERS0_NS_12optional_ptrINS_14UsingColumnSetELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BindingAlias") align 8 %48, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(472) %i.cp, ptr %.sroa.038.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.abi, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %bb.hx unwind label %bb.jd

bb.hx:                                            ; preds = %._crit_edge.i.i497
  %i.abo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb12BindingAliasaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %45, ptr noundef nonnull align 8 dereferenceable(96) %48) #24 ; 0 uses
  %i.abp = load ptr, ptr %i.wy, align 8, !tbaa !149 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.wz
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501: ; preds = %bb.hx
  call void @_ZdlPv(ptr noundef %i.abp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501
  %i.abr = load ptr, ptr %i.xa, align 8, !tbaa !149 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.xb
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i503: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502
  call void @_ZdlPv(ptr noundef %i.abr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i503
  %i.abt = load ptr, ptr %48, align 8, !tbaa !149 ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.xc
  br i1 %i.abu, label %_ZN6duckdb12BindingAliasD2Ev.exit509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504
  call void @_ZdlPv(ptr noundef %i.abt) #26
  br label %_ZN6duckdb12BindingAliasD2Ev.exit509

_ZN6duckdb12BindingAliasD2Ev.exit509:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i505
  %i.abv = load ptr, ptr %49, align 8, !tbaa !149 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.ww
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510: ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit509
  call void @_ZdlPv(ptr noundef %i.abv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512: ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  %.sroa.037.0.copyload = load ptr, ptr %i.abn, align 8, !tbaa !753
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #24
  store ptr %i.xd, ptr %51, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.xd, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false)
  store i64 5, ptr %i.xe, align 8, !tbaa !117
  store i8 0, ptr %i.xw, align 1, !tbaa !148
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_12BoundJoinRefESt14default_deleteIS1_ELb1EEdeEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12BoundJoinRefESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb12BindingAliasESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !805    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !808  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb12BindingAliasEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN6duckdb12BindingAliasEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.l = load ptr, ptr %.05.i.i, align 8, !tbaa !149 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIN6duckdb12BindingAliasEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.l) #26
  br label %_ZSt8_DestroyIN6duckdb12BindingAliasEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb12BindingAliasEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !809

_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb12BindingAliasEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !805
  br label %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb12BindingAliasESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #26
  br label %_ZNSt12_Vector_baseIN6duckdb12BindingAliasESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb12BindingAliasESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12BindingAliasES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb12BoundJoinRefESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !672    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb12BoundJoinRefEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb12BoundJoinRefEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb12BoundJoinRefD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.a) #24
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb12BoundJoinRefEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb31ExtractPivotAggregateExpressionERNS_13ClientContextERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEERNS_6vectorISt17reference_wrapperINS_18FunctionExpressionEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN6duckdb29TemplatedHandlePivotAggregateINS_29ExtractPivotAggregateOperatorEEEvRNS_13ClientContextERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEERNT_4TYPEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb29TemplatedHandlePivotAggregateINS_29ExtractPivotAggregateOperatorEEEvRNS_13ClientContextERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEERNT_4TYPEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::EntryLookupInfo", align 8 ; 5 uses
  %4 = alloca %"class.duckdb::QueryErrorContext", align 8 ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %7 = alloca %"class.std::function.1709", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !889
  %i.d = icmp eq i8 %i.c, -116
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = tail call noundef nonnull align 8 dereferenceable(209) ptr @_ZN6duckdb14BaseExpression4CastINS_18FunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.e) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN6duckdb17QueryErrorContextC1ERKNS_16ParsedExpressionE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.h)
  %i.i = load i64, ptr %4, align 8
  call void @_ZN6duckdb15EntryLookupInfoC1ENS_11CatalogTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef zeroext 27, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.l = call noundef nonnull align 8 dereferenceable(240) ptr @_ZN6duckdb7Catalog8GetEntryERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS_15EntryLookupInfoE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !324
  %i.o = icmp eq i8 %i.n, 27
  br i1 %i.o, label %bb.c, label %_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !893  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !896
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.f to i64
  store i64 %i.t, ptr %i.q, align 8
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !893
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.p, align 8, !tbaa !893
  br label %_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %2, align 8, !tbaa !897    ; 7 uses
  %i.x = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #27
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #25 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = ptrtoint ptr %i.f to i64
  store i64 %i.aj, ptr %i.ai, align 8
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %i.al = sub i64 %i.x, %i.y
  %i.am = add i64 %i.al, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 72
  %i.ap = sub i64 %i.y, %i.ak
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.w, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.at ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.w, i64 %i.at ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.au = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep43, align 8, !alias.scope !901, !noalias !898
  %wide.load44 = load <2 x i64>, ptr %i.au, align 8, !alias.scope !901, !noalias !898
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !898, !noalias !901
  store <2 x i64> %wide.load44, ptr %i.av, align 8, !alias.scope !898, !noalias !901
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !903

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.i.i.preheader46:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader46 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader46 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !alias.scope !901, !noalias !898
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i.i, align 8, !alias.scope !898, !noalias !901
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !904

_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #26
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !897
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !893
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bb, ptr %i.r, align 8, !tbaa !896
  br label %_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit.thread

_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit.thread: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18FunctionExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.t

_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit, %bb.a
  %i.bc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !889
  %i.bf = icmp eq i8 %i.be, -53
  br i1 %i.bf, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  %i.bh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.140, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %.thread34

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb15BinderExceptionC2IJEEERKNS_16ParsedExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.y unwind label %bb.m

.thread:                                          ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.thread34:                                        ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !149   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.bl) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0, label %bb.o, label %bb.x

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0, label %bb.o, label %bb.x

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.thread34, %.thread, %bb.n
  %.pn.pn33 = phi { ptr, i32 } [ %i.bi, %.thread ], [ %i.bk, %bb.n ], [ %i.bj, %.thread34 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bg) #24
  br label %bb.x

bb.p:                                             ; preds = %bb.h
  %i.bo = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %7, align 8, !tbaa !905
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !906
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEZNS0_29TemplatedHandlePivotAggregateINS0_29ExtractPivotAggregateOperatorEEEvRNS0_13ClientContextES6_RNT_4TYPEEEUlS6_E_E9_M_invokeERKSt9_Any_dataS6_, ptr %i.bq, align 8, !tbaa !908
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEZNS0_29TemplatedHandlePivotAggregateINS0_29ExtractPivotAggregateOperatorEEEvRNS0_13ClientContextES6_RNT_4TYPEEEUlS6_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.bp, align 8, !tbaa !828
  invoke void @_ZN6duckdb24ParsedExpressionIterator17EnumerateChildrenERNS_16ParsedExpressionERKSt8functionIFvRNS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !828 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb29ExtractPivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionERNS_6vectorISt17reference_wrapperIS7_ELb1ESaISB_EEE.exit.thread, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.u:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !828 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bw, null
  br i1 %.not.i29, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit30 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit30:                 ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %bb.o, %_ZNSt14_Function_baseD2Ev.exit30
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn33, %bb.o ], [ %i.bk, %bb.n ], [ %i.bv, %_ZNSt14_Function_baseD2Ev.exit30 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn.pn

bb.y:                                             ; preds = %bb.l
  unreachable
end_hunk_1
