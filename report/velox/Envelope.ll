Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Envelope?download=true
inline.NumInlined: 280
inline.NumDeleted: 126
begin_hunk_0_@_ZN4geos4geomeqERKNS0_8EnvelopeES3_:bb.a
  br label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load double, ptr %1, align 8, !tbaa !15
  %i.h = load double, ptr %0, align 8, !tbaa !15
  %i.i = fcmp oeq double %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp oeq double %i.k, %i.b
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !17
  %i.q = fcmp oeq double %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !16
  %i.v = fcmp oeq double %i.s, %i.u
  br label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

_ZNK4geos4geom8Envelope6equalsEPKS1_.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.d ], [ %i.v, %bb.e ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos4geomltERKNS0_8EnvelopeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ord double %i.e, 0.000000e+00
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %0, align 8, !tbaa !15  ; 2 uses
  %i.i = load double, ptr %1, align 8, !tbaa !15  ; 2 uses
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fcmp ogt double %i.h, %i.i
  br i1 %i.k, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !17 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !17 ; 2 uses
  %i.p = fcmp olt double %i.m, %i.o
  br i1 %i.p, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp ogt double %i.m, %i.o
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp olt double %i.b, %i.e
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = fcmp ogt double %i.b, %i.e
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fcmp olt double %i.u, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ %i.x, %bb.j ], [ false, %bb.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK4geos4geom8Envelope8hashCodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = load double, ptr %0, align 8, !tbaa !15  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.e, ptr %i.d, align 8, !tbaa !31
  %i.f = fcmp une double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %_ZNKSt4hashIdEclEd.exit

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZNKSt4hashIdEclEd.exit:                          ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.l, ptr %i.c, align 8, !tbaa !31
  %i.m = fcmp une double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %_ZNKSt4hashIdEclEd.exit5

bb.d:                                             ; preds = %_ZNKSt4hashIdEclEd.exit
  %i.n = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit5 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #20
  unreachable

_ZNKSt4hashIdEclEd.exit5:                         ; preds = %_ZNKSt4hashIdEclEd.exit, %bb.d
  %i.q = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.s, ptr %i.b, align 8, !tbaa !31
  %i.t = fcmp une double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.f, label %_ZNKSt4hashIdEclEd.exit6

bb.f:                                             ; preds = %_ZNKSt4hashIdEclEd.exit5
  %i.u = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit6 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

_ZNKSt4hashIdEclEd.exit6:                         ; preds = %_ZNKSt4hashIdEclEd.exit5, %bb.f
  %i.x = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit5 ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.z, ptr %i.a, align 8, !tbaa !31
  %i.aa = fcmp une double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %_ZNKSt4hashIdEclEd.exit7

bb.h:                                             ; preds = %_ZNKSt4hashIdEclEd.exit6
  %i.ab = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #20
  unreachable

_ZNKSt4hashIdEclEd.exit7:                         ; preds = %_ZNKSt4hashIdEclEd.exit6, %bb.h
  %i.ae = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit6 ], [ %i.ab, %bb.h ]
  %i.af = mul i64 %i.j, 37
  %i.ag = add i64 %i.af, 23273
  %i.ah = add i64 %i.ag, %i.q
  %i.ai = mul i64 %i.ah, 37
  %i.aj = add i64 %i.x, %i.ai
  %i.ak = mul i64 %i.aj, 37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = add i64 %i.ae, %i.ak
  ret i64 %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Envelope6centreERNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = fcmp ord double %i.b, 0.000000e+00       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load <1 x double>, ptr %2, align 8, !tbaa !31
  %i.d = load <4 x double>, ptr %0, align 8, !tbaa !31
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %4 = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> <i32 poison, i32 0>
  %5 = insertelement <2 x double> %4, double %i.b, i64 0
  %i.f = fadd <2 x double> %5, %i.e
  %i.g = fmul <2 x double> %i.f, splat (double 5.000000e-01)
  store <2 x double> %i.g, ptr %1, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Envelope12intersectionERKS1_RS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  %i.f = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.f, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %1, align 8, !tbaa !15  ; 2 uses
  %i.h = fcmp ugt double %i.g, %i.b
  %i.i = load double, ptr %0, align 8             ; 2 uses
  %i.j = fcmp ult double %i.e, %i.i
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !17 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !16 ; 2 uses
  %i.o = fcmp ugt double %i.l, %i.n
  br i1 %i.o, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit

_ZNK4geos4geom8Envelope10intersectsERKS1_.exit:   ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !17 ; 2 uses
  %i.t = fcmp ult double %i.q, %i.s
  br i1 %i.t, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit
  %i.u = insertelement <2 x double> poison, double %i.i, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.g, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.l, i64 1 ; 2 uses
  %i.y = fcmp ogt <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.b, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.n, i64 1 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.q, i64 1 ; 2 uses
  %i.ad = fcmp olt <2 x double> %i.aa, %i.ac
  %i.ae = select <2 x i1> %i.y, <2 x double> %i.v, <2 x double> %i.x ; 3 uses
  %i.af = select <2 x i1> %i.ad, <2 x double> %i.aa, <2 x double> %i.ac ; 3 uses
  %i.ag = fcmp olt <2 x double> %i.ae, %i.af
  %i.ah = shufflevector <2 x i1> %i.ag, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aj = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ak = select <4 x i1> %i.ah, <4 x double> %i.ai, <4 x double> %i.aj
  store <4 x double> %i.ak, ptr %2, align 8, !tbaa !31
  br label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread

_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Envelope9translateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8, !tbaa !15  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !31 ; 3 uses
  %i.g = insertelement <2 x double> poison, double %1, i64 0
  %i.h = insertelement <2 x double> %i.g, double %2, i64 1 ; 2 uses
  %i.i = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.j = insertelement <2 x double> %i.i, double %i.d, i64 0
  %i.k = fadd <2 x double> %i.h, %i.j             ; 2 uses
  %i.l = insertelement <2 x double> %i.f, double %i.b, i64 0
  %i.m = fadd <2 x double> %i.h, %i.l             ; 2 uses
  %i.n = insertelement <4 x double> poison, double %1, i64 0
  %i.o = insertelement <4 x double> %i.n, double %2, i64 1
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.q = insertelement <4 x double> poison, double %i.d, i64 0
  %i.r = insertelement <4 x double> %i.q, double %i.b, i64 1
  %i.s = shufflevector <2 x double> %i.f, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.t = shufflevector <4 x double> %i.r, <4 x double> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.u = fadd <4 x double> %i.p, %i.t
  %i.v = fcmp olt <2 x double> %i.k, %i.m
  %i.w = shufflevector <2 x i1> %i.v, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.x = shufflevector <2 x double> %i.m, <2 x double> %i.k, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.y = select <4 x i1> %i.w, <4 x double> %i.u, <4 x double> %i.x
  store <4 x double> %i.y, ptr %0, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Envelope8expandByEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load <4 x double>, ptr %0, align 8, !tbaa !31 ; 2 uses
  %i.b = insertelement <4 x double> poison, double %1, i64 0
  %i.c = insertelement <4 x double> %i.b, double %2, i64 1
  %i.d = shufflevector <4 x double> %i.c, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.e = fsub <4 x double> %i.a, %i.d             ; 2 uses
  %i.f = fadd <4 x double> %i.a, %i.d             ; 2 uses
  %i.g = shufflevector <4 x double> %i.e, <4 x double> %i.f, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.h = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.i = shufflevector <4 x double> %i.f, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.j = fcmp ogt <2 x double> %i.h, %i.i         ; 2 uses
  %i.k = extractelement <2 x i1> %i.j, i64 0
  %i.l = extractelement <2 x i1> %i.j, i64 1
  %or.cond = select i1 %i.l, i1 true, i1 %i.k
  %spec.select = select i1 %or.cond, <4 x double> splat (double +qnan), <4 x double> %i.g
  store <4 x double> %spec.select, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
end_hunk_0
