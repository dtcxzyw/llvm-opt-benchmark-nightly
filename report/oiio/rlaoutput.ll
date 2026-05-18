inline.NumInlined: 3050
inline.NumDeleted: 793
begin_hunk_0_@_ZN11OpenImageIO4v3_19RLAOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
  br i1 %.not.not.i157, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161.thread, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.va = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !54, !noalias !129 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 3 uses
  store ptr %i.vc, ptr %71, align 8, !tbaa !104, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !129
  store i64 %i.vb, ptr %i.b, align 8, !tbaa !105, !noalias !129
  %i.vd = icmp ugt i64 %i.vb, 15
  br i1 %i.vd, label %.noexc.i.i159, label %._crit_edge.i.i.i158

.noexc.i.i159:                                    ; preds = %bb.cu
  %i.ve = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ve, ptr %71, align 8, !tbaa !56, !alias.scope !129
  %i.vf = load i64, ptr %i.b, align 8, !tbaa !105, !noalias !129
  store i64 %i.vf, ptr %i.vc, align 8, !tbaa !106, !alias.scope !129
  br label %._crit_edge.i.i.i158

._crit_edge.i.i.i158:                             ; preds = %.noexc.i.i159, %bb.cu
  %i.vg = phi ptr [ %i.ve, %.noexc.i.i159 ], [ %i.vc, %bb.cu ] ; 2 uses
  switch i64 %i.vb, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i158
  %i.vh = load i8, ptr %i.uz, align 1, !tbaa !106
  store i8 %i.vh, ptr %i.vg, align 1, !tbaa !106
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161

bb.cw:                                            ; preds = %._crit_edge.i.i.i158
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vg, ptr nonnull align 1 %i.uz, i64 %i.vb, i1 false)
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.vi = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  store ptr %i.vi, ptr %71, align 8, !tbaa !104, !alias.scope !129
  %i.vj = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 0, ptr %i.vj, align 8, !tbaa !59, !alias.scope !129
  store i8 0, ptr %i.vi, align 8, !tbaa !106, !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br label %bb.cy

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161: ; preds = %._crit_edge.i.i.i158, %bb.cv, %bb.cw
  %i.vk = load i64, ptr %i.b, align 8, !tbaa !105, !noalias !129 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  store i64 %i.vk, ptr %i.vl, align 8, !tbaa !59, !alias.scope !129
  %i.vm = load ptr, ptr %71, align 8, !tbaa !56, !alias.scope !129
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.vk
  store i8 0, ptr %i.vn, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !129
  %.pre301 = load i64, ptr %i.vl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  %.not62 = icmp eq i64 %.pre301, 0
  br i1 %.not62, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 834
  %i.vp = load ptr, ptr %71, align 8, !tbaa !56   ; 2 uses
  %i.vq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.vo, ptr noundef nonnull dereferenceable(1) %i.vp, i64 noundef 32) #30 ; 0 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 865
  store i8 0, ptr %i.vr, align 1, !tbaa !106
  br label %bb.cz

bb.cy:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161.thread, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit161
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 834
  store i8 0, ptr %i.vs, align 2, !tbaa !106
  %.pre302 = load ptr, ptr %71, align 8, !tbaa !56
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.vt = phi ptr [ %.pre302, %bb.cy ], [ %i.vp, %bb.cx ] ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.vv = icmp eq ptr %i.vt, %i.vu
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.cz
  %i.vw = load i64, ptr %i.vu, align 8, !tbaa !106
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #30
  store ptr @.str.46, ptr %77, align 8, !tbaa !51
  %i.vy = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 11, ptr %i.vy, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %76, ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull dead_on_return %77, ptr noundef nonnull dead_on_return %78)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.vz = load ptr, ptr %76, align 8, !tbaa !51, !noalias !132 ; 3 uses
  %.not.not.i165 = icmp eq ptr %i.vz, null
  br i1 %.not.not.i165, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169.thread, label %bb.da

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.wa = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !54, !noalias !132 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 3 uses
  store ptr %i.wc, ptr %75, align 8, !tbaa !104, !alias.scope !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !132
  store i64 %i.wb, ptr %i.a, align 8, !tbaa !105, !noalias !132
  %i.wd = icmp ugt i64 %i.wb, 15
  br i1 %i.wd, label %.noexc.i.i167, label %._crit_edge.i.i.i166

.noexc.i.i167:                                    ; preds = %bb.da
  %i.we = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.we, ptr %75, align 8, !tbaa !56, !alias.scope !132
  %i.wf = load i64, ptr %i.a, align 8, !tbaa !105, !noalias !132
  store i64 %i.wf, ptr %i.wc, align 8, !tbaa !106, !alias.scope !132
  br label %._crit_edge.i.i.i166

._crit_edge.i.i.i166:                             ; preds = %.noexc.i.i167, %bb.da
  %i.wg = phi ptr [ %i.we, %.noexc.i.i167 ], [ %i.wc, %bb.da ] ; 2 uses
  switch i64 %i.wb, label %bb.dc [
    i64 1, label %bb.db
    i64 0, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169
  ]

bb.db:                                            ; preds = %._crit_edge.i.i.i166
  %i.wh = load i8, ptr %i.vz, align 1, !tbaa !106
  store i8 %i.wh, ptr %i.wg, align 1, !tbaa !106
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169

bb.dc:                                            ; preds = %._crit_edge.i.i.i166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wg, ptr nonnull align 1 %i.vz, i64 %i.wb, i1 false)
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.wi = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  store ptr %i.wi, ptr %75, align 8, !tbaa !104, !alias.scope !132
  %i.wj = getelementptr inbounds nuw i8, ptr %75, i64 8
  store i64 0, ptr %i.wj, align 8, !tbaa !59, !alias.scope !132
  store i8 0, ptr %i.wi, align 8, !tbaa !106, !alias.scope !132
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  br label %bb.de

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169: ; preds = %._crit_edge.i.i.i166, %bb.db, %bb.dc
  %i.wk = load i64, ptr %i.a, align 8, !tbaa !105, !noalias !132 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i64 %i.wk, ptr %i.wl, align 8, !tbaa !59, !alias.scope !132
  %i.wm = load ptr, ptr %75, align 8, !tbaa !56, !alias.scope !132
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wk
  store i8 0, ptr %i.wn, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !132
  %.pre304 = load i64, ptr %i.wl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  %.not63 = icmp eq i64 %.pre304, 0
  br i1 %.not63, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.wp = load ptr, ptr %75, align 8, !tbaa !56   ; 2 uses
  %i.wq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.wo, ptr noundef nonnull dereferenceable(1) %i.wp, i64 noundef 32) #30 ; 0 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 907
  store i8 0, ptr %i.wr, align 1, !tbaa !106
  br label %bb.df

bb.de:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169.thread, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit169
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i8 0, ptr %i.ws, align 4, !tbaa !106
  %.pre305 = load ptr, ptr %75, align 8, !tbaa !56
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.wt = phi ptr [ %.pre305, %bb.de ], [ %i.wp, %bb.dd ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.wv = icmp eq ptr %i.wt, %i.wu
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.df
  %i.ww = load i64, ptr %i.wu, align 8, !tbaa !106
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.wx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  %i.wy = load <8 x i16>, ptr %i.al, align 8, !tbaa !76
  %i.wz = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.wy)
  store <8 x i16> %i.wz, ptr %i.al, align 8, !tbaa !76
  %i.xa = load <4 x i16>, ptr %i.cc, align 8, !tbaa !76
  %i.xb = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.xa)
  store <4 x i16> %i.xb, ptr %i.cc, align 8, !tbaa !76
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.xd = load i16, ptr %i.xc, align 8, !tbaa !76
  %i.xe = call noundef i16 @llvm.bswap.i16(i16 %i.xd)
  store i16 %i.xe, ptr %i.xc, align 8, !tbaa !76
  %i.xf = load i16, ptr %i.kq, align 2, !tbaa !76
  %i.xg = call noundef i16 @llvm.bswap.i16(i16 %i.xf)
  store i16 %i.xg, ptr %i.kq, align 2, !tbaa !76
  %i.xh = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.xi = call noundef i32 @llvm.bswap.i32(i32 %i.xh)
  store i32 %i.xi, ptr %i.mz, align 4, !tbaa !3
  %i.xj = load i16, ptr %i.tx, align 4, !tbaa !76
  %i.xk = call noundef i16 @llvm.bswap.i16(i16 %i.xj)
  store i16 %i.xk, ptr %i.tx, align 4, !tbaa !76
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 866 ; 4 uses
  %79 = load <4 x i16>, ptr %i.xl, align 2, !tbaa !76
  %80 = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %79)
  store <4 x i16> %80, ptr %i.xl, align 2, !tbaa !76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 874 ; 4 uses
  %82 = load i16, ptr %81, align 2, !tbaa !76
  %83 = call noundef i16 @llvm.bswap.i16(i16 %82)
  store i16 %83, ptr %81, align 2, !tbaa !76
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !3
  %i.xo = call noundef i32 @llvm.bswap.i32(i32 %i.xn)
  store i32 %i.xo, ptr %i.xm, align 8, !tbaa !3
  %i.xp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull %i.al, i64 noundef 740, i64 noundef 1) ; 0 uses
  %i.xq = load <8 x i16>, ptr %i.al, align 8, !tbaa !76
  %i.xr = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.xq)
  store <8 x i16> %i.xr, ptr %i.al, align 8, !tbaa !76
  %i.xs = load <4 x i16>, ptr %i.cc, align 8, !tbaa !76
  %i.xt = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.xs)
  store <4 x i16> %i.xt, ptr %i.cc, align 8, !tbaa !76
  %i.xu = load i16, ptr %i.xc, align 8, !tbaa !76
  %i.xv = call noundef i16 @llvm.bswap.i16(i16 %i.xu)
  store i16 %i.xv, ptr %i.xc, align 8, !tbaa !76
  %i.xw = load i16, ptr %i.kq, align 2, !tbaa !76
  %i.xx = call noundef i16 @llvm.bswap.i16(i16 %i.xw)
  store i16 %i.xx, ptr %i.kq, align 2, !tbaa !76
  %i.xy = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.xz = call noundef i32 @llvm.bswap.i32(i32 %i.xy)
  store i32 %i.xz, ptr %i.mz, align 4, !tbaa !3
  %i.ya = load i16, ptr %i.tx, align 4, !tbaa !76
  %i.yb = call noundef i16 @llvm.bswap.i16(i16 %i.ya)
  store i16 %i.yb, ptr %i.tx, align 4, !tbaa !76
  %84 = load <4 x i16>, ptr %i.xl, align 2, !tbaa !76
  %85 = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %84)
  store <4 x i16> %85, ptr %i.xl, align 2, !tbaa !76
  %86 = load i16, ptr %81, align 2, !tbaa !76
  %87 = call noundef i16 @llvm.bswap.i16(i16 %86)
  store i16 %87, ptr %81, align 2, !tbaa !76
  %i.yc = load i32, ptr %i.xm, align 8, !tbaa !3
  %i.yd = call noundef i32 @llvm.bswap.i32(i32 %i.yc)
  store i32 %i.yd, ptr %i.xm, align 8, !tbaa !3
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.yf = load i32, ptr %i.bc, align 8, !tbaa !50
  %i.yg = sext i32 %i.yf to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i32 0, ptr %i.l, align 4, !tbaa !3
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !13 ; 5 uses
  %i.yj = load ptr, ptr %i.ye, align 8, !tbaa !9  ; 5 uses
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = ptrtoint ptr %i.yj to i64               ; 4 uses
  %i.ym = sub i64 %i.yk, %i.yl
  %i.yn = ashr exact i64 %i.ym, 2                 ; 3 uses
  %i.yo = icmp ult i64 %i.yn, %i.yg
  br i1 %i.yo, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.yp = sub nuw nsw i64 %i.yg, %i.yn
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr %i.yi, i64 noundef %i.yp, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %.pre306 = load ptr, ptr %i.ye, align 8, !tbaa !9 ; 2 uses
  %.pre307 = load ptr, ptr %i.yh, align 8, !tbaa !13
  %.pre308 = ptrtoint ptr %.pre306 to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.yq = icmp ugt i64 %i.yn, %i.yg
  br i1 %i.yq, label %bb.di, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.di:                                            ; preds = %bb.dh
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yg ; 3 uses
  %.not.i.i = icmp eq ptr %i.yi, %i.yr
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.di
  store ptr %i.yr, ptr %i.yh, align 8, !tbaa !13
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.dg, %bb.dh, %bb.di, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre308, %bb.dg ], [ %i.yl, %bb.dh ], [ %i.yl, %bb.di ], [ %i.yl, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ys = phi ptr [ %.pre307, %bb.dg ], [ %i.yi, %bb.dh ], [ %i.yi, %bb.di ], [ %i.yr, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.yt = phi ptr [ %.pre306, %bb.dg ], [ %i.yj, %bb.dh ], [ %i.yj, %bb.di ], [ %i.yj, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = sub i64 %i.yu, %.pre-phi
  %i.yw = ashr exact i64 %i.yv, 2
  %i.yx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput5writeIjEEbPKT_m(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull %i.yt, i64 noundef %i.yw) ; 0 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !19
  %.not64 = icmp eq i32 %i.yz, 0
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.zb = load i32, ptr %i.za, align 4
  %.not65 = icmp eq i32 %i.zb, 0
  %or.cond70 = select i1 %.not64, i1 true, i1 %.not65
  br i1 %or.cond70, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.zd = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.o, i1 noundef zeroext false) #30
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.zc, i64 noundef %i.zd)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.a, %bb.dk
  %.0 = phi i1 [ true, %bb.dk ], [ false, %bb.a ], [ false, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN11OpenImageIO4v3_111ImageOutput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_17Strutil10parse_wordERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, float noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toILm16EJfEEEvRAT__cPKcDpRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.103", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !135
  %i.b = load i32, ptr %2, align 4, !tbaa !98, !noalias !135
  store i32 %i.b, ptr %3, align 16, !noalias !135
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 9, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !135
  %i.c = load ptr, ptr %4, align 8, !tbaa !56
  store ptr %i.c, ptr %5, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.f, ptr %i.d, align 8, !tbaa !54
  %i.g = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %0, ptr noundef nonnull dead_on_return %5, i64 noundef 16) #30 ; 0 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !106
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_19RLAOutput16set_chromaticityEPKNS0_10ParamValueEPcmPKc(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.102", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i, 255
  %i.c = icmp eq i64 %i.b, 11
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %.sroa.0.0.copyload.i, 8
  %trunc = trunc i64 %i.d to i8
  switch i8 %trunc, label %bb.g [
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.f = load i8, ptr %i.e, align 2, !tbaa !138, !range !141, !noundef !142
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %i.g, ptr %i.i, ptr %i.h       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !143
  %i.l = load float, ptr %i.j, align 4, !tbaa !98, !noalias !146
  store float %i.l, ptr %8, align 16, !tbaa !106, !noalias !143
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = load float, ptr %i.k, align 4, !tbaa !98, !noalias !146
  store float %i.n, ptr %i.m, align 16, !tbaa !106, !noalias !143
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.50, i64 11, i64 153, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !143
  %i.o = load ptr, ptr %9, align 8, !tbaa !56
  store ptr %i.o, ptr %10, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59
  store i64 %i.r, ptr %i.p, align 8, !tbaa !54
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag:bb.a
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.c, 0
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #33
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #34 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !768

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPhEES3_mT_S4_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.n = load i8, ptr %1, align 1, !tbaa !106
  store i8 %i.n, ptr %i.l, align 1, !tbaa !106
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPhEES3_mT_S4_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPhEES3_mT_S4_.exit: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPhEES3_mT_S4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPhEES3_mT_S4_.exit, %bb.f
  store ptr %i.l, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !160
  store ptr %i.p, ptr %i.d, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.t, %i.c
  br i1 %.not, label %_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp sgt i64 %i.c, 1
  br i1 %i.u, label %bb.i, label %bb.j, !prof !768

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %i.c, 1
  br i1 %i.v, label %bb.k, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.k:                                             ; preds = %bb.j
  %i.w = load i8, ptr %1, align 1, !tbaa !106
  store i8 %i.w, ptr %i.f, align 1, !tbaa !106
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.i, %bb.j, %bb.k
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !160
  %.not.i16 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i16, label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  store ptr %i.x, ptr %i.q, align 8, !tbaa !160
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.t ; 3 uses
  %i.z = ptrtoint ptr %.sink.i to i64
  %i.aa = icmp sgt i64 %i.t, 1
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !768

bb.l:                                             ; preds = %_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit17

bb.m:                                             ; preds = %_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ab = icmp eq i64 %i.t, 1
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit17

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %1, align 1, !tbaa !106
  store i8 %i.ac, ptr %i.f, align 1, !tbaa !106
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit17

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit17:               ; preds = %bb.l, %bb.m, %bb.n
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !160 ; 3 uses
  %i.ae = sub i64 %i.a, %i.z                      ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.p, !prof !768

bb.o:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.sink.i, i64 %i.ae, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit

bb.p:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit17
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.q, label %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i8, ptr %.sink.i, align 1, !tbaa !106
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !106
  br label %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !160
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit:    ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #29

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { cold nounwind }
attributes #36 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!15, !16, i64 16}
!18 = !{!10, !11, i64 16}
!19 = !{!20, !4, i64 56}
!20 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutputE", !21, i64 8, !40, i64 168}
!21 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !22, i64 64, !23, i64 72, !28, i64 96, !4, i64 120, !4, i64 124, !33, i64 128, !34, i64 136}
!22 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!23 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!28 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!33 = !{!"bool", !5, i64 0}
!34 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !35, i64 0}
!35 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !36, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!40 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_ELb1ELb1EE", !42, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !43, i64 0}
!43 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !44, i64 0}
!44 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !45, i64 0, !47, i64 8}
!45 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !46, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !12, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !48, i64 0}
!48 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !12, i64 0}
!49 = !{!20, !4, i64 12}
!50 = !{!20, !4, i64 24}
!51 = !{!52, !16, i64 0}
!52 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !16, i64 0, !53, i64 8}
!53 = !{!"long", !5, i64 0}
!54 = !{!52, !53, i64 8}
!55 = !{!22, !5, i64 0}
!56 = !{!57, !16, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !53, i64 8, !5, i64 16}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!59 = !{!57, !53, i64 8}
!60 = !{!61, !4, i64 1024}
!61 = !{!"_ZTSN11OpenImageIO4v3_19RLAOutputE", !20, i64 0, !62, i64 184, !65, i64 208, !67, i64 952, !62, i64 976, !62, i64 1000, !4, i64 1024}
!62 = !{!"_ZTSSt6vectorIhSaIhEE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !15, i64 0}
!65 = !{!"_ZTSN11OpenImageIO4v3_17RLA_pvt9RLAHeaderE", !66, i64 0, !66, i64 2, !66, i64 4, !66, i64 6, !66, i64 8, !66, i64 10, !66, i64 12, !66, i64 14, !66, i64 16, !66, i64 18, !66, i64 20, !66, i64 22, !66, i64 24, !66, i64 26, !5, i64 28, !5, i64 44, !5, i64 68, !5, i64 92, !5, i64 116, !4, i64 140, !5, i64 144, !5, i64 272, !5, i64 400, !5, i64 464, !5, i64 496, !5, i64 528, !5, i64 548, !5, i64 572, !5, i64 580, !66, i64 612, !5, i64 614, !5, i64 626, !66, i64 658, !66, i64 660, !66, i64 662, !66, i64 664, !66, i64 666, !5, i64 668, !5, i64 700, !4, i64 736}
!66 = !{!"short", !5, i64 0}
!67 = !{!"_ZTSSt6vectorIjSaIjEE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !10, i64 0}
!70 = !{!20, !4, i64 32}
!71 = !{!20, !4, i64 44}
!72 = !{!20, !4, i64 48}
!73 = !{!20, !4, i64 36}
!74 = !{!20, !4, i64 8}
!75 = !{!20, !4, i64 20}
!76 = !{!66, !66, i64 0}
!77 = !{!61, !66, i64 224}
!78 = !{!20, !4, i64 68}
!79 = !{!26, !27, i64 8}
!80 = !{!26, !27, i64 0}
!81 = !{!22, !5, i64 1}
!82 = !{!22, !5, i64 2}
!83 = !{!22, !4, i64 4}
!84 = !{!61, !66, i64 226}
!85 = !{!61, !66, i64 866}
!86 = !{!61, !66, i64 228}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!61, !66, i64 868}
!90 = !{!61, !66, i64 870}
!91 = !{!61, !66, i64 230}
!92 = distinct !{!92, !88}
!93 = !{!61, !66, i64 872}
!94 = !{!61, !66, i64 874}
!95 = !{!20, !4, i64 132}
!96 = !{!61, !66, i64 232}
!97 = !{!61, !66, i64 234}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !5, i64 0}
!100 = !{!61, !4, i64 348}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!103 = distinct !{!103, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!104 = !{!58, !16, i64 0}
!105 = !{!53, !53, i64 0}
!106 = !{!5, !5, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!109 = distinct !{!109, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!112 = distinct !{!112, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!115 = distinct !{!115, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!118 = distinct !{!118, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!121 = distinct !{!121, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!124 = distinct !{!124, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!125 = !{!61, !66, i64 820}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!128 = distinct !{!128, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!131 = distinct !{!131, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!134 = distinct !{!134, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!137 = distinct !{!137, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!138 = !{!139, !33, i64 38}
!139 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !140, i64 0, !22, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !33, i64 37, !33, i64 38}
!140 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !16, i64 0}
!141 = !{i8 0, i8 2}
!142 = !{}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!145 = distinct !{!145, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!146 = !{!147, !144}
!147 = distinct !{!147, !148, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKfS3_ELi2ELi0ELy153EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!148 = distinct !{!148, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKfS3_ELi2ELi0ELy153EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfS7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!151 = distinct !{!151, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKfS7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKfS3_S3_ELi3ELi0ELy2457EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!154 = distinct !{!154, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKfS3_S3_ELi3ELi0ELy2457EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!155 = !{!153, !150}
end_hunk_1
