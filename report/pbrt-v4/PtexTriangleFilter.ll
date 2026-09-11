Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexTriangleFilter?download=true
inline.NumInlined: 111
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Ptex4v2_418PtexTriangleFilter11buildKernelERNS0_18PtexTriangleKernelEffffffffNS0_3ResE:bb.a
  %i.br = fsub float %i.bq, %3                    ; 2 uses
  %i.bs = trunc nuw nsw i32 %i.bc to i16
  %.sroa.0.0.insert.insert = mul nuw nsw i16 %i.bs, 257
  store i16 %.sroa.0.0.insert.insert, ptr %1, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %2, ptr %i.bt, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %3, ptr %i.bu, align 4, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bm, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bp, i64 2
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ca = fcmp olt <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cb = select <4 x i1> %i.ca, <4 x float> %i.bz, <4 x float> splat (float 1.000000e+00) ; 3 uses
  %i.cc = insertelement <4 x float> poison, float %2, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %3, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 2
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.cg = fsub <4 x float> %i.cf, %i.cb
  %i.ch = fadd <4 x float> %i.cf, %i.cb
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ci, ptr %i.bv, align 4, !tbaa !32
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ck = insertelement <2 x float> poison, float %3, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.br, i64 1
  %i.cm = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  store <2 x float> %i.cn, ptr %i.cj, align 4, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.bi, ptr %i.co, align 4, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.bj, ptr %i.cp, align 4, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.bk, ptr %i.cq, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 6 uses
  %5 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 6 uses
  %6 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = fcmp olt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !58
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !41
  %i.j = lshr i8 %i.i, 4
  %i.k = and i8 %i.j, 3
  %i.l = zext nneg i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.e), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %4, i32 noundef 2, i32 noundef %i.l), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %4, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.r), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !42
  %i.u = fcmp olt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24   ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !58
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !41
  %i.ab = and i8 %i.aa, 3
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef nonnull align 4 dereferenceable(20) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.w), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %5, i32 noundef 0, i32 noundef %i.ac), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %5, i32 noundef %i.w, ptr noundef nonnull align 4 dereferenceable(20) %i.ai), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !44
  %i.al = fcmp olt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !58
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !41
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
  %i.f = load i8, ptr %i.e, align 2, !tbaa !41
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
  %.sroa.03.0.copyload = load i16, ptr %3, align 4
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.03.0.copyload to i8
  %i.a = load i8, ptr %1, align 4, !tbaa !60
  %i.b = tail call noundef i8 @llvm.smin.i8(i8 %i.a, i8 %.sroa.0.0.extract.trunc.i) ; 2 uses
  store i8 %i.b, ptr %1, align 4, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !32 ; 2 uses
  %i.f = fcmp ogt <2 x float> %i.e, zeroinitializer
  %i.g = select <2 x i1> %i.f, <2 x float> %i.e, <2 x float> zeroinitializer ; 4 uses
  store <2 x float> %i.g, ptr %i.d, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !44 ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %i.k = select i1 %i.j, float %i.i, float 0.000000e+00 ; 2 uses
  store float %i.k, ptr %i.h, align 4, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !32 ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.k, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fadd <2 x float> %i.g, %i.o
  %i.q = fsub <2 x float> splat (float 1.000000e+00), %i.p
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = fcmp olt <2 x float> %i.m, %i.r
  %i.t = select <2 x i1> %i.s, <2 x float> %i.m, <2 x float> %i.r
  store <2 x float> %i.t, ptr %i.l, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !45 ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.g, %shift
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fsub float 1.000000e+00, %6              ; 2 uses
  %i.x = fcmp olt float %i.v, %i.w
  %i.y = select i1 %i.x, float %i.v, float %i.w
  store float %i.y, ptr %i.u, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN4Ptex4v2_418PtexTriangleKernel12getIteratorsERNS0_22PtexTriangleKernelIterES3_(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(60) %4, ptr noundef nonnull align 4 dereferenceable(60) %5)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !47, !range !62, !noundef !63
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !range !62
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.b, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %1, align 4
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %2, i16 %.sroa.0.0.copyload) ; 7 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12, label %bb.e

bb.c:                                             ; preds = %bb.f, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.al

bb.e:                                             ; preds = %bb.b
  %i.ar = load i8, ptr %i.z, align 4, !tbaa !47, !range !62, !noundef !63
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(60) %4, ptr noundef nonnull %i.ak)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = load i8, ptr %i.ac, align 4, !tbaa !47, !range !62, !noundef !63
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(60) %5, ptr noundef nonnull %i.ak)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit12 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #11
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
  %i.b = load float, ptr %i.a, align 4, !tbaa !31 ; 3 uses
  %i.c = fsub float 1.000000e+00, %i.b            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !30 ; 7 uses
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
  %i.k = load float, ptr %i.j, align 4, !tbaa !43
  %i.l = fneg float %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !42
  %i.t = fneg float %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !32
  %i.w = fsub <2 x float> splat (float 1.000000e+00), %i.v ; 2 uses
  store float %i.c, ptr %i.a, align 4, !tbaa !31
  store float %i.i, ptr %i.d, align 4, !tbaa !30
  %i.x = extractelement <2 x float> %i.w, i64 1
  store float %i.x, ptr %i.p, align 4, !tbaa !39
  store float %i.l, ptr %i.r, align 4, !tbaa !42
  %i.y = insertelement <2 x float> %i.o, float %i.q, i64 1
  %i.z = fsub <2 x float> splat (float 1.000000e+00), %i.y
  store <2 x float> %i.z, ptr %i.u, align 4, !tbaa !32
  store float %i.t, ptr %i.j, align 4, !tbaa !43
  %i.aa = extractelement <2 x float> %i.w, i64 0
  store float %i.aa, ptr %i.m, align 4, !tbaa !45
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.ab = fsub float 1.000000e+00, %i.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load <4 x float>, ptr %i.ac, align 4
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !43
  %i.aj = fneg float %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.al = load <4 x float>, ptr %i.ak, align 4
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !42
  %i.ar = fneg float %i.aq
  store float %i.ab, ptr %i.a, align 4, !tbaa !31
  store float %i.c, ptr %i.d, align 4, !tbaa !30
  %i.as = insertelement <2 x float> %i.ae, float %i.ag, i64 1
  %i.at = fsub <2 x float> splat (float 1.000000e+00), %i.as
  store <2 x float> %i.at, ptr %i.an, align 4, !tbaa !32
  store float %i.aj, ptr %i.ak, align 4, !tbaa !44
  %i.au = insertelement <2 x float> %i.am, float %i.ao, i64 1
  %i.av = fsub <2 x float> splat (float 1.000000e+00), %i.au
  store <2 x float> %i.av, ptr %i.af, align 4, !tbaa !32
  store float %i.ar, ptr %i.ac, align 4, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.ba = fneg float %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ax, float 2.000000e+00, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !33
  %i.be = fadd float %i.ax, %i.bd
  %i.bf = fsub float %i.be, %i.az
  store float %i.ax, ptr %i.bc, align 4, !tbaa !33
  store float %i.bb, ptr %i.ay, align 4, !tbaa !34
  store float %i.bf, ptr %i.aw, align 4, !tbaa !35
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.bg = fneg float %i.e
  %i.bh = fsub float 1.000000e+00, %i.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !43
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load <4 x float>, ptr %i.bl, align 4
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !42
  %i.bs = fneg float %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bu = load <4 x float>, ptr %i.bt, align 4
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !39
end_hunk_0
begin_hunk_1_@_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE:bb.a
  %i.ct = load i32, ptr %i.be, align 4, !tbaa !81
  %i.cu = sub nsw i32 %i.ct, %i.ch
  store i32 %i.cu, ptr %i.bf, align 4, !tbaa !81
  %i.cv = add nsw i32 %.078, %i.cd
  %i.cw = load ptr, ptr %2, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cv) ; 10 uses
  %.not61 = icmp eq ptr %i.cz, null
  br i1 %.not61, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !49
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 2 uses
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  br i1 %i.dd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.di = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dn = load i32, ptr %i.bk, align 8, !tbaa !26
  invoke void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef %i.de, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dn)
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.m, %bb.n
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.do

bb.m:                                             ; preds = %bb.h
  %i.du = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.dv = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %i.dy = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dz = load i32, ptr %i.bk, align 8, !tbaa !26 ; 4 uses
  %i.ea = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %.not.i62 = icmp eq i32 %i.dz, %i.ea
  %i.eb = select i1 %.not.i62, i32 0, i32 20
  %i.ec = icmp ult i32 %i.dz, 5
  %i.ed = shl nuw nsw i32 %i.dz, 2
  %i.ee = select i1 %i.ec, i32 %i.ed, i32 0
  %i.ef = add i32 %i.ee, %i.dy
  %i.eg = add i32 %i.ef, %i.eb
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !82
  invoke void %i.ej(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef %i.de, ptr noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.ea)
          to label %bb.o unwind label %bb.k, !inline_history !70

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ek = load float, ptr %i.bg, align 4, !tbaa !49
  %i.el = load float, ptr %i.bm, align 8, !tbaa !36
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.bm, align 8, !tbaa !36
  %i.en = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64: ; preds = %bb.f, %bb.o
  %i.es = add i32 %.078, 1
  %exitcond.not = icmp eq i32 %.078, %i.cb
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !71

bb.q:                                             ; preds = %bb.c
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !37
  %i.ev = load ptr, ptr %2, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !25
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !26 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22 ; 2 uses
  %.not.i65 = icmp eq i32 %i.fg, %i.fi
  %i.fj = select i1 %.not.i65, i32 0, i32 20
  %i.fk = icmp ult i32 %i.fg, 5
  %i.fl = shl nuw nsw i32 %i.fg, 2
  %i.fm = select i1 %i.fk, i32 %i.fl, i32 0
  %i.fn = add i32 %i.fm, %i.fe
  %i.fo = add i32 %i.fn, %i.fj
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !82
  tail call void %i.fr(ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %i.eu, ptr noundef %i.fc, i32 noundef %i.fg, i32 noundef %i.fi), !inline_history !70
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !49
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !36
  %i.fw = fadd float %i.ft, %i.fv
  store float %i.fw, ptr %i.fu, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge83, %bb.q, %bb.b
  ret void
}

declare void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleFilter7releaseEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(68) %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN4Ptex4v2_410PtexFilterE"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4Ptex4v2_411PtexTextureE", !10, i64 0}
!12 = !{!"_ZTSN4Ptex4v2_410PtexFilter10FilterTypeE", !5, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!"_ZTSN4Ptex4v2_410PtexFilter7OptionsE", !6, i64 0, !12, i64 4, !13, i64 8, !14, i64 12, !13, i64 16}
!16 = !{!"p1 float", !10, i64 0}
!17 = !{!"_ZTSN4Ptex4v2_48DataTypeE", !5, i64 0}
!18 = !{!"_ZTSN4Ptex4v2_418PtexTriangleFilterE", !9, i64 0, !11, i64 8, !15, i64 16, !16, i64 40, !14, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !17, i64 64}
!19 = !{!18, !11, i64 8}
!20 = !{!"vtable pointer", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!18, !6, i64 60}
!23 = !{!18, !17, i64 64}
!24 = !{!6, !6, i64 0}
!25 = !{!18, !6, i64 52}
!26 = !{!18, !6, i64 56}
!27 = !{!"_ZTSN4Ptex4v2_43ResE", !5, i64 0, !5, i64 1}
!28 = !{!"_ZTSN4Ptex4v2_48FaceInfoE", !27, i64 0, !5, i64 2, !5, i64 3, !5, i64 4}
!29 = !{!"_ZTSN4Ptex4v2_418PtexTriangleKernelE", !27, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!30 = !{!29, !14, i64 8}
!31 = !{!29, !14, i64 4}
!32 = !{!14, !14, i64 0}
!33 = !{!29, !14, i64 36}
!34 = !{!29, !14, i64 40}
!35 = !{!29, !14, i64 44}
!36 = !{!18, !14, i64 48}
!37 = !{!18, !16, i64 40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!29, !14, i64 12}
!40 = !{!29, !14, i64 24}
!41 = !{!28, !5, i64 2}
!42 = !{!29, !14, i64 16}
!43 = !{!29, !14, i64 28}
!44 = !{!29, !14, i64 20}
!45 = !{!29, !14, i64 32}
!46 = !{!"_ZTSN4Ptex4v2_422PtexTriangleKernelIterE", !6, i64 0, !14, i64 4, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !13, i64 48, !14, i64 52, !14, i64 56}
!47 = !{!46, !13, i64 48}
!48 = !{!46, !6, i64 0}
!49 = !{!46, !14, i64 56}
!50 = distinct !{!50, !38, !54, !55}
!51 = distinct !{!51, !56}
!52 = distinct !{!52, !38, !54}
!53 = !{!28, !5, i64 3}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!5, !5, i64 0}
!58 = !{i64 0, i64 1, !57, i64 1, i64 1, !57, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32, i64 28, i64 4, !32, i64 32, i64 4, !32, i64 36, i64 4, !32, i64 40, i64 4, !32, i64 44, i64 4, !32}
!59 = !{ptr @_ZN4Ptex4v2_418PtexTriangleFilter15applyAcrossEdgeERNS0_18PtexTriangleKernelERKNS0_8FaceInfoEi}
!60 = !{!29, !5, i64 0}
!61 = !{!29, !5, i64 1}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!27, !5, i64 0}
!65 = !{!46, !14, i64 52}
!66 = !{!46, !14, i64 36}
!67 = !{!46, !14, i64 40}
!68 = !{!46, !14, i64 44}
!69 = distinct !{!69, !38}
!70 = distinct !{null}
!71 = distinct !{!71, !38}
!72 = !{!13, !13, i64 0}
!73 = !{i64 0, i64 4, !24, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !24, i64 16, i64 4, !24, i64 20, i64 4, !24, i64 24, i64 4, !24, i64 28, i64 4, !24, i64 32, i64 4, !24, i64 36, i64 4, !32, i64 40, i64 4, !32, i64 44, i64 4, !32, i64 48, i64 1, !72, i64 52, i64 4, !32, i64 56, i64 4, !32}
!74 = !{!46, !6, i64 16}
!75 = !{!46, !6, i64 28}
!76 = !{!46, !14, i64 8}
!77 = !{!46, !6, i64 12}
!78 = !{!46, !6, i64 24}
!79 = !{!46, !14, i64 4}
!80 = !{!46, !6, i64 20}
!81 = !{!46, !6, i64 32}
!82 = !{!10, !10, i64 0}
end_hunk_1
