inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5scene11SkinnedMesh11animateMeshEf:bb.a
  unreachable

_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2EOS4_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.y = load i8, ptr %i.s, align 4, !tbaa !103
  store i8 %i.y, ptr %i.w, align 4, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  store ptr %i.z, ptr %i.r, align 8, !tbaa !101
  br label %_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EE9push_backEOS5_.exit

bb.k:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.u, ptr noundef nonnull align 4 dereferenceable(65) %3)
          to label %_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2EOS4_.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.f
  br i1 %.not, label %._crit_edge, label %bb.e

bb.l:                                             ; preds = %bb.e, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %.pre to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt7variantIJN4core9TransformENS1_8CMatrix4IfEEEESaIS5_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ab
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene11SkinnedMesh6SJoint7animateEf(ptr dead_on_unwind noalias writable sret(%"class.std::variant") align 4 %0, ptr noundef nonnull align 8 dereferenceable(394) %1, float noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.core::Transform", align 4  ; 6 uses
  %4 = alloca %"struct.core::Transform", align 4  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit, label %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit.thread

_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit:        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit.thread

bb.c:                                             ; preds = %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !103   ; 2 uses
  switch i8 %i.s, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 -1, label %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(65) %i.p, i64 40, i1 false), !tbaa.struct !105
  br label %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(65) %i.p, i64 64, i1 false), !tbaa.struct !107
  br label %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2ERKS4_.exit

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2ERKS4_.exit: ; preds = %bb.c, %bb.d, %bb.e
  store i8 %i.s, ptr %i.q, align 4, !tbaa !103
  br label %bb.j

_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i8, ptr %i.u, align 8, !tbaa !103   ; 2 uses
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i64 24, i1 false)
  store <4 x float> splat (float 1.000000e+00), ptr %i.x, align 4, !tbaa !106
  call void @_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, float noundef %2, ptr noundef nonnull align 4 dereferenceable(40) %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %0, ptr noundef nonnull align 4 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !105
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.y, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5scene11SkinnedMesh4Keys5emptyEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  switch i8 %i.v, label %bb.i [
    i8 0, label %_ZSt3getIN4core9TransformEJS1_NS0_8CMatrix4IfEEEERKT_RKSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !110

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @.str.12, ptr %i.aa, align 8, !tbaa !111
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.h
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ab, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @.str.11, ptr %i.ac, align 8, !tbaa !111
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZSt3getIN4core9TransformEJS1_NS0_8CMatrix4IfEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !tbaa.struct !105
  call void @_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, float noundef %2, ptr noundef nonnull align 4 dereferenceable(40) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %0, ptr noundef nonnull align 4 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ad, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.j

bb.j:                                             ; preds = %_ZSt3getIN4core9TransformEJS1_NS0_8CMatrix4IfEEEERKT_RKSt7variantIJDpT0_EE.exit, %bb.g, %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5scene11SkinnedMesh20calculateBoundingBoxERKSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.core::aabbox3d") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = load ptr, ptr %2, align 8, !tbaa !117    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !41   ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11SkinnedMesh20calculateBoundingBoxERKSt6vectorIN4core8CMatrix4IfEESaIS4_EE) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !118
  %.promoted = load float, ptr %0, align 4        ; 2 uses
  %.not153 = icmp eq ptr %i.j, %i.k
  br i1 %.not153, label %.preheader.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted90 = load float, ptr %i.r, align 4, !tbaa !119
  %i.t = load <4 x float>, ptr %i.s, align 4, !tbaa !106
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

.lr.ph135:                                        ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  store float %.sroa.30.2.i91, ptr %i.r, align 4
  store <4 x float> %i.cj, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i: ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %.sroa.30.2.i93 = phi float [ %.promoted90, %.lr.ph ], [ %.sroa.30.2.i91, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %4, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i ] ; 2 uses
  %.081 = phi i16 [ 0, %.lr.ph ], [ %3, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i ]
  %.sroa.0.2.i7980 = phi float [ %.promoted, %.lr.ph ], [ %.sroa.0.2.i77, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i ] ; 2 uses
  %i.x = phi <4 x float> [ %i.t, %.lr.ph ], [ %i.cj, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %.sroa.065.0.copyload = load float, ptr %i.aa, align 8, !tbaa !106
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 236
  %.sroa.667.0.copyload = load float, ptr %.sroa.667.0..sroa_idx, align 4, !tbaa !106
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %.sroa.969.0.copyload = load float, ptr %.sroa.969.0..sroa_idx, align 8, !tbaa !106
  %.sroa.1271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 244
  %.sroa.1271.0.copyload = load float, ptr %.sroa.1271.0..sroa_idx, align 4, !tbaa !106
  %.sroa.1573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  %.sroa.1573.0.copyload = load float, ptr %.sroa.1573.0..sroa_idx, align 8, !tbaa !106
  %.sroa.1875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 252
  %.sroa.1875.0.copyload = load float, ptr %.sroa.1875.0..sroa_idx, align 4, !tbaa !106
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load <3 x float>, ptr %i.ac, align 4, !tbaa !106
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.ah = load <3 x float>, ptr %i.ab, align 4, !tbaa !106
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.aj = insertelement <4 x float> poison, float %.sroa.065.0.copyload, i64 0
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = fmul <4 x float> %i.ak, %i.ai           ; 3 uses
  %i.am = insertelement <4 x float> poison, float %.sroa.1271.0.copyload, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = fmul <4 x float> %i.an, %i.ai           ; 3 uses
  %i.ap = fcmp olt <4 x float> %i.al, %i.ao       ; 2 uses
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.al, <4 x float> %i.ao
  %i.ar = select <4 x i1> %i.ap, <4 x float> %i.ao, <4 x float> %i.al
  %i.as = load <3 x float>, ptr %i.ad, align 4, !tbaa !106
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.au = insertelement <4 x float> poison, float %.sroa.667.0.copyload, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = fmul <4 x float> %i.av, %i.at           ; 3 uses
  %i.ax = insertelement <4 x float> poison, float %.sroa.1573.0.copyload, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = fmul <4 x float> %i.ay, %i.at           ; 3 uses
  %i.ba = fcmp olt <4 x float> %i.aw, %i.az       ; 2 uses
  %i.bb = select <4 x i1> %i.ba, <4 x float> %i.aw, <4 x float> %i.az
  %i.bc = select <4 x i1> %i.ba, <4 x float> %i.az, <4 x float> %i.aw
  %i.bd = load <3 x float>, ptr %i.ae, align 4, !tbaa !106
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.bf = insertelement <4 x float> poison, float %.sroa.969.0.copyload, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = fmul <4 x float> %i.bg, %i.be           ; 3 uses
  %i.bi = insertelement <4 x float> poison, float %.sroa.1875.0.copyload, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = fmul <4 x float> %i.bj, %i.be           ; 3 uses
  %i.bl = fcmp olt <4 x float> %i.bh, %i.bk       ; 2 uses
  %i.bm = select <4 x i1> %i.bl, <4 x float> %i.bh, <4 x float> %i.bk
  %i.bn = select <4 x i1> %i.bl, <4 x float> %i.bk, <4 x float> %i.bh
  %i.bo = fadd <4 x float> %i.ag, %i.ar
  %i.bp = fadd <4 x float> %i.bc, %i.bo
  %i.bq = fadd <4 x float> %i.bn, %i.bp           ; 5 uses
  %i.br = fadd <4 x float> %i.ag, %i.aq
  %i.bs = fadd <4 x float> %i.bb, %i.br
  %i.bt = fadd <4 x float> %i.bm, %i.bs           ; 5 uses
  %i.bu = extractelement <4 x float> %i.bq, i64 1 ; 2 uses
  %i.bv = fcmp ogt float %i.bu, %.sroa.30.2.i93
  %.sroa.30.2.i92 = select i1 %i.bv, float %i.bu, float %.sroa.30.2.i93 ; 2 uses
  %i.bw = extractelement <4 x float> %i.bq, i64 2 ; 2 uses
  %i.bx = fcmp olt float %i.bw, %.sroa.0.2.i7980
  %.sroa.0.2.i78 = select i1 %i.bx, float %i.bw, float %.sroa.0.2.i7980 ; 2 uses
  %i.by = fcmp olt <4 x float> %i.bq, %i.x
  %i.bz = fcmp ogt <4 x float> %i.bq, %i.x
  %i.ca = shufflevector <4 x i1> %i.by, <4 x i1> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cb = select <4 x i1> %i.ca, <4 x float> %i.bq, <4 x float> %i.x ; 3 uses
  %i.cc = fcmp olt <4 x float> %i.bt, %i.cb
  %i.cd = fcmp ogt <4 x float> %i.bt, %i.cb
  %i.ce = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cf = extractelement <4 x float> %i.bt, i64 1 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, %.sroa.30.2.i92
  %.sroa.30.2.i91 = select i1 %i.cg, float %i.cf, float %.sroa.30.2.i92 ; 3 uses
  %i.ch = extractelement <4 x float> %i.bt, i64 2 ; 2 uses
  %i.ci = fcmp olt float %i.ch, %.sroa.0.2.i78
  %.sroa.0.2.i77 = select i1 %i.ci, float %i.ch, float %.sroa.0.2.i78 ; 2 uses
  %i.cj = select <4 x i1> %i.ce, <4 x float> %i.bt, <4 x float> %i.cb ; 3 uses
  %3 = add i16 %.081, 1                           ; 2 uses
  %4 = zext i16 %3 to i64                         ; 2 uses
  %i.ck = icmp ugt i64 %i.g, %4
  br i1 %i.ck, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i, label %.lr.ph135, !llvm.loop !120

._crit_edge136:                                   ; preds = %._crit_edge
  store float %.sroa.30.2.i37120.lcssa145, ptr %i.v, align 4
  store <4 x float> %i.dg, ptr %i.w, align 4
  br label %.preheader.thread

.preheader.thread:                                ; preds = %bb.c, %._crit_edge136
  %.sroa.0.2.i49105.lcssa132.lcssa = phi float [ %.sroa.0.2.i49105.lcssa, %._crit_edge136 ], [ %.promoted, %bb.c ]
  store float %.sroa.0.2.i49105.lcssa132.lcssa, ptr %0, align 4
  ret void

bb.d:                                             ; preds = %.lr.ph135, %._crit_edge
  %.sroa.30.2.i37120.lcssa146 = phi float [ %.sroa.30.2.i91, %.lr.ph135 ], [ %.sroa.30.2.i37120.lcssa145, %._crit_edge ] ; 2 uses
  %indvars.iv156 = phi i64 [ 0, %.lr.ph135 ], [ %6, %._crit_edge ] ; 2 uses
  %.014134 = phi i16 [ 0, %.lr.ph135 ], [ %5, %._crit_edge ]
  %.sroa.0.2.i49105.lcssa132133 = phi float [ %.sroa.0.2.i77, %.lr.ph135 ], [ %.sroa.0.2.i49105.lcssa, %._crit_edge ] ; 2 uses
  %i.cl = phi <4 x float> [ %i.cj, %.lr.ph135 ], [ %i.dg, %._crit_edge ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv156
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !122 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !122 ; 2 uses
  %.not106 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not106, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.d
  %i.cs = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv156 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cy = load <3 x float>, ptr %i.cv, align 4, !tbaa !106
  %i.cz = shufflevector <3 x float> %i.cy, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.da = load <3 x float>, ptr %i.cu, align 4, !tbaa !106
  %i.db = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.dc = load <3 x float>, ptr %i.cw, align 4, !tbaa !106
  %i.dd = shufflevector <3 x float> %i.dc, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.de = load <3 x float>, ptr %i.cx, align 4, !tbaa !106
  %i.df = shufflevector <3 x float> %i.de, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53, %bb.d
  %.sroa.30.2.i37120.lcssa145 = phi float [ %.sroa.30.2.i37120.lcssa146, %bb.d ], [ %.sroa.30.2.i37120, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 2 uses
  %.sroa.0.2.i49105.lcssa = phi float [ %.sroa.0.2.i49105.lcssa132133, %bb.d ], [ %.sroa.0.2.i49103, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 2 uses
  %i.dg = phi <4 x float> [ %i.cl, %bb.d ], [ %i.fk, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 2 uses
  %5 = add i16 %.014134, 1                        ; 2 uses
  %6 = zext i16 %5 to i64                         ; 2 uses
  %i.dh = icmp ugt i64 %i.g, %6
  br i1 %i.dh, label %bb.d, label %._crit_edge136, !llvm.loop !124

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53: ; preds = %.lr.ph109, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53
  %.sroa.30.2.i37122 = phi float [ %.sroa.30.2.i37120.lcssa146, %.lr.ph109 ], [ %.sroa.30.2.i37120, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 2 uses
  %.sroa.062.0108 = phi ptr [ %i.cp, %.lr.ph109 ], [ %i.fl, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 2 uses
  %.sroa.0.2.i49105107 = phi float [ %.sroa.0.2.i49105.lcssa132133, %.lr.ph109 ], [ %.sroa.0.2.i49103, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 2 uses
  %i.di = phi <4 x float> [ %i.cl, %.lr.ph109 ], [ %i.fk, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53 ] ; 3 uses
  %i.dj = load i32, ptr %.sroa.062.0108, align 4, !tbaa !125
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !47 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 236
  %.sroa.0.0.copyload = load float, ptr %i.dn, align 4, !tbaa !106
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 240
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !106
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 244
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !106
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 248
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !106
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 252
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !106
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 256
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !106
  %i.do = insertelement <4 x float> poison, float %.sroa.0.0.copyload, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul <4 x float> %i.dp, %i.db           ; 3 uses
  %i.dr = insertelement <4 x float> poison, float %.sroa.12.0.copyload, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = fmul <4 x float> %i.ds, %i.db           ; 3 uses
  %i.du = fcmp olt <4 x float> %i.dq, %i.dt       ; 2 uses
  %i.dv = select <4 x i1> %i.du, <4 x float> %i.dq, <4 x float> %i.dt
  %i.dw = select <4 x i1> %i.du, <4 x float> %i.dt, <4 x float> %i.dq
  %i.dx = insertelement <4 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = fmul <4 x float> %i.dy, %i.dd           ; 3 uses
  %i.ea = insertelement <4 x float> poison, float %.sroa.15.0.copyload, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fmul <4 x float> %i.eb, %i.dd           ; 3 uses
  %i.ed = fcmp olt <4 x float> %i.dz, %i.ec       ; 2 uses
  %i.ee = select <4 x i1> %i.ed, <4 x float> %i.dz, <4 x float> %i.ec
  %i.ef = select <4 x i1> %i.ed, <4 x float> %i.ec, <4 x float> %i.dz
  %i.eg = insertelement <4 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = fmul <4 x float> %i.eh, %i.df           ; 3 uses
  %i.ej = insertelement <4 x float> poison, float %.sroa.18.0.copyload, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = fmul <4 x float> %i.ek, %i.df           ; 3 uses
  %i.em = fcmp olt <4 x float> %i.ei, %i.el       ; 2 uses
  %i.en = select <4 x i1> %i.em, <4 x float> %i.ei, <4 x float> %i.el
  %i.eo = select <4 x i1> %i.em, <4 x float> %i.el, <4 x float> %i.ei
  %i.ep = fadd <4 x float> %i.cz, %i.dw
  %i.eq = fadd <4 x float> %i.ef, %i.ep
  %i.er = fadd <4 x float> %i.eo, %i.eq           ; 5 uses
  %i.es = fadd <4 x float> %i.cz, %i.dv
  %i.et = fadd <4 x float> %i.ee, %i.es
  %i.eu = fadd <4 x float> %i.en, %i.et           ; 5 uses
  %i.ev = extractelement <4 x float> %i.er, i64 1 ; 2 uses
  %i.ew = fcmp ogt float %i.ev, %.sroa.30.2.i37122
  %.sroa.30.2.i37121 = select i1 %i.ew, float %i.ev, float %.sroa.30.2.i37122 ; 2 uses
  %i.ex = extractelement <4 x float> %i.er, i64 2 ; 2 uses
  %i.ey = fcmp olt float %i.ex, %.sroa.0.2.i49105107
  %.sroa.0.2.i49104 = select i1 %i.ey, float %i.ex, float %.sroa.0.2.i49105107 ; 2 uses
  %i.ez = fcmp olt <4 x float> %i.er, %i.di
  %i.fa = fcmp ogt <4 x float> %i.er, %i.di
  %i.fb = shufflevector <4 x i1> %i.ez, <4 x i1> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = select <4 x i1> %i.fb, <4 x float> %i.er, <4 x float> %i.di ; 3 uses
  %i.fd = fcmp olt <4 x float> %i.eu, %i.fc
  %i.fe = fcmp ogt <4 x float> %i.eu, %i.fc
  %i.ff = shufflevector <4 x i1> %i.fd, <4 x i1> %i.fe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fg = extractelement <4 x float> %i.eu, i64 1 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %.sroa.30.2.i37121
  %.sroa.30.2.i37120 = select i1 %i.fh, float %i.fg, float %.sroa.30.2.i37121 ; 2 uses
  %i.fi = extractelement <4 x float> %i.eu, i64 2 ; 2 uses
  %i.fj = fcmp olt float %i.fi, %.sroa.0.2.i49104
  %.sroa.0.2.i49103 = select i1 %i.fj, float %i.fi, float %.sroa.0.2.i49104 ; 2 uses
  %i.fk = select <4 x i1> %i.ff, <4 x float> %i.eu, <4 x float> %i.fc ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fl, %i.cr
  br i1 %.not, label %._crit_edge, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i53
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene11SkinnedMesh21calculateSkinMatricesERKSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.70") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !117    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5scene11SkinnedMesh21calculateSkinMatricesERKSt6vectorIN4core8CMatrix4IfEESaIS4_EE) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.q = icmp ugt i64 %i.g, 144115188075855871
  br i1 %i.q, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not116 = icmp eq ptr %i.b, %i.c
  br i1 %.not116, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = shl nuw nsw i64 %i.n, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !117
  store ptr %i.u, ptr %i.s, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !126
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i
  %.promoted92 = phi ptr [ null, %bb.d ], [ %i.u, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.d ], [ %i.v, %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  %i.x = phi ptr [ %.promoted92, %.lr.ph ], [ %i.ek, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %i.y = phi ptr [ %i.k, %.lr.ph ], [ %i.eq, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ]
  %i.z = phi i64 [ 0, %.lr.ph ], [ %i.eo, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.096 = phi i16 [ 0, %.lr.ph ], [ %i.en, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ]
  %i.aa = phi ptr [ %.promoted, %.lr.ph ], [ %i.em, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.ab = phi ptr [ %.promoted92, %.lr.ph ], [ %i.el, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ] ; 11 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !117
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %.sroa.1438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 4    ; 5 uses
  %i.af = load <4 x float>, ptr %.sroa.1438.0..sroa_idx, align 4 ; 5 uses
  %i.ag = load <4 x float>, ptr %.sroa.22.0..sroa_idx, align 4 ; 5 uses
  %i.ah = load <4 x float>, ptr %.sroa.30.0..sroa_idx, align 4 ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 17 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !127, !range !33, !noundef !34
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 320
  %i.ao = load float, ptr %i.an, align 4, !tbaa !106, !noalias !129
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 324
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !106, !noalias !129
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  %i.as = load float, ptr %i.ar, align 4, !tbaa !106, !noalias !129
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 332
  %i.au = load float, ptr %i.at, align 4, !tbaa !106, !noalias !129
  %i.av = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = fmul <4 x float> %i.af, %i.aw
  %i.ay = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.az, <4 x float> %i.ax)
  %i.bb = insertelement <4 x float> poison, float %i.as, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.bc, <4 x float> %i.ba)
  %i.be = insertelement <4 x float> poison, float %i.au, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.bf, <4 x float> %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !106, !noalias !129
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 340
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !106, !noalias !129
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !106, !noalias !129
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 348
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !106, !noalias !129
  %i.bp = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = fmul <4 x float> %i.af, %i.bq
  %i.bs = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN5scene18SkinnedMeshBuilder14topoSortJointsEv:bb.a
  %i.ap = icmp eq i64 %i.ao, 9223372036854775806
  br i1 %i.ap, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.g, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aq = ashr exact i64 %i.ao, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add i64 %.sroa.speculated.i.i.i, %i.aq  ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 4611686018427387903)
  %i.au = select i1 %i.as, i64 4611686018427387903, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 1
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #33
          to label %.noexc58 unwind label %.loopexit ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i16 %storemerge125, ptr %i.ax, align 2, !tbaa !205
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.h, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aw, ptr align 2 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc58
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.af, align 8, !tbaa !235
  store ptr %i.az, ptr %i.ag, align 8, !tbaa !231
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !234
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.j:                                             ; preds = %bb.d
  %.not.i59 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 %storemerge125, ptr %i.v, align 2, !tbaa !205
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !231
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %i.t to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775806
  br i1 %i.bf, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.l
  %i.bg = ashr exact i64 %i.be, 1                 ; 3 uses
  %.sroa.speculated.i.i.i61 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i61, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 4611686018427387903)
  %i.bk = select i1 %i.bi, i64 4611686018427387903, i64 %i.bj ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i62)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33
          to label %.noexc67 unwind label %.loopexit ; 5 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i16 %storemerge125, ptr %i.bn, align 2, !tbaa !205
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.m, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63

bb.m:                                             ; preds = %.noexc67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bm, ptr align 2 %i.t, i64 %i.be, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63: ; preds = %bb.m, %.noexc67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 2 uses
  %.not.i17.i.i64 = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.be) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65: ; preds = %bb.n, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63
  store ptr %i.bm, ptr %1, align 8, !tbaa !235
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !231
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !234
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65, %bb.k, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.f
  %i.br = phi ptr [ %i.bm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65 ], [ %i.t, %bb.k ], [ %i.t, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.t, %bb.f ]
  %i.bs = phi ptr [ %i.bq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65 ], [ %i.u, %bb.k ], [ %i.u, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.u, %bb.f ]
  %i.bt = phi ptr [ %i.bp, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65 ], [ %i.bb, %bb.k ], [ %i.v, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.v, %bb.f ]
  %i.bu = add i16 %storemerge125, 1               ; 2 uses
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %i.i, %i.bv
  br i1 %i.bw, label %bb.d, label %.lr.ph127, !llvm.loop !236

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.p
  %i.bx = ashr exact i64 %i.h, 2
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #33
          to label %.noexc71 unwind label %bb.r   ; 7 uses

.noexc71:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.i
  store i16 0, ptr %i.by, align 2, !tbaa !205
  %i.ca = add nsw i64 %i.i, -1                    ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph129, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc71
  %i.cc = getelementptr i8, ptr %i.by, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ca, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.cc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !205
  br label %.lr.ph129

bb.o:                                             ; preds = %.lr.ph127, %bb.p
  %i.cd = phi i64 [ 0, %.lr.ph127 ], [ %i.cs, %bb.p ]
  %.046126 = phi i16 [ 0, %.lr.ph127 ], [ %i.cr, %bb.p ]
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !237
  %i.cf = load ptr, ptr %1, align 8, !tbaa !235   ; 3 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cd
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !205
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !237
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !237
  %i.cn = ptrtoint ptr %i.ce to i64
  %i.co = ptrtoint ptr %i.cf to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cf, i64 %i.cp
  invoke void @_ZNSt6vectorItSaItEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPtS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cq, ptr %i.ck, ptr %i.cm)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = add i16 %.046126, 1                     ; 2 uses
  %i.cs = zext i16 %i.cr to i64                   ; 2 uses
  %i.ct = icmp ugt i64 %i.i, %i.cs
  br i1 %i.ct, label %bb.o, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i, !llvm.loop !238

bb.q:                                             ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

.lr.ph129:                                        ; preds = %.noexc71, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cv = load ptr, ptr %1, align 8, !tbaa !235
  br label %bb.s

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.s
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #33
          to label %.noexc77 unwind label %bb.t   ; 6 uses

.noexc77:                                         ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.h
  store ptr null, ptr %i.cw, align 8, !tbaa !16
  %i.cy = getelementptr i8, ptr %i.cw, i64 8      ; 3 uses
  %i.cz = add nsw i64 %i.i, -1                    ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph131, label %_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc77
  %.idx.i.i.i.i.i.i.i74 = shl nuw nsw i64 %i.cz, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cy, i8 0, i64 %.idx.i.i.i.i.i.i.i74, i1 false), !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i.i.i.i.i.i.i74
  br label %.lr.ph131

bb.r:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.s:                                             ; preds = %.lr.ph129, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph129 ], [ %4, %bb.s ]
  %.041128 = phi i16 [ 0, %.lr.ph129 ], [ %3, %bb.s ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !205
  %i.df = zext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.df
  store i16 %.041128, ptr %i.dg, align 2, !tbaa !205
  %3 = add i16 %.041128, 1                        ; 2 uses
  %4 = zext i16 %3 to i64                         ; 2 uses
  %i.dh = icmp samesign ugt i64 %i.i, %4
  br i1 %i.dh, label %bb.s, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, !llvm.loop !239

.lr.ph131:                                        ; preds = %_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc77
  %.0.i.i.i.i.i75.ph = phi ptr [ %i.cy, %.noexc77 ], [ %i.db, %_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.di = load ptr, ptr %1, align 8, !tbaa !235
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %.idx = ashr exact i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %.idx) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.u:                                             ; preds = %.lr.ph131, %bb.w
  %indvars.iv143 = phi i64 [ 0, %.lr.ph131 ], [ %6, %bb.w ] ; 2 uses
  %.040130 = phi i16 [ 0, %.lr.ph131 ], [ %5, %bb.w ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv143
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !205
  %i.dm = zext i16 %i.dl to i64
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 390 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 2            ; 2 uses
  %i.ds = and i32 %i.dr, 65536
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = and i32 %i.dr, 65535
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !205
  %.sroa.091.0.insert.ext = zext i16 %i.dw to i32
  %.sroa.091.0.insert.insert = or disjoint i32 %.sroa.091.0.insert.ext, 65536
  store i32 %.sroa.091.0.insert.insert, ptr %i.dq, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv143
  store ptr %i.dp, ptr %i.dx, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 388
  store i16 %.040130, ptr %i.dy, align 4, !tbaa !240
  %5 = add i16 %.040130, 1                        ; 2 uses
  %6 = zext i16 %5 to i64                         ; 2 uses
  %i.dz = icmp ugt i64 %i.i, %6
  br i1 %i.dz, label %bb.u, label %.lr.ph133, !llvm.loop !268

bb.x:                                             ; preds = %.lr.ph133
  %i.ea = add i16 %.0132, 1                       ; 2 uses
  %i.eb = zext i16 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ugt i64 %i.i, %i.eb
  br i1 %i.ec, label %.lr.ph133, label %._crit_edge.loopexit, !llvm.loop !269

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.ed = ptrtoint ptr %i.bz to i64
  %i.ee = ptrtoint ptr %i.m to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %._crit_edge.loopexit
  %i.ef = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.eg = phi i64 [ %i.ee, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.pre169171174180188196220 = phi ptr [ %i.l, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 5 uses
  %.sroa.0104.0181187198219 = phi ptr [ %i.by, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.12.0182186200218 = phi i64 [ %i.ed, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.sroa.098.0202217 = phi ptr [ %i.cw, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.sroa.13.0204216 = phi ptr [ %i.cx, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.i.i.i.i.i75206215 = phi ptr [ %.0.i.i.i.i.i75.ph, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.eh = load ptr, ptr %0, align 8, !tbaa !223   ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !41 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 80 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !43
  store ptr %.sroa.098.0202217, ptr %i.ei, align 8, !tbaa !41
  store ptr %.0.i.i.i.i.i75206215, ptr %i.ek, align 8, !tbaa !73
  store ptr %.sroa.13.0204216, ptr %i.el, align 8, !tbaa !43
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ej to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.ep) #29
  br label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit: ; preds = %._crit_edge, %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !270 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !270 ; 2 uses
  %.not121134 = icmp eq ptr %i.er, %i.et
  br i1 %.not121134, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit, label %.lr.ph136

.lr.ph133:                                        ; preds = %bb.w, %bb.x
  %i.eu = phi i64 [ %i.eb, %bb.x ], [ 0, %bb.w ]
  %.0132 = phi i16 [ %i.ea, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 390
  %i.ey = load i32, ptr %i.ex, align 2            ; 2 uses
  %.sroa.090.0.extract.trunc = trunc i32 %i.ey to i16
  %i.ez = and i32 %i.ey, 65536
  %.not122 = icmp eq i32 %i.ez, 0
  %i.fa = icmp ugt i16 %.0132, %.sroa.090.0.extract.trunc
  %or.cond = or i1 %.not122, %i.fa
  br i1 %or.cond, label %bb.x, label %bb.z

bb.z:                                             ; preds = %.lr.ph133
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 380, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene18SkinnedMeshBuilder14topoSortJointsEv) #30
  unreachable

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit
  %.not.i.i.i80 = icmp eq ptr %.sroa.0104.0181187198219, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorItSaItEED2Ev.exit81, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread: ; preds = %.lr.ph136, %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit
  %i.fb = ptrtoint ptr %.sroa.0104.0181187198219 to i64
  %i.fc = sub i64 %.sroa.12.0182186200218, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0181187198219, i64 noundef %i.fc) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit81

_ZNSt6vectorItSaItEED2Ev.exit81:                  ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit, %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread
  %.not4.i.i.i = icmp eq ptr %.pre169171174180188196220, %i.ef
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorItSaItEED2Ev.exit81, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fj, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i ], [ %.pre169171174180188196220, %_ZNSt6vectorItSaItEED2Ev.exit81 ] ; 3 uses
  %i.fd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !235 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !234
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fi) #29
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i:  ; preds = %bb.aa, %.lr.ph.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.fj, %i.ef
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !272

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, %_ZNSt6vectorItSaItEED2Ev.exit81
  %.not.i.i1.i = icmp eq ptr %.pre169171174180188196220, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fk = ptrtoint ptr %.pre169171174180188196220 to i64
  %i.fl = sub i64 %i.eg, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %.pre169171174180188196220, i64 noundef %i.fl) #29
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.fm = load ptr, ptr %1, align 8, !tbaa !235   ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorItSaItEED2Ev.exit84, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !234
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit84

_ZNSt6vectorItSaItEED2Ev.exit84:                  ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

.lr.ph136:                                        ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit, %.lr.ph136
  %.sroa.087.0135 = phi ptr [ %i.fw, %.lr.ph136 ], [ %i.er, %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %i.fs = load i16, ptr %.sroa.087.0135, align 4, !tbaa !273
  %i.ft = zext i16 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0104.0181187198219, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !205
  store i16 %i.fv, ptr %.sroa.087.0135, align 4, !tbaa !273
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.087.0135, i64 12 ; 2 uses
  %.not121 = icmp eq ptr %i.fw, %i.et
  br i1 %.not121, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread, label %.lr.ph136

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.t, %bb.q
  %.pn53 = phi { ptr, i32 } [ %i.dj, %bb.t ], [ %i.cu, %bb.q ], [ %i.dc, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #31
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.c
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt6vectorItSaItEED2Ev.exit ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.fx = load ptr, ptr %1, align 8, !tbaa !235   ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorItSaItEED2Ev.exit86, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit86

_ZNSt6vectorItSaItEED2Ev.exit86:                  ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !226    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !235 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !272

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !226
  br label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit
end_hunk_1
