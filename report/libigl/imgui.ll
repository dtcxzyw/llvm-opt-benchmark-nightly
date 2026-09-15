Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_Z18ImLineClosestPointRK6ImVec2S1_S1_:bb.a

bb.d:                                             ; preds = %bb.c
  %.sroa.012.0.copyload13 = load <2 x float>, ptr %1, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = insertelement <2 x float> poison, float %i.i, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.e, %i.o
  %i.q = insertelement <2 x float> poison, float %i.l, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r
  %i.t = fadd <2 x float> %i.a, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.012.1 = phi <2 x float> [ %.sroa.012.0.copyload, %bb.b ], [ %.sroa.012.0.copyload13, %bb.d ], [ %i.t, %bb.e ]
  ret <2 x float> %.sroa.012.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local <2 x float> @_Z34ImBezierCubicClosestPointCasteljauRK6ImVec2S1_S1_S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, float noundef %5) local_unnamed_addr #12 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 3 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.b = load i64, ptr %0, align 4                ; 3 uses
  store i64 %i.b, ptr %7, align 8
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !75
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = bitcast i32 %i.f to float
  %i.h = load float, ptr %1, align 4, !tbaa !187
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !188
  %i.k = load float, ptr %2, align 4, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !188
  %i.n = load float, ptr %3, align 4, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !188
  %.val = load float, ptr %4, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.val11 = load float, ptr %i.q, align 4
  call fastcc void @_ZL38ImBezierCubicClosestPointCasteljauStepRK6ImVec2RS_S2_Rffffffffffi(float %.val, float %.val11, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, float noundef %i.d, float noundef %i.g, float noundef %i.h, float noundef %i.j, float noundef %i.k, float noundef %i.m, float noundef %i.n, float noundef %i.p, float noundef %5, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.r = load <2 x float>, ptr %6, align 8
  ret <2 x float> %i.r
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL38ImBezierCubicClosestPointCasteljauStepRK6ImVec2RS_S2_Rffffffffffi(float %.0.val, float %.4.val, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, i32 noundef range(i32 0, 11) %12) unnamed_addr #13 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %3, i64 0
  %i.b = insertelement <2 x float> %i.a, float %4, i64 1
  %i.c = insertelement <2 x float> poison, float %5, i64 0
  %i.d = insertelement <2 x float> %i.c, float %6, i64 1
  %i.e = insertelement <2 x float> poison, float %7, i64 0
  %i.f = insertelement <2 x float> %i.e, float %8, i64 1
  %i.g = insertelement <2 x float> poison, float %9, i64 0 ; 2 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x float> poison, float %10, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.i, %bb.a
  %.tr10 = phi float [ %3, %bb.a ], [ %i.cc, %bb.i ] ; 2 uses
  %.tr11 = phi float [ %4, %bb.a ], [ %i.cb, %bb.i ] ; 2 uses
  %.tr19 = phi i32 [ %12, %bb.a ], [ %i.cd, %bb.i ] ; 2 uses
  %i.k = phi <2 x float> [ %i.b, %bb.a ], [ %i.ca, %bb.i ]
  %i.l = phi <2 x float> [ %i.d, %bb.a ], [ %i.by, %bb.i ] ; 4 uses
  %i.m = phi <2 x float> [ %i.f, %bb.a ], [ %i.bw, %bb.i ] ; 5 uses
  %i.n = fsub float %9, %.tr10                    ; 3 uses
  %i.o = fsub float %10, %.tr11                   ; 3 uses
  %i.p = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.q = fsub <2 x float> %i.p, %i.h
  %i.r = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.s = fsub <2 x float> %i.r, %i.j
  %i.t = fneg float %i.n
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.s, %i.v
  %i.x = insertelement <2 x float> poison, float %i.o, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.y, <2 x float> %i.w) ; 3 uses
  %i.aa = fcmp oge <2 x float> %i.z, zeroinitializer
  %i.ab = fneg <2 x float> %i.z
  %i.ac = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.ab
  %i.ad = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ac) ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fmul float %i.o, %i.o
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.af)
  %i.ah = fmul float %11, %i.ag
  %i.ai = fcmp olt float %i.ae, %i.ah
  br i1 %i.ai, label %bb.b, label %bb.h

bb.b:                                             ; preds = %tailrecurse
  %.sroa.03.4.vec.insert = insertelement <2 x float> %i.g, float %10, i64 1 ; 3 uses
  %i.aj = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 4 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 0
  %i.al = fsub float %.0.val, %i.ak
  %i.am = extractelement <2 x float> %i.aj, i64 1
  %i.an = fsub float %.4.val, %i.am
  %i.ao = fsub <2 x float> %.sroa.03.4.vec.insert, %i.aj ; 3 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1 ; 3 uses
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = extractelement <2 x float> %i.ao, i64 0 ; 3 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ar, float %i.aq) ; 3 uses
  %i.at = fcmp olt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %1, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit

bb.d:                                             ; preds = %bb.b
  %i.au = fmul float %i.ap, %i.ap
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au) ; 2 uses
  %i.aw = fcmp ogt float %i.as, %i.av
  br i1 %i.aw, label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.ao, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fdiv <2 x float> %i.az, %i.bb
  %i.bd = fadd <2 x float> %i.aj, %i.bc
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit

_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit:       ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.012.1.i = phi <2 x float> [ %.sroa.012.0.copyload.i, %bb.c ], [ %i.bd, %bb.e ], [ %.sroa.03.4.vec.insert, %bb.d ] ; 3 uses
  %.sroa.01.0.vec.extract = extractelement <2 x float> %.sroa.012.1.i, i64 0
  %.sroa.01.4.vec.extract = extractelement <2 x float> %.sroa.012.1.i, i64 1
  %i.be = fsub float %.0.val, %.sroa.01.0.vec.extract ; 2 uses
  %i.bf = fsub float %.4.val, %.sroa.01.4.vec.extract ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bg) ; 2 uses
  %i.bi = load float, ptr %2, align 4, !tbaa !75
  %i.bj = fcmp olt float %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit
  store <2 x float> %.sroa.012.1.i, ptr %0, align 4
  store float %i.bh, ptr %2, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit
  store <2 x float> %.sroa.03.4.vec.insert, ptr %1, align 4
  br label %.loopexit

bb.h:                                             ; preds = %tailrecurse
  %exitcond.not = icmp eq i32 %.tr19, 10
  br i1 %exitcond.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = fadd <2 x float> %i.k, %i.l
  %i.bl = fadd <2 x float> %i.l, %i.m
  %i.bm = extractelement <2 x float> %i.m, i64 0
  %i.bn = fadd float %9, %i.bm
  %i.bo = extractelement <2 x float> %i.m, i64 1
  %i.bp = fadd float %10, %i.bo
  %i.bq = fmul <2 x float> %i.bk, splat (float 5.000000e-01) ; 3 uses
  %i.br = fmul <2 x float> %i.bl, splat (float 5.000000e-01) ; 2 uses
  %i.bs = fadd <2 x float> %i.bq, %i.br
  %i.bt = fmul <2 x float> %i.bs, splat (float 5.000000e-01) ; 3 uses
  %i.bu = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bp, i64 1
  %i.bw = fmul <2 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.bx = fadd <2 x float> %i.br, %i.bw
  %i.by = fmul <2 x float> %i.bx, splat (float 5.000000e-01) ; 2 uses
  %i.bz = fadd <2 x float> %i.bt, %i.by
  %i.ca = fmul <2 x float> %i.bz, splat (float 5.000000e-01) ; 3 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cc = extractelement <2 x float> %i.ca, i64 0 ; 2 uses
  %i.cd = add nuw nsw i32 %.tr19, 1               ; 2 uses
  %i.ce = extractelement <2 x float> %i.bt, i64 0
  %i.cf = extractelement <2 x float> %i.bt, i64 1
  %i.cg = extractelement <2 x float> %i.bq, i64 0
  %i.ch = extractelement <2 x float> %i.bq, i64 1
  tail call fastcc void @_ZL38ImBezierCubicClosestPointCasteljauStepRK6ImVec2RS_S2_Rffffffffffi(float %.0.val, float %.4.val, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, float noundef %.tr10, float noundef %.tr11, float noundef %i.cg, float noundef %i.ch, float noundef %i.ce, float noundef %i.cf, float noundef %i.cc, float noundef %i.cb, float noundef %11, i32 noundef %i.cd)
  br label %tailrecurse

.loopexit:                                        ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #15 {
bb.a:
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 4 uses
  %5 = load float, ptr %4, align 4, !tbaa !188    ; 2 uses
  %6 = load float, ptr %3, align 4, !tbaa !187    ; 2 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !75 ; 4 uses
  %i.c = load <2 x float>, ptr %2, align 4, !tbaa !75 ; 3 uses
  %7 = insertelement <2 x float> poison, float %6, i64 0
  %i.d = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = shufflevector <2 x float> %i.a, <2 x float> %i.c, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.f = fsub <2 x float> %i.d, %i.e
  %i.g = shufflevector <2 x float> %i.b, <2 x float> %i.a, <2 x i32> <i32 1, i32 3>
  %i.h = shufflevector <2 x float> %i.a, <2 x float> %i.c, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.i = fsub <2 x float> %i.g, %i.h
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fsub <2 x float> %9, %i.h
  %i.k = shufflevector <2 x float> %i.b, <2 x float> %i.a, <2 x i32> <i32 0, i32 2>
  %i.l = fsub <2 x float> %i.k, %i.e
  %i.m = fneg <2 x float> %i.l
  %i.n = fmul <2 x float> %i.j, %i.m
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> %i.i, <2 x float> %i.n) ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 1
  %i.q = fcmp olt float %i.p, 0.000000e+00        ; 2 uses
  %i.r = extractelement <2 x float> %i.o, i64 0
  %i.s = fcmp uge float %i.r, 0.000000e+00
  %i.t = xor i1 %i.s, %i.q
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !188
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !188 ; 2 uses
  %i.y = extractelement <2 x float> %i.b, i64 0
  %i.z = fsub float %6, %i.y
  %10 = fsub float %i.v, %i.x
  %i.aa = fsub float %5, %i.x
  %foldExtExtBinop28 = fsub <2 x float> %i.c, %i.b
  %i.ab = extractelement <2 x float> %foldExtExtBinop28, i64 0
  %i.ac = fneg float %i.ab
  %i.ad = fmul float %i.aa, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.z, float %10, float %i.ad)
  %i.af = fcmp uge float %i.ae, 0.000000e+00
  %i.ag = xor i1 %i.af, %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = phi i1 [ false, %bb.a ], [ %i.ag, %bb.b ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z27ImTriangleBarycentricCoordsRK6ImVec2S1_S1_S1_RfS2_S2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6) local_unnamed_addr #3 {
bb.a:
  %.val30 = load float, ptr %2, align 4, !tbaa !187
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val31 = load float, ptr %i.a, align 4, !tbaa !188 ; 2 uses
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 2 uses
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !75 ; 4 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = fsub float %.val30, %i.d
  %i.f = insertelement <2 x float> %i.b, float %.val31, i64 1
  %i.g = fsub <2 x float> %i.f, %i.c              ; 2 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = load <2 x float>, ptr %3, align 4, !tbaa !75 ; 2 uses
  %i.j = insertelement <2 x float> %i.i, float %.val31, i64 1
  %i.k = fsub <2 x float> %i.j, %i.c              ; 2 uses
  %i.l = shufflevector <2 x float> %i.i, <2 x float> %i.b, <2 x i32> <i32 1, i32 3>
  %i.m = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fsub <2 x float> %i.l, %i.m              ; 2 uses
  %i.o = fneg <2 x float> %i.n                    ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.e, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.q, %i.o
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.k, <2 x float> %i.r) ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.k, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = extractelement <2 x float> %i.g, i64 0
  %i.v = extractelement <2 x float> %i.n, i64 0
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.v, float %i.t)
  %i.x = insertelement <2 x float> %i.s, float %i.w, i64 1
  %i.y = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fdiv <2 x float> %i.x, %i.y              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  store float %i.aa, ptr %5, align 4, !tbaa !75
  %i.ab = extractelement <2 x float> %i.z, i64 1  ; 2 uses
  store float %i.ab, ptr %6, align 4, !tbaa !75
  %i.ac = load float, ptr %5, align 4, !tbaa !75
  %i.ad = fsub float 1.000000e+00, %i.ac
  %i.ae = fsub float %i.ad, %i.ab
  store float %i.ae, ptr %4, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local <2 x float> @_Z22ImTriangleClosestPointRK6ImVec2S1_S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = load <2 x float>, ptr %3, align 4, !tbaa !75 ; 7 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !75 ; 4 uses
  %i.c = fsub <2 x float> %i.a, %i.b              ; 2 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 4 uses
  %i.e = fsub <2 x float> %i.d, %i.b              ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.e
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  %i.h = extractelement <2 x float> %i.c, i64 0
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.g, float %i.f) ; 3 uses
  %i.j = fcmp olt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %0, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit

bb.c:                                             ; preds = %bb.a
  %foldExtExtBinop82 = fmul <2 x float> %i.e, %i.e
  %i.k = extractelement <2 x float> %foldExtExtBinop82, i64 1
  %i.l = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.k) ; 2 uses
  %i.m = fcmp ogt float %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.012.0.copyload13.i = load <2 x float>, ptr %1, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = insertelement <2 x float> poison, float %i.i, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.e, %i.o
  %i.q = insertelement <2 x float> poison, float %i.l, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r
  %i.t = fadd <2 x float> %i.b, %i.s
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit

_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit:       ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.012.1.i = phi <2 x float> [ %.sroa.012.0.copyload.i, %bb.b ], [ %.sroa.012.0.copyload13.i, %bb.d ], [ %i.t, %bb.e ] ; 3 uses
  %i.u = fsub <2 x float> %i.a, %i.d              ; 2 uses
  %i.v = load <2 x float>, ptr %2, align 4, !tbaa !75 ; 4 uses
  %i.w = fsub <2 x float> %i.v, %i.d              ; 5 uses
  %foldExtExtBinop84 = fmul <2 x float> %i.u, %i.w
  %i.x = extractelement <2 x float> %foldExtExtBinop84, i64 1
  %i.y = extractelement <2 x float> %i.w, i64 0   ; 3 uses
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.y, float %i.x) ; 3 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit
  %.sroa.012.0.copyload.i48 = load <2 x float>, ptr %1, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit49

bb.g:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit
  %foldExtExtBinop86 = fmul <2 x float> %i.w, %i.w
  %i.ac = extractelement <2 x float> %foldExtExtBinop86, i64 1
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.aa, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.012.0.copyload13.i47 = load <2 x float>, ptr %2, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit49

bb.i:                                             ; preds = %bb.g
  %i.af = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.w, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  %i.al = fadd <2 x float> %i.d, %i.ak
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit49

_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit49:     ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.012.1.i46 = phi <2 x float> [ %.sroa.012.0.copyload.i48, %bb.f ], [ %.sroa.012.0.copyload13.i47, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %i.am = fsub <2 x float> %i.a, %i.v             ; 2 uses
  %i.an = fsub <2 x float> %i.b, %i.v             ; 5 uses
  %foldExtExtBinop88 = fmul <2 x float> %i.am, %i.an
  %i.ao = extractelement <2 x float> %foldExtExtBinop88, i64 1
  %i.ap = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.aq = extractelement <2 x float> %i.am, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.ao) ; 3 uses
  %i.as = fcmp olt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit49
  %.sroa.012.0.copyload.i60 = load <2 x float>, ptr %2, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit61

bb.k:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit49
  %foldExtExtBinop90 = fmul <2 x float> %i.an, %i.an
  %i.at = extractelement <2 x float> %foldExtExtBinop90, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.ar, %i.au
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.012.0.copyload13.i59 = load <2 x float>, ptr %0, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit61

bb.m:                                             ; preds = %bb.k
  %i.aw = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.an, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x float> %i.ay, %i.ba
  %i.bc = fadd <2 x float> %i.v, %i.bb
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit61

_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit61:     ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.012.1.i58 = phi <2 x float> [ %.sroa.012.0.copyload.i60, %bb.j ], [ %.sroa.012.0.copyload13.i59, %bb.l ], [ %i.bc, %bb.m ] ; 3 uses
  %foldExtExtBinop92 = fsub <2 x float> %i.a, %.sroa.012.1.i
  %i.bd = extractelement <2 x float> %foldExtExtBinop92, i64 0 ; 2 uses
  %foldExtExtBinop94 = fsub <2 x float> %i.a, %.sroa.012.1.i ; 2 uses
  %foldExtExtBinop96 = fmul <2 x float> %foldExtExtBinop94, %foldExtExtBinop94
  %i.be = extractelement <2 x float> %foldExtExtBinop96, i64 1
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.be) ; 3 uses
  %i.bg = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = shufflevector <2 x float> %.sroa.012.1.i46, <2 x float> %.sroa.012.1.i58, <2 x i32> <i32 0, i32 2>
  %i.bi = fsub <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = shufflevector <2 x float> %.sroa.012.1.i46, <2 x float> %.sroa.012.1.i58, <2 x i32> <i32 1, i32 3>
  %i.bl = fsub <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bi, <2 x float> %i.bm) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0 ; 3 uses
  %i.bp = extractelement <2 x float> %i.bn, i64 1 ; 2 uses
  %i.bq = fcmp olt float %i.bo, %i.bp
  %i.br = select i1 %i.bq, float %i.bo, float %i.bp ; 2 uses
  %i.bs = fcmp olt float %i.bf, %i.br
  %i.bt = select i1 %i.bs, float %i.bf, float %i.br ; 2 uses
  %i.bu = fcmp oeq float %i.bt, %i.bf
  %i.bv = fcmp oeq float %i.bt, %i.bo
  %..val = select i1 %i.bv, <2 x float> %.sroa.012.1.i46, <2 x float> %.sroa.012.1.i58
  %.sroa.0.0 = select i1 %i.bu, <2 x float> %.sroa.012.1.i, <2 x float> %..val
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_Z9ImStricmpPKcS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
end_hunk_0
