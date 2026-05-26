inline.NumInlined: 560
inline.NumDeleted: 278
begin_hunk_0_@_ZN6hermes2vm7mathMinEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.x = bitcast i64 %i.v to double               ; 3 uses
  %i.y = fcmp uno double %.044, 0.000000e+00
  br i1 %i.y, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = fcmp uno double %i.x, 0.000000e+00
  br i1 %i.z, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp ogt double %.044, %i.x
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp slt i64 %i.v, 0
  %i.ac = bitcast double %.044 to i64
  %i.ad = icmp sgt i64 %i.ac, -1
  %i.ae = and i1 %i.ad, %i.ab
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.g, %bb.d
  %.3.ph = phi double [ +qnan, %bb.d ], [ %i.x, %bb.g ], [ %.044, %bb.c ], [ %.044, %bb.f ] ; 2 uses
  %.not = icmp eq ptr %i.o, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %.pre.pre-phi = phi i64 [ %.pre45, %.._crit_edge_crit_edge ], [ %i.m, %bb.h ]
  %.0.lcssa = phi double [ +inf, %.._crit_edge_crit_edge ], [ %.3.ph, %bb.h ] ; 2 uses
  %i.af = fcmp uno double %.0.lcssa, 0.000000e+00
  %i.ag = bitcast double %.0.lcssa to i64
  %.sroa.0.0.i = select i1 %i.af, i64 9221120237041090560, i64 %i.ag, !prof !13
  br label %.thread38

.thread38:                                        ; preds = %bb.b, %._crit_edge
  %.pre-phi = phi i64 [ %.pre.pre-phi, %._crit_edge ], [ %i.m, %bb.b ]
  %.sroa.032.3 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.b ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.i, %._crit_edge ], [ undef, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  store i32 %i.f, ptr %i.e, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.al, ptr %i.am, align 8, !tbaa !38
  store ptr %i.d, ptr %i.c, align 8, !tbaa !17
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.032.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7mathPowEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double               ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !9
  %i.k = icmp ugt i32 %i.j, 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %.sroa.02.0.i6 = select i1 %i.k, ptr %i.m, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.n = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i6) #12 ; 2 uses
  %i.o = extractvalue { i32, i64 } %i.n, 0
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.q = extractvalue { i32, i64 } %i.n, 1
  %i.r = bitcast i64 %i.q to double               ; 4 uses
  %i.s = fcmp uno double %i.r, 0.000000e+00
  br i1 %i.s, label %_ZN6hermes2vm5expOpEdd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.t, label %_ZN6hermes2vm5expOpEdd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef double @llvm.fabs.f64(double %i.i)
  %i.v = fcmp oeq double %i.u, 1.000000e+00
  %i.w = tail call double @llvm.fabs.f64(double %i.r)
  %i.x = fcmp oeq double %i.w, +inf
  %or.cond.i = and i1 %i.v, %i.x
  br i1 %or.cond.i, label %_ZN6hermes2vm5expOpEdd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call double @pow(double noundef %i.i, double noundef %i.r) #12, !tbaa !3
  br label %_ZN6hermes2vm5expOpEdd.exit

_ZN6hermes2vm5expOpEdd.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ %i.y, %bb.f ], [ +qnan, %bb.c ], [ 1.000000e+00, %bb.d ], [ +qnan, %bb.e ] ; 2 uses
  %i.z = fcmp uno double %.0.i, 0.000000e+00
  %i.aa = bitcast double %.0.i to i64
  %.sroa.0.0.i = select i1 %i.z, i64 9221120237041090560, i64 %i.aa, !prof !13
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_ZN6hermes2vm5expOpEdd.exit
  %.sroa.012.0 = phi i32 [ 1, %_ZN6hermes2vm5expOpEdd.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.413.0 = phi i64 [ %.sroa.0.0.i, %_ZN6hermes2vm5expOpEdd.exit ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.413.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10mathRandomEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::random_device", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2504 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !57, !noundef !58
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.h, align 1, !tbaa !64
  call void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.i = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.f, align 8, !tbaa !64
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #13
  br label %_ZNSt13random_deviceC2Ev.exit

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.m = call noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4) #12
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = call noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4) #12
  %i.q = zext i32 %i.p to i64
  %i.r = or disjoint i64 %i.o, %i.q               ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNSt13random_deviceC2Ev.exit
  %store_forwarded = phi i64 [ %i.r, %_ZNSt13random_deviceC2Ev.exit ], [ %i.ac, %bb.d ] ; 2 uses
  %.011.i = phi i64 [ 1, %_ZNSt13random_deviceC2Ev.exit ], [ %i.ad, %bb.d ] ; 4 uses
  %i.s = getelementptr [8 x i8], ptr %i.b, i64 %.011.i
  %i.t = lshr i64 %store_forwarded, 62
  %i.u = xor i64 %i.t, %store_forwarded
  %i.v = mul i64 %i.u, 6364136223846793005
  %i.w = add i64 %i.v, %.011.i                    ; 3 uses
  store i64 %i.w, ptr %i.s, align 8, !tbaa !66
  %i.x = add nuw nsw i64 %.011.i, 1               ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.x, 312
  br i1 %exitcond.not.i, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr [8 x i8], ptr %i.b, i64 %i.x
  %i.z = lshr i64 %i.w, 62
  %i.aa = xor i64 %i.z, %i.w
  %i.ab = mul i64 %i.aa, 6364136223846793005
  %i.ac = add i64 %i.ab, %i.x                     ; 2 uses
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !66
  %i.ad = add nuw nsw i64 %.011.i, 2
  br label %bb.c

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2496
  store i64 312, ptr %i.ae, align 8, !tbaa !67
  store i8 1, ptr %i.c, align 8, !tbaa !49
  call void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm.exit, %bb.a
  %i.af = call x86_fp80 @llvm.log.f80(x86_fp80 f0x403F8000000000000000), !tbaa !3
  %i.ag = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !3
  %i.ah = fdiv x86_fp80 %i.af, %i.ag
  %i.ai = fptoui x86_fp80 %i.ah to i64            ; 2 uses
  %i.aj = add i64 %i.ai, 52
  %i.ak = udiv i64 %i.aj, %i.ai
  %.fr.i.i.i.i = freeze i64 %i.ak
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr.i.i.i.i, i64 1)
  br label %select.unfold.i.i.i.i

bb.f:                                             ; preds = %select.unfold.i.i.i.i
  %i.al = fdiv double %i.ap, %i.as                ; 2 uses
  %i.am = fcmp ult double %i.al, 1.000000e+00
  br i1 %i.am, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit, label %bb.g, !prof !68

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.e
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.at, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %bb.e ], [ %i.as, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %bb.e ], [ %i.ap, %select.unfold.i.i.i.i ]
  %i.an = call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.b)
  %i.ao = uitofp i64 %i.an to double
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %.01422.i.i.i.i, double %.01521.i.i.i.i) ; 2 uses
  %i.aq = fpext double %.01422.i.i.i.i to x86_fp80
  %i.ar = fmul x86_fp80 %i.aq, f0x403F8000000000000000
  %i.as = fptrunc x86_fp80 %i.ar to double        ; 2 uses
  %i.at = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !69

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %i.au = fadd double %.016.i.i.i.i, 0.000000e+00
  %i.av = fcmp uno double %.016.i.i.i.i, 0.000000e+00
  %i.aw = bitcast double %i.au to i64
  %.sroa.0.0.i = select i1 %i.av, i64 9221120237041090560, i64 %i.aw, !prof !13
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.0.0.i, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10mathFroundEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double               ; 2 uses
  %i.j = fptrunc double %i.i to float
  %i.k = fpext float %i.j to double
  %i.l = fcmp uno double %i.i, 0.000000e+00
  %i.m = bitcast double %i.k to i64
  %.sroa.0.0.i = select i1 %i.l, i64 9221120237041090560, i64 %i.m, !prof !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.i, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm9mathHypotEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.llvh::SmallVector.156", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %1, ptr %3, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  store ptr %i.c, ptr %i.a, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !73
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !26
  store ptr %3, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.m, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 4, ptr %i.n, align 4, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9    ; 3 uses
  %i.q = icmp ugt i32 %i.p, 4
  br i1 %i.q, label %bb.b, label %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.p to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.l, i64 noundef %i.r, i64 noundef 8) #12
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !17
  %.pre90 = load i32, ptr %i.k, align 8, !tbaa !26
  %.pre91 = load i32, ptr %i.o, align 8, !tbaa !9, !noalias !75
  br label %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit

_ZN4llvh15SmallVectorImplIdE7reserveEm.exit:      ; preds = %bb.a, %bb.b
  %i.s = phi i32 [ %i.p, %bb.a ], [ %.pre91, %bb.b ] ; 2 uses
  %i.t = phi i32 [ 0, %bb.a ], [ %.pre90, %bb.b ] ; 2 uses
  %i.u = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !27, !noalias !80 ; 2 uses
  %i.w = zext i32 %i.s to i64
  %.neg = mul nsw i64 %i.w, -8
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %.neg
  %.not6973 = icmp eq i32 %i.s, 0
  br i1 %.not6973, label %.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit
  %i.y = zext i32 %i.t to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.077 = phi i1 [ false, %.lr.ph ], [ %i.an, %bb.f ]
  %.03976 = phi i1 [ false, %.lr.ph ], [ %i.al, %bb.f ]
  %.06075 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated, %bb.f ] ; 2 uses
  %.sroa.050.074 = phi ptr [ %i.v, %.lr.ph ], [ %i.z, %bb.f ]
  %i.z = getelementptr inbounds i8, ptr %.sroa.050.074, i64 -8 ; 3 uses
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i32 %i.t, ptr %i.k, align 8, !tbaa !26
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !38
  store ptr %i.u, ptr %i.i, align 8, !tbaa !17
  %i.ae = call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.z) #12
  %.fr = freeze { i32, i64 } %i.ae                ; 2 uses
  %i.af = extractvalue { i32, i64 } %.fr, 0
  %i.ag = extractvalue { i32, i64 } %.fr, 1       ; 2 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %.thread67, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.ai = bitcast i64 %i.ag to double             ; 2 uses
  %i.aj = call double @llvm.fabs.f64(double %i.ai) ; 3 uses
  %i.ak = fcmp oeq double %i.aj, +inf
  %i.al = select i1 %i.ak, i1 true, i1 %.03976    ; 3 uses
  %i.am = fcmp uno double %i.ai, 0.000000e+00
  %i.an = select i1 %i.am, i1 true, i1 %.077      ; 2 uses
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !74  ; 2 uses
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !73
  %.not.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !68

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #12
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aq = phi i32 [ %.pre.i, %bb.e ], [ %i.ao, %bb.d ]
  %i.ar = load ptr, ptr %4, align 8, !tbaa !36
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  store i64 %i.ag, ptr %i.at, align 1
  %i.au = load i32, ptr %i.m, align 8, !tbaa !74
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.m, align 8, !tbaa !74
  %i.aw = fcmp olt double %i.aj, %.06075
  %.sroa.speculated = select i1 %i.aw, double %.06075, double %i.aj ; 6 uses
  %.not69 = icmp eq ptr %i.z, %i.x
  br i1 %.not69, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %brmerge = select i1 %i.al, i1 true, i1 %i.an
  %. = select i1 %i.al, i64 9218868437227405312, i64 9221120237041090560
  br i1 %brmerge, label %.thread67, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ax = fcmp oeq double %.sroa.speculated, 0.000000e+00
  br i1 %i.ax, label %.thread67, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %4, align 8, !tbaa !36    ; 4 uses
  %i.az = load i32, ptr %i.m, align 8, !tbaa !74  ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.idx = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %.not80 = icmp eq i32 %i.az, 0
  br i1 %.not80, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.h
  %i.bc = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bd = and i64 %i.bc, 8
end_hunk_0
