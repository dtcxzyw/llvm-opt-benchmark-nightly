Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN16ImGuiListClipper4StepEv:bb.a
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

bb.bg:                                            ; preds = %bb.j, %bb.k, %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i, %bb.az, %bb.at, %bb.aw
  %i.nx = phi i32 [ %i.aj, %bb.j ], [ %i.aj, %bb.k ], [ %i.bk, %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i ], [ %.pre27, %bb.az ], [ %i.kp, %bb.at ], [ %i.kp, %bb.aw ]
  %i.ny = phi i32 [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.bf, %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i ], [ %.pre25, %bb.az ], [ %i.km, %bb.at ], [ %i.km, %bb.aw ]
  %.not = icmp slt i32 %i.ny, %i.nx
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit: ; preds = %bb.bf, %bb.bc, %._crit_edge, %bb.s, %_ZL26GetSkipItemForListClippingv.exit.i, %bb.d, %bb.bg
  %.0.shrunk = phi i1 [ %.not, %bb.bg ], [ false, %bb.d ], [ false, %_ZL26GetSkipItemForListClippingv.exit.i ], [ false, %bb.s ], [ false, %._crit_edge ], [ false, %bb.bc ], [ false, %bb.bf ] ; 2 uses
  %i.nz = load ptr, ptr %i.i, align 8, !tbaa !348 ; 2 uses
  %.not12 = icmp eq ptr %i.nz, null
  br i1 %.not12, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 579
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !1167, !range !120, !noundef !254
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !266
  %i.of = and i32 %i.oe, 32
  %.not13 = icmp eq i32 %i.of, 0
  br i1 %.not13, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.7)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh, %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit
  br i1 %i.d, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.og = load float, ptr %i.b, align 4, !tbaa !337 ; 2 uses
  %i.oh = fcmp ogt float %i.og, 0.000000e+00
  br i1 %i.oh, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !266
  %i.ok = and i32 %i.oj, 32
  %.not14 = icmp eq i32 %i.ok, 0
  br i1 %.not14, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ol = fpext float %i.og to double
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.8, double noundef %i.ol)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bl, %bb.bk
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.on = load i32, ptr %i.om, align 4, !tbaa !266
  %i.oo = and i32 %i.on, 32
  %.not16 = icmp eq i32 %i.oo, 0                  ; 2 uses
  br i1 %.0.shrunk, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not16, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !335
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.os = load i32, ptr %i.or, align 4, !tbaa !377
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.oq, i32 noundef %i.os)
  br label %bb.bu

bb.br:                                            ; preds = %bb.bo
  br i1 %.not16, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.10)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @_ZN16ImGuiListClipper3EndEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bp, %bb.bq, %bb.bt
  ret i1 %.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() local_unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3136
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.f = load float, ptr %i.e, align 4, !tbaa !399
  %i.g = load <4 x float>, ptr %i.d, align 4, !tbaa !86
  %i.h = fmul float %1, %i.f
  %i.i = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.h, i64 3
  %i.j = fmul <4 x float> %i.g, %i.i              ; 3 uses
  %i.k = fcmp olt <4 x float> %i.j, zeroinitializer
  %i.l = fcmp ogt <4 x float> %i.j, splat (float 1.000000e+00)
  %i.m = select <4 x i1> %i.l, <4 x float> splat (float 1.000000e+00), <4 x float> %i.j
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.o = select <4 x i1> %i.k, <4 x float> splat (float 5.000000e-01), <4 x float> %i.n
  %i.p = fptosi <4 x float> %i.o to <4 x i32>
  %i.q = shl <4 x i32> %i.p, <i32 0, i32 8, i32 16, i32 24>
  %i.r = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.q)
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.c = load float, ptr %i.b, align 4, !tbaa !399
  %i.d = load <4 x float>, ptr %0, align 4, !tbaa !86
  %i.e = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.c, i64 3
  %i.f = fmul <4 x float> %i.d, %i.e              ; 3 uses
  %i.g = fcmp olt <4 x float> %i.f, zeroinitializer
  %i.h = fcmp ogt <4 x float> %i.f, splat (float 1.000000e+00)
  %i.i = select <4 x i1> %i.h, <4 x float> splat (float 1.000000e+00), <4 x float> %i.f
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.k = select <4 x i1> %i.g, <4 x float> splat (float 5.000000e-01), <4 x float> %i.j
  %i.l = fptosi <4 x float> %i.k to <4 x i32>
  %i.m = shl <4 x i32> %i.l, <i32 0, i32 8, i32 16, i32 24>
  %i.n = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.m)
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef %0) local_unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.c = load float, ptr %i.b, align 4, !tbaa !399
  %i.d = fmul float %1, %i.c                      ; 2 uses
  %i.e = fcmp ult float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %0, 24
  %i.g = uitofp nneg i32 %i.f to float
  %i.h = fmul float %i.d, %i.g
  %i.i = fptoui float %i.h to i32
  %i.j = and i32 %0, 16777215
  %i.k = shl i32 %i.i, 24
  %i.l = or disjoint i32 %i.k, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui14PushStyleColorEij(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %2 = alloca %struct.ImGuiColorMod, align 4      ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %0, ptr %2, align 4, !tbaa !401
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !402
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7912
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7908
  %i.h = load i32, ptr %i.g, align 4, !tbaa !403
  %.not = icmp eq i32 %i.h, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %1, 8
  %i.j = and i32 %1, 255
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = and i32 %i.i, 255
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = insertelement <2 x float> poison, float %i.k, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 1
  %i.p = fmul nnan <2 x float> %i.o, splat (float f0x3B808081)
  %i.q = lshr i32 %1, 16
  %3 = lshr i32 %1, 24
  %4 = and i32 %i.q, 255
  %5 = uitofp nneg i32 %4 to float
  %i.r = uitofp nneg i32 %3 to float
  %i.s = insertelement <2 x float> poison, float %5, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = fmul nnan <2 x float> %i.t, splat (float f0x3B808081)
  store <2 x float> %i.p, ptr %i.e, align 4, !tbaa !86
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x float> %i.u, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !404    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !405
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge

._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !406
  br label %_ZN8ImVectorI13ImGuiColorModE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.a, 1
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sdiv i32 %i.a, 2
  %i.g = add nsw i32 %i.f, %i.a
  br label %_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit

_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 8, %bb.b ]
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.e) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 20
  %i.l = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !244
  %i.m = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !244
  %i.n = tail call noundef ptr %i.l(i64 noundef %i.k, ptr noundef %i.m) #35, !inline_history !1183 ; 3 uses
  %i.o = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10336 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 5000
  %i.r = load i32, ptr %i.q, align 8, !tbaa !246  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10348 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 10344 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !247  ; 2 uses
  %i.v = sext i16 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !249
  %.not.i.i.i = icmp eq i32 %i.x, %i.r
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !250
  %i.y = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = sext i16 %i.u to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = srem i32 %i.aa, 6                       ; 2 uses
  %i.ac = trunc nsw i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 8, !tbaa !247
  %i.ad = sext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad ; 3 uses
  store i32 %i.r, ptr %i.ae, align 4, !tbaa !249
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 0, ptr %i.af, align 2, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 0, ptr %i.ag, align 4, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ah = phi i16 [ 1, %bb.e ], [ %i.y, %._crit_edge.i ]
  %i.ai = phi i64 [ %i.ad, %bb.e ], [ %i.v, %._crit_edge.i ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.ah, ptr %i.ak, align 4, !tbaa !250
  %i.al = load i32, ptr %i.p, align 8, !tbaa !252
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.p, align 8, !tbaa !252
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.f, %_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !406 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.ap = load i32, ptr %0, align 8, !tbaa !404
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.ao, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !406 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.as, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.at, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 5000
  %i.av = load i32, ptr %i.au, align 8, !tbaa !246 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 10348 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 10344 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !247 ; 2 uses
  %i.az = sext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !249
  %.not.i.i8.i = icmp eq i32 %i.bb, %i.av
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !251
  %i.bc = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = sext i16 %i.ay to i32
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = srem i32 %i.be, 6                       ; 2 uses
  %i.bg = trunc nsw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.ax, align 8, !tbaa !247
  %i.bh = sext i32 %i.bf to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bh ; 3 uses
  store i32 %i.av, ptr %i.bi, align 4, !tbaa !249
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 0, ptr %i.bj, align 2, !tbaa !251
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 0, ptr %i.bk, align 4, !tbaa !250
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bl = phi i16 [ 1, %bb.j ], [ %i.bc, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bm = phi i64 [ %i.bh, %bb.j ], [ %i.az, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !251
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 10340 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !253
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !253
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bs = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !244
  %i.bt = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !244
  tail call void %i.bs(ptr noundef %i.as, ptr noundef %i.bt) #35, !inline_history !1184
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.n, ptr %i.an, align 8, !tbaa !406
  store i32 %i.i, ptr %i.b, align 4, !tbaa !405
  %.pre3 = load i32, ptr %0, align 8, !tbaa !404
  br label %_ZN8ImVectorI13ImGuiColorModE7reserveEi.exit

_ZN8ImVectorI13ImGuiColorModE7reserveEi.exit:     ; preds = %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge, %bb.k
  %i.bu = phi i32 [ %i.a, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.k ]
  %i.bv = phi ptr [ %.pre, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge ], [ %i.n, %bb.k ]
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [20 x i8], ptr %i.bv, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.by = load i32, ptr %0, align 8, !tbaa !404
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %0, align 8, !tbaa !404
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImGuiColorMod, align 4      ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %0, ptr %2, align 4, !tbaa !401
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !402
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7912
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7908
  %i.h = load i32, ptr %i.g, align 4, !tbaa !403
  %.not = icmp eq i32 %i.h, %0
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@_ZL24InitOrLoadWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings:bb.a
  store i8 2, ptr %i.au, align 1, !tbaa !646
  br label %.thread37

.thread37:                                        ; preds = %bb.g, %.thread36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !647
  %i.ax = icmp sgt i8 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !646
  %i.ba = icmp sgt i8 %i.az, 0
  %i.bb = zext i1 %i.ba to i8
  br label %bb.i

bb.i:                                             ; preds = %.thread37, %bb.h, %bb.f
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %.thread37 ], [ %i.bb, %bb.h ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 230
  store i8 %.sink, ptr %i.bc, align 2, !tbaa !930
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui22ScaleWindowsInViewportEP14ImGuiViewportPf(ptr nofree noundef readnone captures(address) %0, float noundef %1) local_unnamed_addr #32 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5088
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !500  ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !502  ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 3
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.012 = phi ptr [ %i.ar, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.j = load ptr, ptr %.012, align 8, !tbaa !595 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !918  ; 2 uses
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.p = load <2 x float>, ptr %i.n, align 8      ; 2 uses
  %i.q = load <2 x float>, ptr %i.o, align 8, !tbaa !86
  %i.r = fsub <2 x float> %i.q, %i.p
  %i.s = fmul <2 x float> %i.i, %i.r
  %i.t = fadd <2 x float> %i.p, %i.s              ; 3 uses
  %i.u = fcmp ult <2 x float> %i.t, zeroinitializer
  %i.v = fptosi <2 x float> %i.t to <2 x i32>     ; 2 uses
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fcmp une <2 x float> %i.t, %i.w
  %i.y = and <2 x i1> %i.u, %i.x
  %i.z = sext <2 x i1> %i.y to <2 x i32>
  %i.aa = add nsw <2 x i32> %i.z, %i.v
  %i.ab = sitofp <2 x i32> %i.aa to <2 x float>
  store <2 x float> %i.ab, ptr %i.o, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !86
  %i.ae = fmul <2 x float> %i.i, %i.ad
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  store <2 x float> %i.ag, ptr %i.ac, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ah, align 8, !tbaa !86
  %i.aj = fmul <2 x float> %i.i, %i.ai
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  store <2 x float> %i.al, ptr %i.ah, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.an = load <2 x float>, ptr %i.am, align 8, !tbaa !86
  %i.ao = fmul <2 x float> %i.i, %i.an
  %i.ap = fptosi <2 x float> %i.ao to <2 x i32>
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>
  store <2 x float> %i.aq, ptr %i.am, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.ImRect, align 8             ; 6 uses
  %4 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !86
  %i.h = load <2 x float>, ptr %2, align 4, !tbaa !86 ; 2 uses
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !86
  %i.k = fdiv <2 x float> %i.i, %i.j              ; 5 uses
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !86
  %i.m = fmul <2 x float> %i.k, %i.l
  %i.n = fsub <2 x float> %i.h, %i.m              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3492
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.s = load float, ptr %i.r, align 4, !tbaa !399
  %i.t = load <4 x float>, ptr %i.q, align 4, !tbaa !86
  %.scalar = fmul float %i.s, 4.000000e-01
  %i.u = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar, i64 3
  %i.v = fmul <4 x float> %i.t, %i.u              ; 3 uses
  %i.w = fcmp olt <4 x float> %i.v, zeroinitializer
  %i.x = fcmp ogt <4 x float> %i.v, splat (float 1.000000e+00)
  %i.y = select <4 x i1> %i.x, <4 x float> splat (float 1.000000e+00), <4 x float> %i.v
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aa = select <4 x i1> %i.w, <4 x float> splat (float 5.000000e-01), <4 x float> %i.z
  %i.ab = fptosi <4 x float> %i.aa to <4 x i32>
  %i.ac = shl <4 x i32> %i.ab, <i32 0, i32 8, i32 16, i32 24>
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ac)
  tail call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef %i.ad, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 5088
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5096
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !500 ; 2 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !502 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx = shl nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %.idx
  %.not194 = icmp eq i32 %i.ah, 0
  br i1 %.not194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4384
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.ap = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3492
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 3148
  %i.as = load float, ptr %i.ar, align 4, !tbaa !399
  %i.at = load <4 x float>, ptr %i.aq, align 4, !tbaa !86
  %i.au = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.as, i64 3
  %i.av = fmul <4 x float> %i.at, %i.au           ; 3 uses
  %i.aw = fcmp olt <4 x float> %i.av, zeroinitializer
  %i.ax = fcmp ogt <4 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = select <4 x i1> %i.ax, <4 x float> splat (float 1.000000e+00), <4 x float> %i.av
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ba = select <4 x i1> %i.aw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.az
  %i.bb = fptosi <4 x float> %i.ba to <4 x i32>
  %i.bc = shl <4 x i32> %i.bb, <i32 0, i32 8, i32 16, i32 24>
  %i.bd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef %i.bd, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  %i.be = load i32, ptr %1, align 8, !tbaa !467
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 10268
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1053
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.0195 = phi ptr [ %i.ag, %.lr.ph ], [ %i.hb, %bb.h ] ; 2 uses
  %i.bi = load ptr, ptr %.0195, align 8, !tbaa !595 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 205
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !414, !range !120, !noundef !254
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !608
  %i.bo = and i32 %i.bn, 16777216
  %.not47 = icmp eq i32 %i.bo, 0
  br i1 %.not47, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bs = load float, ptr %i.br, align 8, !tbaa !737
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !736
  %i.bv = load <2 x float>, ptr %i.bp, align 8, !tbaa !86 ; 6 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %5 = insertelement <2 x float> poison, float %i.bs, i64 0
  %6 = insertelement <2 x float> %5, float %i.bu, i64 1
  %7 = fadd <2 x float> %i.bv, %6                 ; 2 uses
  %i.bx = fmul <2 x float> %i.k, %i.bv
  %i.by = fadd <2 x float> %i.n, %i.bx
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>   ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %7, %i.bv
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cb = load <2 x float>, ptr %2, align 4       ; 8 uses
  %i.cc = load <2 x float>, ptr %i.d, align 4     ; 8 uses
  %i.cd = fcmp ogt <2 x float> %i.cb, %i.ca
  %i.ce = fcmp olt <2 x float> %i.cc, %i.ca
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cc, <2 x float> %i.ca
  %i.cg = select <2 x i1> %i.cd, <2 x float> %i.cb, <2 x float> %i.cf
  store <2 x float> %i.cg, ptr %3, align 8, !tbaa !86
  %i.ch = load <2 x float>, ptr %i.bq, align 8, !tbaa !86
  %i.ci = fadd <2 x float> %i.bv, %i.ch
  %i.cj = fmul <2 x float> %i.k, %i.ci
  %i.ck = fadd <2 x float> %i.n, %i.cj
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>   ; 3 uses
  %i.cn = fcmp ogt <2 x float> %i.cb, %i.cm
  %i.co = fcmp olt <2 x float> %i.cc, %i.cm
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.cc, <2 x float> %i.cm
  %i.cq = select <2 x i1> %i.cn, <2 x float> %i.cb, <2 x float> %i.cp
  store <2 x float> %i.cq, ptr %i.ak, align 8, !tbaa !86
  %i.cr = fmul <2 x float> %i.k, %i.bv
  %i.cs = fadd <2 x float> %i.n, %i.cr
  %i.ct = fptosi <2 x float> %i.cs to <2 x i32>
  %i.cu = sitofp <2 x i32> %i.ct to <2 x float>   ; 3 uses
  %i.cv = fcmp ogt <2 x float> %i.cb, %i.cu
  %i.cw = fcmp olt <2 x float> %i.cc, %i.cu
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cc, <2 x float> %i.cu
  %i.cy = select <2 x i1> %i.cv, <2 x float> %i.cb, <2 x float> %i.cx
  store <2 x float> %i.cy, ptr %4, align 8, !tbaa !86
  %i.cz = call float @llvm.fmuladd.f32(float %8, float 3.000000e+00, float %i.bw)
  %i.da = insertelement <2 x float> %7, float %i.cz, i64 1
  %i.db = fmul <2 x float> %i.k, %i.da
  %i.dc = fadd <2 x float> %i.n, %i.db
  %i.dd = fptosi <2 x float> %i.dc to <2 x i32>
  %i.de = sitofp <2 x i32> %i.dd to <2 x float>   ; 3 uses
  %i.df = fcmp ogt <2 x float> %i.cb, %i.de
  %i.dg = fcmp olt <2 x float> %i.cc, %i.de
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.cc, <2 x float> %i.de
  %i.di = select <2 x i1> %i.df, <2 x float> %i.cb, <2 x float> %i.dh
  store <2 x float> %i.di, ptr %i.al, align 8, !tbaa !86
  %i.dj = load ptr, ptr %i.am, align 8, !tbaa !388 ; 2 uses
  %.not48 = icmp eq ptr %i.dj, null
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bi, i64 976
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !893
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 976
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !893
  %i.do = icmp eq ptr %i.dl, %i.dn
  %i.dp = select i1 %i.do, i64 11, i64 10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dq = phi i64 [ 10, %bb.d ], [ %i.dp, %bb.e ]
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ds = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 3444
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 3148
  %i.dv = load float, ptr %i.du, align 4, !tbaa !399
  %i.dw = load <4 x float>, ptr %i.dt, align 4, !tbaa !86
  %i.dx = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dv, i64 3
  %i.dy = fmul <4 x float> %i.dw, %i.dx           ; 3 uses
  %i.dz = fcmp olt <4 x float> %i.dy, zeroinitializer
  %i.ea = fcmp ogt <4 x float> %i.dy, splat (float 1.000000e+00)
  %i.eb = select <4 x i1> %i.ea, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dy
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ed = select <4 x i1> %i.dz, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ec
  %i.ee = fptosi <4 x float> %i.ed to <4 x i32>
  %i.ef = shl <4 x i32> %i.ee, <i32 0, i32 8, i32 16, i32 24>
  %i.eg = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ef)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.dr, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ak, i32 noundef %i.eg, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ei = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 3412
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.dq
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 3148
  %i.em = load float, ptr %i.el, align 4, !tbaa !399
  %i.en = load <4 x float>, ptr %i.ek, align 4, !tbaa !86
  %i.eo = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.em, i64 3
  %i.ep = fmul <4 x float> %i.en, %i.eo           ; 3 uses
  %i.eq = fcmp olt <4 x float> %i.ep, zeroinitializer
  %i.er = fcmp ogt <4 x float> %i.ep, splat (float 1.000000e+00)
  %i.es = select <4 x i1> %i.er, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ep
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.eu = select <4 x i1> %i.eq, <4 x float> splat (float 5.000000e-01), <4 x float> %i.et
  %i.ev = fptosi <4 x float> %i.eu to <4 x i32>
  %i.ew = shl <4 x i32> %i.ev, <i32 0, i32 8, i32 16, i32 24>
  %i.ex = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ew)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.al, i32 noundef %i.ex, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ez = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 3492
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 3148
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !399
  %i.fd = load <4 x float>, ptr %i.fa, align 4, !tbaa !86
  %i.fe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fc, i64 3
  %i.ff = fmul <4 x float> %i.fd, %i.fe           ; 3 uses
  %i.fg = fcmp olt <4 x float> %i.ff, zeroinitializer
  %i.fh = fcmp ogt <4 x float> %i.ff, splat (float 1.000000e+00)
  %i.fi = select <4 x i1> %i.fh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ff
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fk = select <4 x i1> %i.fg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fj
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>
  %i.fm = shl <4 x i32> %i.fl, <i32 0, i32 8, i32 16, i32 24>
  %i.fn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fm)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.ey, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ak, i32 noundef %i.fn, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  %i.fo = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.fp = load ptr, ptr %i.an, align 8, !tbaa !425
  %i.fq = load float, ptr %i.ao, align 8, !tbaa !426
  %i.fr = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 3412
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.fr, i64 3416
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 3148
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !399
  %i.fv = load <4 x float>, ptr %i.fs, align 4, !tbaa !86 ; 2 uses
  %.sroa.4.0.copyload.i140 = load float, ptr %.sroa.4.0..sroa_idx.i139, align 4, !tbaa !86
  %i.fw = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fu, i64 3
  %i.fx = fmul <4 x float> %i.fv, %i.fw           ; 3 uses
  %i.fy = fcmp ogt <4 x float> %i.fx, splat (float 1.000000e+00)
  %i.fz = select <4 x i1> %i.fy, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fx
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gb = shufflevector <4 x float> %i.fv, <4 x float> %i.fx, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %i.gc = insertelement <4 x float> %i.gb, float %.sroa.4.0.copyload.i140, i64 1
  %i.gd = fcmp olt <4 x float> %i.gc, zeroinitializer
  %i.ge = select <4 x i1> %i.gd, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ga ; 4 uses
  %i.gf = extractelement <4 x float> %i.ge, i64 0
  %i.gg = fptosi float %i.gf to i32
  %i.gh = extractelement <4 x float> %i.ge, i64 1
  %i.gi = fptosi float %i.gh to i32
  %i.gj = shl i32 %i.gi, 8
  %i.gk = or i32 %i.gj, %i.gg
  %i.gl = extractelement <4 x float> %i.ge, i64 2
  %i.gm = fptosi float %i.gl to i32
  %i.gn = shl i32 %i.gm, 16
  %i.go = or i32 %i.gk, %i.gn
  %i.gp = extractelement <4 x float> %i.ge, i64 3
  %i.gq = fptosi float %i.gp to i32
  %i.gr = shl i32 %i.gq, 24
  %i.gs = or i32 %i.go, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !333 ; 5 uses
  %.not193 = icmp eq ptr %i.gu, inttoptr (i64 -1 to ptr)
  br i1 %.not193, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.gv = ptrtoaddr ptr %i.gu to i64
  %i.gw = xor i64 %i.gv, -1
  %scevgep.i = getelementptr i8, ptr %i.gu, i64 %i.gw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ha, %.critedge2.i ], [ %i.gu, %.lr.ph.preheader.i ] ; 5 uses
  %i.gx = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.gx, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.gz, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.g, %.lr.ph.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ha, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.g, %.critedge2.i, %bb.f
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.f ], [ %.015.i, %bb.g ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.fo, ptr noundef %i.fp, float noundef %i.fq, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.gs, ptr noundef %i.gu, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %.0195, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hb, %i.aj
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %._crit_edge
  %i.hc = load ptr, ptr %i.o, align 8, !tbaa !424
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.hc, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef -16711681, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.c = load float, ptr %i.b, align 8, !tbaa !426
  %i.d = fdiv float %i.c, 1.300000e+01            ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.g = fmul <2 x float> %i.f, <float 5.000000e+00, float 3.000000e+00> ; 2 uses
  %i.h = fmul float %i.d, 2.000000e+00            ; 2 uses
  %i.i = fmul <2 x float> %i.f, <float 7.000000e+00, float 4.000000e+00>
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.l, align 8, !tbaa !86 ; 5 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.m = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.n = fmul <2 x float> %i.f, <float 9.000000e+00, float 3.500000e+01> ; 3 uses
  %i.o = fadd <2 x float> %i.n, <float -0.000000e+00, float -1.000000e+00> ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 3.000000e+00, float %i.m)
  %i.r = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.q, i64 0
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> <float 2.000000e+00, float 3.000000e+00>, <2 x float> %i.r)
  %i.t = fadd <2 x float> %i.s, splat (float 1.000000e+01) ; 2 uses
  store <2 x float> %i.t, ptr %2, align 8, !tbaa !86
  %i.u = fadd float %i.m, 5.000000e+00
  %i.v = fsub float %i.u, %i.p
end_hunk_1
