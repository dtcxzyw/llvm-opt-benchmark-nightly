Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexTriangleFilter?download=true
inline.NumInlined: 111
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE:bb.a
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !42
  %i.as = lshr i8 %i.ar, 2
  %i.at = and i8 %i.as, 3
  %i.au = zext nneg i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 4 dereferenceable(20) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.an), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %6, i32 noundef 1, i32 noundef %i.au), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %6, i32 noundef %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.ba), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @_ZN4Ptex4v2_418PtexTriangleFilter5applyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter15applyAcrossEdgeERNS0_18PtexTriangleKernelERKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !42
  %i.g = zext i8 %i.f to i32
  %i.h = shl nsw i32 %3, 1
  %i.i = lshr i32 %i.g, %i.h
  %i.j = and i32 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.d)
  tail call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %3, i32 noundef %i.j)
  tail call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter5applyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) initializes((1, 2)) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Ptex::v2_4::PtexTriangleKernelIter", align 4 ; 6 uses
  %5 = alloca %"class.Ptex::v2_4::PtexTriangleKernelIter", align 4 ; 6 uses
  %.sroa.03.0.copyload = load i16, ptr %3, align 4, !tbaa !29
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.03.0.copyload to i8
  %i.a = load i8, ptr %1, align 4, !tbaa !60
  %i.b = tail call noundef i8 @llvm.smin.i8(i8 %i.a, i8 %.sroa.0.0.extract.trunc.i) ; 2 uses
  store i8 %i.b, ptr %1, align 4, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !33 ; 2 uses
  %i.f = fcmp ogt <2 x float> %i.e, zeroinitializer
  %i.g = select <2 x i1> %i.f, <2 x float> %i.e, <2 x float> zeroinitializer ; 3 uses
  store <2 x float> %i.g, ptr %i.d, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !45 ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %i.k = select i1 %i.j, float %i.i, float 0.000000e+00 ; 2 uses
  store float %i.k, ptr %i.h, align 4, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !33 ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.k, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fadd <2 x float> %i.g, %i.o
  %i.q = fsub <2 x float> splat (float 1.000000e+00), %i.p
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = fcmp olt <2 x float> %i.m, %i.r
  %i.t = select <2 x i1> %i.s, <2 x float> %i.m, <2 x float> %i.r
  store <2 x float> %i.t, ptr %i.l, align 4, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !46 ; 2 uses
  %i.w = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.g)
  %i.x = fsub float 1.000000e+00, %i.w            ; 2 uses
  %i.y = fcmp olt float %i.v, %i.x
  %i.z = select i1 %i.y, float %i.v, float %i.x
  store float %i.z, ptr %i.u, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN4Ptex4v2_418PtexTriangleKernel12getIteratorsERNS0_22PtexTriangleKernelIterES3_(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(60) %4, ptr noundef nonnull align 4 dereferenceable(60) %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !48, !range !62, !noundef !63
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !range !62
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.b, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %1, align 4, !tbaa !29
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %2, i16 %.sroa.0.0.copyload) ; 7 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12, label %bb.e

bb.c:                                             ; preds = %bb.f, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.am

bb.e:                                             ; preds = %bb.b
  %i.as = load i8, ptr %i.aa, align 4, !tbaa !48, !range !62, !noundef !63
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(60) %4, ptr noundef nonnull %i.al)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = load i8, ptr %i.ad, align 4, !tbaa !48, !range !62, !noundef !63
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(60) %5, ptr noundef nonnull %i.al)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12: ; preds = %bb.i, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !32 ; 3 uses
  %i.c = fsub float 1.000000e+00, %i.b            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !31 ; 7 uses
  %i.f = fsub float %i.c, %i.e                    ; 6 uses
  %i.g = mul nsw i32 %1, 3
  %i.h = add nsw i32 %i.g, %2
  switch i32 %i.h, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = fneg float %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !44
  %i.l = fneg float %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %3 = load <4 x float>, ptr %i.m, align 4
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !43
  %i.r = fneg float %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !33
  %i.u = fsub <2 x float> splat (float 1.000000e+00), %i.t ; 2 uses
  store float %i.c, ptr %i.a, align 4, !tbaa !32
  store float %i.i, ptr %i.d, align 4, !tbaa !31
  %i.v = extractelement <2 x float> %i.u, i64 1
  store float %i.v, ptr %i.n, align 4, !tbaa !40
  store float %i.l, ptr %i.p, align 4, !tbaa !43
  %i.w = insertelement <2 x float> %4, float %i.o, i64 1
  %i.x = fsub <2 x float> splat (float 1.000000e+00), %i.w
  store <2 x float> %i.x, ptr %i.s, align 4, !tbaa !33
  store float %i.r, ptr %i.j, align 4, !tbaa !44
  %i.y = extractelement <2 x float> %i.u, i64 0
  store float %i.y, ptr %i.m, align 4, !tbaa !46
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.z = fsub float 1.000000e+00, %i.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x float>, ptr %i.aa, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !44
  %i.af = fneg float %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %7 = load <4 x float>, ptr %i.ag, align 4
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !43
  %i.al = fneg float %i.ak
  store float %i.z, ptr %i.a, align 4, !tbaa !32
  store float %i.c, ptr %i.d, align 4, !tbaa !31
  %i.am = insertelement <2 x float> %6, float %i.ac, i64 1
  %i.an = fsub <2 x float> splat (float 1.000000e+00), %i.am
  store <2 x float> %i.an, ptr %i.ah, align 4, !tbaa !33
  store float %i.af, ptr %i.ag, align 4, !tbaa !45
  %i.ao = insertelement <2 x float> %8, float %i.ai, i64 1
  %i.ap = fsub <2 x float> splat (float 1.000000e+00), %i.ao
  store <2 x float> %i.ap, ptr %i.ab, align 4, !tbaa !33
  store float %i.al, ptr %i.aa, align 4, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !36 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !35 ; 2 uses
  %i.au = fneg float %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float 2.000000e+00, float %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = fadd float %i.ar, %i.ax
  %i.az = fsub float %i.ay, %i.at
  store float %i.ar, ptr %i.aw, align 4, !tbaa !34
  store float %i.av, ptr %i.as, align 4, !tbaa !35
  store float %i.az, ptr %i.aq, align 4, !tbaa !36
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.ba = fneg float %i.e
  %i.bb = fsub float 1.000000e+00, %i.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !44
  %i.be = fneg float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x float>, ptr %i.bf, align 4
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !43
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %11 = load <4 x float>, ptr %i.bl, align 4
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !40
  store float %i.ba, ptr %i.a, align 4, !tbaa !32
  store float %i.bb, ptr %i.d, align 4, !tbaa !31
  store float %i.be, ptr %i.bm, align 4, !tbaa !40
  %i.bo = insertelement <2 x float> %10, float %i.bh, i64 1
  %i.bp = fsub <2 x float> splat (float 1.000000e+00), %i.bo
  store <2 x float> %i.bp, ptr %i.bi, align 4, !tbaa !33
  store float %i.bk, ptr %i.bg, align 4, !tbaa !41
  %i.bq = insertelement <2 x float> %12, float %i.bn, i64 1
  %i.br = fsub <2 x float> splat (float 1.000000e+00), %i.bq
  store <2 x float> %i.br, ptr %i.bc, align 4, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !36
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !35 ; 2 uses
  %i.bz = fsub float %i.bw, %i.by
  %i.ca = fneg float %i.by
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bt, float 2.000000e+00, float %i.ca)
  store float %i.bz, ptr %i.bs, align 4, !tbaa !34
  store float %i.cb, ptr %i.bx, align 4, !tbaa !35
  store float %i.bt, ptr %i.bu, align 4, !tbaa !36
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.cc = fsub float 1.000000e+00, %i.e
  %i.cd = fneg float %i.f
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !44
  %i.cg = fsub float 1.000000e+00, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !46
  %i.cj = fneg float %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load <4 x float>, ptr %i.ck, align 4
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !45
  %i.cp = fneg float %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !40
  %i.cs = fsub float 1.000000e+00, %i.cr
  store float %i.cc, ptr %i.a, align 4, !tbaa !32
  store float %i.cd, ptr %i.d, align 4, !tbaa !31
  store float %i.cg, ptr %i.cq, align 4, !tbaa !40
  store float %i.cj, ptr %i.cl, align 4, !tbaa !43
  %i.ct = insertelement <2 x float> %14, float %i.cm, i64 1
  %i.cu = fsub <2 x float> splat (float 1.000000e+00), %i.ct
  store <2 x float> %i.cu, ptr %i.cn, align 4, !tbaa !33
  store float %i.cp, ptr %i.ce, align 4, !tbaa !44
  store float %i.cs, ptr %i.ch, align 4, !tbaa !46
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !34 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !36
  %i.cz = fadd float %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !35 ; 2 uses
  %i.dc = fsub float %i.cz, %i.db
  %i.dd = fneg float %i.db
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cw, float 2.000000e+00, float %i.dd)
  store float %i.dc, ptr %i.cv, align 4, !tbaa !34
  store float %i.de, ptr %i.da, align 4, !tbaa !35
  store float %i.cw, ptr %i.cx, align 4, !tbaa !36
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.di = load float, ptr %i.dh, align 4, !tbaa !44
  %i.dj = fsub float 1.000000e+00, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !46
  %i.dm = fneg float %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !45
  %i.dr = fneg float %i.dq
  store float %i.c, ptr %i.a, align 4, !tbaa !32
  %i.ds = insertelement <2 x float> poison, float %i.e, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dg, i64 1
  %i.du = fsub <2 x float> splat (float 1.000000e+00), %i.dt
  store float %i.dm, ptr %i.dp, align 4, !tbaa !45
  %i.dv = load <2 x float>, ptr %i.dn, align 4, !tbaa !33
  %i.dw = fsub <2 x float> splat (float 1.000000e+00), %i.dv
  store <2 x float> %i.du, ptr %i.d, align 4, !tbaa !33
  store float %i.dj, ptr %i.do, align 4, !tbaa !43
  store <2 x float> %i.dw, ptr %i.df, align 4, !tbaa !33
  store float %i.dr, ptr %i.dk, align 4, !tbaa !46
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.dx = fneg float %i.f
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !46
  %i.ea = fneg float %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !45
  %i.ef = fneg float %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.dx, ptr %i.a, align 4, !tbaa !32
  store float %i.c, ptr %i.d, align 4, !tbaa !31
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !36 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load float, ptr %i.ek, align 4, !tbaa !35 ; 2 uses
  %i.em = fneg float %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ej, float 2.000000e+00, float %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !34
  %i.eq = fadd float %i.ej, %i.ep
  %i.er = fsub float %i.eq, %i.el
  %i.es = load <2 x float>, ptr %i.eg, align 4, !tbaa !33
  %i.et = fsub <2 x float> splat (float 1.000000e+00), %i.es
  store float %i.ea, ptr %i.eg, align 4, !tbaa !40
  %i.eu = load <2 x float>, ptr %i.eb, align 4, !tbaa !33
  %i.ev = fsub <2 x float> splat (float 1.000000e+00), %i.eu
  store float %i.ef, ptr %i.eb, align 4, !tbaa !41
  store <2 x float> %i.ev, ptr %i.eh, align 4, !tbaa !33
  %i.ew = insertelement <4 x float> poison, float %i.ej, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.en, i64 3
  %i.ey = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ez, ptr %i.ec, align 4, !tbaa !33
  store float %i.er, ptr %i.ei, align 4, !tbaa !36
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.fa = fsub float 1.000000e+00, %i.f
  %i.fb = fneg float %i.b
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !46
  %i.fe = fsub float 1.000000e+00, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !41
  %i.fh = fneg float %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %15 = load <4 x float>, ptr %i.fi, align 4
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !45
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !40
  %i.fn = fneg float %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !43
  %i.fq = fsub float 1.000000e+00, %i.fp
  store float %i.fa, ptr %i.a, align 4, !tbaa !32
  store float %i.fb, ptr %i.d, align 4, !tbaa !31
  store float %i.fe, ptr %i.fl, align 4, !tbaa !40
  store float %i.fh, ptr %i.fo, align 4, !tbaa !43
  %i.fr = insertelement <2 x float> %16, float %i.fk, i64 1
  %i.fs = fsub <2 x float> splat (float 1.000000e+00), %i.fr
  store <2 x float> %i.fs, ptr %i.fj, align 4, !tbaa !33
  store float %i.fn, ptr %i.fi, align 4, !tbaa !44
  store float %i.fq, ptr %i.fc, align 4, !tbaa !46
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !36 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !35 ; 2 uses
  %i.fx = fneg float %i.fw
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fu, float 2.000000e+00, float %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !34
  %i.gb = fadd float %i.fu, %i.ga
  %i.gc = fsub float %i.gb, %i.fw
  store float %i.fu, ptr %i.fz, align 4, !tbaa !34
  store float %i.fy, ptr %i.fv, align 4, !tbaa !35
  store float %i.gc, ptr %i.ft, align 4, !tbaa !36
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !41
  %i.gh = fneg float %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !40
  %i.gm = fneg float %i.gl
  %i.gn = load <4 x float>, ptr %i.gd, align 4
  %i.go = insertelement <4 x float> poison, float %i.e, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.f, i64 1
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gr = fsub <4 x float> splat (float 1.000000e+00), %i.gq
  %i.gs = load <2 x float>, ptr %i.gi, align 4, !tbaa !33
  %i.gt = fsub <2 x float> splat (float 1.000000e+00), %i.gs
  store <4 x float> %i.gr, ptr %i.a, align 4, !tbaa !33
  store float %i.gh, ptr %i.gj, align 4, !tbaa !45
  store <2 x float> %i.gt, ptr %i.gf, align 4, !tbaa !33
  store float %i.gm, ptr %i.ge, align 4, !tbaa !46
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !34 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !36
  %i.gy = fadd float %i.gv, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !35 ; 2 uses
  %i.hb = fsub float %i.gy, %i.ha
  %i.hc = fneg float %i.ha
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.gv, float 2.000000e+00, float %i.hc)
  store float %i.hb, ptr %i.gu, align 4, !tbaa !34
  store float %i.hd, ptr %i.gz, align 4, !tbaa !35
  store float %i.gv, ptr %i.gw, align 4, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.he = fneg float %i.b
  %i.hf = fsub float 1.000000e+00, %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !41
  %i.hi = fneg float %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !40
  %i.hm = fneg float %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float %i.he, ptr %i.a, align 4, !tbaa !32
  store float %i.hf, ptr %i.d, align 4, !tbaa !31
  store float %i.hi, ptr %i.hk, align 4, !tbaa !40
  %i.ho = load <2 x float>, ptr %i.hj, align 4, !tbaa !33
  %i.hp = fsub <2 x float> splat (float 1.000000e+00), %i.ho
  store float %i.hm, ptr %i.hg, align 4, !tbaa !41
  %i.hq = load <2 x float>, ptr %i.hn, align 4, !tbaa !33
  %i.hr = fsub <2 x float> splat (float 1.000000e+00), %i.hq
  store <2 x float> %i.hp, ptr %i.hn, align 4, !tbaa !33
  store <2 x float> %i.hr, ptr %i.hj, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleKernel12getIteratorsERNS0_22PtexTriangleKernelIterES3_(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(60) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !64
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = sitofp i32 %i.c to float                 ; 4 uses
  %i.e = fmul nnan float %i.d, %i.d               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4, !tbaa !36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load float, ptr %i.j, align 4, !tbaa !35 ; 3 uses
  %i.l = fmul float %i.k, 2.500000e-01
  %i.m = fneg float %i.k
  %i.n = fmul float %i.l, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.g, float %i.i, float %i.n)
  %i.p = fmul float %i.e, %i.o
  store i32 %i.c, ptr %1, align 4, !tbaa !49
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.e, i64 1
  %i.s = fdiv <2 x float> splat (float 1.000000e+00), %i.r ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 3 uses
  %i.u = fmul float %i.g, %i.t                    ; 2 uses
  %i.v = fmul float %i.k, %i.t                    ; 2 uses
  %i.w = fmul float %i.i, %i.t                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.y = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  store float %i.y, ptr %i.x, align 4, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !33 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  store <2 x float> %i.ae, ptr %i.aa, align 4, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load <4 x float>, ptr %i.af, align 4, !tbaa !33 ; 4 uses
  %i.ai = insertelement <4 x float> poison, float %i.d, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.aj, <4 x float> splat (float f0xBEAAAAAB))
  %i.al = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ak)
  %i.am = fptosi <4 x float> %i.al to <4 x i32>   ; 5 uses
  store <4 x i32> %i.am, ptr %i.ag, align 4, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !33 ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  %i.ar = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aq)
  %i.as = fptosi <2 x float> %i.ar to <2 x i32>   ; 3 uses
  store <2 x i32> %i.as, ptr %i.ao, align 4, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.u, ptr %i.at, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.v, ptr %i.au, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.w, ptr %i.av, align 4, !tbaa !68
  %shift = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aw = icmp sgt <4 x i32> %shift, %i.am
  %i.ax = extractelement <4 x i1> %i.aw, i64 0
  %i.ay = extractelement <4 x i32> %i.am, i64 1
  %i.az = extractelement <2 x i32> %i.as, i64 0
  %i.ba = icmp sgt i32 %i.az, %i.ay
  %or.cond = select i1 %i.ax, i1 %i.ba, i1 false
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !50
  store i32 %i.c, ptr %2, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %i.y, ptr %i.bd, align 4, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bf = fsub <2 x float> splat (float 1.000000e+00), %i.ab
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bh, ptr %i.be, align 4, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bj = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.ah, <4 x i32> <i32 0, i32 7, i32 poison, i32 5>
  %i.bl = insertelement <4 x float> %i.bk, float 0.000000e+00, i64 2
  %i.bm = extractelement <4 x float> %i.ah, i64 0
  %i.bn = fsub float 1.000000e+00, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bp = shufflevector <4 x float> %i.bj, <4 x float> %i.ah, <2 x i32> <i32 1, i32 6>
  %i.bq = fneg <2 x float> %i.bp                  ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bt = fsub <4 x float> %i.bs, %i.bl
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.aj, <4 x float> splat (float f0xBEAAAAAB))
  %i.bv = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.bu)
  %i.bw = fptosi <4 x float> %i.bv to <4 x i32>   ; 3 uses
  store <4 x i32> %i.bw, ptr %i.bi, align 4, !tbaa !24
  %i.bx = insertelement <2 x float> %i.bq, float %i.bn, i64 0
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  %i.bz = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.by)
  %i.ca = fptosi <2 x float> %i.bz to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ca, ptr %i.bo, align 4, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.w, ptr %i.cb, align 4, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.v, ptr %i.cc, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.u, ptr %i.cd, align 4, !tbaa !68
  %i.ce = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x i32> %i.ce, <4 x i32> %i.bw, <4 x i32> <i32 1, i32 0, i32 7, i32 poison>
  %i.cg = shufflevector <2 x i32> %i.as, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x i32> %i.cf, <4 x i32> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ci = shufflevector <4 x i32> %i.bw, <4 x i32> %i.am, <4 x i32> <i32 2, i32 1, i32 0, i32 6>
  %i.cj = icmp sgt <4 x i32> %i.ch, %i.ci         ; 4 uses
  %i.ck = extractelement <4 x i1> %i.cj, i64 3
  %narrow = select i1 %or.cond, i1 %i.ck, i1 false
  %i.cl = zext i1 %narrow to i8
  store i8 %i.cl, ptr %i.bb, align 4, !tbaa !48
  %i.cm = extractelement <4 x i1> %i.cj, i64 1
  %i.cn = extractelement <4 x i1> %i.cj, i64 2
  %or.cond75 = select i1 %i.cn, i1 %i.cm, i1 false
end_hunk_0
