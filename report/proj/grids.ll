Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/grids?download=true
inline.NumInlined: 4615
inline.NumDeleted: 2090
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5osgeo4proj20GTXVerticalShiftGridD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  tail call void @_ZN5osgeo4proj5lru115CacheImSt6vectorIfSaIfEENS1_8NullLockESt13unordered_mapImSt14_List_iteratorINS1_12KeyValuePairImS5_EEESt4hashImESt8equal_toImESaISt4pairIKmSB_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.i) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117  ; 3 uses
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(73) %i.k) #31, !inline_history !2
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj17VerticalShiftGridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.p, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj17VerticalShiftGridEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj17VerticalShiftGridEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(144) %i.s) #31, !inline_history !3
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj17VerticalShiftGridEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.o, align 8, !tbaa !120
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.p, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !124
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32, !inline_history !125
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5osgeo4proj4GridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN5osgeo4proj17VerticalShiftGridD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !73
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #32, !inline_history !126
  br label %_ZN5osgeo4proj17VerticalShiftGridD2Ev.exit

_ZN5osgeo4proj17VerticalShiftGridD2Ev.exit:       ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit

_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj5lru115CacheImSt6vectorIfSaIfEENS1_8NullLockESt13unordered_mapImSt14_List_iteratorINS1_12KeyValuePairImS5_EEESt4hashImESt8equal_toImESaISt4pairIKmSB_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj20GTXVerticalShiftGridD0Ev(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5osgeo4proj20GTXVerticalShiftGridD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #32
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN5osgeo4proj20GTXVerticalShiftGrid4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 9 uses
  %3 = alloca %"class.std::unique_ptr.18", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(73) %i.c, ptr noundef nonnull %i.b, i64 noundef 40)
  %.not = icmp eq i64 %i.g, 40
  br i1 %.not, label %.preheader.i.preheader, label %bb.b

.preheader.i.preheader:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = load <16 x i8>, ptr %i.b, align 16, !tbaa !73
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  store <16 x i8> %i.j, ptr %i.b, align 16, !tbaa !73
  %i.k = load <16 x i8>, ptr %i.h, align 16, !tbaa !73
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8> ; 2 uses
  store <16 x i8> %i.l, ptr %i.h, align 16, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.n = load <8 x i8>, ptr %i.m, align 16, !tbaa !73
  %i.o = shufflevector <8 x i8> %i.n, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %.fr = freeze <8 x i8> %i.o                     ; 2 uses
  store <8 x i8> %.fr, ptr %i.m, align 16, !tbaa !73
  %.cast = bitcast <16 x i8> %i.l to <2 x double> ; 3 uses
  %.cast61 = bitcast <8 x i8> %.fr to <2 x i32>   ; 5 uses
  %i.p = icmp slt <2 x i32> %.cast61, splat (i32 1)
  %i.q = load <2 x double>, ptr %i.b, align 16
  %.fr62 = freeze <2 x double> %i.q               ; 4 uses
  %i.r = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr62)
  %i.s = fcmp ogt <2 x double> %i.r, <double 9.000000e+01, double 3.600000e+02>
  %rdx.op = or <2 x i1> %i.s, %i.p
  %i.t = bitcast <2 x i1> %rdx.op to i2
  %.not63 = icmp eq i2 %i.t, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str)
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.n

bb.c:                                             ; preds = %.preheader.i.preheader
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1)
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.n

bb.d:                                             ; preds = %.preheader.i.preheader
  %i.u = extractelement <2 x double> %.fr62, i64 1 ; 3 uses
  %i.v = fcmp ult double %i.u, 1.800000e+02
  %i.w = fadd double %i.u, -3.600000e+02
  %.049 = select i1 %i.v, double %i.u, double %i.w ; 4 uses
  %i.x = fcmp ult double %.049, 0.000000e+00
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = extractelement <2 x i32> %.cast61, i64 1
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = extractelement <2 x double> %.cast, i64 1
  %i.ab = call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %.049)
  %i.ac = fcmp ogt double %i.ab, 1.800000e+02
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ad = insertelement <2 x double> poison, double %.049, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> %.fr62, <2 x i32> <i32 0, i32 2>
  %i.af = fmul <2 x double> %i.ae, splat (double f0x3F91DF46A2529D39)
  %i.ag = fmul <2 x double> %.cast, splat (double f0x3F91DF46A2529D39) ; 2 uses
  %i.ah = add nsw <2 x i32> %.cast61, splat (i32 -1)
  %i.ai = uitofp nneg <2 x i32> %i.ah to <2 x double>
  %i.aj = insertelement <2 x double> %.fr62, double %.049, i64 1
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.cast, <2 x double> %i.ai, <2 x double> %i.aj)
  %i.al = fmul <2 x double> %i.ak, splat (double f0x3F91DF46A2529D39)
  %i.am = fdiv <2 x double> splat (double 1.000000e+00), %i.ag
  %i.an = extractelement <2 x i32> %.cast61, i64 1
  %i.ao = udiv i32 1048576, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.ap = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #34, !noalias !426 ; 14 uses
  %i.aq = zext nneg i32 %i.ao to i64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5osgeo4proj5lru115CacheImSt6vectorIfSaIfEENS1_8NullLockESt13unordered_mapImSt14_List_iteratorINS1_12KeyValuePairImS5_EEESt4hashImESt8equal_toImESaISt4pairIKmSB_EEEEE, i64 16), ptr %i.ap, align 8, !tbaa !63, !noalias !426
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  store i64 0, ptr %i.as, align 8, !noalias !426
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !91, !noalias !426
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 1, ptr %i.au, align 8, !tbaa !90, !noalias !426
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !noalias !426
  store float 1.000000e+00, ptr %i.as, align 8, !tbaa !127, !noalias !426
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !noalias !426
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !108, !noalias !426
  store ptr %i.ax, ptr %i.ax, align 8, !tbaa !97, !noalias !426
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store i64 0, ptr %i.az, align 8, !tbaa !128, !noalias !426
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store i64 %i.aq, ptr %i.ba, align 8, !tbaa !106, !noalias !426
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store i64 10, ptr %i.bb, align 8, !tbaa !107, !noalias !426
  store ptr %i.ap, ptr %3, align 8, !tbaa !115, !alias.scope !426
  %i.bc = ptrtoint ptr %i.ap to i64
  %i.bd = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #34
          to label %bb.h unwind label %bb.k       ; 18 uses

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5osgeo4proj4GridE, i64 16), ptr %i.bd, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !67
  %i.bg = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !71 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !72
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !70
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.h
  %i.bm = phi ptr [ %i.bk, %.noexc ], [ %i.bf, %bb.h ] ; 2 uses
  switch i64 %i.bi, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !73
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !73
  br label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  br label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.i, %bb.j
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !71
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bt = shufflevector <2 x i32> %.cast61, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bt, ptr %i.bs, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i8 1, ptr %i.bu, align 8, !tbaa !77
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store <2 x double> %i.af, ptr %.sroa.560.0..sroa_idx, align 8, !tbaa !51
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bv = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bv, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !51
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bw = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bw, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !51
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bx = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bx, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj20GTXVerticalShiftGridE, i64 16), ptr %i.bd, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  store ptr %0, ptr %i.bz, align 8, !tbaa !151
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 152
  %i.cb = load i64, ptr %1, align 8, !tbaa !117
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !117
  store ptr null, ptr %1, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  store i64 %i.bc, ptr %i.cc, align 8, !tbaa !115
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 192) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.ce, %bb.k ]
  call void @_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.bd, %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  ret ptr %.1
}

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #11

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj20GTXVerticalShiftGrid7valueAtEiiRf(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115  ; 5 uses
  %i.d = zext i32 %2 to i64                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %.not.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  %i.n = urem i64 %i.d, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj11CTable2GridD2Ev:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(144) %i.j) #31, !inline_history !19
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.f, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  %i.o = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !273
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #32, !inline_history !274
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5osgeo4proj4GridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5osgeo4proj19HorizontalShiftGridD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !73
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #32, !inline_history !275
  br label %_ZN5osgeo4proj19HorizontalShiftGridD2Ev.exit

_ZN5osgeo4proj19HorizontalShiftGridD2Ev.exit:     ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj11CTable2GridD0Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj11CTable2GridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(73) %i.b) #31, !inline_history !533
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj19HorizontalShiftGridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(144) %i.j) #31, !inline_history !534
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i
  %i.o = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.g, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !273
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #32, !inline_history !535
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i.i

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5osgeo4proj4GridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5osgeo4proj11CTable2GridD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !73
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #32, !inline_history !536
  br label %_ZN5osgeo4proj11CTable2GridD2Ev.exit

_ZN5osgeo4proj11CTable2GridD2Ev.exit:             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN5osgeo4proj11CTable2Grid4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [160 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(73) %i.c, ptr noundef nonnull %i.b, i64 noundef 160)
  %.not = icmp eq i64 %i.g, 160
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.i = load <2 x double>, ptr %i.h, align 16    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.k = load <2 x double>, ptr %i.j, align 16    ; 5 uses
  %i.l = extractelement <2 x double> %i.i, i64 0
  %i.m = call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ugt double %i.m, f0x402921FB54442D18
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = extractelement <2 x double> %i.k, i64 0
  %i.p = extractelement <2 x double> %i.i, i64 1
  %i.q = call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ole double %i.q, f0x4009220092718F51
  %i.s = fcmp ogt double %i.o, 1.000000e-10
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  %i.t = extractelement <2 x double> %i.k, i64 1
  %i.u = fcmp ogt double %i.t, 1.000000e-10
  %or.cond5 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !70
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %i.v)
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.x = load <2 x i32>, ptr %i.w, align 16       ; 3 uses
  %i.y = icmp slt <2 x i32> %i.x, splat (i32 1)   ; 2 uses
  %i.z = extractelement <2 x i1> %i.y, i64 0
  %i.aa = extractelement <2 x i1> %i.y, i64 1
  %or.cond7 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ab = add nsw <2 x i32> %i.x, splat (i32 -1)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.i)
  %i.af = fdiv <2 x double> splat (double 1.000000e+00), %i.k
  %i.ag = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34 ; 16 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !117   ; 3 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5osgeo4proj4GridE, i64 16), ptr %i.ag, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !67
  %i.al = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !71 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.an, ptr %i.a, align 8, !tbaa !72
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !70
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.h
  %i.ar = phi ptr [ %i.ap, %.noexc ], [ %i.ak, %bb.h ] ; 2 uses
  switch i64 %i.an, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.as = load i8, ptr %i.al, align 1, !tbaa !73
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !73
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.i, %bb.j
  %i.at = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !71
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store <2 x i32> %i.x, ptr %i.ax, align 8, !tbaa !129
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i8 1, ptr %i.ay, align 8, !tbaa !77
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store <2 x double> %i.i, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !51
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store <2 x double> %i.ae, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !51
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store <2 x double> %i.k, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !51
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store <2 x double> %i.af, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj11CTable2GridE, i64 16), ptr %i.ag, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  store ptr %0, ptr %i.ba, align 8, !tbaa !283
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  store i64 %i.ah, ptr %i.bb, align 8, !tbaa !117
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %.not.i25 = icmp eq i64 %i.ah, 0
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit27, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i26

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i26: ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(73) %i.ai) #31, !inline_history !2
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit27

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit27: ; preds = %bb.k, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i26
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 160) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  resume { ptr, i32 } %i.bc

bb.l:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, %bb.g, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ %i.ag, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj11CTable2Grid7valueAtEiibRfS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75
  %i.f = mul nsw i32 %i.e, %2
  %i.g = add nsw i32 %i.f, %1
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = add nsw i64 %i.i, 160
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(73) %i.c, i64 noundef %i.j, i32 noundef 0) ; 0 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(73) %i.o, ptr noundef nonnull %i.a, i64 noundef 8)
  %.not = icmp eq i64 %i.s, 8                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !283
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.u, i32 noundef 1029)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !80
  store float %i.w, ptr %5, align 4, !tbaa !80
  %i.x = load float, ptr %i.a, align 4, !tbaa !80 ; 2 uses
  %i.y = fneg float %i.x
  %i.z = select i1 %3, float %i.y, float %i.x
  store float %i.z, ptr %4, align 4, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj8NTv2Grid7valueAtEiibRfS2_(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !287
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = zext i32 %2 to i64                       ; 2 uses
  %i.i = or disjoint i64 %i.g, %i.h               ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %.not.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.l, %bb.b ], [ %.sroa.06.0.i.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %i.s = urem i64 %i.i, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !72
  %i.z = icmp eq i64 %i.i, %i.y
  br i1 %i.z, label %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.i, %i.ad
  br i1 %i.aa, label %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

end_hunk_1
