inline.NumInlined: 3079
inline.NumDeleted: 928
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.h ] ; 6 uses
  %.0810.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.bz, %bb.h ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %.011.i.i.i.i, align 8, !tbaa !761
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.ba, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !127
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bc, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load i64, ptr %i.bd, align 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !763 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 36
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !765
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 38
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !766, !range !129, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = select i1 %i.bl, ptr %i.bn, ptr %i.bm
  %i.bp = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 1)
  %i.br = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 8
  %i.bs = and i64 %i.br, 255
  %i.bt = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bd) #28
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.bf
  %i.bx = mul i32 %i.bw, %i.bv
  %i.by = sext i32 %i.bx to i64
  store ptr %i.bo, ptr %2, align 8
  store i64 %i.by, ptr %i.az, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.011.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i32 noundef %i.bf, i32 noundef %i.bi, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.96") align 8 %2, i8 1, i8 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.bz, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.h, !llvm.loop !767

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i26, %bb.h, %_ZSt4copyIPN11OpenImageIO4v3_110ParamValueES3_ET0_T_S5_S4_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.f
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::span.96", align 8 ; 5 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 461168601842738790
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 40
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #31
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.f ] ; 6 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i ], [ %i.af, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %.09.i.i.i.i, align 8, !tbaa !761
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !127
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !763  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !765
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 38
  %i.q = load i8, ptr %i.p, align 2, !tbaa !766, !range !129, !noundef !130
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %i.t, ptr %i.s
  %i.v = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 32
  %i.w = trunc nuw i64 %i.v to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 8
  %i.y = and i64 %i.x, 255
  %i.z = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.j) #28
  %i.aa = mul i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.l
  %i.ad = mul i32 %i.ac, %i.ab
  %i.ae = sext i32 %i.ad to i64
  store ptr %i.u, ptr %4, align 8
  store i64 %i.ae, ptr %i.f, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.09.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i32 noundef %i.l, i32 noundef %i.o, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.96") align 8 %4, i8 1, i8 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.af, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.f, !llvm.loop !768

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.96") align 8, i8, i8) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(39) ptr @_ZN11OpenImageIO4v3_110ParamValueaSERKS1_(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

declare void @opj_image_destroy(ptr noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

declare void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_113Jpeg2000Input10yuv_to_rgbIhEEvPT_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %bb.b ]
  %.02231 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %i.e = sext i32 %.02231 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21
  %i.h = uitofp i8 %i.g to float
  %i.i = fmul nnan float %i.h, f0x3B808081
  %i.j = getelementptr i8, ptr %i.f, i64 1        ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21
  %i.l = uitofp i8 %i.k to float
  %i.m = fmul nnan float %i.l, f0x3B808081
  %i.n = fadd float %i.m, -5.000000e-01
  %i.o = getelementptr i8, ptr %i.f, i64 2        ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = uitofp i8 %i.p to float
  %i.r = fmul nnan float %i.q, f0x3B808081
  %i.s = fadd float %i.r, -5.000000e-01
  %i.t = fpext float %i.i to double               ; 3 uses
  %i.u = fpext float %i.s to double
  %i.v = fpext float %i.n to double               ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.v, double -3.440000e-01, double %i.t)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double 1.772000e+00, double %i.t)
  %3 = fptrunc double %i.w to float
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x double> poison, double %2, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.t, i64 1
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> <double -7.140000e-01, double 1.402000e+00>, <2 x double> %i.aa)
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = fmul <2 x float> %i.ac, splat (float 2.550000e+02) ; 2 uses
  %i.ae = fcmp olt <2 x float> %i.ad, zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ag = fadd <2 x float> %i.ad, %i.af           ; 2 uses
  %i.ah = fcmp oge <2 x float> %i.ag, zeroinitializer
  %i.ai = select <2 x i1> %i.ah, <2 x float> %i.ag, <2 x float> zeroinitializer ; 3 uses
  %i.aj = fcmp ogt <2 x float> %i.ai, splat (float 2.550000e+02) ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 1
  %i.al = extractelement <2 x float> %i.ai, i64 1
  %i.am = fptoui float %i.al to i8
  %i.an = select i1 %i.ak, i8 -1, i8 %i.am
  store i8 %i.an, ptr %i.f, align 1, !tbaa !21
  %i.ao = extractelement <2 x i1> %i.aj, i64 0
  %i.ap = extractelement <2 x float> %i.ai, i64 0
  %i.aq = fptoui float %i.ap to i8
  %i.ar = select i1 %i.ao, i8 -1, i8 %i.aq
  store i8 %i.ar, ptr %i.j, align 1, !tbaa !21
  %i.as = fmul float %3, 2.550000e+02             ; 2 uses
  %i.at = fcmp olt float %i.as, 0.000000e+00
  %i.au = select i1 %i.at, float -5.000000e-01, float 5.000000e-01
  %i.av = fadd float %i.as, %i.au                 ; 2 uses
  %.inv.i.i26 = fcmp oge float %i.av, 0.000000e+00
  %.0.i.i.i27 = select i1 %.inv.i.i26, float %i.av, float 0.000000e+00 ; 2 uses
  %i.aw = fcmp ogt float %.0.i.i.i27, 2.550000e+02
  %.1.i.i.i28 = select i1 %i.aw, float 2.550000e+02, float %.0.i.i.i27
  %i.ax = fptoui float %.1.i.i.i28 to i8
  store i8 %i.ax, ptr %i.o, align 1, !tbaa !21
  %i.ay = add nuw nsw i32 %.032, 1                ; 2 uses
  %i.az = load i32, ptr %i.d, align 4, !tbaa !132
  %i.ba = add nsw i32 %i.az, %.02231
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !131
  %i.bc = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !769
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_113Jpeg2000Input10yuv_to_rgbItEEvPT_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lver.check, label %._crit_edge

.lver.check:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !132  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %ident.check.not = icmp eq i32 %i.e, 1
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %indvars.iv.lver.orig = phi i64 [ %indvars.iv.next.lver.orig, %.ph.lver.orig ], [ 0, %.lver.check ] ; 2 uses
  %.032.lver.orig = phi i32 [ %i.at, %.ph.lver.orig ], [ 0, %.lver.check ]
  %i.g = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv.lver.orig ; 4 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !133
  %i.i = uitofp i16 %i.h to float
  %i.j = fmul nnan float %i.i, f0x37800080
  %i.k = getelementptr i8, ptr %i.g, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !133
  %i.m = uitofp i16 %i.l to float
  %i.n = fmul nnan float %i.m, f0x37800080
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !133
  %i.r = uitofp i16 %i.q to float
  %i.s = fmul nnan float %i.r, f0x37800080
  %i.t = fadd float %i.s, -5.000000e-01
  %i.u = fpext float %i.j to double               ; 3 uses
  %i.v = fpext float %i.t to double
  %i.w = fpext float %i.o to double               ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.w, double -3.440000e-01, double %i.u)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double 1.772000e+00, double %i.u)
  %3 = fptrunc double %i.x to float
  %i.y = insertelement <2 x double> poison, double %i.v, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %2, i64 1
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> <double 1.402000e+00, double -7.140000e-01>, <2 x double> %i.ab)
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float>
  %i.ae = fmul <2 x float> %i.ad, splat (float 6.553500e+04) ; 2 uses
  %i.af = fcmp olt <2 x float> %i.ae, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ah = fadd <2 x float> %i.ae, %i.ag           ; 2 uses
  %i.ai = fcmp oge <2 x float> %i.ah, zeroinitializer
  %i.aj = select <2 x i1> %i.ai, <2 x float> %i.ah, <2 x float> zeroinitializer ; 2 uses
  %i.ak = fcmp ogt <2 x float> %i.aj, splat (float 6.553500e+04)
  %i.al = select <2 x i1> %i.ak, <2 x float> splat (float 6.553500e+04), <2 x float> %i.aj
  %i.am = fptoui <2 x float> %i.al to <2 x i16>
  store <2 x i16> %i.am, ptr %i.g, align 2, !tbaa !133
  %i.an = fmul float %3, 6.553500e+04             ; 2 uses
  %i.ao = fcmp olt float %i.an, 0.000000e+00
  %i.ap = select i1 %i.ao, float -5.000000e-01, float 5.000000e-01
  %i.aq = fadd float %i.an, %i.ap                 ; 2 uses
  %.inv.i.i26.lver.orig = fcmp oge float %i.aq, 0.000000e+00
  %.0.i.i.i27.lver.orig = select i1 %.inv.i.i26.lver.orig, float %i.aq, float 0.000000e+00 ; 2 uses
  %i.ar = fcmp ogt float %.0.i.i.i27.lver.orig, 6.553500e+04
  %.1.i.i.i28.lver.orig = select i1 %i.ar, float 6.553500e+04, float %.0.i.i.i27.lver.orig
  %i.as = fptoui float %.1.i.i.i28.lver.orig to i16
  store i16 %i.as, ptr %i.p, align 2, !tbaa !133
  %i.at = add nuw nsw i32 %.032.lver.orig, 1      ; 2 uses
  %indvars.iv.next.lver.orig = add nsw i64 %indvars.iv.lver.orig, %i.f
  %exitcond.not.lver.orig = icmp eq i32 %i.at, %i.b
  br i1 %exitcond.not.lver.orig, label %._crit_edge, label %.ph.lver.orig, !llvm.loop !770

.ph:                                              ; preds = %.lver.check
  %scevgep = getelementptr i8, ptr %1, i64 2
  %load_initial = load i16, ptr %scevgep, align 2
  br label %bb.b

._crit_edge:                                      ; preds = %.ph.lver.orig, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.ph, %bb.b
  %store_forwarded = phi i16 [ %load_initial, %.ph ], [ %i.ce, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.032 = phi i32 [ 0, %.ph ], [ %i.cf, %bb.b ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !133
  %i.aw = uitofp i16 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x37800080
  %i.ay = uitofp i16 %store_forwarded to float
  %i.az = fmul nnan float %i.ay, f0x37800080
  %i.ba = fadd float %i.az, -5.000000e-01
  %i.bb = getelementptr i8, ptr %i.au, i64 4      ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !133
  %i.bd = uitofp i16 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x37800080
  %i.bf = fadd float %i.be, -5.000000e-01
  %i.bg = fpext float %i.ax to double             ; 3 uses
  %i.bh = fpext float %i.bf to double
  %i.bi = fpext float %i.ba to double             ; 2 uses
  %4 = tail call double @llvm.fmuladd.f64(double %i.bi, double -3.440000e-01, double %i.bg)
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double 1.772000e+00, double %i.bg)
  %5 = fptrunc double %i.bj to float
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %4, i64 1
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> <double 1.402000e+00, double -7.140000e-01>, <2 x double> %i.bn)
  %i.bp = fptrunc <2 x double> %i.bo to <2 x float>
  %i.bq = fmul <2 x float> %i.bp, splat (float 6.553500e+04) ; 2 uses
  %i.br = fcmp olt <2 x float> %i.bq, zeroinitializer
  %i.bs = select <2 x i1> %i.br, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fcmp oge <2 x float> %i.bt, zeroinitializer
  %i.bv = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> zeroinitializer ; 2 uses
  %i.bw = fcmp ogt <2 x float> %i.bv, splat (float 6.553500e+04)
  %i.bx = select <2 x i1> %i.bw, <2 x float> splat (float 6.553500e+04), <2 x float> %i.bv
  %i.by = fptoui <2 x float> %i.bx to <2 x i16>
  store <2 x i16> %i.by, ptr %i.au, align 2, !tbaa !133
  %i.bz = fmul float %5, 6.553500e+04             ; 2 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %i.cb = select i1 %i.ca, float -5.000000e-01, float 5.000000e-01
  %i.cc = fadd float %i.bz, %i.cb                 ; 2 uses
  %.inv.i.i26 = fcmp oge float %i.cc, 0.000000e+00
  %.0.i.i.i27 = select i1 %.inv.i.i26, float %i.cc, float 0.000000e+00 ; 2 uses
  %i.cd = fcmp ogt float %.0.i.i.i27, 6.553500e+04
  %.1.i.i.i28 = select i1 %i.cd, float 6.553500e+04, float %.0.i.i.i27
  %i.ce = fptoui float %.1.i.i.i28 to i16         ; 2 uses
  store i16 %i.ce, ptr %i.bb, align 2, !tbaa !133
  %i.cf = add nuw nsw i32 %.032, 1                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.f
  %exitcond.not = icmp eq i32 %i.cf, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !770
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { cold nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind allocsize(0) }

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
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!12 = distinct !{!12, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!13 = !{!14, !8, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!14, !16, i64 8}
!18 = !{!19, !8, i64 0}
!19 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !8, i64 0, !16, i64 8}
!20 = !{!19, !16, i64 8}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!15, !8, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 int", !9, i64 0}
!28 = !{!26, !27, i64 16}
!29 = !{!30, !31, i64 48}
!30 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !14, i64 8, !16, i64 40, !31, i64 48, !14, i64 56}
!31 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!32 = !{ptr @_ZN11OpenImageIO4v3_113Jpeg2000Input19create_decompressorEv}
!33 = !{!34, !68, i64 248}
!34 = !{!"_ZTSN11OpenImageIO4v3_113Jpeg2000InputE", !35, i64 0, !14, i64 184, !64, i64 216, !67, i64 240, !68, i64 248, !68, i64 256, !48, i64 264}
!35 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !36, i64 8, !55, i64 168}
!36 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !37, i64 64, !38, i64 72, !43, i64 96, !4, i64 120, !4, i64 124, !48, i64 128, !49, i64 136}
!37 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!38 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !9, i64 0}
!43 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!48 = !{!"bool", !5, i64 0}
!49 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !50, i64 0}
!50 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !9, i64 0}
!55 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !56, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !58, i64 0}
!58 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !59, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !60, i64 0, !62, i64 8}
!60 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !61, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !9, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !9, i64 0}
!64 = !{!"_ZTSSt6vectorIiSaIiEE", !65, i64 0}
end_hunk_0
