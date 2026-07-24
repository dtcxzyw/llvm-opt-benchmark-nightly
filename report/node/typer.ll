inline.NumInlined: 789
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE43RestrictionForUnsignedLessThanOrEqual_FalseERKNS2_8WordTypeILm32EEES8_PNS0_4ZoneE:bb.a
  %i.ag = getelementptr [4 x i8], ptr %.sroa.0.0.i.i.i10, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit16

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.thread33, %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, i8 0, i64 23, i1 false)
  br label %bb.g

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit16: ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.thread33, %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit, %bb.e
  %.0.i14 = phi i32 [ %i.x, %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit ], [ -1, %bb.e ], [ %i.ai, %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit.thread33 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ak = add i32 %.0.i14, -1
  call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %5, i32 noundef 0, i32 noundef %i.ak, ptr noundef %3)
  %.sroa.017.0.copyload = load i8, ptr %5, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit16, %bb.f
  %.sroa.017.0 = phi i8 [ 1, %bb.f ], [ %.sroa.017.0.copyload, %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_maxEv.exit16 ]
  store i8 %.sroa.022.0, ptr %0, align 8
  %.sroa.624.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.624.0..sroa_idx25, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.624, i64 23, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.017.0, ptr %i.al, align 8
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx19, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Typer17BranchRefinements16RefineWord32TypeILb1EEENS2_4TypeERKS6_S8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::WordType.4", align 8 ; 7 uses
  %i.a = load i8, ptr %3, align 8
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !alias.scope !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, i8 0, i64 23, i1 false), !alias.scope !42
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %2, align 8
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.g = load i8, ptr %i.f, align 1, !noalias !45
  %i.h = icmp eq i8 %i.g, 0                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !noalias !45 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i32, ptr %i.k, align 4, !noalias !45
  %i.m = icmp ugt i32 %i.j, %i.l                  ; 2 uses
  %i.n = select i1 %i.h, i1 %i.m, i1 false
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 3, ptr %5, align 8, !alias.scope !48
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.o, i8 0, i64 15, i1 false), !alias.scope !53
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !48
  br label %_ZN2v88internal8compiler10turboshaft5Typer20ExtendWord32ToWord64ERKNS2_8WordTypeILm32EEEPNS0_4ZoneE.exit

bb.f:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.select.i.i = select i1 %i.m, i32 0, i32 %i.j
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.q = load i8, ptr %i.p, align 2, !noalias !45
  %i.r = icmp ult i8 %i.q, 3
  %i.s = load ptr, ptr %i.i, align 8, !noalias !45
  %.sroa.0.0.i.i.i.i = select i1 %i.r, ptr %i.i, ptr %i.s
  %i.t = load i32, ptr %.sroa.0.0.i.i.i.i, align 4, !noalias !45
  br label %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i

_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.t, %bb.h ], [ %spec.select.i.i, %bb.g ]
  %i.u = zext i32 %.0.i.i to i64
  call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType.4") align 8 %5, i64 noundef %i.u, i64 noundef -1, ptr noundef %4)
  br label %_ZN2v88internal8compiler10turboshaft5Typer20ExtendWord32ToWord64ERKNS2_8WordTypeILm32EEEPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft5Typer20ExtendWord32ToWord64ERKNS2_8WordTypeILm32EEEPNS0_4ZoneE.exit: ; preds = %bb.e, %_ZNK2v88internal8compiler10turboshaft8WordTypeILm32EE12unsigned_minEv.exit.i
  call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE9IntersectERKS4_S6_NS2_4Type14ResolutionModeEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE9IntersectERKS4_S6_NS2_4Type14ResolutionModeEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 1, ptr noundef %4) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft5Typer20ExtendWord32ToWord64ERKNS2_8WordTypeILm32EEEPNS0_4ZoneE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE27RestrictionForLessThan_TrueERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.474.0..sroa_idx, i8 0, i64 23, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, i8 0, i64 23, i1 false)
  store i8 1, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.o, align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.p = and i32 %i.l, 2
  %.not10.i = icmp eq i32 %i.p, 0                 ; 5 uses
  switch i8 %i.i, label %bb.g [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 8           ; 3 uses
  %i.s = fcmp ogt double %i.r, 0.000000e+00
  %or.cond = select i1 %.not10.i, i1 true, i1 %i.s
  br i1 %or.cond, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.u = load i8, ptr %i.t, align 2               ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = icmp ult i8 %i.u, 3
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.w, ptr %i.x, ptr %i.y
  %i.z = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load double, ptr %i.aa, align 8         ; 3 uses
  %i.ac = fcmp ogt double %i.ab, 0.000000e+00
  %or.cond100 = select i1 %.not10.i, i1 true, i1 %i.ac
  br i1 %or.cond100, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, label %.thread93

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %bb.f
  %i.ad = fcmp oeq double %i.ab, -inf
  br i1 %i.ad, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108: ; preds = %bb.e
  %i.ae = fcmp oeq double %i.r, -inf
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit
  %i.af = icmp eq i8 %i.i, 1
  br i1 %i.af, label %bb.h, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread: ; preds = %bb.d
  %..i18 = select i1 %.not10.i, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8         ; 2 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19, label %.thread

.thread:                                          ; preds = %bb.e, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110
  %i.ai = phi double [ %i.ah, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110 ], [ %i.r, %bb.e ] ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  %.sroa.speculated5.i17 = select i1 %i.aj, double %i.ai, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19

bb.h:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.al = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = icmp ult i8 %i.al, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.sroa.0.0.i.i3.i14 = select i1 %i.an, ptr %i.ao, ptr %i.ap
  %i.aq = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i14, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19, label %.thread93

.thread93:                                        ; preds = %bb.f, %bb.h
  %i.at = phi double [ %i.as, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.au = fcmp ogt double %i.at, 0.000000e+00
  %.sroa.speculated.i15 = select i1 %i.au, double %i.at, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110, %.thread, %bb.h, %.thread93
  %.0.i16 = phi double [ %..i18, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread ], [ %i.ah, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread110 ], [ %.sroa.speculated5.i17, %.thread ], [ %.sroa.speculated.i15, %.thread93 ], [ %i.as, %bb.h ]
  %i.av = tail call noundef double @nextafter(double noundef %.0.i16, double noundef -inf) #15 ; 4 uses
  %i.aw = fcmp oge double %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, i32 2, i32 0           ; 2 uses
  %i.ay = tail call noundef i1 @llvm.is.fpclass.f64(double %i.av, /* (nzero) */ i32 32)
  br i1 %i.ay, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19
  %i.az = fcmp oeq double %i.av, -inf
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  %.sroa.1265.0 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19 ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ %i.av, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108 ]
  %.sroa.1164.0 = phi double [ -inf, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19 ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108 ]
  %.sroa.1063.0 = phi i32 [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19 ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108 ]
  %.sroa.861.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19 ], [ 1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108 ] ; 2 uses
  %.sroa.059.0 = phi i8 [ 5, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit19 ], [ 5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ 5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread108 ]
  %i.ba = load i8, ptr %i.a, align 1              ; 2 uses
  %i.bb = load i32, ptr %i.d, align 4
  %i.bc = and i32 %i.bb, 2
  %.not10.i21 = icmp eq i32 %i.bc, 0              ; 5 uses
  switch i8 %i.ba, label %bb.k [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread
    i8 0, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load double, ptr %i.bd, align 8         ; 4 uses
  %i.bf = fcmp olt double %i.be, 0.000000e+00
  %or.cond101 = select i1 %.not10.i21, i1 true, i1 %i.bf
  br i1 %or.cond101, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111, label %.thread97

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = icmp ult i8 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %.sroa.0.0.i.i3.i22 = select i1 %i.bi, ptr %i.bj, ptr %i.bk
  %i.bl = load double, ptr %.sroa.0.0.i.i3.i22, align 8 ; 3 uses
  %i.bm = fcmp olt double %i.bl, 0.000000e+00
  %or.cond102 = select i1 %.not10.i21, i1 true, i1 %i.bm
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = bitcast i64 %i.bn to double
  br i1 %or.cond102, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, label %.thread98

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit: ; preds = %bb.j
  %i.bp = fcmp oeq double %i.bl, +inf
  br i1 %i.bp, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111: ; preds = %bb.i
  %i.bq = fcmp oeq double %i.be, +inf
  br i1 %i.bq, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %i.br = icmp eq i8 %i.ba, 1
  br i1 %i.br, label %bb.l, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %..i32 = select i1 %.not10.i21, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread
  %i.bs = phi double [ %i.bo, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread ], [ %i.be, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111 ] ; 2 uses
  br i1 %.not10.i21, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33, label %.thread97

.thread97:                                        ; preds = %bb.i, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113
  %i.bt = phi double [ %i.bs, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113 ], [ %i.be, %bb.i ] ; 2 uses
  %i.bu = fcmp olt double %i.bt, 0.000000e+00
  %.sroa.speculated5.i31 = select i1 %i.bu, double %i.bt, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = icmp ult i8 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.i.i3.i28 = select i1 %i.bx, ptr %i.by, ptr %i.bk
  %i.bz = load double, ptr %.sroa.0.0.i.i3.i28, align 8 ; 2 uses
  br i1 %.not10.i21, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33, label %.thread98

.thread98:                                        ; preds = %bb.j, %bb.l
  %i.ca = phi double [ %i.bz, %bb.l ], [ %i.bl, %bb.j ] ; 2 uses
  %i.cb = fcmp olt double %i.ca, 0.000000e+00
  %.sroa.speculated.i29 = select i1 %i.cb, double %i.ca, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113, %.thread97, %bb.l, %.thread98
  %.0.i30 = phi double [ %..i32, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread ], [ %i.bs, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread113 ], [ %.sroa.speculated5.i31, %.thread97 ], [ %.sroa.speculated.i29, %.thread98 ], [ %i.bz, %bb.l ]
  %i.cc = tail call noundef double @nextafter(double noundef %.0.i30, double noundef +inf) #15 ; 4 uses
  %i.cd = fcmp ole double %i.cc, 0.000000e+00
  %i.ce = select i1 %i.cd, i32 2, i32 0           ; 2 uses
  %i.cf = tail call noundef i1 @llvm.is.fpclass.f64(double %i.cc, /* (nzero) */ i32 32)
  br i1 %i.cf, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33
  %i.cg = fcmp oeq double %i.cc, +inf
  br i1 %i.cg, label %bb.m, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, %bb.m, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  %.sroa.048.0 = phi i8 [ 5, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33 ], [ 5, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ 5, %bb.m ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111 ]
  %.sroa.6.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ 1, %bb.m ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111 ] ; 2 uses
  %.sroa.10.0 = phi i32 [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33 ], [ %i.ce, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ %i.ce, %bb.m ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111 ]
  %.sroa.1150.0 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33 ], [ %i.cc, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ +inf, %bb.m ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111 ]
  %.sroa.12.0 = phi double [ +inf, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit33 ], [ +inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ +inf, %bb.m ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread111 ]
  store i8 %.sroa.059.0, ptr %0, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.861.0, ptr %.sroa.660.0..sroa_idx, align 1
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.861.0, ptr %.sroa.861.0..sroa_idx, align 2
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.962.0..sroa_idx, align 1
  %.sroa.1063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.1063.0, ptr %.sroa.1063.0..sroa_idx, align 4
  %.sroa.1164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.1164.0, ptr %.sroa.1164.0..sroa_idx, align 8
  %.sroa.1265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.1265.0, ptr %.sroa.1265.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.048.0, ptr %i.ch, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.6.0, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %.sroa.949.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.1150.0, ptr %.sroa.1150.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE28RestrictionForLessThan_FalseERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i32 %i.b, 2                          ; 2 uses
  %.not10.i = icmp ne i32 %i.f, 0                 ; 4 uses
  switch i8 %i.e, label %bb.e [
    i8 2, label %bb.f
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  br i1 %.not10.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c
  %i.i = fcmp ole double %i.h, 0.000000e+00
  %i.j = select i1 %i.i, i32 3, i32 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 2
  %i.m = icmp ult i8 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.m, ptr %i.n, ptr %i.o
  %i.p = load double, ptr %.sroa.0.0.i.i3.i, align 8 ; 4 uses
  %i.q = fcmp ole double %i.p, 0.000000e+00
  %i.r = select i1 %.not10.i, i1 true, i1 %i.q
  %i.s = select i1 %i.r, i32 3, i32 1             ; 2 uses
  br i1 %.not10.i, label %bb.h, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.t = or disjoint i32 %i.f, 1
  %..i14 = select i1 %.not10.i, double -0.000000e+00, double +qnan
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15

bb.g:                                             ; preds = %bb.c
  %i.u = fcmp olt double %i.h, 0.000000e+00
  %.sroa.speculated5.i = select i1 %i.u, double %i.h, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15

bb.h:                                             ; preds = %bb.d
  %i.v = fcmp olt double %i.p, 0.000000e+00
  %.sroa.speculated.i11 = select i1 %i.v, double %i.p, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15: ; preds = %.thread, %bb.f, %bb.g, %bb.d, %bb.h
  %i.w = phi i32 [ %i.t, %bb.f ], [ %i.j, %.thread ], [ 3, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %bb.d ] ; 2 uses
  %.0.i12 = phi double [ %..i14, %bb.f ], [ %i.h, %.thread ], [ %.sroa.speculated5.i, %bb.g ], [ %.sroa.speculated.i11, %bb.h ], [ %i.p, %bb.d ] ; 3 uses
  %i.x = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i12, /* (nzero) */ i32 32)
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15
  %i.y = fcmp oeq double %.0.i12, +inf
  br i1 %i.y, label %bb.i, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.i, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  %.sroa.1469.0 = phi double [ %.0.i12, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ +inf, %bb.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15 ], [ -inf, %bb.a ]
  %.sroa.1268.0 = phi i32 [ %i.w, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ %i.w, %bb.i ], [ 3, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15 ], [ 3, %bb.a ]
  %.sroa.866.0 = phi i8 [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ 1, %bb.i ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit15 ], [ 0, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i32 %i.aa, 2                        ; 2 uses
  %.not10.i18 = icmp ne i32 %i.ae, 0              ; 4 uses
  switch i8 %i.ad, label %bb.m [
    i8 2, label %bb.n
    i8 0, label %bb.k
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load double, ptr %i.af, align 8         ; 4 uses
  br i1 %.not10.i18, label %bb.o, label %.thread88

.thread88:                                        ; preds = %bb.k
  %i.ah = fcmp oge double %i.ag, 0.000000e+00
  %i.ai = select i1 %i.ah, i32 3, i32 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ak = load i8, ptr %i.aj, align 2             ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = icmp ult i8 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %.sroa.0.0.i.i3.i19 = select i1 %i.am, ptr %i.an, ptr %i.ao
  %i.ap = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i19, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %i.ar = load double, ptr %i.aq, align 8         ; 4 uses
  %i.as = fcmp oge double %i.ar, 0.000000e+00
  %i.at = select i1 %.not10.i18, i1 true, i1 %i.as
  %i.au = select i1 %i.at, i32 3, i32 1           ; 2 uses
  br i1 %.not10.i18, label %bb.p, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.av = or disjoint i32 %i.ae, 1
  %..i29 = select i1 %.not10.i18, double -0.000000e+00, double +qnan
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30

bb.o:                                             ; preds = %bb.k
  %i.aw = fcmp ogt double %i.ag, 0.000000e+00
  %.sroa.speculated5.i22 = select i1 %i.aw, double %i.ag, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30

bb.p:                                             ; preds = %bb.l
  %i.ax = fcmp ogt double %i.ar, 0.000000e+00
  %.sroa.speculated.i26 = select i1 %i.ax, double %i.ar, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30: ; preds = %.thread88, %bb.n, %bb.o, %bb.l, %bb.p
  %i.ay = phi i32 [ %i.av, %bb.n ], [ %i.ai, %.thread88 ], [ 3, %bb.o ], [ %i.au, %bb.p ], [ %i.au, %bb.l ] ; 2 uses
  %.0.i27 = phi double [ %..i29, %bb.n ], [ %i.ag, %.thread88 ], [ %.sroa.speculated5.i22, %bb.o ], [ %.sroa.speculated.i26, %bb.p ], [ %i.ar, %bb.l ] ; 3 uses
  %i.az = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i27, /* (nzero) */ i32 32)
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30
  %i.ba = fcmp oeq double %.0.i27, -inf
  br i1 %i.ba, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit42, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit42: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit42, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  %.sroa.648.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30 ], [ 1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit42 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ] ; 2 uses
  %.sroa.12.0 = phi i32 [ 3, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30 ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit42 ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ]
  %.sroa.16.0 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit30 ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit42 ], [ %.0.i27, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ +inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ]
  store i8 5, ptr %0, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.866.0, ptr %.sroa.665.0..sroa_idx, align 1
  %.sroa.866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.866.0, ptr %.sroa.866.0..sroa_idx, align 2
  %.sroa.1067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.1067.0..sroa_idx, align 1
  %.sroa.1268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.1268.0, ptr %.sroa.1268.0..sroa_idx, align 4
  %.sroa.1469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.1469.0, ptr %.sroa.1469.0..sroa_idx, align 8
  %.sroa.1670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %.sroa.1670.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 5, ptr %i.bb, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.648.0, ptr %.sroa.648.0..sroa_idx, align 1
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.648.0, ptr %.sroa.849.0..sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double -inf, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE34RestrictionForLessThanOrEqual_TrueERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.452.0..sroa_idx, i8 0, i64 23, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, i8 0, i64 23, i1 false)
  store i8 1, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.o, align 8
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.p = and i32 %i.l, 2
  %.not10.i = icmp eq i32 %i.p, 0                 ; 6 uses
  switch i8 %i.i, label %bb.j [
    i8 2, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %..i = select i1 %.not10.i, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 8           ; 3 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp ogt double %i.r, 0.000000e+00
  %.sroa.speculated5.i = select i1 %i.s, double %i.r, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.h:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.u = load i8, ptr %i.t, align 2               ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = icmp ult i8 %i.u, 3
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.w, ptr %i.x, ptr %i.y
  %i.z = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load double, ptr %i.aa, align 8         ; 3 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = fcmp ogt double %i.ab, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ac, double %i.ab, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.j:                                             ; preds = %bb.d
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi double [ %..i, %bb.e ], [ %i.r, %bb.f ], [ %.sroa.speculated5.i, %bb.g ], [ %.sroa.speculated.i, %bb.i ], [ %i.ab, %bb.h ]
  %i.ad = fcmp oge double %.0.i, 0.000000e+00
  %i.ae = select i1 %i.ad, i32 2, i32 0           ; 2 uses
  %i.af = and i32 %i.e, 2
  %.not10.i9 = icmp eq i32 %i.af, 0               ; 6 uses
  switch i8 %i.b, label %bb.p [
    i8 2, label %bb.k
    i8 0, label %bb.l
    i8 1, label %bb.n
  ]

bb.k:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit
  %..i14 = select i1 %.not10.i9, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load double, ptr %i.ag, align 8         ; 3 uses
  br i1 %.not10.i9, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  %.sroa.speculated5.i13 = select i1 %i.ai, double %i.ah, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = icmp ult i8 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %.sroa.0.0.i.i3.i10 = select i1 %i.al, ptr %i.am, ptr %i.an
  %i.ao = load double, ptr %.sroa.0.0.i.i3.i10, align 8 ; 3 uses
  br i1 %.not10.i9, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  %.sroa.speculated.i11 = select i1 %i.ap, double %i.ao, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i12 = phi double [ %..i14, %bb.k ], [ %i.ah, %bb.l ], [ %.sroa.speculated5.i13, %bb.m ], [ %.sroa.speculated.i11, %bb.o ], [ %i.ao, %bb.n ]
  %i.aq = fcmp ole double %.0.i12, 0.000000e+00
  %i.ar = select i1 %i.aq, i32 2, i32 0           ; 2 uses
  switch i8 %i.i, label %bb.v [
    i8 2, label %bb.q
    i8 0, label %bb.r
    i8 1, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %..i20 = select i1 %.not10.i, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21

bb.r:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load double, ptr %i.as, align 8         ; 3 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = fcmp ogt double %i.at, 0.000000e+00
  %.sroa.speculated5.i19 = select i1 %i.au, double %i.at, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21

bb.t:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aw = load i8, ptr %i.av, align 2             ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = icmp ult i8 %i.aw, 3
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %.sroa.0.0.i.i3.i16 = select i1 %i.ay, ptr %i.az, ptr %i.ba
  %i.bb = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i16, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load double, ptr %i.bc, align 8         ; 3 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = fcmp ogt double %i.bd, 0.000000e+00
  %.sroa.speculated.i17 = select i1 %i.be, double %i.bd, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21

bb.v:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21: ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i18 = phi double [ %..i20, %bb.q ], [ %i.at, %bb.r ], [ %.sroa.speculated5.i19, %bb.s ], [ %.sroa.speculated.i17, %bb.u ], [ %i.bd, %bb.t ] ; 3 uses
  %i.bf = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i18, /* (nzero) */ i32 32)
  br i1 %i.bf, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21
  %i.bg = fcmp oeq double %.0.i18, -inf
  br i1 %i.bg, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit
  %.014.i57 = phi double [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ %.0.i18, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21 ]
  %.sroa.1147.0 = phi i32 [ %i.ae, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ %i.ae, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21 ]
  %.sroa.745.0 = phi i8 [ 1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit21 ] ; 2 uses
  switch i8 %i.b, label %bb.ab [
    i8 2, label %bb.w
    i8 0, label %bb.x
    i8 1, label %bb.z
  ]

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %..i28 = select i1 %.not10.i9, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load double, ptr %i.bh, align 8         ; 3 uses
  br i1 %.not10.i9, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = fcmp olt double %i.bi, 0.000000e+00
  %.sroa.speculated5.i27 = select i1 %i.bj, double %i.bi, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bl = load i8, ptr %i.bk, align 2
  %i.bm = icmp ult i8 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.sroa.0.0.i.i3.i24 = select i1 %i.bm, ptr %i.bn, ptr %i.bo
  %i.bp = load double, ptr %.sroa.0.0.i.i3.i24, align 8 ; 3 uses
  br i1 %.not10.i9, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = fcmp olt double %i.bp, 0.000000e+00
  %.sroa.speculated.i25 = select i1 %i.bq, double %i.bp, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29: ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i26 = phi double [ %..i28, %bb.w ], [ %i.bi, %bb.x ], [ %.sroa.speculated5.i27, %bb.y ], [ %.sroa.speculated.i25, %bb.aa ], [ %i.bp, %bb.z ] ; 3 uses
  %i.br = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i26, /* (nzero) */ i32 32)
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29
  %i.bs = fcmp oeq double %.0.i26, +inf
  br i1 %i.bs, label %bb.ac, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35

bb.ac:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35: ; preds = %bb.ac, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  %.sroa.13.0 = phi double [ +inf, %bb.ac ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29 ], [ %.0.i26, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ]
  %.sroa.11.0 = phi i32 [ %i.ar, %bb.ac ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29 ], [ %i.ar, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ]
  %.sroa.7.0 = phi i8 [ 1, %bb.ac ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit29 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ] ; 2 uses
  store i8 5, ptr %0, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.745.0, ptr %.sroa.544.0..sroa_idx, align 1
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.745.0, ptr %.sroa.745.0..sroa_idx, align 2
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.946.0..sroa_idx, align 1
  %.sroa.1147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.1147.0, ptr %.sroa.1147.0..sroa_idx, align 4
  %.sroa.1348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double -inf, ptr %.sroa.1348.0..sroa_idx, align 8
  %.sroa.1549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.014.i57, ptr %.sroa.1549.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 5, ptr %i.bt, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double +inf, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit35, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE35RestrictionForLessThanOrEqual_FalseERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i32 %i.b, 2
  %.not10.i = icmp eq i32 %i.f, 0                 ; 5 uses
  switch i8 %i.e, label %bb.e [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  %i.i = fcmp olt double %i.h, 0.000000e+00
  %or.cond = select i1 %.not10.i, i1 true, i1 %i.i
  br i1 %or.cond, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 2
  %i.l = icmp ult i8 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.sroa.0.0.i.i3.i = select i1 %i.l, ptr %i.m, ptr %i.n
  %i.o = load double, ptr %.sroa.0.0.i.i3.i, align 8 ; 3 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %or.cond113 = select i1 %.not10.i, i1 true, i1 %i.p
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = bitcast i64 %i.q to double
  br i1 %or.cond113, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, label %.thread106

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit: ; preds = %bb.d
  %i.s = fcmp oeq double %i.o, +inf
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121: ; preds = %bb.c
  %i.t = fcmp oeq double %i.h, +inf
  br i1 %i.t, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %i.u = icmp eq i8 %i.e, 1
  br i1 %i.u, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread: ; preds = %bb.b
  %..i18 = select i1 %.not10.i, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread
  %i.v = phi double [ %i.r, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread ], [ %i.h, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121 ] ; 2 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19, label %.thread

.thread:                                          ; preds = %bb.c, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123
  %i.w = phi double [ %i.v, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123 ], [ %i.h, %bb.c ] ; 2 uses
  %i.x = fcmp olt double %i.w, 0.000000e+00
  %.sroa.speculated5.i17 = select i1 %i.x, double %i.w, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = icmp ult i8 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.i.i3.i14 = select i1 %i.aa, ptr %i.ab, ptr %i.n
  %i.ac = load double, ptr %.sroa.0.0.i.i3.i14, align 8 ; 2 uses
  br i1 %.not10.i, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19, label %.thread106

.thread106:                                       ; preds = %bb.d, %bb.f
  %i.ad = phi double [ %i.ac, %bb.f ], [ %i.o, %bb.d ] ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  %.sroa.speculated.i15 = select i1 %i.ae, double %i.ad, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123, %.thread, %bb.f, %.thread106
  %.0.i16 = phi double [ %..i18, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread ], [ %i.v, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread123 ], [ %.sroa.speculated5.i17, %.thread ], [ %.sroa.speculated.i15, %.thread106 ], [ %i.ac, %bb.f ]
  %i.af = tail call noundef double @nextafter(double noundef %.0.i16, double noundef +inf) #15 ; 4 uses
  %i.ag = fcmp ole double %i.af, 0.000000e+00
  %i.ah = select i1 %i.ag, i32 3, i32 1           ; 2 uses
  %i.ai = tail call noundef i1 @llvm.is.fpclass.f64(double %i.af, /* (nzero) */ i32 32)
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19
  %i.aj = fcmp oeq double %i.af, +inf
  br i1 %i.aj, label %bb.g, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, %bb.a, %bb.g, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i
  %.sroa.2285.0 = phi double [ +inf, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19 ], [ +inf, %bb.a ], [ +inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ +inf, %bb.g ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121 ]
  %.sroa.1984.0 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19 ], [ -inf, %bb.a ], [ %i.af, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ +inf, %bb.g ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121 ]
  %.sroa.1683.0 = phi i32 [ 3, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19 ], [ 3, %bb.a ], [ %i.ah, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ %i.ah, %bb.g ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121 ]
  %.sroa.1081.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19 ], [ 0, %bb.a ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ 1, %bb.g ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121 ]
  %.sroa.780.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit19 ], [ 0, %bb.a ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i ], [ 1, %bb.g ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread121 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = and i32 %i.al, 2
  %.not10.i22 = icmp eq i32 %i.ap, 0              ; 5 uses
  switch i8 %i.ao, label %bb.k [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread
    i8 0, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load double, ptr %i.aq, align 8         ; 3 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  %or.cond114 = select i1 %.not10.i22, i1 true, i1 %i.as
  br i1 %or.cond114, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124, label %.thread110

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = load i8, ptr %i.at, align 2             ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp ult i8 %i.au, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.sroa.0.0.i.i3.i23 = select i1 %i.aw, ptr %i.ax, ptr %i.ay
  %i.az = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i23, i64 %i.av
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load double, ptr %i.ba, align 8         ; 3 uses
  %i.bc = fcmp ogt double %i.bb, 0.000000e+00
  %or.cond115 = select i1 %.not10.i22, i1 true, i1 %i.bc
  br i1 %or.cond115, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, label %.thread111

bb.k:                                             ; preds = %bb.h
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %bb.j
  %i.bd = fcmp oeq double %i.bb, -inf
  br i1 %i.bd, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124: ; preds = %bb.i
  %i.be = fcmp oeq double %i.ar, -inf
  br i1 %i.be, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit
  %i.bf = icmp eq i8 %i.ao, 1
  br i1 %i.bf, label %bb.l, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread: ; preds = %bb.h
  %..i33 = select i1 %.not10.i22, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load double, ptr %i.bg, align 8         ; 2 uses
  br i1 %.not10.i22, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34, label %.thread110

.thread110:                                       ; preds = %bb.i, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126
  %i.bi = phi double [ %i.bh, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126 ], [ %i.ar, %bb.i ] ; 2 uses
  %i.bj = fcmp ogt double %i.bi, 0.000000e+00
  %.sroa.speculated5.i32 = select i1 %i.bj, double %i.bi, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bl = load i8, ptr %i.bk, align 2             ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = icmp ult i8 %i.bl, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %.sroa.0.0.i.i3.i29 = select i1 %i.bn, ptr %i.bo, ptr %i.bp
  %i.bq = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i29, i64 %i.bm
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load double, ptr %i.br, align 8         ; 2 uses
  br i1 %.not10.i22, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34, label %.thread111

.thread111:                                       ; preds = %bb.j, %bb.l
  %i.bt = phi double [ %i.bs, %bb.l ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bu = fcmp ogt double %i.bt, 0.000000e+00
  %.sroa.speculated.i30 = select i1 %i.bu, double %i.bt, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126, %.thread110, %bb.l, %.thread111
  %.0.i31 = phi double [ %..i33, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread ], [ %i.bh, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread126 ], [ %.sroa.speculated5.i32, %.thread110 ], [ %.sroa.speculated.i30, %.thread111 ], [ %i.bs, %bb.l ]
  %i.bv = tail call noundef double @nextafter(double noundef %.0.i31, double noundef -inf) #15 ; 4 uses
  %i.bw = fcmp oge double %i.bv, 0.000000e+00
  %i.bx = select i1 %i.bw, i32 3, i32 1           ; 2 uses
  %i.by = tail call noundef i1 @llvm.is.fpclass.f64(double %i.bv, /* (nzero) */ i32 32)
  br i1 %i.by, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, !prof !31

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34
  %i.bz = fcmp oeq double %i.bv, -inf
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i
  %.sroa.758.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124 ]
  %.sroa.10.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124 ]
  %.sroa.16.0 = phi i32 [ 3, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ 3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ %i.bx, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46 ], [ %i.bx, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124 ]
  %.sroa.19.0 = phi double [ -inf, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46 ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124 ]
  %.sroa.22.0 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ +inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE.exit46 ], [ %i.bv, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread124 ]
  store i8 5, ptr %0, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.780.0, ptr %.sroa.780.0..sroa_idx, align 1
  %.sroa.1081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.1081.0, ptr %.sroa.1081.0..sroa_idx, align 2
  %.sroa.1382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.1382.0..sroa_idx, align 1
  %.sroa.1683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.1683.0, ptr %.sroa.1683.0..sroa_idx, align 4
  %.sroa.1984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.1984.0, ptr %.sroa.1984.0..sroa_idx, align 8
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.2285.0, ptr %.sroa.2285.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 5, ptr %i.ca, align 8
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.758.0, ptr %.sroa.758.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.1359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %.sroa.1359.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  ret void
}

declare void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE9IntersectERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12FromElementsENS_4base11SmallVectorIjLm16ESaIjEEEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i, label %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.a, ptr noundef %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.a, ptr noundef %i.c)
  %.pre = load ptr, ptr %1, align 8
  %.pre7 = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit

_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre7, %bb.b ] ; 9 uses
  %i.l = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_ZSt6uniqueIPjET_S1_S1_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i4, label %_ZSt6uniqueIPjET_S1_S1_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.o = load i32, ptr %.0.i.i.i, align 4         ; 2 uses
  %i.p = load i32, ptr %i.n, align 4
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !54

_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, %bb.e
  %i.s = phi i32 [ %i.u, %bb.e ], [ %i.o, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ]
  %i.t = phi ptr [ %i.x, %bb.e ], [ %i.r, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %.024.i.i = phi ptr [ %.1.i.i, %bb.e ], [ %.0.i.i.i, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 2 uses
  store i32 %i.u, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.024.i.i, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !56

._crit_edge.i.i.loopexit:                         ; preds = %bb.e
  %.pre8.pre = load ptr, ptr %i.b, align 8
  %.pre9.pre = load ptr, ptr %1, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i
  %.pre9 = phi ptr [ %i.l, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre9.pre, %._crit_edge.i.i.loopexit ]
  %.pre8 = phi ptr [ %i.k, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre8.pre, %._crit_edge.i.i.loopexit ]
  %.0.lcssa.i.i = phi ptr [ %.0.i.i.i, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4
  br label %_ZSt6uniqueIPjET_S1_S1_.exit

_ZSt6uniqueIPjET_S1_S1_.exit:                     ; preds = %.preheader.i.i.i, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit, %._crit_edge.i.i
  %i.z = phi ptr [ %.pre9, %._crit_edge.i.i ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ], [ %i.l, %.preheader.i.i.i ] ; 15 uses
  %i.aa = phi ptr [ %.pre8, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ] ; 2 uses
  %.015.i.i = phi ptr [ %i.y, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ]
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.015.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 8 uses
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZSt6uniqueIPjET_S1_S1_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.z, align 4, !noalias !63
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !63
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]
  %i.at = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.au, align 1, !alias.scope !63
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.at, ptr %i.av, align 2, !alias.scope !63
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.aw, align 1, !alias.scope !63
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ax, align 4, !alias.scope !63
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0.insert.ext.i.i = zext i32 %i.an to i64
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.i.i, %.sroa.04.0.insert.ext.i.i
  store i64 %.sroa.04.0.insert.insert.i.i, ptr %i.ay, align 8, !alias.scope !63
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

bb.j:                                             ; preds = %bb.f
  %i.az = add nuw i64 %i.aj, 4
  %i.ba = and i64 %i.az, -8                       ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !63
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !63 ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
end_hunk_0
