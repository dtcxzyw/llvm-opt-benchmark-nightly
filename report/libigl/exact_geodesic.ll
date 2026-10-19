Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2804
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
  %i.a = alloca [4 x double], align 16            ; 17 uses
  %i.b = alloca [3 x i32], align 4                ; 13 uses
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
  %i.ao = load double, ptr %i.an, align 8, !tbaa !87 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !87 ; 6 uses
  %i.ar = fsub double %i.ao, %i.aq                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load <2 x double>, ptr %i.as, align 8, !tbaa !87 ; 6 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0 ; 4 uses
  %i.ay = load double, ptr %i.au, align 8, !tbaa !87
  %i.az = load <2 x double>, ptr %i.at, align 8, !tbaa !87 ; 8 uses
  %i.ba = load double, ptr %i.av, align 8, !tbaa !87
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bc = fmul <2 x double> %i.bb, %i.bb          ; 5 uses
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bc) ; 5 uses
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.bg = fcmp olt double %i.bf, %i.g
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fsub <2 x double> %i.az, %i.aw
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %4 = tail call noundef double @llvm.fabs.f64(double %3)
  %5 = fcmp ogt double %4, %i.am                  ; 2 uses
  %shift = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop291 = fsub <2 x double> %shift, %i.be
  %i.bh = extractelement <2 x double> %foldExtExtBinop291, i64 0
  %i.bi = fmul double %3, 2.000000e+00
  %i.bj = fdiv double %i.bh, %i.bi
  %.sroa.0.0 = select i1 %5, double %i.bj, double undef
  %.0149 = zext i1 %5 to i32
  %.sroa.0.0.vec.insert = insertelement <2 x double> <double poison, double undef>, double %.sroa.0.0, i64 0
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.bk = fmul double %i.ar, %i.ar                ; 4 uses
  %i.bl = extractelement <2 x double> %i.be, i64 0
  %shift293 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop294 = fsub <2 x double> %shift293, %i.be
  %i.bm = extractelement <2 x double> %foldExtExtBinop294, i64 0
  %i.bn = fsub double %i.bm, %i.bk
  %i.bo = fmul double %i.bn, 5.000000e-01         ; 3 uses
  %foldExtExtBinop296 = fsub <2 x double> %i.aw, %i.az
  %i.bp = extractelement <2 x double> %foldExtExtBinop296, i64 0 ; 3 uses
  %i.bq = fneg double %i.bk
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bq) ; 5 uses
  %i.bs = fmul double %i.ax, %i.bk
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %i.bs) ; 7 uses
  %i.bu = fneg double %i.bl
  %i.bv = fmul double %i.bk, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bv) ; 2 uses
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.by = fcmp olt double %i.bx, %i.am
  br i1 %i.by, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.bt)
  %i.ca = fcmp ogt double %i.bz, %i.am
  br i1 %i.ca, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cb = fneg double %i.bw
  %i.cc = fdiv double %i.cb, %i.bt
  %.sroa.0.0.vec.insert308 = insertelement <2 x double> <double poison, double undef>, double %i.cc, i64 0
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.cd = fneg double %i.bw
  %i.ce = fmul double %i.br, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.ce) ; 3 uses
  %i.cg = fmul double %i.am, %i.am
  %i.ch = fcmp ogt double %i.cf, %i.cg
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = tail call double @sqrt(double noundef %i.cf) #22 ; 2 uses
  %i.cj = fcmp ogt double %i.br, 0.000000e+00
  %i.ck = fneg double %i.bt
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ci, i64 1 ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bt, i64 1 ; 2 uses
  %i.cp = fsub <2 x double> %i.cm, %i.co
  %i.cq = fsub <2 x double> %i.cm, %i.co
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = insertelement <2 x i1> poison, i1 %i.cj, i64 0
  %i.ct = shufflevector <2 x i1> %i.cs, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cp, <2 x double> %i.cr
  %i.cv = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv <2 x double> %i.cu, %i.cw          ; 3 uses
  %shift298 = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop299 = fsub <2 x double> %shift298, %i.cx
  %i.cy = extractelement <2 x double> %foldExtExtBinop299, i64 0
  %i.cz = fcmp ogt double %i.cy, %i.am
  %. = select i1 %i.cz, i32 2, i32 1
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.da = fcmp ult double %i.cf, 0.000000e+00
  br i1 %i.da, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = fneg double %i.bt
  %i.dc = fdiv double %i.db, %i.br
  %.sroa.0.0.vec.insert310 = insertelement <2 x double> <double poison, double undef>, double %i.dc, i64 0
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o, %bb.h
  %.3 = phi i32 [ %.0149, %bb.h ], [ 1, %bb.k ], [ 0, %bb.j ], [ %., %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ] ; 3 uses
  %6 = phi <2 x double> [ %.sroa.0.0.vec.insert, %bb.h ], [ %.sroa.0.0.vec.insert308, %bb.k ], [ undef, %bb.j ], [ %i.cx, %bb.m ], [ undef, %bb.n ], [ %.sroa.0.0.vec.insert310, %bb.o ] ; 2 uses
  %i.dd = load double, ptr %1, align 8, !tbaa !87 ; 5 uses
  %i.de = load double, ptr %2, align 8, !tbaa !87 ; 2 uses
  %i.df = fcmp olt double %i.dd, %i.de
  %i.dg = select i1 %i.df, double %i.de, double %i.dd ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !105 ; 3 uses
  %.not.i167 = icmp eq ptr %i.di, null            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %.in.i168 = select i1 %.not.i167, ptr %i.dl, ptr %i.di
  %i.dm = load double, ptr %.in.i168, align 8, !tbaa !87 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !87 ; 2 uses
  %i.dp = fcmp olt double %i.do, %i.dm
  %.sroa.speculated = select i1 %i.dp, double %i.do, double %i.dm ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double %i.dg, ptr %i.a, align 16, !tbaa !87
  %.not203 = icmp eq i32 %.3, 0
  br i1 %.not203, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sroa.speculated, ptr %i.dq, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph181

.lr.ph:                                           ; preds = %bb.p
  %i.dr = fadd double %i.g, %i.dg                 ; 3 uses
  %i.ds = fsub double %.sroa.speculated, %i.g     ; 3 uses
  %7 = extractelement <2 x double> %6, i64 0      ; 6 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %6, i64 1 ; 3 uses
  %i.dt = fcmp ogt double %7, %i.dr
  %i.du = fcmp olt double %7, %i.ds
  %or.cond = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

._crit_edge:                                      ; preds = %9, %bb.u, %8, %bb.r
  %.1.lcssa = phi i8 [ %.1, %bb.r ], [ %.1.1, %8 ], [ %12, %bb.u ], [ %.1.1, %9 ]
  %i.dv = zext i8 %.1.lcssa to i64                ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dv
  store double %.sroa.speculated, ptr %i.dw, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %._crit_edge, %._crit_edge.thread
  %i.dx = phi i64 [ 1, %._crit_edge.thread ], [ %i.dv, %._crit_edge ] ; 13 uses
  %i.dy = fcmp oeq double %i.ao, 1.000000e+100
  %i.dz = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %i.ea = fcmp oeq double %i.aq, 1.000000e+100    ; 2 uses
  %i.eb = fcmp oeq double %i.ba, 0.000000e+00     ; 2 uses
  br i1 %i.dy, label %.lr.ph181.split.us, label %.lr.ph181.split

.lr.ph181.split.us:                               ; preds = %.lr.ph181
  br i1 %i.ea, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader, label %.lr.ph181.split.us.split

_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader: ; preds = %.lr.ph181.split.us
  %i.ec = shl nuw nsw i64 %i.dx, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.b, i8 0, i64 %i.ec, i1 false), !tbaa !153
  br label %._crit_edge182

.lr.ph181.split.us.split:                         ; preds = %.lr.ph181.split.us
  br i1 %i.eb, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader: ; preds = %.lr.ph181.split.us.split
  %i.ed = extractelement <2 x double> %i.az, i64 0
  %i.ee = extractelement <2 x double> %i.bc, i64 1
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us

_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader: ; preds = %.lr.ph181.split.us.split
  %min.iters.check273 = icmp samesign ult i64 %i.dx, 4
  br i1 %min.iters.check273, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader301, label %vector.ph274

vector.ph274:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader
  %n.vec275 = and i64 %i.dx, 252                  ; 3 uses
  %broadcast.splat277 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert278 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat279 = shufflevector <2 x double> %broadcast.splatinsert278, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph274
  %index281 = phi i64 [ 0, %vector.ph274 ], [ %index.next286, %vector.body280 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index281 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load282 = load <2 x double>, ptr %i.ef, align 16, !tbaa !87
  %wide.load283 = load <2 x double>, ptr %i.eg, align 16, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %wide.load284 = load <2 x double>, ptr %i.eh, align 8, !tbaa !87
  %wide.load285 = load <2 x double>, ptr %i.ei, align 8, !tbaa !87
  %i.ej = fadd <2 x double> %wide.load282, %wide.load284
  %i.ek = fadd <2 x double> %wide.load283, %wide.load285
  %i.el = fmul <2 x double> %i.ej, splat (double 5.000000e-01)
  %i.em = fmul <2 x double> %i.ek, splat (double 5.000000e-01)
  %i.en = fsub <2 x double> %i.el, %broadcast.splat277
  %i.eo = fsub <2 x double> %i.em, %broadcast.splat277
  %i.ep = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.en)
  %i.eq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eo)
  %i.er = fadd <2 x double> %broadcast.splat279, %i.ep
  %i.es = fadd <2 x double> %broadcast.splat279, %i.eq
  %i.et = fcmp ult <2 x double> %i.er, splat (double 1.000000e+100)
  %i.eu = fcmp ult <2 x double> %i.es, splat (double 1.000000e+100)
  %i.ev = zext <2 x i1> %i.et to <2 x i32>
  %i.ew = zext <2 x i1> %i.eu to <2 x i32>
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index281 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <2 x i32> %i.ev, ptr %i.ex, align 4, !tbaa !153
  store <2 x i32> %i.ew, ptr %i.ey, align 4, !tbaa !153
  %index.next286 = add nuw i64 %index281, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next286, %n.vec275
  br i1 %i.ez, label %middle.block287, label %vector.body280, !llvm.loop !394

middle.block287:                                  ; preds = %vector.body280
  %cmp.n288 = icmp eq i64 %i.dx, %n.vec275
  br i1 %cmp.n288, label %._crit_edge182, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader301

_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader301: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader, %middle.block287
  %indvars.iv232.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader ], [ %n.vec275, %middle.block287 ]
  %i.fa = extractelement <2 x double> %i.az, i64 0
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192

_ZN3igl8geodesic8Interval6signalEd.exit.us.us192: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader301, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192 ], [ %indvars.iv232.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192.preheader301 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv232
  %i.fc = load <2 x double>, ptr %i.fb, align 8, !tbaa !87
  %i.fd = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fc)
  %i.fe = fmul double %i.fd, 5.000000e-01
  %i.ff = fsub double %i.fe, %i.fa
  %i.fg = tail call noundef double @llvm.fabs.f64(double %i.ff)
  %.0.i171.us.us = fadd double %i.aq, %i.fg
  %i.fh = fcmp ult double %.0.i171.us.us, 1.000000e+100
  %i.fi = zext i1 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv232
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !153
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %i.dx
  br i1 %exitcond236.not, label %._crit_edge182, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192, !llvm.loop !395

_ZN3igl8geodesic8Interval6signalEd.exit.us:       ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader, %_ZN3igl8geodesic8Interval6signalEd.exit.us
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv227
  %i.fl = load <2 x double>, ptr %i.fk, align 8, !tbaa !87
  %i.fm = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fl)
  %i.fn = fmul double %i.fm, 5.000000e-01
  %i.fo = fsub double %i.fn, %i.ed                ; 2 uses
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.ee)
  %i.fq = tail call double @sqrt(double noundef %i.fp) #22
  %.0.i171.us = fadd double %i.aq, %i.fq
  %i.fr = fcmp ult double %.0.i171.us, 1.000000e+100
  %i.fs = zext i1 %i.fr to i32
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv227
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !153
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %i.dx
  br i1 %exitcond231.not, label %._crit_edge182, label %_ZN3igl8geodesic8Interval6signalEd.exit.us, !llvm.loop !396

.lr.ph181.split:                                  ; preds = %.lr.ph181
  br i1 %i.ea, label %.lr.ph181.split.split.us, label %.lr.ph181.split.split.preheader

.lr.ph181.split.split.preheader:                  ; preds = %.lr.ph181.split
  %i.fu = extractelement <2 x double> %i.bc, i64 0
  %i.fv = extractelement <2 x double> %i.az, i64 0
  %i.fw = extractelement <2 x double> %i.bc, i64 1
  br label %.lr.ph181.split.split

.lr.ph181.split.split.us:                         ; preds = %.lr.ph181.split
  br i1 %i.dz, label %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us185.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us185.preheader: ; preds = %.lr.ph181.split.split.us
  %i.fx = extractelement <2 x double> %i.bc, i64 0
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us185

_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader: ; preds = %.lr.ph181.split.split.us
  %min.iters.check = icmp samesign ult i64 %i.dx, 4
  br i1 %min.iters.check, label %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader303, label %vector.ph

vector.ph:                                        ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader
  %n.vec = and i64 %i.dx, 252                     ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert267 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat268 = shufflevector <2 x double> %broadcast.splatinsert267, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load = load <2 x double>, ptr %i.fy, align 16, !tbaa !87
  %wide.load269 = load <2 x double>, ptr %i.fz, align 16, !tbaa !87
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %wide.load270 = load <2 x double>, ptr %i.ga, align 8, !tbaa !87
  %wide.load271 = load <2 x double>, ptr %i.gb, align 8, !tbaa !87
  %i.gc = fadd <2 x double> %wide.load, %wide.load270
  %i.gd = fadd <2 x double> %wide.load269, %wide.load271
  %i.ge = fmul <2 x double> %i.gc, splat (double 5.000000e-01)
  %i.gf = fmul <2 x double> %i.gd, splat (double 5.000000e-01)
  %i.gg = fsub <2 x double> %i.ge, %broadcast.splat
  %i.gh = fsub <2 x double> %i.gf, %broadcast.splat
  %i.gi = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gg)
  %i.gj = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gh)
  %i.gk = fadd <2 x double> %broadcast.splat268, %i.gi
  %i.gl = fadd <2 x double> %broadcast.splat268, %i.gj
  %i.gm = fcmp ugt <2 x double> %i.gk, splat (double 1.000000e+100)
  %i.gn = fcmp ugt <2 x double> %i.gl, splat (double 1.000000e+100)
  %i.go = zext <2 x i1> %i.gm to <2 x i32>
  %i.gp = zext <2 x i1> %i.gn to <2 x i32>
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store <2 x i32> %i.go, ptr %i.gq, align 4, !tbaa !153
  store <2 x i32> %i.gp, ptr %i.gr, align 4, !tbaa !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %._crit_edge182, label %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader303

_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader303: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader, %middle.block
  %indvars.iv222.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us

_ZN3igl8geodesic8Interval6signalEd.exit.us185.us: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader303, %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us ], [ %indvars.iv222.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us.preheader303 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv222
  %i.gu = load <2 x double>, ptr %i.gt, align 8, !tbaa !87
  %i.gv = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gu)
  %i.gw = fmul double %i.gv, 5.000000e-01
  %i.gx = fsub double %i.gw, %i.ax
  %i.gy = tail call noundef double @llvm.fabs.f64(double %i.gx)
  %.0.i.us.us = fadd double %i.ao, %i.gy
  %i.gz = fcmp ugt double %.0.i.us.us, 1.000000e+100
  %i.ha = zext i1 %i.gz to i32
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv222
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !153
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %i.dx
  br i1 %exitcond226.not, label %._crit_edge182, label %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us, !llvm.loop !398

_ZN3igl8geodesic8Interval6signalEd.exit.us185:    ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us185.preheader, %_ZN3igl8geodesic8Interval6signalEd.exit.us185
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %_ZN3igl8geodesic8Interval6signalEd.exit.us185 ], [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us185.preheader ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv217
  %i.hd = load <2 x double>, ptr %i.hc, align 8, !tbaa !87
  %i.he = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hd)
  %i.hf = fmul double %i.he, 5.000000e-01
  %i.hg = fsub double %i.hf, %i.ax                ; 2 uses
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hg, double %i.fx)
  %i.hi = tail call double @sqrt(double noundef %i.hh) #22
  %.0.i.us = fadd double %i.ao, %i.hi
  %i.hj = fcmp ugt double %.0.i.us, 1.000000e+100
  %i.hk = zext i1 %i.hj to i32
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv217
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !153
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.dx
  br i1 %exitcond221.not, label %._crit_edge182, label %_ZN3igl8geodesic8Interval6signalEd.exit.us185, !llvm.loop !396

bb.q:                                             ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %7, ptr %i.hm, align 8, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %.1 = phi i8 [ 2, %bb.q ], [ 1, %.lr.ph ]       ; 4 uses
  %exitcond.not = icmp eq i32 %.3, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hn = fcmp ogt double %.sroa.0.0.vec.extract, %i.dr
  %i.ho = fcmp olt double %.sroa.0.0.vec.extract, %i.ds
  %or.cond.1 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond.1, label %bb.t, label %8

bb.t:                                             ; preds = %bb.s
  %i.hp = add nuw nsw i8 %.1, 1
  %i.hq = zext nneg i8 %.1 to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hq
  store double %.sroa.0.0.vec.extract, ptr %i.hr, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %bb.t, %bb.s
  %.1.1 = phi i8 [ %i.hp, %bb.t ], [ %.1, %bb.s ] ; 4 uses
  %exitcond.not.1 = icmp eq i32 %.3, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %9

9:                                                ; preds = %8
  %10 = fcmp ogt double %7, %i.dr
  %11 = fcmp olt double %7, %i.ds
  %or.cond.2 = select i1 %10, i1 %11, i1 false
  br i1 %or.cond.2, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %9
  %12 = add nuw nsw i8 %.1.1, 1
  %13 = zext i8 %.1.1 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %13
  store double %7, ptr %14, align 8, !tbaa !87
  br label %._crit_edge

._crit_edge182:                                   ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit173, %_ZN3igl8geodesic8Interval6signalEd.exit.us185, %_ZN3igl8geodesic8Interval6signalEd.exit.us185.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us192, %middle.block, %middle.block287, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader
  %i.hs = fsub double %i.dg, %i.g
  %i.ht = fcmp olt double %i.dd, %i.hs
  br i1 %i.ht, label %bb.z, label %.lr.ph200

.lr.ph181.split.split:                            ; preds = %.lr.ph181.split.split.preheader, %_ZN3igl8geodesic8Interval6signalEd.exit173
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %_ZN3igl8geodesic8Interval6signalEd.exit173 ], [ 0, %.lr.ph181.split.split.preheader ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv212 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !87
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !87
  %i.hy = fadd double %i.hv, %i.hx
  %i.hz = fmul double %i.hy, 5.000000e-01         ; 2 uses
  %i.ia = fsub double %i.hz, %i.ax                ; 3 uses
  br i1 %i.dz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph181.split.split
  %i.ib = tail call noundef double @llvm.fabs.f64(double %i.ia)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

bb.w:                                             ; preds = %.lr.ph181.split.split
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %i.fu)
  %i.id = tail call double @sqrt(double noundef %i.ic) #22
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

_ZN3igl8geodesic8Interval6signalEd.exit:          ; preds = %bb.w, %bb.v
  %.pn.i = phi double [ %i.ib, %bb.v ], [ %i.id, %bb.w ]
  %.0.i = fadd double %i.ao, %.pn.i
  %i.ie = fsub double %i.hz, %i.fv                ; 3 uses
  br i1 %i.eb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.if = tail call noundef double @llvm.fabs.f64(double %i.ie)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit173

bb.y:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %i.fw)
  %i.ih = tail call double @sqrt(double noundef %i.ig) #22
  br label %_ZN3igl8geodesic8Interval6signalEd.exit173

_ZN3igl8geodesic8Interval6signalEd.exit173:       ; preds = %bb.y, %bb.x
  %.pn.i170 = phi double [ %i.if, %bb.x ], [ %i.ih, %bb.y ]
  %.0.i171 = fadd double %i.aq, %.pn.i170
  %i.ii = fcmp ugt double %.0.i, %.0.i171
  %i.ij = zext i1 %i.ii to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv212
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !153
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %i.dx
  br i1 %exitcond216.not, label %._crit_edge182, label %.lr.ph181.split.split, !llvm.loop !396

bb.z:                                             ; preds = %._crit_edge182
  %i.il = load i32, ptr %i.b, align 4, !tbaa !153
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.dd, ptr %i.a, align 16, !tbaa !87
  br label %.lr.ph200

bb.ab:                                            ; preds = %bb.z
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.in, align 8, !tbaa !153
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.dd, ptr %i.io, align 8, !tbaa !87
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %._crit_edge182, %bb.ab, %bb.aa
  %.2153 = phi i32 [ 0, %bb.aa ], [ 1, %bb.ab ], [ 0, %._crit_edge182 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.ac

._crit_edge201:                                   ; preds = %bb.af
  %i.ir = load ptr, ptr %i.dj, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %.in.i175 = select i1 %.not.i167, ptr %i.is, ptr %i.di
  %i.it = load double, ptr %.in.i175, align 8, !tbaa !87
  %i.iu = load double, ptr %i.dn, align 8, !tbaa !87 ; 2 uses
  %i.iv = fadd double %i.g, %i.iu
  %i.iw = fcmp ogt double %i.it, %i.iv
  br i1 %i.iw, label %bb.ag, label %bb.aj

bb.ac:                                            ; preds = %.lr.ph200, %bb.af
  %.0198 = phi i64 [ 0, %.lr.ph200 ], [ %i.jk, %bb.af ] ; 3 uses
  %.3154197 = phi i32 [ %.2153, %.lr.ph200 ], [ %.4, %bb.af ] ; 5 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0198
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !153 ; 2 uses
  %i.iz = icmp eq i32 %.3154197, 0
  br i1 %i.iz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ja = add i32 %.3154197, -1
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !153
  %.not = icmp eq i32 %i.jd, %i.iy
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.je = zext i32 %.3154197 to i64               ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.je
  store i32 %i.iy, ptr %i.jf, align 4, !tbaa !153
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0198
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !87
  %i.ji = add i32 %.3154197, 1
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.je
  store double %i.jh, ptr %i.jj, align 8, !tbaa !87
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.4 = phi i32 [ %i.ji, %bb.ae ], [ %.3154197, %bb.ad ] ; 7 uses
  %i.jk = add nuw nsw i64 %.0198, 1               ; 2 uses
  %exitcond240.not = icmp eq i64 %i.jk, %i.dx
  br i1 %exitcond240.not, label %._crit_edge201, label %bb.ac, !llvm.loop !399

bb.ag:                                            ; preds = %._crit_edge201
  %i.jl = icmp eq i32 %.4, 0
  br i1 %i.jl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.jn = add i32 %.4, -1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !153
  %i.jr = icmp eq i32 %i.jq, 1
  br i1 %i.jr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.jt = zext i32 %.4 to i64                     ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jt
  store i32 0, ptr %i.ju, align 4, !tbaa !153
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.jw = add i32 %.4, 1
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jt
  store double %i.iu, ptr %i.jx, align 8, !tbaa !87
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %._crit_edge201
  %.5 = phi i32 [ %i.jw, %bb.ai ], [ %.4, %bb.ah ], [ %.4, %._crit_edge201 ]
  %i.jy = load double, ptr %1, align 8, !tbaa !87
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.jy, ptr %i.jz, align 8, !tbaa !87
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !409
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !408
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !165, !alias.scope !409
  store ptr %i.y, ptr %i.w, align 8, !tbaa !165, !alias.scope !408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !409
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !85, !alias.scope !411
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !85, !alias.scope !410
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165, !alias.scope !411
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !165, !alias.scope !410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !411
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
