Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/specifier?download=true
inline.NumInlined: 2189
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5vcpkg11FeatureSpecaSEOS0_:bb.a
bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.a, ptr %1, align 8, !tbaa !18
  store i64 %i.s, ptr %i.e, align 8, !tbaa !20
  br label %_ZN5vcpkg11PackageSpecaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.e, ptr %1, align 8, !tbaa !18
  br label %_ZN5vcpkg11PackageSpecaSEOS0_.exit

_ZN5vcpkg11PackageSpecaSEOS0_.exit:               ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !21
  store i8 0, ptr %i.x, align 1, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai                ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN5vcpkg11PackageSpecaSEOS0_.exit
  br i1 %i.aj, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN5vcpkg11PackageSpecaSEOS0_.exit
  br i1 %i.aj, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !326

bb.i:                                             ; preds = %bb.h
  switch i64 %i.al, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !20
  store i8 %i.an, ptr %i.ae, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !21
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !21
  store i64 %i.au, ptr %i.as, align 8, !tbaa !21
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !20
  store i64 %i.av, ptr %i.af, align 8, !tbaa !20
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !20
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !21
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !20
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !18
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bb = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ae, %bb.l ], [ %i.ai, %bb.m ], [ %i.ah, %bb.h ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.bc, align 8, !tbaa !21
  store i8 0, ptr %i.bb, align 1, !tbaa !20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5vcpkg11FeatureSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %3 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a
  %i.k = sub i64 %i.d, %i.f
  %spec.select7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.l = icmp slt i32 %.0.i.i, 0
  br i1 %i.l, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a, label %bb.b

bb.b:                                             ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %.sroa.speculated.i.i7 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.p) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i7, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8:  ; preds = %bb.b
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.v = tail call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i7) #22 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8, %bb.b
  %i.w = sub i64 %i.p, %i.r
  %spec.select7.i.i.i12 = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i13 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i12, i64 2147483647)
  %.0.i6.i.i14 = trunc nsw i64 %.08.i.i.i13 to i32
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11
  %.0.i.i10 = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i8 ], [ %.0.i6.i.i14, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i11 ]
  %i.x = icmp sgt i32 %.0.i.i10, 0
  br i1 %i.x, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a, label %bb.c

bb.c:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21 ; 4 uses
  %.sroa.speculated.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i15, 0
  br i1 %i.ac, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i15) #22 ; 2 uses
  %.not.i.i17 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i17, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread34, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23: ; preds = %bb.c
  %i.ai = sub i64 %i.z, %i.ab                     ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread34: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16
  %i.ak = sub i64 %i.z, %i.ab
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i25._ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i28_crit_edge

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16
  %i.am = icmp slt i32 %i.ah, 0
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i25._ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i28_crit_edge: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread34
  %.pre = sub i64 %i.z, %i.ab
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i25._ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i28_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i25._ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i28_crit_edge ], [ %i.ai, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23 ]
  %i.an = icmp sgt i64 %.pre-phi, 0
  br i1 %i.an, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a, label %bb.d

bb.d:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ao = tail call ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr %i.ao, ptr %3, align 8
  %i.ap = tail call ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ap, ptr %2, align 8
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.at) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.aw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.d
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !18
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.az = call i32 @memcmp(ptr noundef %i.ay, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK5vcpkg7TripletltES0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.d
  %i.ba = sub i64 %i.at, %i.av
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK5vcpkg7TripletltES0_.exit

_ZNK5vcpkg7TripletltES0_.exit:                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.az, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.bb = icmp slt i32 %.0.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread.a: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread34, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNK5vcpkg7TripletltES0_.exit
  %.0 = phi i1 [ %i.bb, %_ZNK5vcpkg7TripletltES0_.exit ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23 ], [ false, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32 ], [ %i.am, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit23.thread34 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIN5vcpkg11FeatureSpecEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::FeatureSpec", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !15
  %i.b = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  %i.i = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZN5vcpkg11PackageSpecC2EOS0_.exit.i:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !21
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %i.k, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  store i64 %i.o, ptr %i.m, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !15
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN5vcpkg11FeatureSpecC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !18
  %i.z = load i64, ptr %i.t, align 8, !tbaa !20
  store i64 %i.z, ptr %i.r, align 8, !tbaa !20
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre6 = load i64, ptr %.phi.trans.insert5, align 8, !tbaa !21
  br label %_ZN5vcpkg11FeatureSpecC2EOS0_.exit

_ZN5vcpkg11FeatureSpecC2EOS0_.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !21
  store ptr %i.t, ptr %i.q, align 8, !tbaa !18
  store i64 0, ptr %i.ab, align 8, !tbaa !21
  store i8 0, ptr %i.t, align 8, !tbaa !20
  %i.ad = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5vcpkg11FeatureSpecaSEOS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #22 ; 0 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5vcpkg11FeatureSpecaSEOS0_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #22 ; 0 uses
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN5vcpkg11FeatureSpecC2EOS0_.exit
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5vcpkg11FeatureSpecC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.aj = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN5vcpkg11FeatureSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !20
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZN5vcpkg11FeatureSpecD2Ev.exit

_ZN5vcpkg11FeatureSpecD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg11FeatureSpecESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::FeatureSpec", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.q ] ; 9 uses
  %i.i = call noundef zeroext i1 @_ZNK5vcpkg11FeatureSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.024, ptr noundef nonnull align 8 dereferenceable(72) %0)
  br i1 %i.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.b, ptr %2, align 8, !tbaa !15
  %i.j = load ptr, ptr %.sroa.0.024, align 8, !tbaa !18 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn23, i64 88 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn23, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.j, ptr %2, align 8, !tbaa !18
  %i.q = load i64, ptr %i.k, align 8, !tbaa !20
  store i64 %i.q, ptr %i.b, align 8, !tbaa !20
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZN5vcpkg11PackageSpecC2EOS0_.exit.i:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pn23, i64 80 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  store i64 %i.s, ptr %i.c, align 8, !tbaa !21
  store ptr %i.k, ptr %.sroa.0.024, align 8, !tbaa !18
  store i64 0, ptr %i.r, align 8, !tbaa !21
  store i8 0, ptr %i.k, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %.pn23, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  store i64 %i.u, ptr %i.d, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %.pn23, i64 112 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pn23, i64 128 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.pn23, i64 120
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZN5vcpkg11FeatureSpecC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !18
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !20
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !20
  br label %_ZN5vcpkg11FeatureSpecC2EOS0_.exit
end_hunk_0
