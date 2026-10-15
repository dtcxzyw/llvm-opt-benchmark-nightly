Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/SkinnedMesh?download=true
inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5scene18SkinnedMeshBuilder14addPositionKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE
define void @_ZN5scene18SkinnedMeshBuilder14addPositionKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(address_is_null) %1, float noundef %2, <2 x float> %3, float %4) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 478, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene18SkinnedMeshBuilder14addPositionKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %2, ptr %i.c, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store <2 x float> %3, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !113
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float %4, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.b, align 8, !tbaa !243
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.f, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 3 uses
  store float %2, ptr %i.s, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store <2 x float> %3, ptr %.sroa.5.0..sroa_idx4.i, align 4, !tbaa !113
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store float %4, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx4.i.sroa_idx, align 4, !tbaa !113
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !244, !alias.scope !347
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !31
  store ptr %i.v, ptr %i.b, align 8, !tbaa !243
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.d, align 8, !tbaa !32
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene18SkinnedMeshBuilder11addScaleKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(address_is_null) %1, float noundef %2, <2 x float> %3, float %4) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 484, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene18SkinnedMeshBuilder11addScaleKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %2, ptr %i.c, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store <2 x float> %3, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !113
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float %4, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.b, align 8, !tbaa !243
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.f, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 3 uses
  store float %2, ptr %i.s, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store <2 x float> %3, ptr %.sroa.5.0..sroa_idx4.i, align 4, !tbaa !113
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store float %4, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx4.i.sroa_idx, align 4, !tbaa !113
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !244, !alias.scope !351
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !31
  store ptr %i.v, ptr %i.b, align 8, !tbaa !243
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.d, align 8, !tbaa !32
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene18SkinnedMeshBuilder14addRotationKeyEPNS_11SkinnedMesh6SJointEfN4core10quaternionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(address_is_null) %1, float noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #14 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 490, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene18SkinnedMeshBuilder14addRotationKeyEPNS_11SkinnedMesh6SJointEfN4core10quaternionE) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %2, ptr %i.c, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %5 = shufflevector <2 x float> %3, <2 x float> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store ptr %i.f, ptr %i.b, align 8, !tbaa !245
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !35   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.f, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.l = sdiv exact i64 %i.j, 20                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 461168601842738790)
  %i.p = select i1 %i.n, i64 461168601842738790, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 20
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 2 uses
  store float %2, ptr %i.s, align 4, !tbaa !113
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %6 = shufflevector <2 x float> %3, <2 x float> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %.sroa.5.0..sroa_idx4.i, align 4, !tbaa !113
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !246, !alias.scope !355
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 20
  %.not.i23.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !35
  store ptr %i.v, ptr %i.b, align 8, !tbaa !245
  %i.z = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.d, align 8, !tbaa !36
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit: ; preds = %bb.d, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene18SkinnedMeshBuilder9addWeightEPNS_11SkinnedMesh6SJointEtjf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(address_is_null) %1, i16 noundef zeroext %2, i32 noundef %3, float noundef %4) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 496, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene18SkinnedMeshBuilder9addWeightEPNS_11SkinnedMesh6SJointEtjf) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = fcmp ugt float %4, 0.000000e+00
  br i1 %i.a, label %bb.d, label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.d = load i16, ptr %i.c, align 4, !tbaa !224  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !357  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !358
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %i.d, ptr %i.f, align 4, !tbaa !175
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %2, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !175
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !130
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float %4, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store ptr %i.i, ptr %i.e, align 8, !tbaa !357
  br label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !359  ; 4 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.g, label %_ZNKSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.o = sdiv exact i64 %i.m, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 768614336404564650)
  %i.s = select i1 %i.q, i64 768614336404564650, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 5 uses
  store i16 %i.d, ptr %i.v, align 4, !tbaa !175
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 %2, ptr %.sroa.5.0..sroa_idx8, align 2, !tbaa !175
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %3, ptr %.sroa.6.0..sroa_idx10, align 4, !tbaa !130
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store float %4, ptr %.sroa.7.0..sroa_idx12, align 4, !tbaa !113
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.h, label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.u, ptr %i.b, align 8, !tbaa !359
  store ptr %i.x, ptr %i.e, align 8, !tbaa !357
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !358
  br label %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene11SkinnedMesh21convertMeshToTangentsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %.not96 = icmp eq ptr %i.c, %i.d
  br i1 %.not96, label %._crit_edge, label %.lr.ph95

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph95:                                         ; preds = %bb.a, %.loopexit
  %i.e = phi ptr [ %i.da, %.loopexit ], [ %i.d, %bb.a ]
  %i.f = phi i64 [ %i.cy, %.loopexit ], [ 0, %bb.a ] ; 4 uses
  %.09194 = phi i32 [ %i.cx, %.loopexit ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph95
  tail call void @_ZN5scene15SSkinMeshBuffer17convertToTangentsEv(ptr noundef nonnull align 8 dereferenceable(288) %i.h)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !360 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(28) %i.o), !inline_history !360 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !361 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(28) %i.z), !inline_history !361
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN5scene11IMeshBuffer10getIndicesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv) #30
  unreachable

_ZN5scene11IMeshBuffer10getIndicesEv.exit:        ; preds = %bb.b
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !361 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !361
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZNK5scene11SkinnedMesh4Keys15updateTransformEfRN4core9TransformE:bb.a
  %i.cd = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -12
  %.sroa.07.0.copyload.i29 = load <2 x float>, ptr %i.cd, align 4, !tbaa !113
  %.sroa.28.0..sroa_idx.i30 = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i23, i64 -4
  %.sroa.28.0.copyload.i31 = load float, ptr %.sroa.28.0..sroa_idx.i30, align 4, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i23, i64 4
  %.sroa.05.0.copyload.i32 = load <2 x float>, ptr %i.ce, align 4, !tbaa !113
  %.sroa.26.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i23, i64 12
  %.sroa.26.0.copyload.i34 = load float, ptr %.sroa.26.0..sroa_idx.i33, align 4, !tbaa !113
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !140 ; 2 uses
  %i.cg = fsub float %1, %i.cf
  %i.ch = load float, ptr %.sroa.011.1.i.i.i23, align 4, !tbaa !140
  %i.ci = fsub float %i.ch, %i.cf
  %i.cj = fdiv float %i.cg, %i.ci
  %i.ck = fpext float %i.cj to double             ; 3 uses
  %i.cl = fsub double 1.000000e+00, %i.ck         ; 2 uses
  %i.cm = fpext <2 x float> %.sroa.07.0.copyload.i29 to <2 x double>
  %i.cn = fpext <2 x float> %.sroa.05.0.copyload.i32 to <2 x double>
  %i.co = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cs, <2 x double> %i.cq)
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float>
  %i.cv = fpext float %.sroa.28.0.copyload.i31 to double
  %i.cw = fpext float %.sroa.26.0.copyload.i34 to double
  %i.cx = fmul double %i.cw, %i.ck
  %i.cy = call double @llvm.fmuladd.f64(double %i.cv, double %i.cl, double %i.cx)
  %i.cz = fptrunc double %i.cy to float
  br label %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44

_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44: ; preds = %bb.o, %bb.n, %bb.l, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7
  %.sroa.024.2.i11 = phi <2 x float> [ %.sroa.024.0.copyload26.i26, %bb.n ], [ %.sroa.024.0.copyload.i8, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7 ], [ %.sroa.024.0.copyload25.i41, %bb.l ], [ %i.cu, %bb.o ]
  %.sroa.5.sroa.0.2.i12 = phi float [ %.sroa.5.sroa.0.0.copyload34.i28, %bb.n ], [ %.sroa.5.sroa.0.0.copyload.i10, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESt6vectorIS9_SaIS9_EEEEfZNKS8_3getEfEUlRKT_fE_ESG_SG_SG_RKT0_T1_.exit.thread.i7 ], [ %.sroa.5.sroa.0.0.copyload33.i43, %bb.l ], [ %i.cz, %bb.o ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> %.sroa.024.2.i11, ptr %i.da, align 4, !tbaa !113
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %.sroa.5.sroa.0.2.i12, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !113
  br label %.critedge47

.critedge47:                                      ; preds = %bb.i, %_ZNK5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE3getEf.exit44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene11SkinnedMesh7ChannelIN4core10quaternionEE3getEf(ptr dead_on_unwind noalias writable sret(%"class.std::optional.161") align 4 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, float noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !117    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.i = udiv exact i64 %i.g, 20
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.j = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.sroa.011.015.i.i, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !143
  %i.m = fcmp olt float %i.l, %2                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 10 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit, !llvm.loop !380

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = icmp eq ptr %.sroa.011.1.i.i, %i.a
  br i1 %i.r, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread, label %bb.c

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread: ; preds = %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !244
  br label %bb.j

bb.c:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit
  %i.t = icmp eq ptr %.sroa.011.1.i.i, %i.c
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !244
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !242, !range !44, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !244
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -20
  %i.aa = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.aa, align 4, !tbaa !113 ; 4 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %.sroa.22.0.copyload = load <2 x float>, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !113 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ab, align 4, !tbaa !113 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 12
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !113 ; 4 uses
  %i.ac = load float, ptr %i.z, align 4, !tbaa !143 ; 2 uses
  %i.ad = fsub float %2, %i.ac
  %i.ae = load float, ptr %.sroa.011.1.i.i, align 4, !tbaa !143
  %i.af = fsub float %i.ae, %i.ac
  %i.ag = fdiv float %i.ad, %i.af                 ; 4 uses
  %.sroa.047.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ai = tail call float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract.i.i, float %.sroa.036.0.vec.extract.i.i, float %i.ah)
  %.sroa.10.8.vec.extract.i.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i.i = extractelement <2 x float> %.sroa.2.0.copyload, i64 0
  %i.aj = tail call float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i.i, float %.sroa.6.8.vec.extract.i.i, float %i.ai)
  %.sroa.10.12.vec.extract.i.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i.i = extractelement <2 x float> %.sroa.2.0.copyload, i64 1
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i.i, float %.sroa.6.12.vec.extract.i.i, float %i.aj) ; 3 uses
  %i.al = fcmp olt float %i.ak, 0.000000e+00      ; 3 uses
  %i.am = fneg <2 x float> %.sroa.01.0.copyload
  %i.an = fneg <2 x float> %.sroa.22.0.copyload
  %i.ao = fneg float %i.ak
  %.sroa.047.0.i.i = select i1 %i.al, <2 x float> %i.am, <2 x float> %.sroa.01.0.copyload ; 2 uses
  %.sroa.10.0.i.i = select i1 %i.al, <2 x float> %i.an, <2 x float> %.sroa.22.0.copyload ; 2 uses
  %.020.i.i = select i1 %i.al, float %i.ao, float %i.ak ; 2 uses
  %i.ap = fcmp ugt float %.020.i.i, 9.990000e-01
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call float @acosf(float noundef %.020.i.i) #31 ; 3 uses
  %i.ar = tail call float @sinf(float noundef %i.aq) #31
  %i.as = fdiv float 1.000000e+00, %i.ar          ; 2 uses
  %i.at = fsub float 1.000000e+00, %i.ag
  %i.au = fmul float %i.at, %i.aq
  %i.av = tail call float @sinf(float noundef %i.au) #31
  %i.aw = fmul float %i.ag, %i.aq
  %i.ax = tail call float @sinf(float noundef %i.aw) #31
  %i.ay = fmul float %i.av, %i.as
  %i.az = fmul float %i.as, %i.ax
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x float> %.sroa.047.0.i.i, %i.bb
  %i.bd = fmul <2 x float> %.sroa.10.0.i.i, %i.bb
  %i.be = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x float> %.sroa.0.0.copyload, %i.bf
  %i.bh = fmul <2 x float> %.sroa.2.0.copyload, %i.bf
  %i.bi = fadd <2 x float> %i.bc, %i.bg
  %i.bj = fadd <2 x float> %i.bd, %i.bh
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = fsub float 1.000000e+00, %i.ag
  %i.bl = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = fmul <2 x float> %.sroa.0.0.copyload, %i.bm
  %i.bo = fmul <2 x float> %.sroa.2.0.copyload, %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %.sroa.10.0.i.i
  %i.bs = fadd <2 x float> %i.bo, %i.br           ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bv = fmul <2 x float> %i.bq, %.sroa.047.0.i.i
  %i.bw = fadd <2 x float> %i.bn, %i.bv           ; 4 uses
  %foldExtExtBinop26 = fmul <2 x float> %i.bw, %i.bw
  %i.bx = extractelement <2 x float> %foldExtExtBinop26, i64 1
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bz)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.ca)
  %i.cc = fpext float %i.cb to double
  %i.cd = tail call double @sqrt(double noundef %i.cc) #31
  %i.ce = fdiv double 1.000000e+00, %i.cd
  %i.cf = fptrunc double %i.ce to float
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %i.bw, %i.ch
  %i.cj = fmul <2 x float> %i.bs, %i.ch
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.4.vec.insert.i29.sink.i.i = phi <2 x float> [ %i.ci, %bb.i ], [ %i.bi, %bb.h ]
  %.sroa.3.12.vec.insert.i31.sink.i.i = phi <2 x float> [ %i.cj, %bb.i ], [ %i.bj, %bb.h ]
  %3 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i.i, <2 x float> %.sroa.3.12.vec.insert.i31.sink.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %0, align 4, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread, %bb.d, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit, %bb.f
  %.sink = phi i8 [ 1, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEfZNKS7_3getEfEUlRKT_fE_ESF_SF_SF_RKT0_T1_.exit.thread ], [ 1, %bb.d ], [ 1, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE16interpolateValueES3_S3_f.exit ], [ 1, %bb.f ], [ 0, %bb.a ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 4, !tbaa !249
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #19

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !381
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !381
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !382
  %i.h = load i32, ptr %i.e, align 4, !tbaa !382
  %.not50 = icmp eq i32 %i.g, %i.h
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !383
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !383
  %i.m = fcmp une float %i.j, %i.l
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load float, ptr %i.n, align 4, !tbaa !384
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4, !tbaa !384
  %i.r = fcmp une float %i.o, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.t = load i8, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.v = load i8, ptr %i.u, align 2
  %i.w = xor i8 %i.v, %i.t                        ; 3 uses
  %i.x = and i8 %i.w, 3
  %or.cond44 = icmp eq i8 %i.x, 0
  br i1 %or.cond44, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = and i8 %i.w, 124
  %i.ad = icmp eq i8 %i.ac, 0
  %or.cond = icmp eq i16 %i.z, %i.ab
  %or.cond51 = and i1 %i.ad, %or.cond
  br i1 %or.cond51, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load float, ptr %i.ae, align 8, !tbaa !385
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !385
  %i.ai = fcmp une float %i.af, %i.ah
  br i1 %i.ai, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !386
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.am = load float, ptr %i.al, align 4, !tbaa !386
  %i.an = fcmp une float %i.ak, %i.am
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !387
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !387
  %i.as = fcmp une float %i.ap, %i.ar
  %i.at = icmp slt i8 %i.w, 0
  %or.cond43 = or i1 %i.at, %i.as
  br i1 %or.cond43, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.au = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.au, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  br i1 %i.ax, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br i1 %i.ba, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %.critedge

.critedge:                                        ; preds = %.preheader.3, %.preheader.preheader, %.preheader.1, %.preheader.2, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.g ], [ true, %.preheader.preheader ], [ true, %.preheader.2 ], [ true, %.preheader.1 ], [ %i.bd, %.preheader.3 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238
  %i.b = load ptr, ptr %1, align 8, !tbaa !238
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = xor i16 %i.f, %i.d
  %i.h = and i16 %i.g, 4095
  %or.cond28 = icmp eq i16 %i.h, 0
  br i1 %or.cond28, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !388
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !388
  %.not21 = icmp eq i8 %i.j, %i.l
  br i1 %.not21, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !389
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !389
  %.not22 = icmp eq i8 %i.n, %i.p
  br i1 %.not22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !390
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !390
  %.not23 = icmp eq i8 %i.r, %i.t
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !391
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !391
end_hunk_1
