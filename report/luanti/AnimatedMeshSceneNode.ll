Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/AnimatedMeshSceneNode?download=true
inline.NumInlined: 1647
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5scene10ISceneNode22updateAbsolutePositionEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.g = load ptr, ptr %0, align 8, !tbaa !23
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
  %i.q = load <4 x float>, ptr %1, align 16, !tbaa !28, !noalias !248 ; 4 uses
  %i.r = load <4 x float>, ptr %i.f, align 4, !tbaa !28, !noalias !248 ; 4 uses
  %i.s = load <4 x float>, ptr %i.j, align 4, !tbaa !28, !noalias !248 ; 4 uses
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.u = fmul <4 x float> %i.t, %i.s
  %i.v = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = load <4 x float>, ptr %i.k, align 4, !tbaa !28, !noalias !248 ; 4 uses
  %i.y = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.z = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.y, <4 x float> %i.w)
  %i.aa = load <4 x float>, ptr %i.l, align 4, !tbaa !28, !noalias !248 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ab, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <4 x float>, ptr %i.m, align 16, !tbaa !28, !noalias !248 ; 4 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.af = fmul <4 x float> %i.s, %i.ae
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ag, <4 x float> %i.af)
  %i.ai = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ak, <4 x float> %i.aj)
  store <4 x float> %i.al, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load <4 x float>, ptr %i.n, align 16, !tbaa !28, !noalias !248 ; 4 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = fmul <4 x float> %i.s, %i.an
  %i.ap = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ap, <4 x float> %i.ao)
  %i.ar = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.as = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.at, <4 x float> %i.as)
  store <4 x float> %i.au, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load <4 x float>, ptr %i.o, align 16, !tbaa !28, !noalias !248 ; 4 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ax = fmul <4 x float> %i.s, %i.aw
  %i.ay = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ay, <4 x float> %i.ax)
  %i.ba = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.bc, <4 x float> %i.bb)
  store <4 x float> %i.bd, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.be = load ptr, ptr %0, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %2, ptr noundef nonnull align 8 dereferenceable(218) %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene21AnimatedMeshSceneNode17setTransitionTimeEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fmul float %1, 1.000000e+03
  %i.b = tail call float @llvm.floor.f32(float %i.a)
  %i.c = fptosi float %i.b to i32                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !132
  %i.f = icmp eq i32 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 4, !tbaa !132
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5scene21AnimatedMeshSceneNode21setRenderFromIdentityEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(432) initializes((323, 324)) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 323
  store i8 %i.a, ptr %i.b, align 1, !tbaa !169
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene21AnimatedMeshSceneNode9addJointsEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.irr_ptr, align 8             ; 5 uses
  %2 = alloca %"struct.core::Transform", align 4  ; 8 uses
  %3 = alloca %"class.std::optional.31", align 4  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !266
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i16
  tail call void @_ZN5scene21AnimatedMeshSceneNode12PerJointData4setNEt(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i16 noundef zeroext %i.l)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !115  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !97   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.x = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.x, ptr %i.u, align 8, !tbaa !97
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #31, !inline_history !9
  br label %_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP7irr_ptrIN5scene13BoneSceneNodeEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIP7irr_ptrIN5scene13BoneSceneNodeEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI7irr_ptrIN5scene13BoneSceneNodeEEEvPT_.exit.i.i.i.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !114
  br label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE5clearEv.exit

_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIP7irr_ptrIN5scene13BoneSceneNodeEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !266 ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !170 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp ugt i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #33
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE5clearEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !123
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ag
  br i1 %i.ao, label %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = sub i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #34 ; 9 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !115 ; 11 uses
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !114 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i31.preheader

.lr.ph.i.i.i.i31.preheader:                       ; preds = %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_M_allocateEm.exit.i
  %4 = ptrtoaddr ptr %i.at to i64
  %5 = ptrtoaddr ptr %i.as to i64
  %i.au = add i64 %4, -8
  %i.av = sub i64 %i.au, %5                       ; 3 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i31.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i31.preheader
  %i.ay = and i64 %i.av, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.as, i64 %i.az
  %scevgep127 = getelementptr i8, ptr %i.ar, i64 %i.az
  %bound0 = icmp ult ptr %i.as, %scevgep127
  %bound1 = icmp ult ptr %i.ar, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i31.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.as, i64 %i.bd ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.be = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !118, !alias.scope !269, !noalias !270
  %wide.load129 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !118, !alias.scope !269, !noalias !270
  store <2 x ptr> splat (ptr null), ptr %next.gep128, align 8, !tbaa !118, !alias.scope !269, !noalias !270
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !118, !alias.scope !269, !noalias !270
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !118, !alias.scope !270, !noalias !268
  store <2 x ptr> %wide.load129, ptr %i.bf, align 8, !tbaa !118, !alias.scope !270, !noalias !268
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i31.preheader166

.lr.ph.i.i.i.i31.preheader166:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i31.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i31.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i31.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %.lr.ph.i.i.i.i31.preheader166, %.lr.ph.i.i.i.i31
  %.012.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i31 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i31.preheader166 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i31 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i31.preheader166 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.bh = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !118, !alias.scope !268, !noalias !267
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !118, !alias.scope !268, !noalias !267
  store ptr %i.bh, ptr %.012.i.i.i.i, align 8, !tbaa !118, !alias.scope !267, !noalias !268
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i32 = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i31, !llvm.loop !256

_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i31, %middle.block, %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.as, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !123
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.as to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bn) #30
  br label %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !115
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq ; 2 uses
  store ptr %i.bo, ptr %i.n, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ag
  store ptr %i.bp, ptr %i.ai, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !266
  %.pre87 = load ptr, ptr %i.c, align 8, !tbaa !170
  br label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE7reserveEm.exit

_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.bq = phi ptr [ %i.m, %bb.g ], [ %i.bo, %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.br = phi ptr [ %i.ad, %bb.g ], [ %.pre87, %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.bs = phi ptr [ %i.ac, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %.not74 = icmp eq ptr %i.bs, %i.br
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE7reserveEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev.exit, %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE7reserveEm.exit
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev.exit
  %i.bw = phi ptr [ %i.bq, %.lr.ph ], [ %i.ei, %_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev.exit ]
  %i.bx = phi ptr [ %i.br, %.lr.ph ], [ %i.el, %_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev.exit ]
  %.02673 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.02673
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 392
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !272, !range !104, !noundef !105
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 390
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !180
  %i.cf = zext i16 %i.ce to i64                   ; 3 uses
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  %i.ch = ptrtoint ptr %i.bw to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3                 ; 2 uses
  %.not.i.i33 = icmp ugt i64 %i.ck, %i.cf
  br i1 %.not.i.i33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, i64 noundef %i.cf, i64 noundef %i.ck) #33
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !118 ; 2 uses
  %.not = icmp eq ptr %i.cm, null
  br i1 %.not, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene21AnimatedMeshSceneNode9addJointsEv) #32
  unreachable

.thread:                                          ; preds = %bb.i, %bb.l
  %.02551 = phi ptr [ %i.cm, %bb.l ], [ %0, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 104 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !182
  %.not61 = icmp eq i8 %i.cp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.cq = call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #34 ; 5 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.cs = trunc i64 %.02673 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.ct = load i8, ptr %i.co, align 4, !tbaa !182
  switch i8 %i.ct, label %.invoke [
    i8 0, label %bb.p
    i8 -1, label %.invoke.loopexit
  ], !prof !183

.invoke.loopexit:                                 ; preds = %bb.n
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %.invoke.loopexit
  %.str.12.sink = phi ptr [ @.str.12, %.invoke.loopexit ], [ @.str.13, %bb.n ]
  %i.cu = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cu, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %.str.12.sink, ptr %i.cv, align 8, !tbaa !186
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
          to label %.cont unwind label %.thread53

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store <4 x float> splat (float 1.000000e+00), ptr %i.bv, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.cn, i64 64, i1 false), !tbaa.struct !144
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.cn, i64 40, i1 false), !tbaa.struct !273
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %storemerge = phi i8 [ 0, %bb.p ], [ 1, %bb.o ]
  store i8 %storemerge, ptr %i.bu, align 4, !tbaa !139
  invoke void @_ZN5scene13BoneSceneNodeC1EPNS_10ISceneNodeEPNS_13ISceneManagerEijRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN4core9TransformERKS5_INSF_8CMatrix4IfEEE(ptr noundef nonnull align 8 dereferenceable(308) %i.cq, ptr noundef nonnull %.02551, ptr noundef %i.cr, i32 noundef 0, i32 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 4 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(68) %3)
          to label %bb.r unwind label %.thread58

bb.r:                                             ; preds = %bb.q
  store ptr %i.cq, ptr %1, align 8, !tbaa !118
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !114 ; 6 uses
  %i.cx = load ptr, ptr %i.ai, align 8, !tbaa !123
  %.not.i.i36 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i36, label %bb.s, label %_ZN7irr_ptrIN5scene13BoneSceneNodeEEC2EOS2_.exit.i.i

_ZN7irr_ptrIN5scene13BoneSceneNodeEEC2EOS2_.exit.i.i: ; preds = %bb.r
  store ptr %i.cq, ptr %i.cw, align 8, !tbaa !118
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.n, align 8, !tbaa !114
  br label %_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !115 ; 10 uses
  %i.da = ptrtoint ptr %i.cw to i64               ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK5scene10ISceneNode15getSceneManagerEv:bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10ISceneNodeD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10ISceneNodeD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene21AnimatedMeshSceneNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1752395105
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !26
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !127    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !111
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5video9SMaterialESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 64) #30
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i:       ; preds = %bb.b, %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not.i.1.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.1.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 64) #30
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i:     ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %.not.i.2.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.2.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #30
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i:     ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112  ; 2 uses
  %.not.i.3.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.3.i.i.i.i, label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 64) #30
  br label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i

_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i:   ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !10

_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #21 comdat {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5video9SMaterialEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #30
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.i.i.i:         ; preds = %bb.b, %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %.not.i.1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.1.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #30
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i:       ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not.i.2.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.2.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #30
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i:       ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %.not.i.3.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.3.i.i.i, label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #30
  br label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i

_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i:     ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5video9SMaterialEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !10

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5video9SMaterialEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !115    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP7irr_ptrIN5scene13BoneSceneNodeEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP7irr_ptrIN5scene13BoneSceneNodeEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !118
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !114
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
  unreachable

_ZNKSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !118
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.ac
  %scevgep40 = getelementptr i8, ptr %i.u, i64 %i.ac
  %bound0 = icmp ult ptr %i.c, %scevgep40
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.ah = getelementptr i8, ptr %next.gep41, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep41, align 8, !tbaa !118, !alias.scope !308, !noalias !309
  %wide.load42 = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !118, !alias.scope !308, !noalias !309
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !118, !alias.scope !308, !noalias !309
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !118, !alias.scope !308, !noalias !309
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !118, !alias.scope !309, !noalias !307
  store <2 x ptr> %wide.load42, ptr %i.ai, align 8, !tbaa !118, !alias.scope !309, !noalias !307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader44

.lr.ph.i.i.i.preheader44:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader44, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.ak = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !307, !noalias !306
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !307, !noalias !306
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !tbaa !118, !alias.scope !306, !noalias !307
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !305

_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #30
  br label %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !115
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP7irr_ptrIN5scene13BoneSceneNodeEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !121    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 6                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 144115188075855871         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.01012.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.p, i8 0, i64 56, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 60
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 20
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !28
  store float 1.000000e+00, ptr %.013.i.i.i.prol, align 4, !tbaa !28
  %i.t = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 64 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !310

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %i.v = icmp ult i64 %1, 4
  br i1 %i.v, label %_ZSt27__uninitialized_default_n_aIPN4core8CMatrix4IfEEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 21 uses
  %.01012.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 60
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !28
  store float 1.000000e+00, ptr %.013.i.i.i, align 4, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ab, i8 0, i64 56, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 124
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 84
  store float 1.000000e+00, ptr %i.ae, align 4, !tbaa !28
  store float 1.000000e+00, ptr %i.aa, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 188
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  store float 1.000000e+00, ptr %i.ai, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 148
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !28
  store float 1.000000e+00, ptr %i.af, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.al, i8 0, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 252
  store float 1.000000e+00, ptr %i.am, align 4, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 232
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 212
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !28
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !28
  %i.ap = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4core8CMatrix4IfEEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !311

_ZSt27__uninitialized_default_n_aIPN4core8CMatrix4IfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !143
end_hunk_1
