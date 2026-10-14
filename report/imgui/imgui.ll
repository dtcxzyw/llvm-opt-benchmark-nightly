Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN16ImGuiListClipper4StepEv:bb.a
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !346
  %i.mr = add nsw i32 %i.mq, %i.mj
  store i32 %i.mr, ptr %i.mp, align 8, !tbaa !346
  %i.ms = getelementptr inbounds nuw i8, ptr %i.md, i64 152 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !347
  %i.mu = add nsw i32 %i.mt, %i.mj
  store i32 %i.mu, ptr %i.ms, align 8, !tbaa !347
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.mv = load float, ptr %i.ll, align 4, !tbaa !318
  %i.mw = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  store float %i.mv, ptr %i.mw, align 8, !tbaa !348
  %.pre24 = load i32, ptr %0, align 8, !tbaa !315
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre25 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !358
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit

._crit_edge.loopexit:                             ; preds = %bb.at
  store i32 %i.ku, ptr %0, align 8, !tbaa !315
  store i32 %i.kx, ptr %i.kn, align 4, !tbaa !358
  store i32 %i.ky, ptr %i.aa, align 4, !tbaa !354
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL34ImGuiListClipper_SortAndFuseRangesR8ImVectorI21ImGuiListClipperRangeEi.exit.i
  %i.mx = load i32, ptr %i.p, align 4, !tbaa !314 ; 2 uses
  %.not214.i = icmp eq i32 %i.mx, 2147483647
  br i1 %.not214.i, label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mz = load <2 x double>, ptr %i.my, align 8, !tbaa !316
  %i.na = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mz)
  %i.nb = sitofp i32 %i.mx to double
  %i.nc = load float, ptr %i.c, align 8, !tbaa !317 ; 4 uses
  %i.nd = fpext float %i.nc to double
  %i.ne = call double @llvm.fmuladd.f64(double %i.nb, double %i.nd, double %i.na)
  %i.nf = fptrunc double %i.ne to float           ; 5 uses
  %i.ng = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 5312
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !289 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 284 ; 3 uses
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !318
  %i.nl = fsub float %i.nf, %i.nk
  store float %i.nf, ptr %i.nj, align 4, !tbaa !318
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 308 ; 2 uses
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !319 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 3304
  %i.np = load float, ptr %i.no, align 8, !tbaa !320 ; 2 uses
  %i.nq = fsub float %i.nf, %i.np                 ; 2 uses
  %i.nr = fcmp oge float %i.nn, %i.nq
  %i.ns = select i1 %i.nr, float %i.nn, float %i.nq
  store float %i.ns, ptr %i.nm, align 4, !tbaa !319
  %i.nt = fsub float %i.nf, %i.nc
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ni, i64 292
  store float %i.nt, ptr %i.nu, align 4, !tbaa !321
  %i.nv = fsub float %i.nc, %i.np
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ni, i64 332
  store float %i.nv, ptr %i.nw, align 4, !tbaa !322
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ni, i64 456
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !323 ; 2 uses
  %.not.i.i271.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i271.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 28
  store float %i.nf, ptr %i.nz, align 4, !tbaa !327
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ng, i64 8984
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !328 ; 6 uses
  %.not34.i.i272.i = icmp eq ptr %i.ob, null
  br i1 %.not34.i.i272.i, label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 570
  %i.od = load i8, ptr %i.oc, align 2, !tbaa !344, !range !100, !noundef !236
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.ob)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.of = fdiv float %i.nl, %i.nc
  %i.og = fadd float %i.of, 5.000000e-01
  %i.oh = fptosi float %i.og to i32               ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !345
  %i.ol = and i32 %i.ok, 1
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.on = getelementptr inbounds nuw i8, ptr %i.ob, i64 112 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !346
  %i.op = add nsw i32 %i.oo, %i.oh
  store i32 %i.op, ptr %i.on, align 8, !tbaa !346
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ob, i64 152 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !347
  %i.os = add nsw i32 %i.or, %i.oh
  store i32 %i.os, ptr %i.oq, align 8, !tbaa !347
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.ot = load float, ptr %i.nj, align 4, !tbaa !318
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ob, i64 128
  store float %i.ot, ptr %i.ou, align 8, !tbaa !348
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread

_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit: ; preds = %bb.be, %bb.ay, %bb.av, %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i, %bb.k, %bb.j
  %i.ov = phi i32 [ %.pre25, %bb.be ], [ %i.kx, %bb.ay ], [ %i.kx, %bb.av ], [ %i.bj, %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ]
  %i.ow = phi i32 [ %.pre24, %bb.be ], [ %i.ku, %bb.ay ], [ %i.ku, %bb.av ], [ %i.bf, %_ZN8ImVectorI21ImGuiListClipperRangeE10push_frontERKS0_.exit.i ], [ %i.ah, %bb.k ], [ %i.ah, %bb.j ]
  %.not = icmp slt i32 %i.ow, %i.ov
  br label %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread

_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread: ; preds = %bb.bn, %bb.bh, %bb.u, %._crit_edge, %bb.s, %_ZL26GetSkipItemForListClippingv.exit.i, %bb.d, %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit
  %.0.shrunk = phi i1 [ %.not, %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit ], [ false, %bb.d ], [ false, %_ZL26GetSkipItemForListClippingv.exit.i ], [ false, %bb.s ], [ false, %._crit_edge ], [ false, %bb.u ], [ false, %bb.bh ], [ false, %bb.bn ] ; 2 uses
  %i.ox = load ptr, ptr %i.j, align 8, !tbaa !328 ; 2 uses
  %.not12 = icmp eq ptr %i.ox, null
  br i1 %.not12, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_ZL29ImGuiListClipper_StepInternalP16ImGuiListClipper.exit.thread
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 584
  %i.oz = load i8, ptr %i.oy, align 8, !tbaa !1179, !range !100, !noundef !236
  %i.pa = icmp eq i8 %i.oz, 0
  br i1 %i.pa, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 10404
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !247
  %i.pd = and i32 %i.pc, 32
  %.not13 = icmp eq i32 %i.pd, 0
  br i1 %.not13, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.7)
  br label %bb.br

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
  %5 = load <2 x float>, ptr %0, align 4
  %i.a = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !378
  %i.f = insertelement <2 x float> %i.a, float %i.e, i64 1
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fsub <2 x float> %i.f, %i.h
  %i.j = insertelement <2 x float> poison, float %2, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x float> %i.i, %i.k              ; 2 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = fptosi float %i.m to i32
  %i.o = tail call noundef i32 @llvm.smax.i32(i32 %i.n, i32 0) ; 2 uses
  store i32 %i.o, ptr %3, align 4, !tbaa !237
  %i.p = extractelement <2 x float> %i.l, i64 1
  %i.q = tail call float @llvm.ceil.f32(float %i.p)
  %i.r = fptosi float %i.q to i32
  %i.s = tail call noundef i32 @llvm.smax.i32(i32 %i.r, i32 %i.o)
  store i32 %i.s, ptr %4, align 4, !tbaa !237
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
  %i.r = and i32 %i.q, 255
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = lshr i32 %1, 24
  %i.u = uitofp nneg i32 %i.t to float
  %i.v = insertelement <2 x float> poison, float %i.s, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = fmul nnan <2 x float> %i.w, splat (float f0x3B808081)
  store <2 x float> %i.p, ptr %i.e, align 4, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x float> %i.x, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !75
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
end_hunk_0
begin_hunk_1_@_ZN8ImVectorIiE6resizeEi:bb.a
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.l, ptr %i.al, align 8, !tbaa !285
  store i32 %i.g, ptr %i.a, align 4, !tbaa !284
  br label %_ZN8ImVectorIiE7reserveEi.exit

_ZN8ImVectorIiE7reserveEi.exit:                   ; preds = %bb.k, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !283
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorI14ImGuiGroupDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !647  ; 4 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorI14ImGuiGroupDataE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sdiv i32 %i.b, 2
  %i.e = add nsw i32 %i.d, %i.b
  br label %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit

_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.e, %bb.c ], [ 8, %bb.b ]
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %1) ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 60
  %i.j = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.k = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.l = tail call noundef ptr %i.j(i64 noundef %i.i, ptr noundef %i.k), !inline_history !1425 ; 2 uses
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10596 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !228  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 10604 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !229  ; 2 uses
  %i.t = sext i16 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !231
  %.not.i.i.i = icmp eq i32 %i.v, %i.p
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !232
  %i.w = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sext i16 %i.s to i32
  %i.y = add nsw i32 %i.x, 1
  %i.z = srem i32 %i.y, 6                         ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i16
  store i16 %i.aa, ptr %i.r, align 4, !tbaa !229
  %i.ab = sext i32 %i.z to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ab ; 3 uses
  store i32 %i.p, ptr %i.ac, align 4, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  store i16 0, ptr %i.ad, align 2, !tbaa !233
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i16 0, ptr %i.ae, align 4, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.af = phi i16 [ 1, %bb.e ], [ %i.w, %._crit_edge.i ]
  %i.ag = phi i64 [ %i.ab, %bb.e ], [ %i.t, %._crit_edge.i ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 %i.af, ptr %i.ai, align 4, !tbaa !232
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !234
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !234
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.f, %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !599 ; 2 uses
  %.not6.i = icmp eq ptr %i.am, null
  br i1 %.not6.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.an = load i32, ptr %0, align 8, !tbaa !648
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !599 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aq, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.ar, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !228 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 10608 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 10604 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !229 ; 2 uses
  %i.ax = sext i16 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !231
  %.not.i.i8.i = icmp eq i32 %i.az, %i.at
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !233
  %i.ba = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = sext i16 %i.aw to i32
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = srem i32 %i.bc, 6                       ; 2 uses
  %i.be = trunc nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.av, align 4, !tbaa !229
  %i.bf = sext i32 %i.bd to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bf ; 3 uses
  store i32 %i.at, ptr %i.bg, align 4, !tbaa !231
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i16 0, ptr %i.bh, align 2, !tbaa !233
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 0, ptr %i.bi, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bj = phi i16 [ 1, %bb.j ], [ %i.ba, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bk = phi i64 [ %i.bf, %bb.j ], [ %i.ax, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  store i16 %i.bj, ptr %i.bm, align 2, !tbaa !233
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 10600 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !235
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bq = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.br = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  tail call void %i.bq(ptr noundef %i.aq, ptr noundef %i.br), !inline_history !1426
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.l, ptr %i.al, align 8, !tbaa !599
  store i32 %i.g, ptr %i.a, align 4, !tbaa !647
  br label %_ZN8ImVectorI14ImGuiGroupDataE7reserveEi.exit

_ZN8ImVectorI14ImGuiGroupDataE7reserveEi.exit:    ; preds = %bb.k, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !648
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7928 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !852
  %i.d = or i32 %i.c, 2
  store i32 %i.d, ptr %i.b, align 8, !tbaa !852
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7960
  %i.f = load i64, ptr %0, align 4, !tbaa !75
  store i64 %i.f, ptr %i.e, align 8, !tbaa !75
  %i.g = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7936
  store i32 %i.g, ptr %i.h, align 8, !tbaa !867
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 7 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 8 uses
  %7 = alloca %struct.ImRect, align 4             ; 7 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImRect, align 8            ; 5 uses
  %16 = alloca %struct.ImRect, align 8            ; 7 uses
  %17 = alloca %struct.ImVec2, align 8            ; 8 uses
  %18 = alloca %struct.ImVec2, align 8            ; 8 uses
  %19 = alloca %struct.ImVec2, align 8            ; 9 uses
  %20 = alloca %struct.ImVec2, align 8            ; 7 uses
  %21 = alloca %struct.ImVec2, align 8            ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %22 = alloca %struct.ImRect, align 8            ; 9 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %23 = alloca %struct.ImRect, align 8            ; 8 uses
  %24 = alloca %struct.ImVec2, align 8            ; 6 uses
  %25 = alloca %struct.ImGuiFocusScopeData, align 4 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %struct.ImGuiStoragePair, align 8  ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 50 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %27 = alloca %struct.ImRect, align 8            ; 5 uses
  %28 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.i = alloca [4 x i32], align 16               ; 7 uses
  %29 = alloca %struct.ImRect, align 8            ; 6 uses
  %30 = alloca %struct.ImRect, align 8            ; 12 uses
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 89 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.k = load i8, ptr %0, align 1, !tbaa !82      ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.k, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.f
  %i.l = phi i8 [ %i.ac, %bb.f ], [ %i.k, %bb.a ] ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.n = zext i8 %i.l to i32
  %i.o = icmp eq i8 %i.l, 35
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = load i8, ptr %i.m, align 1, !tbaa !82
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !82
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !6

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.v = lshr i32 %.23351.i.i, 8
  %i.w = and i32 %.23351.i.i, 255
  %i.x = xor i32 %i.w, %i.n
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !237
  %i.ab = xor i32 %i.aa, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.u, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.ac = load i8, ptr %.3.i.i, align 1, !tbaa !82 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.ad = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.a
  %.4.i.i = phi i32 [ 0, %bb.a ], [ %i.ad, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 5280 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 5288 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !262 ; 3 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !261 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.ai, 4
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ai, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ag, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ak = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !260
  %i.an = icmp ult i32 %i.am, %.4.i.i             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.neg.i.i.i.i = xor i64 %i.ak, -1
  %i.ap = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.an, ptr %i.ao, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.an, i64 %i.ap, i64 %i.ak ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.ag, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aq = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aj
  br i1 %i.aq, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ar = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !260
  %.not.i.i.i = icmp eq i32 %i.ar, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit.thread:      ; preds = %bb.g, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  store ptr null, ptr %i.g, align 8, !tbaa !601
  br label %bb.h

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 3 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !601
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %bb.v

bb.h:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, %_ZN5ImGui16FindWindowByNameEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.av = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.aw = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.ax = tail call noundef ptr %i.av(i64 noundef 1080, ptr noundef %i.aw), !inline_history !1427 ; 8 uses
  %i.ay = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10596 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !228 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 10608 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 10604 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !229 ; 2 uses
  %i.bf = sext i16 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !231
  %.not.i.i.i554 = icmp eq i32 %i.bh, %i.bb
  br i1 %.not.i.i.i554, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !232
  %i.bi = add i16 %.pre.i, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = sext i16 %i.be to i32
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = srem i32 %i.bk, 6                       ; 2 uses
  %i.bm = trunc nsw i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bd, align 4, !tbaa !229
  %i.bn = sext i32 %i.bl to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bn ; 3 uses
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !231
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  store i16 0, ptr %i.bp, align 2, !tbaa !233
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i16 0, ptr %i.bq, align 4, !tbaa !232
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.br = phi i16 [ 1, %bb.j ], [ %i.bi, %._crit_edge.i ]
  %i.bs = phi i64 [ %i.bn, %bb.j ], [ %i.bf, %._crit_edge.i ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i16 %i.br, ptr %i.bu, align 4, !tbaa !232
  %i.bv = load i32, ptr %i.az, align 4, !tbaa !234
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.az, align 4, !tbaa !234
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.k, %bb.h
  tail call void @_ZN11ImGuiWindowC1EP12ImGuiContextPKc(ptr noundef nonnull align 8 dereferenceable(1077) %i.ax, ptr noundef nonnull %i.j, ptr noundef nonnull %0)
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !601
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 %2, ptr %i.bx, align 4, !tbaa !614
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !618 ; 3 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !262 ; 3 uses
  %i.cb = load i32, ptr %i.ae, align 8, !tbaa !261 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %.idx.i.i = shl nsw i64 %i.cc, 4
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i
  %.not15.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not15.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5ImGui8MemAllocEm.exit.i, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cc, %_ZN5ImGui8MemAllocEm.exit.i ] ; 2 uses
  %.01316.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %i.ca, %_ZN5ImGui8MemAllocEm.exit.i ] ; 2 uses
  %i.ce = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !260
  %i.ch = icmp ult i32 %i.cg, %i.bz               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.neg.i.i.i = xor i64 %i.ce, -1
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bqj = load i32, ptr %i.bqi, align 4, !tbaa !614 ; 7 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 209
  store i8 0, ptr %i.bqk, align 1, !tbaa !927
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqf, i64 368 ; 2 uses
  store i32 1, ptr %i.bql, align 8, !tbaa !905
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqf, i64 96 ; 5 uses
  %i.bqn = load float, ptr %i.bqm, align 8, !tbaa !936 ; 7 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 100 ; 3 uses
  %i.bqp = load float, ptr %i.bqo, align 4, !tbaa !929 ; 4 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 207
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !613, !range !100, !noundef !236
  %i.bqs = trunc nuw i8 %i.bqr to i1
  br i1 %i.bqs, label %bb.le, label %bb.lh

bb.le:                                            ; preds = %bb.ld
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296 ; 3 uses
  %i.bqu = load float, ptr %i.bqt, align 4, !tbaa !1453
  store float %i.bqp, ptr %i.bqt, align 8, !tbaa !423
  br i1 %i.bqg, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8216
  %i.bqw = load i8, ptr %i.bqv, align 8, !tbaa !424, !range !100, !noundef !236
  %i.bqx = trunc nuw i8 %i.bqw to i1
  %i.bqy = select i1 %i.bqx, i64 11, i64 12
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.bqz = phi i64 [ 12, %bb.le ], [ %i.bqy, %bb.lf ]
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %i.brb = getelementptr inbounds nuw [16 x i8], ptr %i.bra, i64 %i.bqz
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !383
  %i.bre = load <4 x float>, ptr %i.brb, align 4, !tbaa !75
  %i.brf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.brd, i64 3
  %i.brg = fmul <4 x float> %i.bre, %i.brf        ; 3 uses
  %i.brh = fcmp olt <4 x float> %i.brg, zeroinitializer
  %i.bri = fcmp ogt <4 x float> %i.brg, splat (float 1.000000e+00)
  %i.brj = select <4 x i1> %i.bri, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brg
  %i.brk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.brl = select <4 x i1> %i.brh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.brk
  %i.brm = fptosi <4 x float> %i.brl to <4 x i32>
  %i.brn = shl <4 x i32> %i.brm, <i32 0, i32 8, i32 16, i32 24>
  %i.bro = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.brn)
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %30, align 8, !tbaa !75
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bkb, align 8, !tbaa !75
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %i.bro, i1 noundef zeroext true, float noundef %i.bqn)
  store float %i.bqu, ptr %i.bqt, align 8, !tbaa !423
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.lh:                                            ; preds = %bb.ld
  %i.brp = and i32 %i.bqj, 128
  %.not.i667 = icmp eq i32 %i.brp, 0
  br i1 %.not.i667, label %bb.li, label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.brq = and i32 %i.bqj, 100663296
  %.not.i.i674 = icmp eq i32 %i.brq, 0
  %i.brr = and i32 %i.bqj, 16777216
  %.not2.i.i = icmp eq i32 %i.brr, 0
  %..i.i675 = select i1 %.not2.i.i, i64 2, i64 3
  %.0.i.i = select i1 %.not.i.i674, i64 %..i.i675, i64 4
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %i.brt = getelementptr inbounds nuw [16 x i8], ptr %i.brs, i64 %.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i112.i = load float, ptr %i.brt, align 4, !tbaa !75
  %.sroa.4.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 4
  %.sroa.6.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 12
  %.sroa.6.0.copyload.i118.i = load float, ptr %.sroa.6.0..sroa_idx.i117.i, align 4, !tbaa !75
  %i.bru = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !383
  %i.brw = fmul float %.sroa.6.0.copyload.i118.i, %i.brv
  %i.brx = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i113.i, align 4, !tbaa !75 ; 3 uses
  %i.bry = fcmp olt <2 x float> %i.brx, zeroinitializer
  %i.brz = fcmp ogt <2 x float> %i.brx, splat (float 1.000000e+00)
  %i.bsa = select <2 x i1> %i.brz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.brx
  %i.bsb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsa, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsc = select <2 x i1> %i.bry, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsb
  %i.bsd = fptosi <2 x float> %i.bsc to <2 x i32>
  %i.bse = shl <2 x i32> %i.bsd, <i32 8, i32 16>  ; 2 uses
  %i.bsf = extractelement <2 x i32> %i.bse, i64 0
  %i.bsg = extractelement <2 x i32> %i.bse, i64 1
  %i.bsh = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i112.i, i64 0
  %i.bsi = insertelement <2 x float> %i.bsh, float %i.brw, i64 1 ; 3 uses
  %i.bsj = fcmp ogt <2 x float> %i.bsi, splat (float 1.000000e+00)
  %i.bsk = select <2 x i1> %i.bsj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bsi
  %i.bsl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsk, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsm = fcmp olt <2 x float> %i.bsi, zeroinitializer
  %i.bsn = select <2 x i1> %i.bsm, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsl ; 2 uses
  %i.bso = extractelement <2 x float> %i.bsn, i64 0
  %i.bsp = fptosi float %i.bso to i32
  %i.bsq = or i32 %i.bsf, %i.bsp
  %i.bsr = or i32 %i.bsq, %i.bsg                  ; 2 uses
  %i.bss = extractelement <2 x float> %i.bsn, i64 1
  %i.bst = fptosi float %i.bss to i32
  %i.bsu = shl i32 %i.bst, 24
  %i.bsv = or i32 %i.bsu, %i.bsr
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bqh, i64 7928
  %i.bsx = load i32, ptr %i.bsw, align 8, !tbaa !852
  %i.bsy = and i32 %i.bsx, 64
  %.not105.not.i = icmp eq i32 %i.bsy, 0
  br i1 %.not105.not.i, label %.critedge.i676, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8032
  %i.bta = load float, ptr %i.bsz, align 8, !tbaa !853 ; 3 uses
  %i.btb = and i32 %i.bsr, 16777215
  %i.btc = fcmp olt float %i.bta, 0.000000e+00
  %i.btd = fcmp ogt float %i.bta, 1.000000e+00
  %i.bte = select i1 %i.btd, float 1.000000e+00, float %i.bta
  %i.btf = call float @llvm.fmuladd.f32(float %i.bte, float 2.550000e+02, float 5.000000e-01)
  %i.btg = select i1 %i.btc, float 5.000000e-01, float %i.btf
  %i.bth = fptosi float %i.btg to i32
  %i.bti = shl i32 %i.bth, 24
  %i.btj = or disjoint i32 %i.bti, %i.btb
  br label %.critedge.i676

.critedge.i676:                                   ; preds = %bb.lj, %bb.li
  %.0103.i = phi i32 [ %i.btj, %bb.lj ], [ %i.bsv, %bb.li ] ; 2 uses
  %.not106.i = icmp ult i32 %.0103.i, 16777216
  br i1 %.not106.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %.critedge.i676
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.btm = load float, ptr %i.btl, align 8, !tbaa !724
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bto = load <2 x float>, ptr %i.btk, align 8, !tbaa !75 ; 2 uses
  %i.btp = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.btm, i64 1
  %i.btq = fadd <2 x float> %i.btp, %i.bto
  %i.btr = load <2 x float>, ptr %i.btn, align 8, !tbaa !75
  %i.bts = fadd <2 x float> %i.bto, %i.btr
  store <2 x float> %i.btq, ptr %15, align 8, !tbaa !75
  %i.btt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store <2 x float> %i.bts, ptr %i.btt, align 8, !tbaa !75
  %i.btu = and i32 %i.bqj, 1
  %.not107.i = icmp eq i32 %i.btu, 0
  %i.btv = select i1 %.not107.i, i32 192, i32 240
  %i.btw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !408
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.btx, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %i.btt, i32 noundef %.0103.i, float noundef %i.bqn, i32 noundef %i.btv)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.critedge.i676, %bb.lh
  %i.bty = and i32 %i.bqj, 1
  %.not108.i = icmp eq i32 %i.bty, 0              ; 2 uses
  br i1 %.not108.i, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.btz = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 3532
  %i.bub = select i1 %i.bqg, i64 11, i64 10
  %i.buc = getelementptr inbounds nuw [16 x i8], ptr %i.bua, i64 %i.bub
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btz, i64 3220
  %i.bue = load float, ptr %i.bud, align 4, !tbaa !383
  %i.buf = load <4 x float>, ptr %i.buc, align 4, !tbaa !75
  %i.bug = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bue, i64 3
  %i.buh = fmul <4 x float> %i.buf, %i.bug        ; 3 uses
  %i.bui = fcmp olt <4 x float> %i.buh, zeroinitializer
  %i.buj = fcmp ogt <4 x float> %i.buh, splat (float 1.000000e+00)
  %i.buk = select <4 x i1> %i.buj, <4 x float> splat (float 1.000000e+00), <4 x float> %i.buh
  %i.bul = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bum = select <4 x i1> %i.bui, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bul
  %i.bun = fptosi <4 x float> %i.bum to <4 x i32>
  %i.buo = shl <4 x i32> %i.bun, <i32 0, i32 8, i32 16, i32 24>
  %i.bup = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.buo)
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.bur = load ptr, ptr %i.buq, align 8, !tbaa !408
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bur, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(8) %i.bkb, i32 noundef %i.bup, float noundef %i.bqn, i32 noundef 48)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.bus = and i32 %i.bqj, 1024
  %.not109.i = icmp eq i32 %i.bus, 0
  br i1 %.not109.i, label %bb.ls, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.but = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.buv = load float, ptr %i.buu, align 8, !tbaa !724
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 56
  %i.bux = load float, ptr %i.buw, align 8, !tbaa !725
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bqf, i64 108
  %i.buz = load float, ptr %i.buy, align 4, !tbaa !930
  %i.bva = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bvc = load <2 x float>, ptr %i.but, align 8, !tbaa !75 ; 4 uses
  %i.bvd = extractelement <2 x float> %i.bvc, i64 1 ; 3 uses
  %i.bve = fadd float %i.bvd, %i.buv              ; 3 uses
  %i.bvf = insertelement <2 x float> %i.bvc, float %i.bve, i64 1
  %i.bvg = insertelement <2 x float> poison, float %i.bux, i64 0
  %i.bvh = insertelement <2 x float> %i.bvg, float %i.buz, i64 1
  %i.bvi = fadd <2 x float> %i.bvf, %i.bvh        ; 2 uses
  %i.bvj = load <2 x float>, ptr %i.bvb, align 8, !tbaa !75
  %i.bvk = fadd <2 x float> %i.bvc, %i.bvj        ; 2 uses
  %.inv12.i.i.i = fcmp oge float %i.bve, %i.bvd
  %i.bvl = select i1 %.inv12.i.i.i, float %i.bve, float %i.bvd
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.bvc, float %i.bvl, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %16, align 8, !tbaa !75
  %i.bvm = fcmp ogt <2 x float> %i.bvk, %i.bvi
  %i.bvn = select <2 x i1> %i.bvm, <2 x float> %i.bvi, <2 x float> %i.bvk
  store <2 x float> %i.bvn, ptr %i.bva, align 8, !tbaa !75
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 2 uses
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !408
  %i.bvq = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 3740
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvq, i64 3220
  %i.bvt = load float, ptr %i.bvs, align 4, !tbaa !383
  %i.bvu = load <4 x float>, ptr %i.bvr, align 4, !tbaa !75
  %i.bvv = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bvt, i64 3
  %i.bvw = fmul <4 x float> %i.bvu, %i.bvv        ; 3 uses
  %i.bvx = fcmp olt <4 x float> %i.bvw, zeroinitializer
  %i.bvy = fcmp ogt <4 x float> %i.bvw, splat (float 1.000000e+00)
  %i.bvz = select <4 x i1> %i.bvy, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bvw
  %i.bwa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvz, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bwb = select <4 x i1> %i.bvx, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bwa
  %i.bwc = fptosi <4 x float> %i.bwb to <4 x i32>
  %i.bwd = shl <4 x i32> %i.bwc, <i32 0, i32 8, i32 16, i32 24>
  %i.bwe = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bwd)
  %i.bwf = select i1 %.not108.i, float 0.000000e+00, float %i.bqn
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bvp, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.bva, i32 noundef %i.bwe, float noundef %i.bwf, i32 noundef 48)
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296
  %i.bwh = load float, ptr %i.bwg, align 4, !tbaa !1453 ; 2 uses
  %i.bwi = fcmp ogt float %i.bwh, 0.000000e+00
  br i1 %i.bwi, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bwl = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bwm = load float, ptr %i.bwl, align 4, !tbaa !378 ; 2 uses
  %i.bwn = load float, ptr %i.bwk, align 4, !tbaa !735
  %i.bwo = load float, ptr %i.bwj, align 4, !tbaa !616
  %i.bwp = fadd float %i.bwn, %i.bwo
  %i.bwq = fcmp olt float %i.bwm, %i.bwp
  br i1 %i.bwq, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bwr = load ptr, ptr %i.bvo, align 8, !tbaa !408
  %31 = load <2 x float>, ptr %16, align 8
  %i.bws = load float, ptr %i.bva, align 8, !tbaa !374
  %i.bwt = fneg float %i.bqp
  %i.bwu = insertelement <2 x float> poison, float %i.bqp, i64 0
  %i.bwv = insertelement <2 x float> %i.bwu, float %i.bwt, i64 1
  %i.bww = insertelement <2 x float> %31, float %i.bws, i64 1
  %i.bwx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwv, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bww) ; 2 uses
  %i.bwy = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 3612
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwy, i64 3220
  %i.bxb = load float, ptr %i.bxa, align 4, !tbaa !383
  %i.bxc = load <4 x float>, ptr %i.bwz, align 4, !tbaa !75
  %i.bxd = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bxb, i64 3
  %i.bxe = fmul <4 x float> %i.bxc, %i.bxd        ; 3 uses
  %i.bxf = fcmp olt <4 x float> %i.bxe, zeroinitializer
  %i.bxg = fcmp ogt <4 x float> %i.bxe, splat (float 1.000000e+00)
  %i.bxh = select <4 x i1> %i.bxg, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bxe
  %i.bxi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxh, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bxj = select <4 x i1> %i.bxf, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bxi
  %i.bxk = fptosi <4 x float> %i.bxj to <4 x i32>
  %i.bxl = shl <4 x i32> %i.bxk, <i32 0, i32 8, i32 16, i32 24>
  %i.bxm = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bxl)
  %i.bxn = extractelement <2 x float> %i.bwx, i64 0
  %i.bxo = extractelement <2 x float> %i.bwx, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bwr, float noundef %i.bxn, float noundef %i.bxo, float noundef %i.bwm, i32 noundef %i.bxm, float noundef %i.bwh)
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.ln
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bqf, i64 200
  %i.bxq = load i8, ptr %i.bxp, align 8, !tbaa !835, !range !100, !noundef !236
  %i.bxr = trunc nuw i8 %i.bxq to i1
  br i1 %i.bxr, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0)
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bqf, i64 201
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !938, !range !100, !noundef !236
  %i.bxu = trunc nuw i8 %i.bxt to i1
  br i1 %i.bxu, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1)
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.bxv = and i32 %i.bqj, 2
  %.not110.i = icmp eq i32 %i.bxv, 0
  %or.cond.i668 = select i1 %.0405, i1 %.not110.i, i1 false
  %i.bxw = icmp ne i32 %.0404, 0
  %or.cond185.i = and i1 %i.bxw, %or.cond.i668
  br i1 %or.cond185.i, label %.lr.ph.i669, label %.loopexit.i

.lr.ph.i669:                                      ; preds = %bb.lw
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48 ; 2 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.byb = call float @llvm.fmuladd.f32(float %i.bqp, float 5.000000e-01, float 5.000000e-01)
  %i.byc = fptosi float %i.byb to i32
  %i.byd = sitofp i32 %i.byc to float             ; 5 uses
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 8 uses
  %i.byf = fadd float %i.bqn, %i.byd              ; 3 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.byh = load i32, ptr %i.i, align 16, !tbaa !237 ; 2 uses
  %i.byi = icmp ult i32 %i.byh, 16777216
  br i1 %i.byi, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %.lr.ph.i669
  %i.byj = load ptr, ptr %i.bye, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byj, i64 80
  %i.byl = load <2 x float>, ptr %i.bxx, align 8, !tbaa !75 ; 3 uses
  %i.bym = load <2 x float>, ptr %i.bxy, align 8, !tbaa !75
  %i.byn = fadd <2 x float> %i.byl, %i.bym
  %i.byo = fsub <2 x float> %i.byn, %i.byl
  %i.byp = fadd <2 x float> %i.byl, %i.byo        ; 3 uses
  %i.byq = insertelement <2 x float> poison, float %i.anc, i64 0
  %i.byr = insertelement <2 x float> %i.byq, float %i.byd, i64 1
  %i.bys = fsub <2 x float> %i.byp, %i.byr
  store <2 x float> %i.bys, ptr %17, align 8
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.byk, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.byt = load ptr, ptr %i.bye, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.byu = insertelement <2 x float> poison, float %i.byd, i64 0
  %i.byv = insertelement <2 x float> %i.byu, float %i.anc, i64 1
  %i.byw = fsub <2 x float> %i.byp, %i.byv
  store <2 x float> %i.byw, ptr %18, align 8
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byt, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.byx, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.byy = load ptr, ptr %i.bye, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.byz = insertelement <2 x float> poison, float %i.byf, i64 0
  %i.bza = shufflevector <2 x float> %i.byz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzb = fsub <2 x float> %i.byp, %i.bza
  store <2 x float> %i.bzb, ptr %19, align 8, !tbaa !75
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.byy, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.bzc = load ptr, ptr %i.bye, align 8, !tbaa !408 ; 3 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bzc, i64 80 ; 2 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzc, i64 88
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !438
  %i.bzg = load i32, ptr %i.bzd, align 8, !tbaa !439
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.bzc, ptr noundef %i.bzf, i32 noundef %i.bzg, i32 noundef %i.byh)
  store i32 0, ptr %i.bzd, align 8, !tbaa !439
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %.lr.ph.i669
  %exitcond.not.i673.peel = icmp eq i32 %.0404, 1
  br i1 %exitcond.not.i673.peel, label %.loopexit.i, label %.peel.next

.peel.next:                                       ; preds = %bb.ly
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bzi = load i32, ptr %i.bzh, align 4, !tbaa !237 ; 2 uses
  %i.bzj = icmp ult i32 %i.bzi, 16777216
  br i1 %i.bzj, label %.loopexit.i, label %bb.lz

bb.lz:                                            ; preds = %.peel.next
  %i.bzk = load float, ptr %i.bxx, align 8, !tbaa !249 ; 3 uses
  %i.bzl = load float, ptr %i.bxy, align 8, !tbaa !249
  %i.bzm = fadd float %i.bzk, %i.bzl
  %i.bzn = load float, ptr %i.bxz, align 4, !tbaa !250 ; 3 uses
  %i.bzo = load float, ptr %i.bya, align 4, !tbaa !250
  %i.bzp = fadd float %i.bzn, %i.bzo
  %i.bzq = fsub float %i.bzm, %i.bzk
  %i.bzr = call float @llvm.fmuladd.f32(float %i.bzq, float 0.000000e+00, float %i.bzk) ; 3 uses
  %i.bzs = fsub float %i.bzp, %i.bzn
  %i.bzt = fadd float %i.bzn, %i.bzs              ; 3 uses
  %i.bzu = load ptr, ptr %i.bye, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bzv = fadd float %i.bzr, %i.byd
  %i.bzw = fsub float %i.bzt, %i.anc
  %.sroa.0.0.vec.insert.i156.i = insertelement <2 x float> poison, float %i.bzv, i64 0
  %.sroa.0.4.vec.insert.i157.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i156.i, float %i.bzw, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i157.i, ptr %17, align 8
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzu, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bzx, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.bzy = load ptr, ptr %i.bye, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.bzz = fadd float %i.bzr, %i.anc
  %i.caa = fsub float %i.bzt, %i.byd
  %.sroa.0.0.vec.insert.i160.i = insertelement <2 x float> poison, float %i.bzz, i64 0
  %.sroa.0.4.vec.insert.i161.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i160.i, float %i.caa, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i161.i, ptr %18, align 8
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzy, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cab, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.cac = load ptr, ptr %i.bye, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.cad = fadd float %i.byf, %i.bzr
  %i.cae = fsub float %i.bzt, %i.byf
  store float %i.cad, ptr %19, align 8, !tbaa !249
  store float %i.cae, ptr %i.byg, align 4, !tbaa !250
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.cac, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 3, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.caf = load ptr, ptr %i.bye, align 8, !tbaa !408 ; 3 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 80 ; 2 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %i.caf, i64 88
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !438
  %i.caj = load i32, ptr %i.cag, align 8, !tbaa !439
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.caf, ptr noundef %i.cai, i32 noundef %i.caj, i32 noundef %i.bzi)
  store i32 0, ptr %i.cag, align 8, !tbaa !439
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ly, %.peel.next, %bb.lz, %bb.lw
  br i1 %.0405, label %bb.ma, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.ma:                                            ; preds = %.loopexit.i
  %i.cak = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.cal = load float, ptr %i.bqo, align 4, !tbaa !929 ; 6 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cak, i64 3612
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cak, i64 3616
  %i.can = getelementptr inbounds nuw i8, ptr %i.cak, i64 3220
  %i.cao = load float, ptr %i.can, align 4, !tbaa !383
  %i.cap = load <4 x float>, ptr %i.cam, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !75
  %i.caq = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cao, i64 3
  %i.car = fmul <4 x float> %i.cap, %i.caq        ; 3 uses
  %i.cas = fcmp ogt <4 x float> %i.car, splat (float 1.000000e+00)
  %i.cat = select <4 x i1> %i.cas, <4 x float> splat (float 1.000000e+00), <4 x float> %i.car
  %i.cau = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cat, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cav = shufflevector <4 x float> %i.cap, <4 x float> %i.car, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %i.caw = insertelement <4 x float> %i.cav, float %.sroa.4.0.copyload.i.i.i, i64 1
  %i.cax = fcmp olt <4 x float> %i.caw, zeroinitializer
  %i.cay = select <4 x i1> %i.cax, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cau ; 4 uses
  %i.caz = extractelement <4 x float> %i.cay, i64 0
  %i.cba = fptosi float %i.caz to i32
  %i.cbb = extractelement <4 x float> %i.cay, i64 1
  %i.cbc = fptosi float %i.cbb to i32
  %i.cbd = shl i32 %i.cbc, 8
  %i.cbe = or i32 %i.cbd, %i.cba
  %i.cbf = extractelement <4 x float> %i.cay, i64 2
  %i.cbg = fptosi float %i.cbf to i32
  %i.cbh = shl i32 %i.cbg, 16
  %i.cbi = or i32 %i.cbe, %i.cbh
  %i.cbj = extractelement <4 x float> %i.cay, i64 3
  %i.cbk = fptosi float %i.cbj to i32
end_hunk_2
