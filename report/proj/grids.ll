Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/grids?download=true
inline.NumInlined: 4615
inline.NumDeleted: 2090
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5osgeo4proj11CTable2GridD2Ev:bb.a
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(73) %i.b) #31, !inline_history !2
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj19HorizontalShiftGridE, i64 16), ptr %0, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269  ; 3 uses
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
  %i.x = load <2 x i32>, ptr %i.w, align 16
  %.fr = freeze <2 x i32> %i.x                    ; 3 uses
  %3 = icmp slt <2 x i32> %.fr, splat (i32 1)
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond7.not = icmp eq i2 %4, 0
  br i1 %or.cond7.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = add nsw <2 x i32> %.fr, splat (i32 -1)
  %i.z = uitofp nneg <2 x i32> %i.y to <2 x double>
  %i.aa = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.i)
  %i.ac = fdiv <2 x double> splat (double 1.000000e+00), %i.k
  %i.ad = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34 ; 16 uses
  %i.ae = load i64, ptr %1, align 8, !tbaa !117   ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !117
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5osgeo4proj4GridE, i64 16), ptr %i.ad, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !67
  %i.ai = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !71 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !72
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !70
  %i.an = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.h
  %i.ao = phi ptr [ %i.am, %.noexc ], [ %i.ah, %bb.h ] ; 2 uses
  switch i64 %i.ak, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !73
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !73
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.i, %bb.j
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store <2 x i32> %.fr, ptr %i.au, align 8, !tbaa !129
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 1, ptr %i.av, align 8, !tbaa !77
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store <2 x double> %i.i, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !51
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store <2 x double> %i.ab, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !51
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store <2 x double> %i.k, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !51
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store <2 x double> %i.ac, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj11CTable2GridE, i64 16), ptr %i.ad, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store ptr %0, ptr %i.ax, align 8, !tbaa !283
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  store i64 %i.ae, ptr %i.ay, align 8, !tbaa !117
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %.not.i25 = icmp eq i64 %i.ae, 0
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit27, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i26

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i26: ; preds = %bb.k
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(73) %i.af) #31, !inline_history !2
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit27

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit27: ; preds = %bb.k, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i26
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 160) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  resume { ptr, i32 } %i.az

bb.l:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, %bb.g, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ %i.ad, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ]
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

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.w, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.r
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.s
  br i1 %.not19.i.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.h
  br label %.loopexit, !llvm.loop !1

_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.d ], [ %i.w, %bb.f ], [ %i.ab, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !95 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97 ; 2 uses
  %i.ak = icmp eq ptr %i.ag, %i.ai
  %i.al = icmp eq ptr %i.ag, %i.aj
  %or.cond.i.i.i.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i.i.i.i, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i
  tail call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.ai, ptr noundef %i.aj) #31
  %.pre.i.i = load ptr, ptr %i.ah, align 8, !tbaa !95
  br label %bb.ab

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !75 ; 4 uses
  %i.ap = shl nsw i32 %i.ao, 2
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !152 ; 2 uses
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2                 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aq
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.az = sub nuw nsw i64 %i.aq, %i.ax
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.az)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge unwind label %bb.m

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge:    ; preds = %bb.j
end_hunk_0
