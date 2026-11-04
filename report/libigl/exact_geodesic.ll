Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
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
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !390
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !389
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165, !alias.scope !390
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !165, !alias.scope !389
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !390
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
  %i.a = alloca [4 x double], align 16            ; 18 uses
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
  br label %bb.al

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
  br i1 %i.bh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fsub <2 x double> %i.az, %i.aw
  %i.bi = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp ogt double %i.bj, %i.am
  br i1 %i.bk, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop328 = fsub <2 x double> %shift, %i.bf
  %i.bl = extractelement <2 x double> %foldExtExtBinop328, i64 0
  %i.bm = fmul double %i.bi, 2.000000e+00
  %i.bn = fdiv double %i.bl, %i.bm
  %.sroa.0.0.vec.insert = insertelement <2 x double> <double poison, double undef>, double %i.bn, i64 0
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.bo = fmul double %i.ar, %i.ar                ; 4 uses
  %i.bp = extractelement <2 x double> %i.bf, i64 0
  %shift330 = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop331.a = fsub <2 x double> %shift330, %i.bf
  %i.bq = extractelement <2 x double> %foldExtExtBinop331.a, i64 0
  %i.br = fsub double %i.bq, %i.bo
  %i.bs = fmul double %i.br, 5.000000e-01         ; 3 uses
  %foldExtExtBinop333 = fsub <2 x double> %i.aw, %i.az
  %i.bt = extractelement <2 x double> %foldExtExtBinop333, i64 0 ; 3 uses
  %i.bu = fneg double %i.bo
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bu) ; 5 uses
  %i.bw = fmul double %i.ax, %i.bo
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bw) ; 7 uses
  %i.by = fneg double %i.bp
  %i.bz = fmul double %i.bo, %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bz) ; 2 uses
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.bv)
  %i.cc = fcmp olt double %i.cb, %i.am
  br i1 %i.cc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.ce = fcmp ogt double %i.cd, %i.am
  br i1 %i.ce, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.cf = fneg double %i.ca
  %i.cg = fdiv double %i.cf, %i.bx
  %.sroa.0.0.vec.insert347 = insertelement <2 x double> <double poison, double undef>, double %i.cg, i64 0
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  %i.ch = fneg double %i.ca
  %i.ci = fmul double %i.bv, %i.ch
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.ci) ; 3 uses
  %i.ck = fmul double %i.am, %i.am
  %i.cl = fcmp ogt double %i.cj, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = tail call double @sqrt(double noundef %i.cj) #22 ; 2 uses
  %i.cn = fcmp ogt double %i.bv, 0.000000e+00
  %i.co = fneg double %i.bx
  %i.cp = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cm, i64 1 ; 2 uses
  %i.ct = fsub <2 x double> %i.cq, %i.cs
  %i.cu = fsub <2 x double> %i.cq, %i.cs
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = insertelement <2 x i1> poison, i1 %i.cn, i64 0
  %i.cx = shufflevector <2 x i1> %i.cw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cy = select <2 x i1> %i.cx, <2 x double> %i.ct, <2 x double> %i.cv
  %i.cz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x double> %i.cy, %i.da          ; 3 uses
  %3 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %shift335 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop336 = fsub <2 x double> %i.db, %shift335
  %i.dc = extractelement <2 x double> %foldExtExtBinop336, i64 0
  %i.dd = fcmp ogt double %i.dc, %i.am
  %. = select i1 %i.dd, i32 2, i32 1
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.de = fcmp ult double %i.cj, 0.000000e+00
  br i1 %i.de, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = fneg double %i.bx
  %i.dg = fdiv double %i.df, %i.bv
  %.sroa.0.0.vec.insert349 = insertelement <2 x double> <double poison, double undef>, double %i.dg, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.o, %bb.p, %bb.h, %bb.i
  %.sroa.0.0 = phi <2 x double> [ %.sroa.0.0.vec.insert, %bb.i ], [ undef, %bb.h ], [ %.sroa.0.0.vec.insert347, %bb.l ], [ undef, %bb.k ], [ %3, %bb.n ], [ undef, %bb.o ], [ %.sroa.0.0.vec.insert349, %bb.p ] ; 2 uses
  %.3 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 1, %bb.l ], [ 0, %bb.k ], [ %., %bb.n ], [ 0, %bb.o ], [ 1, %bb.p ] ; 3 uses
  %i.dh = load double, ptr %1, align 8, !tbaa !87 ; 5 uses
  %i.di = load double, ptr %2, align 8, !tbaa !87 ; 2 uses
  %i.dj = fcmp olt double %i.dh, %i.di
  %i.dk = select i1 %i.dj, double %i.di, double %i.dh ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !105 ; 3 uses
  %.not.i167 = icmp eq ptr %i.dm, null            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %.in.i168 = select i1 %.not.i167, ptr %i.dp, ptr %i.dm
  %i.dq = load double, ptr %.in.i168, align 8, !tbaa !87 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !87 ; 2 uses
  %i.dt = fcmp olt double %i.ds, %i.dq
  %.sroa.speculated = select i1 %i.dt, double %i.ds, double %i.dq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double %i.dk, ptr %i.a, align 16, !tbaa !87
  %.not204 = icmp eq i32 %.3, 0
  br i1 %.not204, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sroa.speculated, ptr %i.du, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph182

.lr.ph:                                           ; preds = %bb.q
  %i.dv = fadd double %i.g, %i.dk                 ; 2 uses
  %i.dw = fsub double %.sroa.speculated, %i.g     ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 0 ; 3 uses
  %i.dx = fcmp ogt double %.sroa.0.0.vec.extract, %i.dv
  %i.dy = fcmp olt double %.sroa.0.0.vec.extract, %i.dw
  %or.cond = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

._crit_edge:                                      ; preds = %bb.v, %bb.s
  %.1.lcssa = phi i8 [ %.1, %bb.s ], [ %spec.select, %bb.v ] ; 2 uses
  %i.dz = zext i8 %.1.lcssa to i64                ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dz
  store double %.sroa.speculated, ptr %i.ea, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.not205 = icmp eq i8 %.1.lcssa, 0
  br i1 %.not205, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %i.eb = phi i64 [ 1, %._crit_edge.thread ], [ %i.dz, %._crit_edge ] ; 28 uses
  %i.ec = fcmp oeq double %i.ao, 1.000000e+100
  %i.ed = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %i.ee = fcmp oeq double %i.aq, 1.000000e+100    ; 2 uses
  %i.ef = fcmp oeq double %i.bb, 0.000000e+00     ; 2 uses
  br i1 %i.ec, label %.lr.ph182.split.us, label %.lr.ph182.split

.lr.ph182.split.us:                               ; preds = %.lr.ph182
  br i1 %i.ee, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader, label %.lr.ph182.split.us.split

_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader: ; preds = %.lr.ph182.split.us
  %i.eg = shl nuw nsw i64 %i.eb, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.b, i8 0, i64 range(i64 0, 1021) %i.eg, i1 false), !tbaa !153
  br label %._crit_edge183

.lr.ph182.split.us.split:                         ; preds = %.lr.ph182.split.us
  br i1 %i.ef, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader: ; preds = %.lr.ph182.split.us.split
  %min.iters.check292 = icmp samesign ult i64 %i.eb, 2
  br i1 %min.iters.check292, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339, label %vector.ph293

vector.ph293:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader
  %n.vec294 = and i64 %i.eb, 254                  ; 3 uses
  %broadcast.splat296.a = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat298.a = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert299 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat300 = shufflevector <2 x double> %broadcast.splatinsert299, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph293
  %index302 = phi i64 [ 0, %vector.ph293 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index302 ; 2 uses
  %wide.load303 = load <2 x double>, ptr %i.eh, align 16, !tbaa !87
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %wide.load304 = load <2 x double>, ptr %i.ei, align 8, !tbaa !87
  %i.ej = fadd <2 x double> %wide.load303, %wide.load304
  %i.ek = fmul <2 x double> %i.ej, splat (double 5.000000e-01)
  %i.el = fsub <2 x double> %i.ek, %broadcast.splat296.a ; 2 uses
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.el, <2 x double> %broadcast.splat298.a)
  %i.en = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.em)
  %i.eo = fadd <2 x double> %broadcast.splat300, %i.en
  %i.ep = fcmp ult <2 x double> %i.eo, splat (double 1.000000e+100)
  %i.eq = zext <2 x i1> %i.ep to <2 x i32>
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index302
  store <2 x i32> %i.eq, ptr %i.er, align 4, !tbaa !153
  %index.next305 = add nuw i64 %index302, 2       ; 2 uses
  %i.es = icmp eq i64 %index.next305, %n.vec294
  br i1 %i.es, label %middle.block306, label %vector.body301, !llvm.loop !394

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %i.eb, %n.vec294
  br i1 %cmp.n307, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader, %middle.block306
  %indvars.iv228.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader ], [ %n.vec294, %middle.block306 ]
  %i.et = extractelement <2 x double> %i.bd, i64 1
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader: ; preds = %.lr.ph182.split.us.split
  %min.iters.check310 = icmp samesign ult i64 %i.eb, 4
  br i1 %min.iters.check310, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338, label %vector.ph311

vector.ph311:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader
  %n.vec312 = and i64 %i.eb, 252                  ; 3 uses
  %broadcast.splat314.a = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert315 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat316 = shufflevector <2 x double> %broadcast.splatinsert315, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph311
  %index318 = phi i64 [ 0, %vector.ph311 ], [ %index.next323, %vector.body317 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index318 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load319.a = load <2 x double>, ptr %i.eu, align 16, !tbaa !87
  %wide.load320.a = load <2 x double>, ptr %i.ev, align 16, !tbaa !87
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %wide.load321 = load <2 x double>, ptr %i.ew, align 8, !tbaa !87
  %wide.load322 = load <2 x double>, ptr %i.ex, align 8, !tbaa !87
  %i.ey = fadd <2 x double> %wide.load319.a, %wide.load321
  %i.ez = fadd <2 x double> %wide.load320.a, %wide.load322
  %i.fa = fmul <2 x double> %i.ey, splat (double 5.000000e-01)
  %i.fb = fmul <2 x double> %i.ez, splat (double 5.000000e-01)
  %i.fc = fsub <2 x double> %i.fa, %broadcast.splat314.a
  %i.fd = fsub <2 x double> %i.fb, %broadcast.splat314.a
  %i.fe = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fc)
  %i.ff = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fd)
  %i.fg = fadd <2 x double> %broadcast.splat316, %i.fe
  %i.fh = fadd <2 x double> %broadcast.splat316, %i.ff
  %i.fi = fcmp ult <2 x double> %i.fg, splat (double 1.000000e+100)
  %i.fj = fcmp ult <2 x double> %i.fh, splat (double 1.000000e+100)
  %i.fk = zext <2 x i1> %i.fi to <2 x i32>
  %i.fl = zext <2 x i1> %i.fj to <2 x i32>
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index318 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store <2 x i32> %i.fk, ptr %i.fm, align 4, !tbaa !153
  store <2 x i32> %i.fl, ptr %i.fn, align 4, !tbaa !153
  %index.next323 = add nuw i64 %index318, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next323, %n.vec312
  br i1 %i.fo, label %middle.block324, label %vector.body317, !llvm.loop !395

middle.block324:                                  ; preds = %vector.body317
  %cmp.n325 = icmp eq i64 %i.eb, %n.vec312
  br i1 %cmp.n325, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader, %middle.block324
  %indvars.iv233.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader ], [ %n.vec312, %middle.block324 ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ %indvars.iv233.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader338 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv233
  %i.fq = load <2 x double>, ptr %i.fp, align 8, !tbaa !87
  %i.fr = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fq)
  %i.fs = fmul double %i.fr, 5.000000e-01
  %i.ft = fsub double %i.fs, %i.ba
  %i.fu = tail call noundef double @llvm.fabs.f64(double %i.ft)
  %.0.i172.us.us = fadd double %i.aq, %i.fu
  %i.fv = fcmp ult double %.0.i172.us.us, 1.000000e+100
  %i.fw = zext i1 %i.fv to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv233
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !153
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %i.eb
  br i1 %exitcond237.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193, !llvm.loop !396

_ZN3igl8geodesic8Interval6signalEd.exit.us:       ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339, %_ZN3igl8geodesic8Interval6signalEd.exit.us
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ %indvars.iv228.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader339 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv228
  %i.fz = load <2 x double>, ptr %i.fy, align 8, !tbaa !87
  %i.ga = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fz)
  %i.gb = fmul double %i.ga, 5.000000e-01
  %i.gc = fsub double %i.gb, %i.ba                ; 2 uses
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.gc, double %i.et)
  %sqrt.i170.us = tail call double @llvm.sqrt.f64(double %i.gd)
  %.0.i172.us = fadd double %i.aq, %sqrt.i170.us
  %i.ge = fcmp ult double %.0.i172.us, 1.000000e+100
  %i.gf = zext i1 %i.ge to i32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv228
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !153
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %i.eb
  br i1 %exitcond232.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us, !llvm.loop !397

.lr.ph182.split:                                  ; preds = %.lr.ph182
  br i1 %i.ee, label %.lr.ph182.split.split.us, label %.lr.ph182.split.split.preheader

.lr.ph182.split.split.preheader:                  ; preds = %.lr.ph182.split
  %i.gh = extractelement <2 x double> %i.bd, i64 0
  %i.gi = extractelement <2 x double> %i.bd, i64 1
  br label %.lr.ph182.split.split

.lr.ph182.split.split.us:                         ; preds = %.lr.ph182.split
  br i1 %i.ed, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader: ; preds = %.lr.ph182.split.split.us
  %min.iters.check = icmp samesign ult i64 %i.eb, 2
  br i1 %min.iters.check, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343, label %vector.ph

vector.ph:                                        ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader
  %n.vec = and i64 %i.eb, 254                     ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat269.a = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert270 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat271 = shufflevector <2 x double> %broadcast.splatinsert270, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gj, align 16, !tbaa !87
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %wide.load272 = load <2 x double>, ptr %i.gk, align 8, !tbaa !87
  %i.gl = fadd <2 x double> %wide.load, %wide.load272
  %i.gm = fmul <2 x double> %i.gl, splat (double 5.000000e-01)
  %i.gn = fsub <2 x double> %i.gm, %broadcast.splat ; 2 uses
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gn, <2 x double> %broadcast.splat269.a)
  %i.gp = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.go)
  %i.gq = fadd <2 x double> %broadcast.splat271, %i.gp
  %i.gr = fcmp ugt <2 x double> %i.gq, splat (double 1.000000e+100)
  %i.gs = zext <2 x i1> %i.gr to <2 x i32>
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <2 x i32> %i.gs, ptr %i.gt, align 4, !tbaa !153
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343

_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader ], [ %n.vec, %middle.block ]
  %i.gv = extractelement <2 x double> %i.bd, i64 0
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us186

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader: ; preds = %.lr.ph182.split.split.us
  %min.iters.check274 = icmp samesign ult i64 %i.eb, 4
  br i1 %min.iters.check274, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341, label %vector.ph275

vector.ph275:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader
  %n.vec276 = and i64 %i.eb, 252                  ; 3 uses
  %broadcast.splat278.a = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert279 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat280 = shufflevector <2 x double> %broadcast.splatinsert279, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph275
  %index282 = phi i64 [ 0, %vector.ph275 ], [ %index.next287, %vector.body281 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index282 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load283.a = load <2 x double>, ptr %i.gw, align 16, !tbaa !87
  %wide.load284.a = load <2 x double>, ptr %i.gx, align 16, !tbaa !87
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %wide.load285 = load <2 x double>, ptr %i.gy, align 8, !tbaa !87
  %wide.load286 = load <2 x double>, ptr %i.gz, align 8, !tbaa !87
  %i.ha = fadd <2 x double> %wide.load283.a, %wide.load285
  %i.hb = fadd <2 x double> %wide.load284.a, %wide.load286
  %i.hc = fmul <2 x double> %i.ha, splat (double 5.000000e-01)
  %i.hd = fmul <2 x double> %i.hb, splat (double 5.000000e-01)
  %i.he = fsub <2 x double> %i.hc, %broadcast.splat278.a
  %i.hf = fsub <2 x double> %i.hd, %broadcast.splat278.a
  %i.hg = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.he)
  %i.hh = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hf)
  %i.hi = fadd <2 x double> %broadcast.splat280, %i.hg
  %i.hj = fadd <2 x double> %broadcast.splat280, %i.hh
  %i.hk = fcmp ugt <2 x double> %i.hi, splat (double 1.000000e+100)
  %i.hl = fcmp ugt <2 x double> %i.hj, splat (double 1.000000e+100)
  %i.hm = zext <2 x i1> %i.hk to <2 x i32>
  %i.hn = zext <2 x i1> %i.hl to <2 x i32>
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index282 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store <2 x i32> %i.hm, ptr %i.ho, align 4, !tbaa !153
  store <2 x i32> %i.hn, ptr %i.hp, align 4, !tbaa !153
  %index.next287 = add nuw i64 %index282, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next287, %n.vec276
  br i1 %i.hq, label %middle.block288, label %vector.body281, !llvm.loop !399

middle.block288:                                  ; preds = %vector.body281
  %cmp.n289 = icmp eq i64 %i.eb, %n.vec276
  br i1 %cmp.n289, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader, %middle.block288
  %indvars.iv223.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader ], [ %n.vec276, %middle.block288 ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ %indvars.iv223.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader341 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv223
  %i.hs = load <2 x double>, ptr %i.hr, align 8, !tbaa !87
  %i.ht = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hs)
  %i.hu = fmul double %i.ht, 5.000000e-01
  %i.hv = fsub double %i.hu, %i.ax
  %i.hw = tail call noundef double @llvm.fabs.f64(double %i.hv)
  %.0.i.us.us = fadd double %i.ao, %i.hw
  %i.hx = fcmp ugt double %.0.i.us.us, 1.000000e+100
  %i.hy = zext i1 %i.hx to i32
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv223
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !153
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %i.eb
  br i1 %exitcond227.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us, !llvm.loop !400

_ZN3igl8geodesic8Interval6signalEd.exit.us186:    ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343, %_ZN3igl8geodesic8Interval6signalEd.exit.us186
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ %indvars.iv218.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader343 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv218
  %i.ib = load <2 x double>, ptr %i.ia, align 8, !tbaa !87
  %i.ic = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ib)
  %i.id = fmul double %i.ic, 5.000000e-01
  %i.ie = fsub double %i.id, %i.ax                ; 2 uses
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %i.gv)
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.if)
  %.0.i.us = fadd double %i.ao, %sqrt.i.us
  %i.ig = fcmp ugt double %.0.i.us, 1.000000e+100
  %i.ih = zext i1 %i.ig to i32
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv218
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !153
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %i.eb
  br i1 %exitcond222.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186, !llvm.loop !401

bb.r:                                             ; preds = %.lr.ph
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sroa.0.0.vec.extract, ptr %i.ij, align 8, !tbaa !87
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %.1 = phi i8 [ 2, %bb.r ], [ 1, %.lr.ph ]       ; 4 uses
  %exitcond.not = icmp eq i32 %.3, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 1 ; 3 uses
  %i.ik = fcmp ogt double %.sroa.0.8.vec.extract, %i.dv
  %i.il = fcmp olt double %.sroa.0.8.vec.extract, %i.dw
  %or.cond.1 = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.im = add nuw nsw i8 %.1, 1
  %i.in = zext nneg i8 %.1 to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.in
  store double %.sroa.0.8.vec.extract, ptr %i.io, align 8, !tbaa !87
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.1 = phi i8 [ %i.im, %bb.u ], [ %.1, %bb.t ]
  %exitcond.not.1 = icmp eq i32 %.3, 2
  %spec.select = select i1 %exitcond.not.1, i8 %.1.1, i8 poison
  br label %._crit_edge

._crit_edge183:                                   ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit174, %_ZN3igl8geodesic8Interval6signalEd.exit.us186, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193, %middle.block, %middle.block288, %middle.block306, %middle.block324, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader, %._crit_edge
  %.not205259 = phi i1 [ false, %middle.block ], [ false, %middle.block288 ], [ false, %middle.block306 ], [ false, %middle.block324 ], [ true, %._crit_edge ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit174 ]
  %4 = phi i64 [ %i.eb, %middle.block ], [ %i.eb, %middle.block288 ], [ %i.eb, %middle.block306 ], [ %i.eb, %middle.block324 ], [ 0, %._crit_edge ], [ %i.eb, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader ], [ %i.eb, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ %i.eb, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ %i.eb, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ %i.eb, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ %i.eb, %_ZN3igl8geodesic8Interval6signalEd.exit174 ]
  %i.ip = fsub double %i.dk, %i.g
  %i.iq = fcmp olt double %i.dh, %i.ip
  br i1 %i.iq, label %bb.aa, label %5

.lr.ph182.split.split:                            ; preds = %.lr.ph182.split.split.preheader, %_ZN3igl8geodesic8Interval6signalEd.exit174
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %_ZN3igl8geodesic8Interval6signalEd.exit174 ], [ 0, %.lr.ph182.split.split.preheader ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv213 ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !87
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iu = load double, ptr %i.it, align 8, !tbaa !87
  %i.iv = fadd double %i.is, %i.iu
  %i.iw = fmul double %i.iv, 5.000000e-01         ; 2 uses
  %i.ix = fsub double %i.iw, %i.ax                ; 3 uses
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph182.split.split
  %i.iy = tail call noundef double @llvm.fabs.f64(double %i.ix)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

bb.x:                                             ; preds = %.lr.ph182.split.split
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.ix, double %i.gh)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.iz)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

_ZN3igl8geodesic8Interval6signalEd.exit:          ; preds = %bb.x, %bb.w
  %.pn.i = phi double [ %i.iy, %bb.w ], [ %sqrt.i, %bb.x ]
  %.0.i = fadd double %i.ao, %.pn.i
  %i.ja = fsub double %i.iw, %i.ba                ; 3 uses
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.jb = tail call noundef double @llvm.fabs.f64(double %i.ja)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit174

bb.z:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.ja, double %i.gi)
  %sqrt.i170 = tail call double @llvm.sqrt.f64(double %i.jc)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit174

_ZN3igl8geodesic8Interval6signalEd.exit174:       ; preds = %bb.z, %bb.y
  %.pn.i171 = phi double [ %i.jb, %bb.y ], [ %sqrt.i170, %bb.z ]
  %.0.i172 = fadd double %i.aq, %.pn.i171
  %i.jd = fcmp ugt double %.0.i, %.0.i172
  %i.je = zext i1 %i.jd to i32
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv213
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !153
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %i.eb
  br i1 %exitcond217.not, label %._crit_edge183, label %.lr.ph182.split.split, !llvm.loop !402

bb.aa:                                            ; preds = %._crit_edge183
  %i.jg = load i32, ptr %i.b, align 4, !tbaa !153
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store double %i.dh, ptr %i.a, align 16, !tbaa !87
  br label %5

bb.ac:                                            ; preds = %bb.aa
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.ji, align 8, !tbaa !153
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.dh, ptr %i.jj, align 8, !tbaa !87
  br label %5

5:                                                ; preds = %bb.ab, %bb.ac, %._crit_edge183
  %.2153 = phi i32 [ 0, %bb.ab ], [ 1, %bb.ac ], [ 0, %._crit_edge183 ] ; 2 uses
  br i1 %.not205259, label %._crit_edge202, label %.lr.ph201

.lr.ph201:                                        ; preds = %5
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.ad

._crit_edge202:                                   ; preds = %bb.ag, %5
  %.3154.lcssa = phi i32 [ %.2153, %5 ], [ %.4, %bb.ag ] ; 6 uses
  %i.jm = load ptr, ptr %i.dn, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  %.in.i176 = select i1 %.not.i167, ptr %i.jn, ptr %i.dm
  %i.jo = load double, ptr %.in.i176, align 8, !tbaa !87
  %i.jp = load double, ptr %i.dr, align 8, !tbaa !87 ; 2 uses
  %i.jq = fadd double %i.g, %i.jp
  %i.jr = fcmp ogt double %i.jo, %i.jq
  br i1 %i.jr, label %bb.ah, label %bb.ak

bb.ad:                                            ; preds = %.lr.ph201, %bb.ag
  %.0199 = phi i64 [ 0, %.lr.ph201 ], [ %i.kf, %bb.ag ] ; 3 uses
  %.3154198 = phi i32 [ %.2153, %.lr.ph201 ], [ %.4, %bb.ag ] ; 5 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0199
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !153 ; 2 uses
  %i.ju = icmp eq i32 %.3154198, 0
  br i1 %i.ju, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jv = add i32 %.3154198, -1
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !153
  %.not = icmp eq i32 %i.jy, %i.jt
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jz = zext i32 %.3154198 to i64               ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jz
  store i32 %i.jt, ptr %i.ka, align 4, !tbaa !153
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0199
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !87
  %i.kd = add i32 %.3154198, 1
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jz
  store double %i.kc, ptr %i.ke, align 8, !tbaa !87
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.4 = phi i32 [ %i.kd, %bb.af ], [ %.3154198, %bb.ae ] ; 2 uses
  %i.kf = add nuw nsw i64 %.0199, 1               ; 2 uses
  %exitcond241.not = icmp eq i64 %i.kf, %4
  br i1 %exitcond241.not, label %._crit_edge202, label %bb.ad, !llvm.loop !403

bb.ah:                                            ; preds = %._crit_edge202
  %i.kg = icmp eq i32 %.3154.lcssa, 0
  br i1 %i.kg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ki = add i32 %.3154.lcssa, -1
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !153
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ko = zext i32 %.3154.lcssa to i64            ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.ko
  store i32 0, ptr %i.kp, align 4, !tbaa !153
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.kr = add i32 %.3154.lcssa, 1
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ko
  store double %i.jp, ptr %i.ks, align 8, !tbaa !87
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %._crit_edge202
  %.5 = phi i32 [ %i.kr, %bb.aj ], [ %.3154.lcssa, %bb.ai ], [ %.3154.lcssa, %._crit_edge202 ]
  %i.kt = load double, ptr %1, align 8, !tbaa !87
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.kt, ptr %i.ku, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.f
  %.0145 = phi i32 [ %.1152, %bb.f ], [ %.5, %bb.ak ]
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
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !413
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !412
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !165, !alias.scope !413
  store ptr %i.y, ptr %i.w, align 8, !tbaa !165, !alias.scope !412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !413
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
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !85, !alias.scope !415
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !85, !alias.scope !414
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165, !alias.scope !415
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !165, !alias.scope !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !415
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
