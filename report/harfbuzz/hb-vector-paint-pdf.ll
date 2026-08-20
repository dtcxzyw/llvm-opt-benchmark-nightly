inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL28hb_pdf_paint_radial_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_:bb.a
  %.039.i.i.i = phi i32 [ %i.yf, %.preheader.i.i.i470 ], [ %i.ya, %bb.el ] ; 2 uses
  %i.yd = lshr i32 %.039.i.i.i, 1
  %i.ye = add i32 %.039.i.i.i, 8
  %i.yf = add i32 %i.ye, %i.yd                    ; 6 uses
  %i.yg = icmp ugt i32 %i.yb, %i.yf
  br i1 %i.yg, label %.preheader.i.i.i470, label %.thread.i.i.i, !llvm.loop !428

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i470
  %i.yh = icmp ugt i32 %i.yf, 178956970
  br i1 %i.yh, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.em, !prof !22

bb.em:                                            ; preds = %.thread.i.i.i
  %i.yi = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %i.e, i32 noundef %i.yf) ; 2 uses
  %.not22.i.i.i471 = icmp eq ptr %i.yi, null
  br i1 %.not22.i.i.i471, label %bb.en, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, !prof !22

bb.en:                                            ; preds = %bb.em
  %i.yj = load i32, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %.not23.i.i.i472 = icmp ugt i32 %i.yf, %i.yj
  br i1 %.not23.i.i.i472, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.en, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.ya, %.thread.i.i.i ], [ %i.yj, %bb.en ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %i.e, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.em
  %i.yk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.yi, ptr %i.yk, align 8, !tbaa !18
  store i32 %i.yf, ptr %i.e, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, %bb.en, %bb.el, %_ZN15hb_vector_buf_t10append_strEPKc.exit467
  %i.yl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !18
  %i.yn = load i32, ptr %i.lp, align 4, !tbaa !17 ; 2 uses
  %i.yo = add i32 %i.yn, 1
  store i32 %i.yo, ptr %i.lp, align 4, !tbaa !17
  %i.yp = zext i32 %i.yn to i64
  %i.yq = getelementptr inbounds nuw [24 x i8], ptr %i.ym, i64 %i.yp ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store <2 x i32> %i.xv, ptr %i.yq, align 8, !tbaa !74
  store ptr %i.xx, ptr %i.yr, align 8, !tbaa !12
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  store i32 %i.xy, ptr %i.ys, align 8, !tbaa !59
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.yt = add i32 %i.xw, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.yt, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.eo, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

bb.eo:                                            ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  call void @hb_free(ptr noundef %i.xx) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.eo
  %i.yu = add i32 %i.xu, 5
  %i.yv = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yw = fcmp oge <2 x float> %i.az, %i.yv
  %i.yx = shufflevector <2 x i1> %i.yw, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.yy = select <4 x i1> %i.yx, <4 x float> %i.ar, <4 x float> %i.ba ; 3 uses
  %i.yz = load <2 x float>, ptr %i.ca, align 4, !tbaa !461
  %i.za = shufflevector <2 x float> %i.yz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.zb = shufflevector <4 x float> %i.yy, <4 x float> <float poison, float poison, float 2.000000e+00, float 2.000000e+00>, <4 x i32> <i32 2, i32 2, i32 6, i32 7> ; 2 uses
  %i.zc = fsub <4 x float> %i.yy, %i.zb
  %i.zd = fmul <4 x float> %i.yy, %i.zb
  %i.ze = shufflevector <4 x float> %i.zc, <4 x float> %i.zd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.zf = fdiv <4 x float> %i.ze, %i.za           ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !459
  %i.zi = extractelement <4 x float> %i.zf, i64 0
  %i.zj = extractelement <4 x float> %i.zf, i64 1
  %i.zk = extractelement <4 x float> %i.zf, i64 2
  %i.zl = extractelement <4 x float> %i.zf, i64 3
  %i.zm = call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_smaskEjffffj(ptr noundef nonnull align 8 dereferenceable(100) %i.e, i32 noundef %i.yu, float noundef %i.zi, float noundef %i.zj, float noundef %i.zk, float noundef %i.zl, i32 noundef %i.zh)
  %i.zn = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.zo = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.zm) ; 0 uses
  %i.zp = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  %i.zq = load i32, ptr %11, align 8, !tbaa !13
  %i.zr = add i32 %i.zq, -1
  %spec.select.i.i.i = icmp ult i32 %i.zr, -2
  br i1 %spec.select.i.i.i, label %bb.ep, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.ep:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit
  store i32 0, ptr %i.nq, align 4, !tbaa !8
  %i.zs = load ptr, ptr %i.nr, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.zs) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %_ZL27hb_pdf_gradient_needs_alpha10hb_array_tIK15hb_color_stop_tE.exit.thread

_ZL27hb_pdf_gradient_needs_alpha10hb_array_tIK15hb_color_stop_tE.exit.thread: ; preds = %bb.bz, %_ZN17hb_vector_paint_t12current_bodyEv.exit, %_ZN11hb_vector_tIcLb0EED2Ev.exit
  %i.zt = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.69) ; 0 uses
  %i.zu = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.ms) ; 0 uses
  %i.zv = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.70) ; 0 uses
  %i.zw = load i32, ptr %10, align 8, !tbaa !13
  %i.zx = add i32 %i.zw, -1
  %spec.select.i.i.i473 = icmp ult i32 %i.zx, -2
  br i1 %spec.select.i.i.i473, label %bb.eq, label %_ZN11hb_vector_tIcLb0EED2Ev.exit474

bb.eq:                                            ; preds = %_ZL27hb_pdf_gradient_needs_alpha10hb_array_tIK15hb_color_stop_tE.exit.thread
  store i32 0, ptr %i.bb, align 4, !tbaa !8
  %i.zy = load ptr, ptr %i.bc, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.zy) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit474

_ZN11hb_vector_tIcLb0EED2Ev.exit474:              ; preds = %_ZL27hb_pdf_gradient_needs_alpha10hb_array_tIK15hb_color_stop_tE.exit.thread, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.er

bb.er:                                            ; preds = %_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread, %_ZN11hb_vector_tIcLb0EED2Ev.exit474, %bb.b, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_sweep_gradient_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %9 = alloca %struct.hb_vector_buf_t, align 8    ; 10 uses
  %10 = alloca %struct.hb_vector_buf_t, align 8   ; 12 uses
  %11 = alloca %struct.hb_pdf_sweep_ctx_t, align 8 ; 7 uses
  %12 = alloca %class.anon.46, align 8            ; 9 uses
  %i.g = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.g, label %bb.b, label %bb.u, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !701
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.t, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.i = tail call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null) #12 ; 6 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !74
  %or.cond.i = icmp slt i32 %i.i, 1
  br i1 %or.cond.i, label %.thread.i, label %bb.d, !prof !75

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef %i.i, i1 noundef zeroext false)
  br i1 %i.k, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !472  ; 3 uses
  %i.n = icmp ugt i32 %i.i, %i.m
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = sub nuw nsw i32 %i.i, %i.m
  %i.p = mul i32 %i.o, 12                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !473
  %i.s = zext nneg i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.s
  %i.u = zext i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.u, i1 false)
  br label %bb.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.w = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.w, label %bb.h, label %_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread

bb.h:                                             ; preds = %.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 300
  store i32 0, ptr %i.x, align 4, !tbaa !472
  br label %_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread

_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread: ; preds = %.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.i, ptr %i.l, align 4, !tbaa !472
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !474
  %i.aa = call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef %i.z) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !473 ; 4 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !472 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit", label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.ac to i64 ; 2 uses
  call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS3_E3$_0EvPT_mT0_"(ptr noundef %i.ab, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i)
  %.idx.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i = icmp eq i32 %i.ac, 1
  br i1 %.not1.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit", label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %.01518.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.preheader.i.i
  %.01519.i.i = phi ptr [ %.015.i.i, %.critedge.i.i ], [ %.01518.i.i, %.preheader.preheader.i.i ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.preheader.i.i
  %.016.i.i = phi ptr [ %i.ae, %bb.k ], [ %.01519.i.i, %.preheader.i.i ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %.016.i.i, i64 -12 ; 5 uses
  %.val.i.i = load float, ptr %i.ae, align 4, !tbaa !703
  %.0.val.i.i = load float, ptr %.016.i.i, align 4, !tbaa !703
  %i.af = fcmp ogt float %.val.i.i, %.0.val.i.i
  br i1 %i.af, label %bb.k, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %.lr.ph.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i, i64 12 ; 2 uses
  %i.ag = icmp ult ptr %.015.i.i, %i.ad
  br i1 %i.ag, label %.preheader.i.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit", !llvm.loop !704

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, i64 12, i1 false), !tbaa.struct !705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !705
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ah = icmp ugt ptr %i.ae, %i.ab
  br i1 %i.ah, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !706

"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit": ; preds = %.critedge.i.i, %bb.i, %bb.j
  %i.ai = call i32 @hb_color_line_get_extend(ptr noundef %2) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !461
  %i.al = insertelement <2 x float> poison, float %3, i64 0
  %i.am = insertelement <2 x float> %i.al, float %4, i64 1
  %i.an = fdiv <2 x float> %i.am, %i.ak           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ap = fadd <4 x float> %i.ao, <float -3.276700e+04, float 3.276700e+04, float -3.276700e+04, float 3.276700e+04>
  %i.aq = fadd <4 x float> %i.ap, <float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00> ; 5 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  store float %i.ar, ptr %i.c, align 4, !tbaa !461
  %i.as = extractelement <4 x float> %i.aq, i64 1
  store float %i.as, ptr %i.d, align 4, !tbaa !461
  %i.at = extractelement <4 x float> %i.aq, i64 2
  store float %i.at, ptr %i.e, align 4, !tbaa !461
  %i.au = extractelement <4 x float> %i.aq, i64 3
  store float %i.au, ptr %i.f, align 4, !tbaa !461
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !473 ; 2 uses
  %i.aw = load i32, ptr %i.l, align 4, !tbaa !472 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.aw to i64
  %.idx.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i
  %.not15.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not15.not.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit", %.lr.ph.i
  %.0916.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.av, %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit" ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0916.i, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !527
  %i.ba = and i32 %i.az, 255
  %.not12.not.i.not = icmp ne i32 %i.ba, 255      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0916.i, i64 12 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bb, %i.ax
  %or.cond84 = select i1 %.not12.not.i.not, i1 true, i1 %.not.not.i
  br i1 %or.cond84, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, label %.lr.ph.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i: ; preds = %.lr.ph.i, %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit"
  %.not.lcssa.i = phi i1 [ false, %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS5_E3$_0EE17hb_sorted_array_tIS0_ET_.exit" ], [ %.not12.not.i.not, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 2, ptr %i.bc, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 2, ptr %i.bd, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bf = call ptr @hb_realloc(ptr noundef null, i64 noundef 390) #12 ; 2 uses
  %.not22.i = icmp eq ptr %i.bf, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !12
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i
  %.sink.i = phi i32 [ 390, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ], [ -1, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ]
  store i32 %.sink.i, ptr %9, align 8, !tbaa !13
  br i1 %.not.lcssa.i, label %.preheader.i45, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit61

.preheader.i45:                                   ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  %i.bg = call ptr @hb_realloc(ptr noundef null, i64 noundef 390) #12 ; 2 uses
  %.not22.i50 = icmp eq ptr %i.bg, null
  br i1 %.not22.i50, label %.sink.split.i53, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i51, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i51: ; preds = %.preheader.i45
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !12
  br label %.sink.split.i53

.sink.split.i53:                                  ; preds = %.preheader.i45, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i51
  %.sink.i54 = phi i32 [ 390, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i51 ], [ -1, %.preheader.i45 ]
  store i32 %.sink.i54, ptr %10, align 8, !tbaa !13
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit61

_ZN11hb_vector_tIcLb0EE5allocEjb.exit61:          ; preds = %.sink.split.i53, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  %. = phi ptr [ null, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit ], [ %10, %.sink.split.i53 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store ptr %9, ptr %11, align 8, !tbaa !707
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %., ptr %i.bi, align 8, !tbaa !709
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x float> %i.an, ptr %i.bj, align 8, !tbaa !461
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 24
  store <4 x float> %i.aq, ptr %i.bk, align 8, !tbaa !461
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !473
  %i.bm = load i32, ptr %i.l, align 4, !tbaa !472
  call void @hb_paint_sweep_gradient_tiles(ptr noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.ai, float noundef %5, float noundef %6, ptr noundef nonnull @_ZL23hb_pdf_sweep_emit_patchfjfjPv, ptr noundef nonnull %11) #12
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %.not41 = icmp eq i32 %i.bo, 0
  br i1 %.not41, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr %i.c, ptr %12, align 8, !tbaa !710
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.d, ptr %i.bp, align 8, !tbaa !710
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.e, ptr %i.bq, align 8, !tbaa !710
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.f, ptr %i.br, align 8, !tbaa !710
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.b, ptr %i.bs, align 8, !tbaa !712
  %i.bt = call fastcc noundef i32 @"_ZZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS1_ENK3$_1clER15hb_vector_buf_tPKcS8_"(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97)
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !701 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 92 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !396 ; 3 uses
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !396
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 5 uses
  %i.bz = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.by, ptr noundef nonnull @.str.69) ; 0 uses
  %i.ca = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.by, i32 noundef %i.bw) ; 0 uses
  %i.cb = call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.by, i8 noundef signext 32) ; 0 uses
  %i.cc = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.by, i32 noundef %i.bt) ; 0 uses
  %i.cd = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.by, ptr noundef nonnull @.str.29) ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !454 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.not.i.i, label %bb.m, label %bb.n, !prof !22

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.n:                                             ; preds = %bb.l
  %i.cg = add i32 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !455
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cj
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.ck, %bb.n ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp ne i32 %i.cm, 0
  %or.cond = select i1 %.not.lcssa.i, i1 %i.cn, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.co = call fastcc noundef i32 @"_ZZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS1_ENK3$_1clER15hb_vector_buf_tPKcS8_"(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99)
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !701
  %i.cq = load float, ptr %i.c, align 4, !tbaa !461 ; 2 uses
  %i.cr = load float, ptr %i.e, align 4, !tbaa !461 ; 2 uses
  %i.cs = load float, ptr %i.d, align 4, !tbaa !461
  %i.ct = fsub float %i.cs, %i.cq
  %i.cu = load float, ptr %i.f, align 4, !tbaa !461
  %i.cv = fsub float %i.cu, %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !459
  %i.cy = call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_smaskEjffffj(ptr noundef nonnull align 8 dereferenceable(100) %i.cp, i32 noundef %i.co, float noundef %i.cq, float noundef %i.cr, float noundef %i.ct, float noundef %i.cv, i32 noundef %i.cx)
  %i.cz = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.da = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.cy) ; 0 uses
  %i.db = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.dc = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.69) ; 0 uses
  %i.dd = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.bw) ; 0 uses
  %i.de = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.70) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %bb.q

bb.q:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit61, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.df = load i32, ptr %10, align 8, !tbaa !13
  %i.dg = add i32 %i.df, -1
  %spec.select.i.i.i = icmp ult i32 %i.dg, -2
  br i1 %spec.select.i.i.i, label %bb.r, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.dh, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.dj) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
end_hunk_0
begin_hunk_1_@_ZN18hb_pdf_resources_t21add_xobject_png_imageEPKcjjjjbPKhjS3_j:_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.agf, ptr %i.agh, align 8, !tbaa !18
  store i32 %i.agc, ptr %0, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i589

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i589: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i594, %bb.hn, %bb.hl, %_ZN15hb_vector_buf_t10append_strEPKc.exit586
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !18
  %i.agk = load i32, ptr %i.afr, align 4, !tbaa !17 ; 2 uses
  %i.agl = add i32 %i.agk, 1
  store i32 %i.agl, ptr %i.afr, align 4, !tbaa !17
  %i.agm = zext i32 %i.agk to i64
  %i.agn = getelementptr inbounds nuw [24 x i8], ptr %i.agj, i64 %i.agm ; 3 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  store <2 x i32> %i.aft, ptr %i.agn, align 8, !tbaa !74
  store ptr %i.afv, ptr %i.ago, align 8, !tbaa !12
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  store i32 %i.afw, ptr %i.agp, align 8, !tbaa !59
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i599: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i596, %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.agq = add i32 %i.afu, -1
  %spec.select.i.i.i.i.i600 = icmp ult i32 %i.agq, -2
  br i1 %spec.select.i.i.i.i.i600, label %bb.ho, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601

bb.ho:                                            ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i599
  call void @hb_free(ptr noundef %i.afv) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i589, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i599, %bb.ho
  %i.agr = add i32 %i.afs, 5
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.agt = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ags, ptr noundef nonnull @.str.40) ; 0 uses
  %i.agu = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ags, i32 noundef %i.b) ; 0 uses
  %i.agv = call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.ags, i8 noundef signext 32) ; 0 uses
  %i.agw = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ags, i32 noundef %i.agr) ; 0 uses
  %i.agx = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ags, ptr noundef nonnull @.str.29) ; 0 uses
  %i.agy = load i32, ptr %12, align 8, !tbaa !13
  %i.agz = add i32 %i.agy, -1
  %spec.select.i.i.i602 = icmp ult i32 %i.agz, -2
  br i1 %spec.select.i.i.i602, label %bb.hp, label %_ZN11hb_vector_tIcLb0EED2Ev.exit603

bb.hp:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601
  store i32 0, ptr %i.e, align 4, !tbaa !8
  %i.aha = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.aha) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit603

_ZN11hb_vector_tIcLb0EED2Ev.exit603:              ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  ret i32 %i.b
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

declare void @hb_paint_normalize_color_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %3 = alloca %struct.hb_vector_buf_t, align 8    ; 11 uses
  %4 = alloca %struct.hb_vector_buf_t, align 8    ; 11 uses
  %5 = alloca %struct.hb_vector_buf_t, align 8    ; 11 uses
  %6 = alloca %struct.hb_vector_buf_t, align 8    ; 58 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.b = load i32, ptr %i.a, align 4, !tbaa !968  ; 7 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.preheader.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %.not44 = icmp eq i32 %i.b, 0
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !474
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !527
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 255, %bb.b ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 2, ptr %i.i, align 8, !tbaa !59
  call fastcc void @_ZL35hb_pdf_build_interpolation_functionP15hb_vector_buf_tjj(ptr noundef %3, i32 noundef %i.h, i32 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !57   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = load <2 x i32>, ptr %3, align 8, !tbaa !74
  %i.n = load i32, ptr %3, align 8, !tbaa !74
  store i32 0, ptr %3, align 8, !tbaa !74
  store i32 0, ptr %i.l, align 4, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !427  ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !427
  %i.q = load i32, ptr %i.i, align 8, !tbaa !59
  %i.r = load i32, ptr %0, align 8, !tbaa !14     ; 5 uses
  %.not.i.i = icmp slt i32 %i.k, %i.r
  br i1 %.not.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %i.k, 1                          ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp ugt i32 %i.s, %i.r
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, !prof !22

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.w, %.preheader.i.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = lshr i32 %.039.i.i.i, 1
  %i.v = add i32 %.039.i.i.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 6 uses
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !428

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.y = icmp ugt i32 %i.w, 178956970
  br i1 %i.y, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %.thread.i.i.i
  %i.z = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.w) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not22.i.i.i, label %bb.h, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.w, %i.aa
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.h, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.r, %.thread.i.i.i ], [ %i.aa, %bb.h ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %0, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !18
  store i32 %i.w, ptr %0, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, %bb.h, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !17  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.j, align 4, !tbaa !17
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <2 x i32> %i.m, ptr %i.ah, align 8, !tbaa !74
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 %i.q, ptr %i.aj, align 8, !tbaa !59
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ak = add i32 %i.n, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ak, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  call void @hb_free(ptr noundef %i.p) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.i
  %i.al = load i32, ptr %3, align 8, !tbaa !13
  %i.am = add i32 %i.al, -1
  %spec.select.i.i.i = icmp ult i32 %i.am, -2
  br i1 %spec.select.i.i.i, label %bb.j, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.j:                                             ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit
  store i32 0, ptr %i.l, align 4, !tbaa !8
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.an) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

.preheader.preheader.i.i:                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !473 ; 4 uses
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.b to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef %i.ap, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i)
  %.idx.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i
  %.01518.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i.a, %.preheader.preheader.i.i
  %.01519.i.i = phi ptr [ %.015.i.i, %.critedge.i.i.a ], [ %.01518.i.i, %.preheader.preheader.i.i ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.preheader.i.i
  %.016.i.i = phi ptr [ %i.ar, %bb.k ], [ %.01519.i.i, %.preheader.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.016.i.i, i64 -12 ; 5 uses
  %.val.i.i = load float, ptr %i.ar, align 4, !tbaa !703
  %.0.val.i.i = load float, ptr %.016.i.i, align 4, !tbaa !703
  %i.as = fcmp ogt float %.val.i.i, %.0.val.i.i
  br i1 %i.as, label %bb.k, label %.critedge.i.i.a

.critedge.i.i.a:                                  ; preds = %bb.k, %.lr.ph.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i, i64 12 ; 2 uses
  %i.at = icmp ult ptr %.015.i.i, %i.aq
  br i1 %i.at, label %.preheader.i.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit", !llvm.loop !969

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !705
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, i64 12, i1 false), !tbaa.struct !705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !705
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = icmp ugt ptr %i.ar, %i.ap
  br i1 %i.au, label %.lr.ph.i.i, label %.critedge.i.i.a, !llvm.loop !970

"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit": ; preds = %.critedge.i.i.a
  %i.av = icmp eq i32 %i.b, 2
  br i1 %i.av, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load i32, ptr @_hb_NullPool, align 16
  %umax = tail call i32 @llvm.umax.i32(i32 %i.b, i32 2)
  %i.bc = add i32 %umax, -1
  %wide.trip.count = zext i32 %i.bc to i64
  br label %bb.v

bb.l:                                             ; preds = %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 2, ptr %i.bd, align 8, !tbaa !59
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !474 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !527
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !527
  call fastcc void @_ZL35hb_pdf_build_interpolation_functionP15hb_vector_buf_tjj(ptr noundef %4, i32 noundef %i.bg, i32 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !57 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bm = load <2 x i32>, ptr %4, align 8, !tbaa !74
  %i.bn = load i32, ptr %4, align 8, !tbaa !74
  store i32 0, ptr %4, align 8, !tbaa !74
  store i32 0, ptr %i.bl, align 4, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !427 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !427
  %i.bq = load i32, ptr %i.bd, align 8, !tbaa !59
  %i.br = load i32, ptr %0, align 8, !tbaa !14    ; 5 uses
  %.not.i.i45 = icmp slt i32 %i.bk, %i.br
  br i1 %.not.i.i45, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add i32 %i.bk, 1                        ; 2 uses
  %i.bt = icmp slt i32 %i.br, 0
  br i1 %i.bt, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i46 = icmp ugt i32 %i.bs, %i.br
  br i1 %.not.i.i.i46, label %.preheader.i.i.i48, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, !prof !22

.preheader.i.i.i48:                               ; preds = %bb.n, %.preheader.i.i.i48
  %.039.i.i.i49 = phi i32 [ %i.bw, %.preheader.i.i.i48 ], [ %i.br, %bb.n ] ; 2 uses
  %i.bu = lshr i32 %.039.i.i.i49, 1
  %i.bv = add i32 %.039.i.i.i49, 8
  %i.bw = add i32 %i.bv, %i.bu                    ; 6 uses
  %i.bx = icmp ugt i32 %i.bs, %i.bw
  br i1 %i.bx, label %.preheader.i.i.i48, label %.thread.i.i.i50, !llvm.loop !428

.thread.i.i.i50:                                  ; preds = %.preheader.i.i.i48
  %i.by = icmp ugt i32 %i.bw, 178956970
  br i1 %i.by, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, label %bb.o, !prof !22

bb.o:                                             ; preds = %.thread.i.i.i50
  %i.bz = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.bw) ; 2 uses
  %.not22.i.i.i51 = icmp eq ptr %i.bz, null
  br i1 %.not22.i.i.i51, label %bb.p, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %.not23.i.i.i53 = icmp ugt i32 %i.bw, %i.ca
  br i1 %.not23.i.i.i53, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54: ; preds = %bb.p, %.thread.i.i.i50
  %.sink.i.ph.in.i.i55 = phi i32 [ %i.br, %.thread.i.i.i50 ], [ %i.ca, %bb.p ]
  %.sink.i.ph.i.i56 = xor i32 %.sink.i.ph.in.i.i55, -1
  store i32 %.sink.i.ph.i.i56, ptr %0, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !18
  store i32 %i.bw, ptr %0, align 8, !tbaa !14
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52, %bb.p, %bb.n, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.ce = load i32, ptr %i.bj, align 4, !tbaa !17 ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bj, align 4, !tbaa !17
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x i32> %i.bm, ptr %i.ch, align 8, !tbaa !74
  store ptr %i.bp, ptr %i.ci, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 %i.bq, ptr %i.cj, align 8, !tbaa !59
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ck = add i32 %i.bn, -1
  %spec.select.i.i.i.i.i58 = icmp ult i32 %i.ck, -2
  br i1 %spec.select.i.i.i.i.i58, label %bb.q, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

bb.q:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57
  call void @hb_free(ptr noundef %i.bp) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57, %bb.q
  %i.cl = load i32, ptr %4, align 8, !tbaa !13
  %i.cm = add i32 %i.cl, -1
  %spec.select.i.i.i60 = icmp ult i32 %i.cm, -2
  br i1 %spec.select.i.i.i60, label %bb.r, label %_ZN11hb_vector_tIcLb0EED2Ev.exit61

bb.r:                                             ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59
  store i32 0, ptr %i.bl, align 4, !tbaa !8
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.cn) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit61

_ZN11hb_vector_tIcLb0EED2Ev.exit61:               ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EED2Ev.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 2, ptr %i.co, align 8, !tbaa !59
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 38 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 48 uses
  %i.cr = call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 3 uses
  %.not22.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not22.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %.pre = load i32, ptr %6, align 8, !tbaa !13    ; 3 uses
  %.not23.i.i.i.i = icmp ult i32 %.pre, 38
  br i1 %.not23.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %.pre394.a = load ptr, ptr %i.cq, align 8, !tbaa !12
  br label %bb.s

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !12
  store i32 38, ptr %6, align 8, !tbaa !13
  br label %bb.s

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i:      ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %i.cs = xor i32 %.pre, -1                       ; 2 uses
  store i32 %i.cs, ptr %6, align 8, !tbaa !13
  %.pre395.a = load i32, ptr %i.cp, align 4, !tbaa !8
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

bb.s:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i
  %i.ct = phi i32 [ %.pre, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ 38, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  %i.cu = phi ptr [ %.pre394.a, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ %i.cr, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  store i32 33, ptr %i.cp, align 4, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cu, ptr noundef nonnull readonly align 1 dereferenceable(33) @.str.71, i64 range(i64 0, 103079215081) 33, i1 false), !alias.scope !971
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

_ZN15hb_vector_buf_t10append_strEPKc.exit:        ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, %bb.s
  %i.cv = phi i32 [ %i.cs, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ %i.ct, %bb.s ] ; 3 uses
  %i.cw = phi i32 [ %.pre395.a, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ 33, %bb.s ] ; 2 uses
  %i.cx = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cw, i32 12) ; 2 uses
  %i.cy = extractvalue { i32, i1 } %i.cx, 1
  %i.cz = extractvalue { i32, i1 } %i.cx, 0       ; 4 uses
  %i.da = or i32 %i.cv, %i.cz
  %i.db = icmp slt i32 %i.da, 0
  %or.cond = or i1 %i.cy, %i.db
  br i1 %or.cond, label %_ZN15hb_vector_buf_t10append_strEPKc.exit81, label %bb.t, !prof !368

bb.t:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit
  %.not.i.i.i.i64 = icmp samesign ugt i32 %i.cz, %i.cv
  br i1 %.not.i.i.i.i64, label %.preheader.i.i.i.i67, label %bb.u, !prof !22

.preheader.i.i.i.i67:                             ; preds = %bb.t, %.preheader.i.i.i.i67
  %.053.i.i.i.i68 = phi i32 [ %i.de, %.preheader.i.i.i.i67 ], [ %i.cv, %bb.t ] ; 2 uses
  %i.dc = lshr i32 %.053.i.i.i.i68, 1
  %i.dd = add nuw i32 %.053.i.i.i.i68, 8
  %i.de = add nuw i32 %i.dd, %i.dc                ; 5 uses
  %i.df = icmp ugt i32 %i.cz, %i.de
  br i1 %i.df, label %.preheader.i.i.i.i67, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71, !llvm.loop !66

end_hunk_1
