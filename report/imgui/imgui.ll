Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN16ImGuiListClipper4StepEv:bb.a

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo, %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread
  br i1 %i.e, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pe = load float, ptr %i.c, align 8, !tbaa !317 ; 2 uses
  %i.pf = fcmp ogt float %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 10404
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !247
  %i.pi = and i32 %i.ph, 32
  %.not14 = icmp eq i32 %i.pi, 0
  br i1 %.not14, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pj = fpext float %i.pe to double
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.8, double noundef %i.pj)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs, %bb.br
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 10404
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !247
  %i.pm = and i32 %i.pl, 32
  %.not16 = icmp eq i32 %i.pm, 0                  ; 2 uses
  br i1 %.0.shrunk, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  br i1 %.not16, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pn = load i32, ptr %0, align 8, !tbaa !315
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !358
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.pn, i32 noundef %i.pp)
  br label %bb.cb

bb.by:                                            ; preds = %bb.bv
  br i1 %.not16, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.10)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @_ZN16ImGuiListClipper3EndEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bw, %bb.bx, %bb.ca
  ret i1 %.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !378
  %i.g = insertelement <2 x float> %i.b, float %i.f, i64 1
  %i.h = insertelement <2 x float> poison, float %i.d, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fsub <2 x float> %i.g, %i.i
  %i.k = insertelement <2 x float> poison, float %2, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x float> %i.j, %i.l              ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = fptosi float %i.n to i32
  %i.p = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 0) ; 2 uses
  store i32 %i.p, ptr %3, align 4, !tbaa !237
  %i.q = extractelement <2 x float> %i.m, i64 1
  %i.r = tail call float @llvm.ceil.f32(float %i.q)
  %i.s = fptosi float %i.r to i32
  %i.t = tail call noundef i32 @llvm.smax.i32(i32 %i.s, i32 %i.p)
  store i32 %i.t, ptr %4, align 4, !tbaa !237
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3208
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.f = load float, ptr %i.e, align 4, !tbaa !383
  %i.g = load <4 x float>, ptr %i.d, align 4, !tbaa !75
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
define noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.c = load float, ptr %i.b, align 4, !tbaa !383
  %i.d = load <4 x float>, ptr %0, align 4, !tbaa !75
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
define noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef %0) local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.c = load float, ptr %i.b, align 4, !tbaa !383
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

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14PushStyleColorEij(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %2 = alloca %struct.ImGuiColorMod, align 4      ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %0, ptr %2, align 4, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !386
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8056
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8052
  %i.h = load i32, ptr %i.g, align 4, !tbaa !387
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
  %3 = and i32 %i.q, 255
  %4 = uitofp nneg i32 %3 to float
  %5 = lshr i32 %1, 24
  %i.r = uitofp nneg i32 %5 to float
  %i.s = insertelement <2 x float> poison, float %4, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = fmul nnan <2 x float> %i.t, splat (float f0x3B808081)
  store <2 x float> %i.p, ptr %i.e, align 4, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x float> %i.u, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !388    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !389
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge

._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !390
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
  %i.l = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.m = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.n = tail call noundef ptr %i.l(i64 noundef %i.k, ptr noundef %i.m), !inline_history !1193 ; 3 uses
  %i.o = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10596 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10608 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 10604 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !229  ; 2 uses
  %i.v = sext i16 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !231
  %.not.i.i.i = icmp eq i32 %i.x, %i.r
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !232
  %i.y = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = sext i16 %i.u to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = srem i32 %i.aa, 6                       ; 2 uses
  %i.ac = trunc nsw i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 4, !tbaa !229
  %i.ad = sext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad ; 3 uses
  store i32 %i.r, ptr %i.ae, align 4, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 0, ptr %i.af, align 2, !tbaa !233
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 0, ptr %i.ag, align 4, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ah = phi i16 [ 1, %bb.e ], [ %i.y, %._crit_edge.i ]
  %i.ai = phi i64 [ %i.ad, %bb.e ], [ %i.v, %._crit_edge.i ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.ah, ptr %i.ak, align 4, !tbaa !232
  %i.al = load i32, ptr %i.p, align 4, !tbaa !234
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.p, align 4, !tbaa !234
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.f, %_ZNK8ImVectorI13ImGuiColorModE14_grow_capacityEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !390 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.ap = load i32, ptr %0, align 8, !tbaa !388
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.ao, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !390 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.as, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.at, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !228 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 10608 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 10604 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !229 ; 2 uses
  %i.az = sext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !231
  %.not.i.i8.i = icmp eq i32 %i.bb, %i.av
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !233
  %i.bc = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = sext i16 %i.ay to i32
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = srem i32 %i.be, 6                       ; 2 uses
  %i.bg = trunc nsw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.ax, align 4, !tbaa !229
  %i.bh = sext i32 %i.bf to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bh ; 3 uses
  store i32 %i.av, ptr %i.bi, align 4, !tbaa !231
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 0, ptr %i.bj, align 2, !tbaa !233
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 0, ptr %i.bk, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bl = phi i16 [ 1, %bb.j ], [ %i.bc, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bm = phi i64 [ %i.bh, %bb.j ], [ %i.az, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !233
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 10600 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !235
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bs = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.bt = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  tail call void %i.bs(ptr noundef %i.as, ptr noundef %i.bt), !inline_history !1194
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.n, ptr %i.an, align 8, !tbaa !390
  store i32 %i.i, ptr %i.b, align 4, !tbaa !389
  %.pre3 = load i32, ptr %0, align 8, !tbaa !388
  br label %_ZN8ImVectorI13ImGuiColorModE7reserveEi.exit

_ZN8ImVectorI13ImGuiColorModE7reserveEi.exit:     ; preds = %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge, %bb.k
  %i.bu = phi i32 [ %i.a, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.k ]
  %i.bv = phi ptr [ %.pre, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge ], [ %i.n, %bb.k ]
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [20 x i8], ptr %i.bv, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.by = load i32, ptr %0, align 8, !tbaa !388
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %0, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImGuiColorMod, align 4      ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %0, ptr %2, align 4, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !386
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8056
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8052
  %i.h = load i32, ptr %i.g, align 4, !tbaa !387
  %.not = icmp eq i32 %i.h, %0
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
