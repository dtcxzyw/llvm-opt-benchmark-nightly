Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocScore?download=true
inline.NumInlined: 272
inline.NumDeleted: 178
begin_hunk_0_@__cxa_atexit
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm13RegAllocScorepLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !23
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !23
  %i.c = fadd <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !25
  %i.j = fadd double %i.g, %i.i
  store double %i.j, ptr %i.h, align 8, !tbaa !25
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !23
  %i.l = load <2 x double>, ptr %i.e, align 8, !tbaa !23
  %i.m = fadd <2 x double> %i.k, %i.l
  store <2 x double> %i.m, ptr %i.e, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !26
  %i.r = fadd double %i.o, %i.q
  store double %i.r, ptr %i.p, align 8, !tbaa !26
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13RegAllocScoreeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !27
  %i.b = load double, ptr %1, align 8, !tbaa !27
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !28
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !29
  %i.m = fcmp oeq double %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !25
  %i.r = fcmp oeq double %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !30
  %i.w = fcmp oeq double %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ac = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.f ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13RegAllocScoreneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !27
  %i.b = load double, ptr %1, align 8, !tbaa !27
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK4llvm13RegAllocScoreeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !28
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK4llvm13RegAllocScoreeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !29
  %i.m = fcmp oeq double %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm13RegAllocScoreeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !25
  %i.r = fcmp oeq double %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZNK4llvm13RegAllocScoreeqERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !30
  %i.w = fcmp oeq double %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK4llvm13RegAllocScoreeqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26
  %i.ab = fcmp une double %i.y, %i.aa
  br label %_ZNK4llvm13RegAllocScoreeqERKS0_.exit

_ZNK4llvm13RegAllocScoreeqERKS0_.exit:            ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.ac = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.ab, %bb.f ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef double @_ZNK4llvm13RegAllocScore8getScoreEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10CopyWeightE, i64 120), align 8, !tbaa !36
  %i.b = load double, ptr %0, align 8, !tbaa !27
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double 0.000000e+00)
  %i.d = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10LoadWeightE, i64 120), align 8, !tbaa !36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  %i.g = tail call double @llvm.fmuladd.f64(double %i.d, double %i.f, double %i.c)
  %i.h = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm11StoreWeightE, i64 120), align 8, !tbaa !36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double %i.j, double %i.g)
  %i.l = fadd double %i.d, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.k)
  %i.p = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm16CheapRematWeightE, i64 120), align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !30
  %i.s = tail call double @llvm.fmuladd.f64(double %i.p, double %i.r, double %i.o)
  %i.t = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm20ExpensiveRematWeightE, i64 120), align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load double, ptr %i.u, align 8, !tbaa !26
  %i.w = tail call double @llvm.fmuladd.f64(double %i.t, double %i.v, double %i.s)
  ret double %i.w
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22calculateRegAllocScoreERKNS_15MachineFunctionERKNS_25MachineBlockFrequencyInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::RegAllocScore") align 8 captures(none) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.80, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %2, ptr %3, align 8, !tbaa !66
  %i.a = ptrtoint ptr %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8, !tbaa !67
  %i.b = ptrtoint ptr %4 to i64
  call void @_ZN4llvm22calculateRegAllocScoreERKNS_15MachineFunctionENS_12function_refIFdRKNS_17MachineBasicBlockEEEENS3_IFbRKNS_12MachineInstrEEEE(ptr dead_on_unwind writable sret(%"class.llvm::RegAllocScore") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr nonnull @"_ZN4llvm12function_refIFdRKNS_17MachineBasicBlockEEE11callback_fnIZNS_22calculateRegAllocScoreERKNS_15MachineFunctionERKNS_25MachineBlockFrequencyInfoEE3$_0EEdlS3_", i64 %i.a, ptr nonnull @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEEE11callback_fnIZNS_22calculateRegAllocScoreERKNS_15MachineFunctionERKNS_25MachineBlockFrequencyInfoEE3$_1EEblS3_", i64 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22calculateRegAllocScoreERKNS_15MachineFunctionENS_12function_refIFdRKNS_17MachineBasicBlockEEEENS3_IFbRKNS_12MachineInstrEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::RegAllocScore") align 8 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.047.081 = load ptr, ptr %i.a, align 8, !tbaa !71 ; 2 uses
  %.not82 = icmp eq ptr %.sroa.047.081, %i.b
  br i1 %.not82, label %._crit_edge86.a, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge86:                                    ; preds = %._crit_edge
  store <2 x double> %i.m, ptr %0, align 8
  store <2 x double> %i.p, ptr %i.c, align 8
  store <2 x double> %i.s, ptr %i.d, align 8
  br label %._crit_edge86.a

._crit_edge86.a:                                  ; preds = %._crit_edge86, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph85, %._crit_edge
  %.sroa.047.083 = phi ptr [ %.sroa.047.081, %.lr.ph85 ], [ %.sroa.047.0, %._crit_edge ] ; 4 uses
  %i.e = phi <2 x double> [ zeroinitializer, %.lr.ph85 ], [ %i.m, %._crit_edge ]
  %i.f = phi <2 x double> [ zeroinitializer, %.lr.ph85 ], [ %i.p, %._crit_edge ]
  %i.g = phi <2 x double> [ zeroinitializer, %.lr.ph85 ], [ %i.s, %._crit_edge ]
  %i.h = tail call noundef double %2(i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.047.083) #14, !inline_history !68 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.047.083, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.047.083, i64 48 ; 2 uses
  %.sroa.037.067 = load ptr, ptr %i.i, align 8, !tbaa !72 ; 2 uses
  %.not6168 = icmp eq ptr %.sroa.037.067, %i.j
  br i1 %.not6168, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %bb.b
  %.sroa.039.0.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.039.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ]
  %.sroa.6.0.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.6.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ]
  %.sroa.9.0.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.9.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ]
  %.sroa.12.0.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.12.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ]
  %.sroa.15.0.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.15.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ]
  %.sroa.18.0.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.18.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ]
  %i.k = insertelement <2 x double> poison, double %.sroa.039.0.lcssa, i64 0
  %i.l = insertelement <2 x double> %i.k, double %.sroa.6.0.lcssa, i64 1
  %i.m = fadd <2 x double> %i.l, %i.e             ; 2 uses
  %i.n = insertelement <2 x double> poison, double %.sroa.9.0.lcssa, i64 0
  %i.o = insertelement <2 x double> %i.n, double %.sroa.12.0.lcssa, i64 1
  %i.p = fadd <2 x double> %i.o, %i.f             ; 2 uses
  %i.q = insertelement <2 x double> poison, double %.sroa.15.0.lcssa, i64 0
  %i.r = insertelement <2 x double> %i.q, double %.sroa.18.0.lcssa, i64 1
  %i.s = fadd <2 x double> %i.r, %i.g             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.047.083, i64 8
  %.sroa.047.0 = load ptr, ptr %i.t, align 8, !tbaa !71 ; 2 uses
  %.not = icmp eq ptr %.sroa.047.0, %i.b
  br i1 %.not, label %._crit_edge86, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.037.075 = phi ptr [ %.sroa.037.0, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.037.067, %bb.b ] ; 24 uses
  %.sroa.18.074 = phi double [ %.sroa.18.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ 0.000000e+00, %bb.b ] ; 16 uses
  %.sroa.15.073 = phi double [ %.sroa.15.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ 0.000000e+00, %bb.b ] ; 16 uses
  %.sroa.12.072 = phi double [ %.sroa.12.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ 0.000000e+00, %bb.b ] ; 16 uses
  %.sroa.9.071 = phi double [ %.sroa.9.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ 0.000000e+00, %bb.b ] ; 16 uses
  %.sroa.6.070 = phi double [ %.sroa.6.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ 0.000000e+00, %bb.b ] ; 16 uses
  %.sroa.039.069 = phi double [ %.sroa.039.1, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ 0.000000e+00, %bb.b ] ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 52 ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  switch i32 %i.v, label %bb.d [
    i32 18, label %bb.r
    i32 17, label %bb.r
    i32 16, label %bb.r
    i32 15, label %bb.r
    i32 14, label %bb.r
    i32 7, label %bb.r
    i32 2, label %bb.r
    i32 1, label %bb.r
    i32 20, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.w = fadd double %i.h, %.sroa.039.069
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph
  %i.x = tail call noundef zeroext i1 %4(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.037.075) #14, !inline_history !69
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ac = and i64 %i.ab, 1073741824
  %.not66 = icmp eq i64 %i.ac, 0
  br i1 %.not66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fadd double %i.h, %.sroa.12.072
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ae = fadd double %i.h, %.sroa.18.074
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.u, align 4, !tbaa !57  ; 4 uses
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  %spec.select.i.i = icmp ult i32 %i.ag, 2
  br i1 %spec.select.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !74
  %i.al = and i64 %i.ak, 8
  %.not.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.not.i, label %bb.j, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !75 ; 2 uses
  %i.ao = and i32 %i.an, 12
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = and i32 %i.an, 4
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond.i.i = or i1 %i.ap, %i.ar
  br i1 %or.cond.i.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit, label %.split

.split:                                           ; preds = %bb.j
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.037.075, i64 noundef 524288, i32 noundef 1) #14
  %.pre93 = load i32, ptr %i.u, align 4, !tbaa !57 ; 3 uses
  br i1 %i.as, label %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread_crit_edge, label %bb.l

.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread_crit_edge: ; preds = %.split
  %.pre95 = add i32 %.pre93, -1
  br label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit: ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !62
  %i.ax = and i64 %i.aw, 524288
  %.not62 = icmp eq i64 %i.ax, 0
  br i1 %.not62, label %bb.l, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread: ; preds = %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread_crit_edge, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit
  %.pre-phi96 = phi i32 [ %.pre95, %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread_crit_edge ], [ %i.ag, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ]
  %i.ay = phi i32 [ %.pre93, %.split._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread_crit_edge ], [ %i.af, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ] ; 2 uses
  %spec.select.i.i23 = icmp ult i32 %.pre-phi96, 2
  br i1 %spec.select.i.i23, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.thread, label %bb.k

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.thread: ; preds = %bb.i, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread
  %i.az = phi i32 [ %i.ay, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread ], [ %i.af, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !74
  %i.be = and i64 %i.bd, 16
  %.not.not.i26 = icmp eq i64 %i.be, 0
  br i1 %.not.not.i26, label %bb.k, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

bb.k:                                             ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.thread, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread
  %i.bf = phi i32 [ %i.az, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.thread ], [ %i.ay, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !75 ; 2 uses
  %i.bi = and i32 %i.bh, 12
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = and i32 %i.bh, 4
  %i.bl = icmp ne i32 %i.bk, 0
  %or.cond.i.i24 = or i1 %i.bj, %i.bl
  br i1 %or.cond.i.i24, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, label %.split55

.split55:                                         ; preds = %bb.k
  %i.bm = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.037.075, i64 noundef 1048576, i32 noundef 1) #14
  br i1 %i.bm, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread, label %.split55._crit_edge

.split55._crit_edge:                              ; preds = %.split55
  %.pre92 = load i32, ptr %i.u, align 4, !tbaa !57
  br label %bb.l

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !62
  %i.br = and i64 %i.bq, 1048576
  %.not63 = icmp eq i64 %i.br, 0
  br i1 %.not63, label %bb.l, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.thread, %.split55, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.bs = fadd double %i.h, %.sroa.15.073
  br label %bb.r

bb.l:                                             ; preds = %.split55._crit_edge, %.split, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit
  %i.bt = phi i32 [ %.pre92, %.split55._crit_edge ], [ %.pre93, %.split ], [ %i.bf, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit ], [ %i.af, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ]
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  %spec.select.i.i27 = icmp ult i32 %i.bu, 2
  br i1 %spec.select.i.i27, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !73
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !74
  %i.bz = and i64 %i.by, 8
  %.not.not.i30 = icmp eq i64 %i.bz, 0
  br i1 %.not.not.i30, label %bb.n, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 44 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75 ; 2 uses
  %i.cc = and i32 %i.cb, 12
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = and i32 %i.cb, 4
  %i.cf = icmp ne i32 %i.ce, 0
  %or.cond.i.i28 = or i1 %i.cd, %i.cf
  br i1 %or.cond.i.i28, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31, label %.split57

.split57:                                         ; preds = %bb.n
  %i.cg = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.037.075, i64 noundef 524288, i32 noundef 1) #14
  br i1 %i.cg, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31.thread, label %.split57._crit_edge

.split57._crit_edge:                              ; preds = %.split57
  %.pre = load i32, ptr %i.u, align 4, !tbaa !57
  %.pre94 = add i32 %.pre, -1
  br label %bb.o

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31: ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !62
  %i.cl = and i64 %i.ck, 524288
  %.not64 = icmp eq i64 %i.cl, 0
  br i1 %.not64, label %bb.o, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31.thread

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31.thread: ; preds = %bb.m, %.split57, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31
  %i.cm = fadd double %i.h, %.sroa.6.070
  br label %bb.r

bb.o:                                             ; preds = %.split57._crit_edge, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31
  %.pre-phi = phi i32 [ %.pre94, %.split57._crit_edge ], [ %i.bu, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit31 ]
  %spec.select.i.i32 = icmp ult i32 %.pre-phi, 2
  br i1 %spec.select.i.i32, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.037.075, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !73
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !74
  %i.cr = and i64 %i.cq, 16
  %.not.not.i35 = icmp eq i64 %i.cr, 0
  br i1 %.not.not.i35, label %bb.q, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit36.thread

end_hunk_0
