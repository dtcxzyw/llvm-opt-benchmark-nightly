Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK5scene10ISceneNode25getRelativeTransformationEv:bb.a
  store float %i.ck, ptr %i.l, align 4, !tbaa !95
  %i.cl = fmul nsz float %i.bn, 0.000000e+00
  store float %i.cl, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !95
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.bw) ; 2 uses
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.bp, float %i.cm)
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.cn)
  store float %i.co, ptr %i.c, align 4, !tbaa !95
  %i.cp = fmul nsz float %i.bp, 0.000000e+00
  store float %i.cp, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !95
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.bq) ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.m, align 4, !tbaa !95
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer, <2 x float> %i.cq)
  %i.cw = fadd nsz <2 x float> %i.ba, %i.cv
  store <2 x float> %i.cw, ptr %i.p, align 4, !tbaa !95
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.cm)
  %i.cy = fadd nsz float %i.cx, %i.bc
  store float %i.cy, ptr %i.bd, align 4, !tbaa !95
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !95
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !394, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !394, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !389  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !391
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !348
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !348
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !413
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !435
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !435
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !388, !range !142, !noundef !143
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !388
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !436
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !389
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !436
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.f, align 8, !tbaa !388
  store ptr null, ptr %i.a, align 8, !tbaa !389
  %i.g = load ptr, ptr %1, align 8, !tbaa !48
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !348
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !348
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #27, !inline_history !16
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !435
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !435
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !386 ; 2 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !386 ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.b = load ptr, ptr %.09.i.i, align 8, !tbaa !386 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #28
  %.not.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a, %._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.a, ptr %i.c, align 8, !tbaa !385
  store ptr %i.a, ptr %i.a, align 8, !tbaa !386
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.d, align 8, !tbaa !387
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  %.sroa.06.011 = phi ptr [ %.sroa.06.0, %_ZNK17IReferenceCounted4dropEv.exit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !413
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store ptr null, ptr %i.g, align 8, !tbaa !389
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !413  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i8 0, ptr %i.i, align 8, !tbaa !388
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !348
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !348
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.b, label %_ZNK17IReferenceCounted4dropEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #27, !inline_history !16
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %.lr.ph, %bb.b
  %.sroa.06.0 = load ptr, ptr %.sroa.06.011, align 8, !tbaa !386 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode6removeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b, ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene10ISceneNode11getMaterialEj(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @_ZN5video16IdentityMaterialE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode16getMaterialCountEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZNK5scene10ISceneNode8getScaleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8setScaleERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK5scene10ISceneNode11getRotationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !95
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode11setRotationERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZNK5scene10ISceneNode11getPositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode11setPositionERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !96
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK5scene10ISceneNode19getAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load <4 x float>, ptr %i.a, align 8      ; 2 uses
  %i.c = extractelement <4 x float> %i.b, i64 2
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode19setDebugDataVisibleEt(ptr noundef nonnull align 8 dereferenceable(218) %0, i16 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 214
  store i16 %1, ptr %i.a, align 2, !tbaa !393
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9setParentEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !348
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !348
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %0)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !48
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !348
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !348
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #27, !inline_history !16
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 16   ; 7 uses
  %2 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.g = load ptr, ptr %0, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %1, ptr noundef nonnull align 8 dereferenceable(218) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load <4 x float>, ptr %1, align 16, !tbaa !95, !noalias !658 ; 4 uses
  %i.r = load <4 x float>, ptr %i.f, align 4, !tbaa !95, !noalias !658 ; 4 uses
  %i.s = load <4 x float>, ptr %i.j, align 4, !tbaa !95, !noalias !658 ; 4 uses
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.u = fmul nsz <4 x float> %i.t, %i.s
  %i.v = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = load <4 x float>, ptr %i.k, align 4, !tbaa !95, !noalias !658 ; 4 uses
  %i.y = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.z = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.y, <4 x float> %i.w)
  %i.aa = load <4 x float>, ptr %i.l, align 4, !tbaa !95, !noalias !658 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ac = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ab, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <4 x float>, ptr %i.m, align 16, !tbaa !95, !noalias !658 ; 4 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.af = fmul nsz <4 x float> %i.s, %i.ae
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ag, <4 x float> %i.af)
  %i.ai = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
end_hunk_0
