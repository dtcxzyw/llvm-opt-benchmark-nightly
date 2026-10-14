Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE17_M_default_appendEm:bb.a
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !162
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !390, !noalias !389
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !389, !noalias !390
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165, !alias.scope !390, !noalias !389
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !165, !alias.scope !389, !noalias !390
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !390, !noalias !389
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37

_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37: ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !161
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392
  tail call void @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !393  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.101", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !159  ; 2 uses
  %i.h = add i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !125
  %.not = icmp ult i32 %i.h, %i.j
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !161
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.o, ptr %i.k, align 8, !tbaa !162
  br label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit unwind label %bb.f

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !tbaa !167    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.pr to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.t) #23
  br label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit

_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = load i32, ptr %i.i, align 8, !tbaa !125
  %i.x = zext i32 %i.w to i64
  call void @_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.x)
  store i32 0, ptr %i.f, align 8, !tbaa !159
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !167    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !165
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #23
  br label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit4

_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit, %bb.b
  %i.af = phi i32 [ 0, %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit ], [ %i.g, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !160
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24
  %i.aj = zext i32 %i.af to i64
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !167
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.aj
  %i.am = add i32 %i.af, 1
  store i32 %i.am, ptr %i.f, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !85
  store ptr %i.an, ptr %i.c, align 8, !tbaa !155
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.al, %bb.h ], [ %i.ao, %bb.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN3igl8geodesic22GeodesicAlgorithmExact19intersect_intervalsEPNS0_8IntervalEPNS0_16IntervalWithStopE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 19 uses
  %i.b = alloca [3 x i32], align 4                ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load double, ptr %i.e, align 8, !tbaa !87 ; 2 uses
  %i.g = fmul double %i.f, f0x3EB0C6F7A0B5ED8D    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !87
  %i.j = fcmp ogt double %i.i, f0x547D42AEA2879F2E
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load double, ptr %1, align 8, !tbaa !87  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  store double %i.k, ptr %i.l, align 8, !tbaa !87
  %i.m = load double, ptr %2, align 8, !tbaa !87  ; 2 uses
  %i.n = fsub double %i.m, %i.g
  %i.o = fcmp olt double %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.m, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 1, ptr %i.q, align 4, !tbaa !153
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %.0151 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ]     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store i32 %.sink, ptr %i.r, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.in.i = select i1 %.not.i, ptr %i.w, ptr %i.t
  %i.x = load double, ptr %.in.i, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !87 ; 2 uses
  %i.aa = fadd double %i.g, %i.z
  %i.ab = fcmp ogt double %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = zext nneg i32 %.0151 to i64             ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !153
  %i.ae = add nuw nsw i32 %.0151, 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac
  store double %i.z, ptr %i.af, align 8, !tbaa !87
  %.pre = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %.pre, %bb.e ], [ %i.v, %bb.d ]
  %.1152 = phi i32 [ %i.ae, %bb.e ], [ %.0151, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.in.i166 = select i1 %.not.i, ptr %i.ah, ptr %i.t
  %i.ai = load double, ptr %.in.i166, align 8, !tbaa !87
  %i.aj = zext nneg i32 %.1152 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store double %i.ai, ptr %i.al, align 8, !tbaa !87
  br label %bb.ak

bb.g:                                             ; preds = %bb.a
  %i.am = fmul double %i.f, 1.000000e-08          ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !87 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !87 ; 7 uses
  %i.ar = fsub double %i.ao, %i.aq                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load <2 x double>, ptr %i.as, align 8, !tbaa !87 ; 7 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0 ; 4 uses
  %i.ay = load double, ptr %i.au, align 8, !tbaa !87
  %i.az = load <2 x double>, ptr %i.at, align 8, !tbaa !87 ; 7 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 3 uses
  %i.bb = load double, ptr %i.av, align 8, !tbaa !87
  %i.bc = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc          ; 7 uses
  %i.be = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.be, <2 x double> %i.bd) ; 5 uses
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.bh = fcmp olt double %i.bg, %i.g
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fsub <2 x double> %i.az, %i.aw
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %4 = tail call noundef double @llvm.fabs.f64(double %3)
  %5 = fcmp ogt double %4, %i.am                  ; 2 uses
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop328 = fsub <2 x double> %shift, %i.bf
  %i.bi = extractelement <2 x double> %foldExtExtBinop328, i64 0
  %i.bj = fmul double %3, 2.000000e+00
  %i.bk = fdiv double %i.bi, %i.bj
  %.sroa.0.0 = select i1 %5, double %i.bk, double undef
  %.0149 = zext i1 %5 to i32
  %.sroa.0.0.vec.insert = insertelement <2 x double> <double poison, double undef>, double %.sroa.0.0, i64 0
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.bl = fmul double %i.ar, %i.ar                ; 4 uses
  %i.bm = extractelement <2 x double> %i.bf, i64 0
  %shift330 = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop331 = fsub <2 x double> %shift330, %i.bf
  %i.bn = extractelement <2 x double> %foldExtExtBinop331, i64 0
  %i.bo = fsub double %i.bn, %i.bl
  %i.bp = fmul double %i.bo, 5.000000e-01         ; 3 uses
  %foldExtExtBinop333 = fsub <2 x double> %i.aw, %i.az
  %i.bq = extractelement <2 x double> %foldExtExtBinop333, i64 0 ; 3 uses
  %i.br = fneg double %i.bl
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.br) ; 5 uses
  %i.bt = fmul double %i.ax, %i.bl
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bq, double %i.bt) ; 7 uses
  %i.bv = fneg double %i.bm
  %i.bw = fmul double %i.bl, %i.bv
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bw) ; 2 uses
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.bs)
  %i.bz = fcmp olt double %i.by, %i.am
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.cb = fcmp ogt double %i.ca, %i.am
  br i1 %i.cb, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cc = fneg double %i.bx
  %i.cd = fdiv double %i.cc, %i.bu
  %.sroa.0.0.vec.insert347 = insertelement <2 x double> <double poison, double undef>, double %i.cd, i64 0
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.ce = fneg double %i.bx
  %i.cf = fmul double %i.bs, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.cf) ; 3 uses
  %i.ch = fmul double %i.am, %i.am
  %i.ci = fcmp ogt double %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call double @sqrt(double noundef %i.cg) #22 ; 2 uses
  %i.ck = fcmp ogt double %i.bs, 0.000000e+00
  %i.cl = fneg double %i.bu
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cj, i64 1 ; 2 uses
  %i.co = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.bu, i64 1 ; 2 uses
  %i.cq = fsub <2 x double> %i.cn, %i.cp
  %i.cr = fsub <2 x double> %i.cn, %i.cp
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = insertelement <2 x i1> poison, i1 %i.ck, i64 0
  %i.cu = shufflevector <2 x i1> %i.ct, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cv = select <2 x i1> %i.cu, <2 x double> %i.cq, <2 x double> %i.cs
  %i.cw = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x double> %i.cv, %i.cx          ; 3 uses
  %shift335 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop336 = fsub <2 x double> %shift335, %i.cy
  %i.cz = extractelement <2 x double> %foldExtExtBinop336, i64 0
  %i.da = fcmp ogt double %i.cz, %i.am
  %. = select i1 %i.da, i32 2, i32 1
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.db = fcmp ult double %i.cg, 0.000000e+00
  br i1 %i.db, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = fneg double %i.bu
  %i.dd = fdiv double %i.dc, %i.bs
  %.sroa.0.0.vec.insert349 = insertelement <2 x double> <double poison, double undef>, double %i.dd, i64 0
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o, %bb.h
  %.3 = phi i32 [ %.0149, %bb.h ], [ 1, %bb.k ], [ 0, %bb.j ], [ %., %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ] ; 3 uses
  %6 = phi <2 x double> [ %.sroa.0.0.vec.insert, %bb.h ], [ %.sroa.0.0.vec.insert347, %bb.k ], [ undef, %bb.j ], [ %i.cy, %bb.m ], [ undef, %bb.n ], [ %.sroa.0.0.vec.insert349, %bb.o ] ; 2 uses
  %i.de = load double, ptr %1, align 8, !tbaa !87 ; 5 uses
  %i.df = load double, ptr %2, align 8, !tbaa !87 ; 2 uses
  %i.dg = fcmp olt double %i.de, %i.df
  %i.dh = select i1 %i.dg, double %i.df, double %i.de ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !105 ; 3 uses
  %.not.i167 = icmp eq ptr %i.dj, null            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %.in.i168 = select i1 %.not.i167, ptr %i.dm, ptr %i.dj
  %i.dn = load double, ptr %.in.i168, align 8, !tbaa !87 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !87 ; 2 uses
  %i.dq = fcmp olt double %i.dp, %i.dn
  %.sroa.speculated = select i1 %i.dq, double %i.dp, double %i.dn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double %i.dh, ptr %i.a, align 16, !tbaa !87
  %.not204 = icmp eq i32 %.3, 0
  br i1 %.not204, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sroa.speculated, ptr %i.dr, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph182

.lr.ph:                                           ; preds = %bb.p
  %i.ds = fadd double %i.g, %i.dh                 ; 3 uses
  %i.dt = fsub double %.sroa.speculated, %i.g     ; 3 uses
  %7 = extractelement <2 x double> %6, i64 0      ; 6 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %6, i64 1 ; 3 uses
  %i.du = fcmp ogt double %7, %i.ds
  %i.dv = fcmp olt double %7, %i.dt
  %or.cond = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

._crit_edge:                                      ; preds = %9, %bb.u, %8, %bb.r
  %.1.lcssa = phi i8 [ %.1, %bb.r ], [ %.1.1, %8 ], [ %12, %bb.u ], [ %.1.1, %9 ]
  %i.dw = zext i8 %.1.lcssa to i64                ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dw
  store double %.sroa.speculated, ptr %i.dx, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %._crit_edge, %._crit_edge.thread
  %i.dy = phi i64 [ 1, %._crit_edge.thread ], [ %i.dw, %._crit_edge ] ; 19 uses
  %i.dz = fcmp oeq double %i.ao, 1.000000e+100
  %i.ea = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %i.eb = fcmp oeq double %i.aq, 1.000000e+100    ; 2 uses
  %i.ec = fcmp oeq double %i.bb, 0.000000e+00     ; 2 uses
  br i1 %i.dz, label %.lr.ph182.split.us, label %.lr.ph182.split

.lr.ph182.split.us:                               ; preds = %.lr.ph182
  br i1 %i.eb, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader, label %.lr.ph182.split.us.split

_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader: ; preds = %.lr.ph182.split.us
  %i.ed = shl nuw nsw i64 %i.dy, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.b, i8 0, i64 %i.ed, i1 false), !tbaa !153
  br label %._crit_edge183

.lr.ph182.split.us.split:                         ; preds = %.lr.ph182.split.us
  br i1 %i.ec, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader: ; preds = %.lr.ph182.split.us.split
  %min.iters.check292 = icmp samesign ult i64 %i.dy, 2
  br i1 %min.iters.check292, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339, label %vector.ph293

vector.ph293:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader
  %n.vec294 = and i64 %i.dy, 254                  ; 3 uses
  %broadcast.splat296 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert299 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat300 = shufflevector <2 x double> %broadcast.splatinsert299, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph293
  %index302 = phi i64 [ 0, %vector.ph293 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index302 ; 2 uses
  %wide.load303 = load <2 x double>, ptr %i.ee, align 16, !tbaa !87
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %wide.load304 = load <2 x double>, ptr %i.ef, align 8, !tbaa !87
  %i.eg = fadd <2 x double> %wide.load303, %wide.load304
  %i.eh = fmul <2 x double> %i.eg, splat (double 5.000000e-01)
  %i.ei = fsub <2 x double> %i.eh, %broadcast.splat296 ; 2 uses
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ei, <2 x double> %broadcast.splat298)
  %i.ek = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ej)
  %i.el = fadd <2 x double> %broadcast.splat300, %i.ek
  %i.em = fcmp ult <2 x double> %i.el, splat (double 1.000000e+100)
  %i.en = zext <2 x i1> %i.em to <2 x i32>
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index302
  store <2 x i32> %i.en, ptr %i.eo, align 4, !tbaa !153
  %index.next305 = add nuw i64 %index302, 2       ; 2 uses
  %i.ep = icmp eq i64 %index.next305, %n.vec294
  br i1 %i.ep, label %middle.block306, label %vector.body301, !llvm.loop !394

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %i.dy, %n.vec294
  br i1 %cmp.n307, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader, %middle.block306
  %indvars.iv228.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader ], [ %n.vec294, %middle.block306 ]
  %i.eq = extractelement <2 x double> %i.bd, i64 1
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader: ; preds = %.lr.ph182.split.us.split
  %min.iters.check310 = icmp samesign ult i64 %i.dy, 4
  br i1 %min.iters.check310, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338, label %vector.ph311

vector.ph311:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader
  %n.vec312 = and i64 %i.dy, 252                  ; 3 uses
  %broadcast.splat314 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert315 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat316 = shufflevector <2 x double> %broadcast.splatinsert315, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph311
  %index318 = phi i64 [ 0, %vector.ph311 ], [ %index.next323, %vector.body317 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index318 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load319 = load <2 x double>, ptr %i.er, align 16, !tbaa !87
  %wide.load320 = load <2 x double>, ptr %i.es, align 16, !tbaa !87
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %wide.load321 = load <2 x double>, ptr %i.et, align 8, !tbaa !87
  %wide.load322 = load <2 x double>, ptr %i.eu, align 8, !tbaa !87
  %i.ev = fadd <2 x double> %wide.load319, %wide.load321
  %i.ew = fadd <2 x double> %wide.load320, %wide.load322
  %i.ex = fmul <2 x double> %i.ev, splat (double 5.000000e-01)
  %i.ey = fmul <2 x double> %i.ew, splat (double 5.000000e-01)
  %i.ez = fsub <2 x double> %i.ex, %broadcast.splat314
  %i.fa = fsub <2 x double> %i.ey, %broadcast.splat314
  %i.fb = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ez)
  %i.fc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fa)
  %i.fd = fadd <2 x double> %broadcast.splat316, %i.fb
  %i.fe = fadd <2 x double> %broadcast.splat316, %i.fc
  %i.ff = fcmp ult <2 x double> %i.fd, splat (double 1.000000e+100)
  %i.fg = fcmp ult <2 x double> %i.fe, splat (double 1.000000e+100)
  %i.fh = zext <2 x i1> %i.ff to <2 x i32>
  %i.fi = zext <2 x i1> %i.fg to <2 x i32>
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index318 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store <2 x i32> %i.fh, ptr %i.fj, align 4, !tbaa !153
  store <2 x i32> %i.fi, ptr %i.fk, align 4, !tbaa !153
  %index.next323 = add nuw i64 %index318, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next323, %n.vec312
  br i1 %i.fl, label %middle.block324, label %vector.body317, !llvm.loop !395

middle.block324:                                  ; preds = %vector.body317
  %cmp.n325 = icmp eq i64 %i.dy, %n.vec312
  br i1 %cmp.n325, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader, %middle.block324
  %indvars.iv233.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader ], [ %n.vec312, %middle.block324 ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ %indvars.iv233.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv233
  %i.fn = load <2 x double>, ptr %i.fm, align 8, !tbaa !87
  %i.fo = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fn)
  %i.fp = fmul double %i.fo, 5.000000e-01
  %i.fq = fsub double %i.fp, %i.ba
  %i.fr = tail call noundef double @llvm.fabs.f64(double %i.fq)
  %.0.i172.us.us = fadd double %i.aq, %i.fr
  %i.fs = fcmp ult double %.0.i172.us.us, 1.000000e+100
  %i.ft = zext i1 %i.fs to i32
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv233
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !153
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %i.dy
  br i1 %exitcond237.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193, !llvm.loop !396

_ZN3igl8geodesic8Interval6signalEd.exit.us:       ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339, %_ZN3igl8geodesic8Interval6signalEd.exit.us
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ %indvars.iv228.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv228
  %i.fw = load <2 x double>, ptr %i.fv, align 8, !tbaa !87
  %i.fx = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fw)
  %i.fy = fmul double %i.fx, 5.000000e-01
  %i.fz = fsub double %i.fy, %i.ba                ; 2 uses
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.fz, double %i.eq)
  %sqrt.i170.us = tail call double @llvm.sqrt.f64(double %i.ga)
  %.0.i172.us = fadd double %i.aq, %sqrt.i170.us
  %i.gb = fcmp ult double %.0.i172.us, 1.000000e+100
  %i.gc = zext i1 %i.gb to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv228
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !153
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %i.dy
  br i1 %exitcond232.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us, !llvm.loop !397

.lr.ph182.split:                                  ; preds = %.lr.ph182
  br i1 %i.eb, label %.lr.ph182.split.split.us, label %.lr.ph182.split.split.preheader

.lr.ph182.split.split.preheader:                  ; preds = %.lr.ph182.split
  %i.ge = extractelement <2 x double> %i.bd, i64 0
  %i.gf = extractelement <2 x double> %i.bd, i64 1
  br label %.lr.ph182.split.split

.lr.ph182.split.split.us:                         ; preds = %.lr.ph182.split
  br i1 %i.ea, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader: ; preds = %.lr.ph182.split.split.us
  %min.iters.check = icmp samesign ult i64 %i.dy, 2
  br i1 %min.iters.check, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343, label %vector.ph

vector.ph:                                        ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader
  %n.vec = and i64 %i.dy, 254                     ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat269 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert270 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat271 = shufflevector <2 x double> %broadcast.splatinsert270, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gg, align 16, !tbaa !87
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %wide.load272 = load <2 x double>, ptr %i.gh, align 8, !tbaa !87
  %i.gi = fadd <2 x double> %wide.load, %wide.load272
  %i.gj = fmul <2 x double> %i.gi, splat (double 5.000000e-01)
  %i.gk = fsub <2 x double> %i.gj, %broadcast.splat ; 2 uses
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gk, <2 x double> %broadcast.splat269)
  %i.gm = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gl)
  %i.gn = fadd <2 x double> %broadcast.splat271, %i.gm
  %i.go = fcmp ugt <2 x double> %i.gn, splat (double 1.000000e+100)
  %i.gp = zext <2 x i1> %i.go to <2 x i32>
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <2 x i32> %i.gp, ptr %i.gq, align 4, !tbaa !153
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343

_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader ], [ %n.vec, %middle.block ]
  %i.gs = extractelement <2 x double> %i.bd, i64 0
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us186

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader: ; preds = %.lr.ph182.split.split.us
  %min.iters.check274 = icmp samesign ult i64 %i.dy, 4
  br i1 %min.iters.check274, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341, label %vector.ph275

vector.ph275:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader
  %n.vec276 = and i64 %i.dy, 252                  ; 3 uses
  %broadcast.splat278 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert279 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat280 = shufflevector <2 x double> %broadcast.splatinsert279, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph275
  %index282 = phi i64 [ 0, %vector.ph275 ], [ %index.next287, %vector.body281 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index282 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load283 = load <2 x double>, ptr %i.gt, align 16, !tbaa !87
  %wide.load284 = load <2 x double>, ptr %i.gu, align 16, !tbaa !87
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %wide.load285 = load <2 x double>, ptr %i.gv, align 8, !tbaa !87
  %wide.load286 = load <2 x double>, ptr %i.gw, align 8, !tbaa !87
  %i.gx = fadd <2 x double> %wide.load283, %wide.load285
  %i.gy = fadd <2 x double> %wide.load284, %wide.load286
  %i.gz = fmul <2 x double> %i.gx, splat (double 5.000000e-01)
  %i.ha = fmul <2 x double> %i.gy, splat (double 5.000000e-01)
  %i.hb = fsub <2 x double> %i.gz, %broadcast.splat278
  %i.hc = fsub <2 x double> %i.ha, %broadcast.splat278
  %i.hd = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hb)
  %i.he = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hc)
  %i.hf = fadd <2 x double> %broadcast.splat280, %i.hd
  %i.hg = fadd <2 x double> %broadcast.splat280, %i.he
  %i.hh = fcmp ugt <2 x double> %i.hf, splat (double 1.000000e+100)
  %i.hi = fcmp ugt <2 x double> %i.hg, splat (double 1.000000e+100)
  %i.hj = zext <2 x i1> %i.hh to <2 x i32>
  %i.hk = zext <2 x i1> %i.hi to <2 x i32>
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index282 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store <2 x i32> %i.hj, ptr %i.hl, align 4, !tbaa !153
  store <2 x i32> %i.hk, ptr %i.hm, align 4, !tbaa !153
  %index.next287 = add nuw i64 %index282, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next287, %n.vec276
  br i1 %i.hn, label %middle.block288, label %vector.body281, !llvm.loop !399

middle.block288:                                  ; preds = %vector.body281
  %cmp.n289 = icmp eq i64 %i.dy, %n.vec276
  br i1 %cmp.n289, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader, %middle.block288
  %indvars.iv223.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader ], [ %n.vec276, %middle.block288 ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ %indvars.iv223.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv223
  %i.hp = load <2 x double>, ptr %i.ho, align 8, !tbaa !87
  %i.hq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hp)
  %i.hr = fmul double %i.hq, 5.000000e-01
  %i.hs = fsub double %i.hr, %i.ax
  %i.ht = tail call noundef double @llvm.fabs.f64(double %i.hs)
  %.0.i.us.us = fadd double %i.ao, %i.ht
  %i.hu = fcmp ugt double %.0.i.us.us, 1.000000e+100
  %i.hv = zext i1 %i.hu to i32
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv223
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !153
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %i.dy
  br i1 %exitcond227.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us, !llvm.loop !400

_ZN3igl8geodesic8Interval6signalEd.exit.us186:    ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343, %_ZN3igl8geodesic8Interval6signalEd.exit.us186
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ %indvars.iv218.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv218
  %i.hy = load <2 x double>, ptr %i.hx, align 8, !tbaa !87
  %i.hz = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hy)
  %i.ia = fmul double %i.hz, 5.000000e-01
  %i.ib = fsub double %i.ia, %i.ax                ; 2 uses
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.ib, double %i.gs)
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.ic)
  %.0.i.us = fadd double %i.ao, %sqrt.i.us
  %i.id = fcmp ugt double %.0.i.us, 1.000000e+100
  %i.ie = zext i1 %i.id to i32
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv218
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !153
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %i.dy
  br i1 %exitcond222.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186, !llvm.loop !401

bb.q:                                             ; preds = %.lr.ph
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %7, ptr %i.ig, align 8, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %.1 = phi i8 [ 2, %bb.q ], [ 1, %.lr.ph ]       ; 4 uses
  %exitcond.not = icmp eq i32 %.3, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ih = fcmp ogt double %.sroa.0.0.vec.extract, %i.ds
  %i.ii = fcmp olt double %.sroa.0.0.vec.extract, %i.dt
  %or.cond.1 = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %or.cond.1, label %bb.t, label %8

bb.t:                                             ; preds = %bb.s
  %i.ij = add nuw nsw i8 %.1, 1
  %i.ik = zext nneg i8 %.1 to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ik
  store double %.sroa.0.0.vec.extract, ptr %i.il, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %bb.t, %bb.s
  %.1.1 = phi i8 [ %i.ij, %bb.t ], [ %.1, %bb.s ] ; 4 uses
  %exitcond.not.1 = icmp eq i32 %.3, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %9

9:                                                ; preds = %8
  %10 = fcmp ogt double %7, %i.ds
  %11 = fcmp olt double %7, %i.dt
  %or.cond.2 = select i1 %10, i1 %11, i1 false
  br i1 %or.cond.2, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %9
  %12 = add nuw nsw i8 %.1.1, 1
  %13 = zext i8 %.1.1 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %13
  store double %7, ptr %14, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge183:                                   ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit174, %_ZN3igl8geodesic8Interval6signalEd.exit.us186, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193, %middle.block, %middle.block288, %middle.block306, %middle.block324, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader
  %i.im = fsub double %i.dh, %i.g
  %i.in = fcmp olt double %i.de, %i.im
  br i1 %i.in, label %bb.z, label %.lr.ph201

.lr.ph182.split.split:                            ; preds = %.lr.ph182.split.split.preheader, %_ZN3igl8geodesic8Interval6signalEd.exit174
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %_ZN3igl8geodesic8Interval6signalEd.exit174 ], [ 0, %.lr.ph182.split.split.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv213 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !87
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !87
  %i.is = fadd double %i.ip, %i.ir
  %i.it = fmul double %i.is, 5.000000e-01         ; 2 uses
  %i.iu = fsub double %i.it, %i.ax                ; 3 uses
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph182.split.split
  %i.iv = tail call noundef double @llvm.fabs.f64(double %i.iu)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

bb.w:                                             ; preds = %.lr.ph182.split.split
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iu, double %i.ge)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.iw)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

_ZN3igl8geodesic8Interval6signalEd.exit:          ; preds = %bb.w, %bb.v
  %.pn.i = phi double [ %i.iv, %bb.v ], [ %sqrt.i, %bb.w ]
  %.0.i = fadd double %i.ao, %.pn.i
  %i.ix = fsub double %i.it, %i.ba                ; 3 uses
  br i1 %i.ec, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.iy = tail call noundef double @llvm.fabs.f64(double %i.ix)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit174

bb.y:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.ix, double %i.gf)
  %sqrt.i170 = tail call double @llvm.sqrt.f64(double %i.iz)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit174

_ZN3igl8geodesic8Interval6signalEd.exit174:       ; preds = %bb.y, %bb.x
  %.pn.i171 = phi double [ %i.iy, %bb.x ], [ %sqrt.i170, %bb.y ]
  %.0.i172 = fadd double %i.aq, %.pn.i171
  %i.ja = fcmp ugt double %.0.i, %.0.i172
  %i.jb = zext i1 %i.ja to i32
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv213
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !153
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %i.dy
  br i1 %exitcond217.not, label %._crit_edge183, label %.lr.ph182.split.split, !llvm.loop !402

bb.z:                                             ; preds = %._crit_edge183
  %i.jd = load i32, ptr %i.b, align 4, !tbaa !153
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.de, ptr %i.a, align 16, !tbaa !87
  br label %.lr.ph201

bb.ab:                                            ; preds = %bb.z
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.jf, align 8, !tbaa !153
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.de, ptr %i.jg, align 8, !tbaa !87
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %._crit_edge183, %bb.ab, %bb.aa
  %.2153 = phi i32 [ 0, %bb.aa ], [ 1, %bb.ab ], [ 0, %._crit_edge183 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.ac

._crit_edge202:                                   ; preds = %bb.af
  %i.jj = load ptr, ptr %i.dk, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %.in.i176 = select i1 %.not.i167, ptr %i.jk, ptr %i.dj
  %i.jl = load double, ptr %.in.i176, align 8, !tbaa !87
  %i.jm = load double, ptr %i.do, align 8, !tbaa !87 ; 2 uses
  %i.jn = fadd double %i.g, %i.jm
  %i.jo = fcmp ogt double %i.jl, %i.jn
  br i1 %i.jo, label %bb.ag, label %bb.aj

bb.ac:                                            ; preds = %.lr.ph201, %bb.af
  %.0199 = phi i64 [ 0, %.lr.ph201 ], [ %i.kc, %bb.af ] ; 3 uses
  %.3154198 = phi i32 [ %.2153, %.lr.ph201 ], [ %.4, %bb.af ] ; 5 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0199
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !153 ; 2 uses
  %i.jr = icmp eq i32 %.3154198, 0
  br i1 %i.jr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.js = add i32 %.3154198, -1
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !153
  %.not = icmp eq i32 %i.jv, %i.jq
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jw = zext i32 %.3154198 to i64               ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jw
  store i32 %i.jq, ptr %i.jx, align 4, !tbaa !153
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0199
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !87
  %i.ka = add i32 %.3154198, 1
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jw
  store double %i.jz, ptr %i.kb, align 8, !tbaa !87
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.4 = phi i32 [ %i.ka, %bb.ae ], [ %.3154198, %bb.ad ] ; 7 uses
  %i.kc = add nuw nsw i64 %.0199, 1               ; 2 uses
  %exitcond241.not = icmp eq i64 %i.kc, %i.dy
  br i1 %exitcond241.not, label %._crit_edge202, label %bb.ac, !llvm.loop !403

bb.ag:                                            ; preds = %._crit_edge202
  %i.kd = icmp eq i32 %.4, 0
  br i1 %i.kd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.kf = add i32 %.4, -1
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !153
  %i.kj = icmp eq i32 %i.ki, 1
  br i1 %i.kj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.kl = zext i32 %.4 to i64                     ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.kl
  store i32 0, ptr %i.km, align 4, !tbaa !153
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ko = add i32 %.4, 1
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.kl
  store double %i.jm, ptr %i.kp, align 8, !tbaa !87
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %._crit_edge202
  %.5 = phi i32 [ %i.ko, %bb.ai ], [ %.4, %bb.ah ], [ %.4, %._crit_edge202 ]
  %i.kq = load double, ptr %1, align 8, !tbaa !87
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.kq, ptr %i.kr, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.f
  %.0145 = phi i32 [ %.1152, %bb.f ], [ %.5, %bb.aj ]
  ret i32 %.0145
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !85
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165
  store ptr %i.u, ptr %i.s, align 8, !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !413, !noalias !412
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !412, !noalias !413
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !165, !alias.scope !413, !noalias !412
  store ptr %i.y, ptr %i.w, align 8, !tbaa !165, !alias.scope !412, !noalias !413
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !413, !noalias !412
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !85, !alias.scope !415, !noalias !414
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !85, !alias.scope !414, !noalias !415
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165, !alias.scope !415, !noalias !414
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !165, !alias.scope !414, !noalias !415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !415, !noalias !414
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !161
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #23
  br label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !163
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !162
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE24_M_get_insert_unique_posERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.02229 = load ptr, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %.not30 = icmp eq ptr %.02229, null
  br i1 %.not30, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !85     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02231 = phi ptr [ %.02229, %.lr.ph ], [ %.022, %bb.e ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02231, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !87 ; 2 uses
  %i.k = fcmp une double %i.e, %i.j
  br i1 %i.k, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.l = fcmp olt double %i.e, %i.j
  br i1 %i.l, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.c, align 8, !tbaa !87 ; 2 uses
  %i.n = load double, ptr %i.h, align 8, !tbaa !87 ; 2 uses
  %i.o = fcmp une double %i.m, %i.n
  br i1 %i.o, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit, label %.split26

.split26:                                         ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = icmp ult i32 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %bb.d

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit:        ; preds = %bb.c
  %i.x = fcmp olt double %i.m, %i.n
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split26, %.split, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit, %.split, %.split26, %bb.d
  %.sink = phi i64 [ 24, %bb.d ], [ 16, %.split26 ], [ 16, %.split ], [ 16, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit ]
  %.0.i23 = phi i1 [ false, %bb.d ], [ true, %.split26 ], [ true, %.split ], [ true, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02231, i64 %.sink
  %.022 = load ptr, ptr %i.y, align 8, !tbaa !154 ; 2 uses
  %.not = icmp eq ptr %.022, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.e
  br i1 %.0.i23, label %._crit_edge.thread, label %bb.g

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.021.lcssa43 = phi ptr [ %.02231, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !84
  %i.ab = icmp eq ptr %.021.lcssa43, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa43) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.021.lcssa42 = phi ptr [ %.021.lcssa43, %bb.f ], [ %.02231, %._crit_edge ] ; 3 uses
  %.sroa.07.0 = phi ptr [ %i.ac, %bb.f ], [ %.02231, %._crit_edge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85 ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !85    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !87 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !87 ; 2 uses
  %i.ak = fcmp une double %i.ah, %i.aj
  br i1 %i.ak, label %.split27, label %bb.h
end_hunk_0
