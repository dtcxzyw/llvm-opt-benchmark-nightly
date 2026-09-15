Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
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
define <2 x float> @_Z34ImBezierCubicClosestPointCasteljauRK6ImVec2S1_S1_S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, float noundef %5) local_unnamed_addr #14 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 3 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.b = load i64, ptr %0, align 4                ; 3 uses
  store i64 %i.b, ptr %7, align 8
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !75
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = bitcast i32 %i.f to float
  %i.h = load float, ptr %1, align 4, !tbaa !249
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !250
  %i.k = load float, ptr %2, align 4, !tbaa !249
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !250
  %i.n = load float, ptr %3, align 4, !tbaa !249
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !250
  %.val = load float, ptr %4, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.val11 = load float, ptr %i.q, align 4
  call fastcc void @_ZL38ImBezierCubicClosestPointCasteljauStepRK6ImVec2RS_S2_Rffffffffffi(float %.val, float %.val11, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, float noundef %i.d, float noundef %i.g, float noundef %i.h, float noundef %i.j, float noundef %i.k, float noundef %i.m, float noundef %i.n, float noundef %i.p, float noundef %5, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.r = load <2 x float>, ptr %6, align 8
  ret <2 x float> %i.r
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL38ImBezierCubicClosestPointCasteljauStepRK6ImVec2RS_S2_Rffffffffffi(float %.0.val, float %.4.val, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, i32 noundef range(i32 0, 11) %12) unnamed_addr #15 {
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
  %i.be = fsub float %.0.val, %.sroa.01.0.vec.extract ; 2 uses
  %.sroa.01.4.vec.extract = extractelement <2 x float> %.sroa.012.1.i, i64 1
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
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #17 {
bb.a:
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 4 uses
  %5 = load float, ptr %4, align 4, !tbaa !250    ; 2 uses
  %6 = load float, ptr %3, align 4, !tbaa !249    ; 2 uses
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
  %i.v = load float, ptr %i.u, align 4, !tbaa !250
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !250 ; 2 uses
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
define void @_Z27ImTriangleBarycentricCoordsRK6ImVec2S1_S1_S1_RfS2_S2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !250 ; 2 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 2 uses
  %i.e = load <2 x float>, ptr %0, align 4, !tbaa !75 ; 4 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = fsub float %i.a, %i.f
  %i.h = insertelement <2 x float> %i.d, float %i.c, i64 1
  %i.i = fsub <2 x float> %i.h, %i.e              ; 2 uses
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = load <2 x float>, ptr %3, align 4, !tbaa !75 ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %i.c, i64 1
  %i.m = fsub <2 x float> %i.l, %i.e              ; 2 uses
  %i.n = shufflevector <2 x float> %i.k, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.o = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fsub <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = fneg <2 x float> %i.p                    ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.g, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.m, <2 x float> %i.t) ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.m, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = extractelement <2 x float> %i.i, i64 0
  %i.x = extractelement <2 x float> %i.p, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.w, float %i.x, float %i.v)
  %i.z = insertelement <2 x float> %i.u, float %i.y, i64 1
  %i.aa = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fdiv <2 x float> %i.z, %i.aa            ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  store float %i.ac, ptr %5, align 4, !tbaa !75
  %i.ad = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  store float %i.ad, ptr %6, align 4, !tbaa !75
  %i.ae = load float, ptr %5, align 4, !tbaa !75
  %i.af = fsub float 1.000000e+00, %i.ae
  %i.ag = fsub float %i.af, %i.ad
  store float %i.ag, ptr %4, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_Z22ImTriangleClosestPointRK6ImVec2S1_S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #13 {
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
  %foldExtExtBinop55 = fmul <2 x float> %i.e, %i.e
  %i.k = extractelement <2 x float> %foldExtExtBinop55, i64 1
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
  %foldExtExtBinop57 = fmul <2 x float> %i.u, %i.w
  %i.x = extractelement <2 x float> %foldExtExtBinop57, i64 1
  %i.y = extractelement <2 x float> %i.w, i64 0   ; 3 uses
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.y, float %i.x) ; 3 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit
  %.sroa.012.0.copyload.i25 = load <2 x float>, ptr %1, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit26

bb.g:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit
  %foldExtExtBinop59 = fmul <2 x float> %i.w, %i.w
  %i.ac = extractelement <2 x float> %foldExtExtBinop59, i64 1
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.aa, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.012.0.copyload13.i24 = load <2 x float>, ptr %2, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit26

bb.i:                                             ; preds = %bb.g
  %i.af = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.w, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  %i.al = fadd <2 x float> %i.d, %i.ak
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit26

_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit26:     ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.012.1.i23 = phi <2 x float> [ %.sroa.012.0.copyload.i25, %bb.f ], [ %.sroa.012.0.copyload13.i24, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %i.am = fsub <2 x float> %i.a, %i.v             ; 2 uses
  %i.an = fsub <2 x float> %i.b, %i.v             ; 5 uses
  %foldExtExtBinop61 = fmul <2 x float> %i.am, %i.an
  %i.ao = extractelement <2 x float> %foldExtExtBinop61, i64 1
  %i.ap = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.aq = extractelement <2 x float> %i.am, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.ao) ; 3 uses
  %i.as = fcmp olt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit26
  %.sroa.012.0.copyload.i31 = load <2 x float>, ptr %2, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit32

bb.k:                                             ; preds = %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit26
  %foldExtExtBinop63 = fmul <2 x float> %i.an, %i.an
  %i.at = extractelement <2 x float> %foldExtExtBinop63, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.ar, %i.au
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.012.0.copyload13.i30 = load <2 x float>, ptr %0, align 4
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit32

bb.m:                                             ; preds = %bb.k
  %i.aw = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.an, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x float> %i.ay, %i.ba
  %i.bc = fadd <2 x float> %i.v, %i.bb
  br label %_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit32

_Z18ImLineClosestPointRK6ImVec2S1_S1_.exit32:     ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.012.1.i29 = phi <2 x float> [ %.sroa.012.0.copyload.i31, %bb.j ], [ %.sroa.012.0.copyload13.i30, %bb.l ], [ %i.bc, %bb.m ] ; 3 uses
  %foldExtExtBinop65 = fsub <2 x float> %i.a, %.sroa.012.1.i
  %i.bd = extractelement <2 x float> %foldExtExtBinop65, i64 0 ; 2 uses
  %foldExtExtBinop67 = fsub <2 x float> %i.a, %.sroa.012.1.i ; 2 uses
  %foldExtExtBinop69 = fmul <2 x float> %foldExtExtBinop67, %foldExtExtBinop67
  %i.be = extractelement <2 x float> %foldExtExtBinop69, i64 1
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.be) ; 3 uses
  %i.bg = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = shufflevector <2 x float> %.sroa.012.1.i23, <2 x float> %.sroa.012.1.i29, <2 x i32> <i32 0, i32 2>
  %i.bi = fsub <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = shufflevector <2 x float> %.sroa.012.1.i23, <2 x float> %.sroa.012.1.i29, <2 x i32> <i32 1, i32 3>
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
  %..val = select i1 %i.bv, <2 x float> %.sroa.012.1.i23, <2 x float> %.sroa.012.1.i29
  %.sroa.0.0 = select i1 %i.bu, <2 x float> %.sroa.012.1.i, <2 x float> %..val
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -255, 256) i32 @_Z9ImStricmpPKcS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
end_hunk_0
begin_hunk_1_@_ZN5ImGui8NewFrameEv:bb.a
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avl, i64 20
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !614
  %i.avu = and i32 %i.avt, 131072
  %.not.i254.i.i = icmp eq i32 %i.avu, 0
  br i1 %.not.i254.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i, %bb.he, %bb.hd, %bb.hc
  %i.avv = getelementptr inbounds nuw i8, ptr %i.arj, i64 5232
  %i.avw = load i32, ptr %i.avv, align 8, !tbaa !803 ; 3 uses
  %i.avx = icmp sgt i32 %i.avw, 0
  br i1 %i.avx, label %.lr.ph.i255.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

.lr.ph.i255.i.i:                                  ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i
  %i.avy = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 5232
  %i.awa = load i32, ptr %i.avz, align 8, !tbaa !803
  %.not435.not.i.i = icmp sgt i32 %i.avw, %i.awa
  br i1 %.not435.not.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, label %.lr.ph.i255.i.split.i

.lr.ph.i255.i.split.i:                            ; preds = %.lr.ph.i255.i.i
  %i.awb = zext nneg i32 %i.avw to i64
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avy, i64 5240
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !494
  br label %bb.hf

bb.hf:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %.lr.ph.i255.i.split.i
  %indvars.iv.i.i352 = phi i64 [ %indvars.iv.next.i.i353, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ], [ %i.awb, %.lr.ph.i255.i.split.i ] ; 2 uses
  %indvars.iv.next.i.i353 = add nsw i64 %indvars.iv.i.i352, -1 ; 2 uses
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.awd, i64 %indvars.iv.next.i.i353
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !601 ; 4 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 205
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !398, !range !99, !noundef !236
  %i.awi = trunc nuw i8 %i.awh to i1
  br i1 %i.awi, label %bb.hg, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

bb.hg:                                            ; preds = %bb.hf
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awf, i64 960
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !674 ; 2 uses
  %i.awl = icmp eq ptr %i.awf, %i.awk
  br i1 %i.awl, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i: ; preds = %bb.hg
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awf, i64 20
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !614
  %i.awo = and i32 %i.awn, 131072
  %.not.i.i258.i.i = icmp eq i32 %i.awo, 0
  br i1 %.not.i.i258.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, %bb.hg, %bb.hf
  %i.awp = icmp samesign ugt i64 %indvars.iv.i.i352, 1
  br i1 %i.awp, label %bb.hf, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, !llvm.loop !1347

_ZL22FindWindowNavFocusableiii.exit.i.i:          ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i
  %i.awq = phi ptr [ %i.avq, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i ], [ %i.awk, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i ] ; 2 uses
  br i1 %i.avf, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %_ZL22FindWindowNavFocusableiii.exit.i.i
  %i.awr = getelementptr inbounds nuw i8, ptr %i.arj, i64 8699
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !559, !range !99, !noundef !236
  %i.awt = trunc nuw i8 %i.aws to i1
  br i1 %i.awt, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh, %_ZL22FindWindowNavFocusableiii.exit.i.i
  store ptr %i.awq, ptr %i.asa, align 8, !tbaa !799
  %i.awu = getelementptr inbounds nuw i8, ptr %i.arj, i64 8712
  store ptr %i.awq, ptr %i.awu, align 8, !tbaa !798
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.awv = getelementptr inbounds nuw i8, ptr %i.arj, i64 8736
  store <2 x float> zeroinitializer, ptr %i.awv, align 8, !tbaa !75
  %i.aww = getelementptr inbounds nuw i8, ptr %i.arj, i64 8756
  %i.awx = select i1 %i.avf, i32 2, i32 3         ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.arj, i64 8304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aww, i8 0, i64 16, i1 false)
  store i32 %i.awx, ptr %i.awy, align 8, !tbaa !551
  %i.awz = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  store i32 %i.awx, ptr %i.awz, align 8, !tbaa !1393
  br i1 %or.cond3.i.i, label %bb.hk, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

bb.hk:                                            ; preds = %bb.hj
  %i.axa = getelementptr inbounds nuw i8, ptr %i.arj, i64 8700
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !560
  %i.axc = getelementptr inbounds nuw i8, ptr %i.arj, i64 8704
  %i.axd = load i32, ptr %i.axc, align 8, !tbaa !561
  %i.axe = or i32 %i.axd, %i.axb                  ; 4 uses
  %i.axf = and i32 %i.axe, 4096
  %.not.i259.i.i = icmp eq i32 %i.axf, 0
  br i1 %.not.i259.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.axg = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.axh = getelementptr i8, ptr %i.axg, i64 7376
  %i.axi = getelementptr i8, ptr %i.axg, i64 7380
  store i32 %i.atj, ptr %i.axi, align 4, !tbaa !523
  store i32 %i.atj, ptr %i.axh, align 4, !tbaa !524
  %i.axj = getelementptr i8, ptr %i.axg, i64 7385
  store i8 0, ptr %i.axj, align 1, !tbaa !525
  %i.axk = getelementptr i8, ptr %i.axg, i64 7384
  store i8 0, ptr %i.axk, align 4, !tbaa !526
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.axl = and i32 %i.axe, 8192
  %.not16.i.i.i = icmp eq i32 %i.axl, 0
  br i1 %.not16.i.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.axm = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.axn = getelementptr i8, ptr %i.axm, i64 7388
  %i.axo = getelementptr i8, ptr %i.axm, i64 7392
  store i32 %i.atj, ptr %i.axo, align 4, !tbaa !523
  store i32 %i.atj, ptr %i.axn, align 4, !tbaa !524
  %i.axp = getelementptr i8, ptr %i.axm, i64 7397
  store i8 0, ptr %i.axp, align 1, !tbaa !525
  %i.axq = getelementptr i8, ptr %i.axm, i64 7396
  store i8 0, ptr %i.axq, align 4, !tbaa !526
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.axr = and i32 %i.axe, 16384
  %.not17.i.i.i = icmp eq i32 %i.axr, 0
  br i1 %.not17.i.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.axs = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.axt = getelementptr i8, ptr %i.axs, i64 7400
  %i.axu = getelementptr i8, ptr %i.axs, i64 7404
  store i32 %i.atj, ptr %i.axu, align 4, !tbaa !523
  store i32 %i.atj, ptr %i.axt, align 4, !tbaa !524
  %i.axv = getelementptr i8, ptr %i.axs, i64 7409
  store i8 0, ptr %i.axv, align 1, !tbaa !525
  %i.axw = getelementptr i8, ptr %i.axs, i64 7408
  store i8 0, ptr %i.axw, align 4, !tbaa !526
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.axx = and i32 %i.axe, 32768
  %.not18.i.i.i = icmp eq i32 %i.axx, 0
  br i1 %.not18.i.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.axy = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.axz = getelementptr i8, ptr %i.axy, i64 7412
  %i.aya = getelementptr i8, ptr %i.axy, i64 7416
  store i32 %i.atj, ptr %i.aya, align 4, !tbaa !523
  store i32 %i.atj, ptr %i.axz, align 4, !tbaa !524
  %i.ayb = getelementptr i8, ptr %i.axy, i64 7421
  store i8 0, ptr %i.ayb, align 1, !tbaa !525
  %i.ayc = getelementptr i8, ptr %i.axy, i64 7420
  store i8 0, ptr %i.ayc, align 4, !tbaa !526
  br label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i:  ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %bb.hr, %bb.hq, %bb.hj, %.lr.ph.i255.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i, %bb.hb
  %.2205.i.i = phi i1 [ false, %bb.hb ], [ %.not226.i.i, %bb.hr ], [ %.not226.i.i, %bb.hj ], [ %.not226.i.i, %bb.hq ], [ false, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i ], [ false, %.lr.ph.i255.i.i ], [ false, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ] ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.arj, i64 8712 ; 5 uses
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !798 ; 2 uses
  %.not228.i.i = icmp eq ptr %i.aye, null
  br i1 %.not228.i.i, label %bb.hs, label %.thread396.i.i

bb.hs:                                            ; preds = %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.arj, i64 8748
  %i.ayg = load i8, ptr %i.ayf, align 4, !tbaa !802, !range !99, !noundef !236
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %bb.ht, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

bb.ht:                                            ; preds = %bb.hs
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  %i.ayj = load i32, ptr %i.ayi, align 8, !tbaa !1393
  %i.ayk = icmp eq i32 %i.ayj, 3
  br i1 %i.ayk, label %._crit_edge.i.i351, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

._crit_edge.i.i351:                               ; preds = %bb.ht
  %.pre459.i.i = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %bb.iq

.thread396.i.i:                                   ; preds = %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !1393 ; 2 uses
  %i.ayn = icmp eq i32 %i.aym, 3
  br i1 %i.ayn, label %bb.hu, label %.thread512.i.i

bb.hu:                                            ; preds = %.thread396.i.i
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.arj, i64 64
  %i.ayp = load float, ptr %i.ayo, align 8, !tbaa !1389
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.arj, i64 8736 ; 2 uses
  %i.ayr = load float, ptr %i.ayq, align 8, !tbaa !804
  %i.ays = fadd float %i.ayp, %i.ayr              ; 2 uses
  store float %i.ays, ptr %i.ayq, align 8, !tbaa !804
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.arj, i64 8740 ; 3 uses
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !800 ; 2 uses
  %i.ayv = fadd float %i.ays, -2.000000e-01
  %i.ayw = fdiv float %i.ayv, 5.000000e-02        ; 3 uses
  %i.ayx = fcmp olt float %i.ayw, 0.000000e+00
  %i.ayy = fcmp ogt float %i.ayw, 1.000000e+00
  %i.ayz = select i1 %i.ayy, float 1.000000e+00, float %i.ayw
  %i.aza = select i1 %i.ayx, float 0.000000e+00, float %i.ayz ; 2 uses
  %i.azb = fcmp oge float %i.ayu, %i.aza
  %i.azc = select i1 %i.azb, float %i.ayu, float %i.aza
  store float %i.azc, ptr %i.ayt, align 4, !tbaa !800
  %i.azd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 21 uses
  %i.aze = getelementptr i8, ptr %i.azd, i64 2388
  %i.azf = load i8, ptr %i.aze, align 4, !tbaa !239, !range !99, !noundef !236
  %i.azg = trunc nuw i8 %i.azf to i1
  br i1 %i.azg, label %bb.hv, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.hv:                                            ; preds = %bb.hu
  %i.azh = getelementptr i8, ptr %i.azd, i64 2392
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !774 ; 8 uses
  %i.azj = fcmp olt float %i.azi, 0.000000e+00
  br i1 %i.azj, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.azk = fcmp oeq float %i.azi, 0.000000e+00
  br i1 %i.azk, label %.thread398.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azd, i64 164
  %2 = getelementptr inbounds nuw i8, ptr %i.azd, i64 168
  %3 = load float, ptr %2, align 8, !tbaa !728    ; 2 uses
  %4 = load float, ptr %i.azl, align 4, !tbaa !726 ; 5 uses
  %i.azm = fcmp ogt float %i.azi, %4
  br i1 %i.azm, label %bb.hy, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.azo = load float, ptr %i.azn, align 8, !tbaa !727
  %i.azp = fsub float %i.azi, %i.azo              ; 3 uses
  %i.azq = fcmp ult float %i.azp, %i.azi
  br i1 %i.azq, label %bb.hz, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.hz:                                            ; preds = %bb.hy
  %i.azr = fcmp ugt float %3, 0.000000e+00
  %i.azs = fcmp olt float %i.azp, %4              ; 2 uses
  br i1 %i.azr, label %.split400.i.i, label %bb.ia

.split400.i.i:                                    ; preds = %bb.hz
  %i.azt = insertelement <2 x float> poison, float %i.azi, i64 0
  %5 = insertelement <2 x float> %i.azt, float %i.azp, i64 1
  %i.azu = insertelement <2 x float> poison, float %4, i64 0
  %i.azv = shufflevector <2 x float> %i.azu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azw = fsub <2 x float> %5, %i.azv
  %i.azx = fcmp olt float %i.azi, %4
  %6 = insertelement <2 x float> poison, float %3, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azy = fdiv <2 x float> %i.azw, %7
  %i.azz = fptosi <2 x float> %i.azy to <2 x i32>
  %i.baa = insertelement <2 x i1> poison, i1 %i.azx, i64 0
  %i.bab = insertelement <2 x i1> %i.baa, i1 %i.azs, i64 1
  %i.bac = select <2 x i1> %i.bab, <2 x i32> splat (i32 -1), <2 x i32> %i.azz ; 2 uses
  %shift = shufflevector <2 x i32> %i.bac, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bad = icmp sgt <2 x i32> %i.bac, %shift
  %i.bae = extractelement <2 x i1> %i.bad, i64 0
  br i1 %i.bae, label %.thread398.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.ia:                                            ; preds = %bb.hz
  %i.baf = fcmp oge float %i.azi, %4
  %i.bag = and i1 %i.baf, %i.azs
  br i1 %i.bag, label %.thread398.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

.thread398.i.i:                                   ; preds = %bb.ia, %.split400.i.i, %bb.hw
  %i.bah = getelementptr i8, ptr %i.azd, i64 7132
  %i.bai = load i8, ptr %i.bah, align 4, !tbaa !526, !range !99, !noundef !236
  %i.baj = xor i8 %i.bai, 1
  %i.bak = zext nneg i8 %i.baj to i32
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i:  ; preds = %.thread398.i.i, %bb.ia, %.split400.i.i, %bb.hy, %bb.hx, %bb.hv, %bb.hu
  %.230.i344.i.i = phi i32 [ 0, %bb.hu ], [ 0, %bb.hv ], [ 0, %bb.ia ], [ %i.bak, %.thread398.i.i ], [ 0, %bb.hy ], [ 0, %bb.hx ], [ 0, %.split400.i.i ]
  %i.bal = getelementptr i8, ptr %i.azd, i64 2404
  %i.bam = load i8, ptr %i.bal, align 4, !tbaa !239, !range !99, !noundef !236
  %i.ban = trunc nuw i8 %i.bam to i1
  br i1 %i.ban, label %bb.ib, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.ib:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i
  %i.bao = getelementptr i8, ptr %i.azd, i64 2408
  %i.bap = load float, ptr %i.bao, align 4, !tbaa !774 ; 8 uses
  %i.baq = fcmp olt float %i.bap, 0.000000e+00
  br i1 %i.baq, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bar = fcmp oeq float %i.bap, 0.000000e+00
  br i1 %i.bar, label %.thread401.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bas = getelementptr inbounds nuw i8, ptr %i.azd, i64 164
  %8 = getelementptr inbounds nuw i8, ptr %i.azd, i64 168
  %9 = load float, ptr %8, align 8, !tbaa !728    ; 2 uses
  %10 = load float, ptr %i.bas, align 4, !tbaa !726 ; 5 uses
  %i.bat = fcmp ogt float %i.bap, %10
  br i1 %i.bat, label %bb.ie, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.ie:                                            ; preds = %bb.id
  %i.bau = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.bav = load float, ptr %i.bau, align 8, !tbaa !727
  %i.baw = fsub float %i.bap, %i.bav              ; 3 uses
  %i.bax = fcmp ult float %i.baw, %i.bap
  br i1 %i.bax, label %bb.if, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.if:                                            ; preds = %bb.ie
  %i.bay = fcmp ugt float %9, 0.000000e+00
  %i.baz = fcmp olt float %i.baw, %10             ; 2 uses
  br i1 %i.bay, label %.split403.i.i, label %bb.ig

.split403.i.i:                                    ; preds = %bb.if
  %i.bba = insertelement <2 x float> poison, float %i.bap, i64 0
  %11 = insertelement <2 x float> %i.bba, float %i.baw, i64 1
  %i.bbb = insertelement <2 x float> poison, float %10, i64 0
  %i.bbc = shufflevector <2 x float> %i.bbb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbd = fsub <2 x float> %11, %i.bbc
  %i.bbe = fcmp olt float %i.bap, %10
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbf = fdiv <2 x float> %i.bbd, %13
  %i.bbg = fptosi <2 x float> %i.bbf to <2 x i32>
  %i.bbh = insertelement <2 x i1> poison, i1 %i.bbe, i64 0
  %i.bbi = insertelement <2 x i1> %i.bbh, i1 %i.baz, i64 1
  %i.bbj = select <2 x i1> %i.bbi, <2 x i32> splat (i32 -1), <2 x i32> %i.bbg ; 2 uses
  %shift780 = shufflevector <2 x i32> %i.bbj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bbk = icmp sgt <2 x i32> %i.bbj, %shift780
  %i.bbl = extractelement <2 x i1> %i.bbk, i64 0
  br i1 %i.bbl, label %.thread401.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.ig:                                            ; preds = %bb.if
  %i.bbm = fcmp oge float %i.bap, %10
  %i.bbn = and i1 %i.bbm, %i.baz
  br i1 %i.bbn, label %.thread401.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

.thread401.i.i:                                   ; preds = %bb.ig, %.split403.i.i, %bb.ic
  %i.bbo = getelementptr i8, ptr %i.azd, i64 7144
  %i.bbp = load i8, ptr %i.bbo, align 4, !tbaa !526, !range !99, !noundef !236
  %sext.i.i = add nsw i8 %i.bbp, -1
  %i.bbq = sext i8 %sext.i.i to i32
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i:  ; preds = %.thread401.i.i, %bb.ig, %.split403.i.i, %bb.ie, %bb.id, %bb.ib, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i
  %.230.i358.i.i = phi i32 [ 0, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i ], [ 0, %bb.ib ], [ 0, %bb.ig ], [ %i.bbq, %.thread401.i.i ], [ 0, %bb.ie ], [ 0, %bb.id ], [ 0, %.split403.i.i ]
  %i.bbr = add nsw i32 %.230.i358.i.i, %.230.i344.i.i ; 5 uses
  %i.bbs = icmp eq i32 %i.bbr, 0
  %or.cond5.i.i = or i1 %.2205.i.i, %i.bbs
  br i1 %or.cond5.i.i, label %bb.iq, label %bb.ih

bb.ih:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.azd, i64 8712 ; 2 uses
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !798 ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 20
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !614
  %i.bbx = and i32 %i.bbw, 134217728
  %.not.i260.i.i = icmp eq i32 %i.bbx, 0
  br i1 %.not.i260.i.i, label %bb.ii, label %_ZL24NavUpdateWindowingTargeti.exit.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.bby = getelementptr i8, ptr %i.bbu, i64 226
  %.val.i.i.i = load i16, ptr %i.bby, align 2, !tbaa !717
  %i.bbz = sext i16 %.val.i.i.i to i32            ; 2 uses
  %i.bca = add nsw i32 %i.bbr, %i.bbz             ; 2 uses
  %i.bcb = icmp sgt i32 %i.bca, -1
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.azd, i64 5232
  %i.bcd = load i32, ptr %i.bcc, align 8, !tbaa !803 ; 4 uses
  br i1 %i.bcb, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ii
  %i.bce = getelementptr inbounds nuw i8, ptr %i.azd, i64 5240
  br label %bb.ij

bb.ij:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.01317.i.i.i.i = phi i32 [ %i.bca, %.lr.ph.i.i.i.i ], [ %i.bcs, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i ] ; 3 uses
  %.not34.i.i.i = icmp slt i32 %.01317.i.i.i.i, %i.bcd
  br i1 %.not34.i.i.i, label %bb.ik, label %.loopexit.i.i.i

bb.ik:                                            ; preds = %bb.ij
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !494
  %i.bcg = zext nneg i32 %.01317.i.i.i.i to i64
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %i.bcf, i64 %i.bcg
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !601 ; 5 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 205
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !398, !range !99, !noundef !236
  %i.bcl = trunc nuw i8 %i.bck to i1
  br i1 %i.bcl, label %bb.il, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bci, i64 960
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !674
  %i.bco = icmp eq ptr %i.bci, %i.bcn
  br i1 %i.bco, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i: ; preds = %bb.il
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bci, i64 20
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !614
  %i.bcr = and i32 %i.bcq, 131072
  %.not.i.i.i.i274.i = icmp eq i32 %i.bcr, 0
  br i1 %.not.i.i.i.i274.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i, %bb.il, %bb.ik
  %i.bcs = add nsw i32 %.01317.i.i.i.i, %i.bbr    ; 2 uses
  %i.bct = icmp sgt i32 %i.bcs, -1
  br i1 %i.bct, label %bb.ij, label %.loopexit.i.i.i, !llvm.loop !1347

.loopexit.i.i.i:                                  ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i, %bb.ij, %bb.ii
  %i.bcu = icmp slt i32 %i.bbr, 0
  br i1 %i.bcu, label %bb.im, label %.lr.ph.i19.i.i.i

bb.im:                                            ; preds = %.loopexit.i.i.i
  %i.bcv = add nsw i32 %i.bcd, -1
  %i.bcw = icmp sgt i32 %i.bcd, 0
  br i1 %i.bcw, label %.lr.ph.i19.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %bb.im, %.loopexit.i.i.i
  %i.bcx = phi i32 [ %i.bcv, %bb.im ], [ 0, %.loopexit.i.i.i ]
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.azd, i64 5240
  br label %bb.in

bb.in:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i, %.lr.ph.i19.i.i.i
  %.01317.i20.i.i.i = phi i32 [ %i.bcx, %.lr.ph.i19.i.i.i ], [ %i.bdn, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i ] ; 4 uses
  %i.bcz = icmp sge i32 %.01317.i20.i.i.i, %i.bcd
  %.not.i21.i.i.i = icmp eq i32 %.01317.i20.i.i.i, %i.bbz
  %or.cond.i22.i.i.i = or i1 %.not.i21.i.i.i, %i.bcz
  br i1 %or.cond.i22.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bda = load ptr, ptr %i.bcy, align 8, !tbaa !494
  %i.bdb = zext nneg i32 %.01317.i20.i.i.i to i64
  %i.bdc = getelementptr inbounds nuw [8 x i8], ptr %i.bda, i64 %i.bdb
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !601 ; 5 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 205
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !398, !range !99, !noundef !236
  %i.bdg = trunc nuw i8 %i.bdf to i1
  br i1 %i.bdg, label %bb.ip, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i

bb.ip:                                            ; preds = %bb.io
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdd, i64 960
  %i.bdi = load ptr, ptr %i.bdh, align 8, !tbaa !674
  %i.bdj = icmp eq ptr %i.bdd, %i.bdi
  br i1 %i.bdj, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i: ; preds = %bb.ip
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdd, i64 20
  %i.bdl = load i32, ptr %i.bdk, align 4, !tbaa !614
  %i.bdm = and i32 %i.bdl, 131072
  %.not.i.i25.i.i.i = icmp eq i32 %i.bdm, 0
  br i1 %.not.i.i25.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i, %bb.ip, %bb.io
  %i.bdn = add nsw i32 %.01317.i20.i.i.i, %i.bbr  ; 2 uses
  %i.bdo = icmp sgt i32 %i.bdn, -1
  br i1 %i.bdo, label %bb.in, label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i, !llvm.loop !1347

_ZL22FindWindowNavFocusableiii.exit.i.i.i:        ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i
  %.0.i261.i.i = phi ptr [ %i.bdd, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i ], [ %i.bci, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i ] ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.azd, i64 8720
  store ptr %.0.i261.i.i, ptr %i.bdp, align 8, !tbaa !799
  store ptr %.0.i261.i.i, ptr %i.bbt, align 8, !tbaa !798
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.azd, i64 8756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bdq, i8 0, i64 16, i1 false)
  br label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i

_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i, %bb.in, %_ZL22FindWindowNavFocusableiii.exit.i.i.i, %bb.im
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.azd, i64 8748
  store i8 0, ptr %i.bdr, align 4, !tbaa !802
  br label %_ZL24NavUpdateWindowingTargeti.exit.i.i

_ZL24NavUpdateWindowingTargeti.exit.i.i:          ; preds = %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i, %bb.ih
  store float 1.000000e+00, ptr %i.ayt, align 4, !tbaa !800
  br label %bb.iq

bb.iq:                                            ; preds = %_ZL24NavUpdateWindowingTargeti.exit.i.i, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i, %._crit_edge.i.i351
  %i.bds = phi ptr [ %.pre459.i.i, %._crit_edge.i.i351 ], [ %i.azd, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i ], [ %i.azd, %_ZL24NavUpdateWindowingTargeti.exit.i.i ] ; 2 uses
  %i.bdt = getelementptr i8, ptr %i.bds, i64 2260
  %i.bdu = load i8, ptr %i.bdt, align 4, !tbaa !239, !range !99, !noundef !236
  %i.bdv = trunc nuw i8 %i.bdu to i1
  br i1 %i.bdv, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i:           ; preds = %bb.iq
  %i.bdw = getelementptr i8, ptr %i.bds, i64 7036
  %i.bdx = load i8, ptr %i.bdw, align 4, !tbaa !526, !range !99, !noundef !236
  %i.bdy = icmp eq i8 %i.bdx, 0
  br i1 %i.bdy, label %bb.it, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i:    ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i, %bb.iq
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.arj, i64 8740
  %i.bea = load float, ptr %i.bdz, align 4, !tbaa !800
  %i.beb = fcmp olt float %i.bea, 1.000000e+00
  %i.bec = getelementptr inbounds nuw i8, ptr %i.arj, i64 8748 ; 2 uses
  %i.bed = load i8, ptr %i.bec, align 4, !tbaa !802, !range !99, !noundef !236
  %i.bee = icmp ne i8 %i.bed, 0
  %i.bef = and i1 %i.beb, %i.bee
  br i1 %i.bef, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i
  %i.beg = getelementptr inbounds nuw i8, ptr %i.arj, i64 8224
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !370
  %.not230.i.i = icmp ne ptr %i.beh, null
  br label %.thread406.i.i

bb.is:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i
  %i.bei = load ptr, ptr %i.ayd, align 8, !tbaa !798
  br label %.thread406.i.i

.thread406.i.i:                                   ; preds = %bb.is, %bb.ir
  %.0193.i.i = phi i1 [ false, %bb.is ], [ %.not230.i.i, %bb.ir ]
  %.0192.i.i = phi ptr [ %i.bei, %bb.is ], [ null, %bb.ir ]
  store ptr null, ptr %i.ayd, align 8, !tbaa !798
  store i8 0, ptr %i.bec, align 4, !tbaa !802
  br label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

bb.it:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i
  %.pr.pre.i.i = load ptr, ptr %i.ayd, align 8, !tbaa !798 ; 2 uses
  %.not231.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not231.i.i, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i, label %..thread512.i_crit_edge.i

..thread512.i_crit_edge.i:                        ; preds = %bb.it
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  %.pre.i350 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !1393
  br label %.thread512.i.i

.thread512.i.i:                                   ; preds = %..thread512.i_crit_edge.i, %.thread396.i.i
  %i.bej = phi i32 [ %.pre.i350, %..thread512.i_crit_edge.i ], [ %i.aym, %.thread396.i.i ]
  %.pr515.i.i = phi ptr [ %.pr.pre.i.i, %..thread512.i_crit_edge.i ], [ %i.aye, %.thread396.i.i ]
  %i.bek = icmp eq i32 %i.bej, 2
  br i1 %i.bek, label %bb.iu, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

bb.iu:                                            ; preds = %.thread512.i.i
  %i.bel = getelementptr inbounds nuw i8, ptr %i.arj, i64 8700
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !560 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.arj, i64 8704
end_hunk_1
begin_hunk_2_@_ZN5ImGui8NewFrameEv:bb.a
  %i.cit = getelementptr inbounds nuw i8, ptr %i.aln, i64 8280
  store i32 0, ptr %i.cit, align 8, !tbaa !815
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.aln, i64 8296 ; 2 uses
  %i.civ = load i32, ptr %i.ciu, align 8, !tbaa !818 ; 4 uses
  %.not237.i = icmp eq i32 %i.civ, 0
  br i1 %.not237.i, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  store i32 %i.civ, ptr %i.cfb, align 4, !tbaa !814
  store i32 %i.civ, ptr %i.cfc, align 8, !tbaa !813
  store i32 %i.civ, ptr %i.cfd, align 4, !tbaa !664
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.aln, i64 8300
  %i.cix = load i32, ptr %i.ciw, align 4, !tbaa !819
  store i32 %i.cix, ptr %i.cfe, align 8, !tbaa !812
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pw
  store i32 0, ptr %i.ciu, align 8, !tbaa !818
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cfa, i64 40
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8224
  %i.cja = load ptr, ptr %i.ciz, align 8, !tbaa !370 ; 20 uses
  %i.cjb = load i32, ptr %i.ciy, align 8, !tbaa !731 ; 2 uses
  %i.cjc = and i32 %i.cjb, 2
  %.not.i305.i = icmp eq i32 %i.cjc, 0
  br i1 %.not.i305.i, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cfa, i64 44
  %i.cje = load i32, ptr %i.cjd, align 4, !tbaa !773
  %i.cjf = trunc i32 %i.cje to i1
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.cjg = phi i1 [ false, %bb.py ], [ %i.cjf, %bb.pz ] ; 4 uses
  %i.cjh = trunc i32 %i.cjb to i1                 ; 5 uses
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8386 ; 2 uses
  %i.cjj = load i8, ptr %i.cji, align 2, !tbaa !554, !range !99, !noundef !236
  %i.cjk = trunc nuw i8 %i.cjj to i1
  %i.cjl = icmp ne ptr %i.cja, null               ; 5 uses
  %or.cond.i306.i = select i1 %i.cjk, i1 %i.cjl, i1 false
  br i1 %or.cond.i306.i, label %bb.qb, label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cfa, i64 10404
  %i.cjn = load i32, ptr %i.cjm, align 4, !tbaa !247
  %i.cjo = and i32 %i.cjn, 16
  %.not107.i.i = icmp eq i32 %i.cjo, 0
  br i1 %.not107.i.i, label %.thread.i315.i, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8400
  %i.cjq = load i32, ptr %i.cjp, align 8, !tbaa !820
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.760, i32 noundef %i.cjq)
  br label %.thread.i315.i

bb.qd:                                            ; preds = %bb.qa
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8400 ; 5 uses
  store i32 -1, ptr %i.cjr, align 8, !tbaa !820
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8388
  store i32 0, ptr %i.cjs, align 4, !tbaa !375
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8392
  store i32 0, ptr %i.cjt, align 8, !tbaa !821
  br i1 %i.cjl, label %bb.qe, label %bb.re

bb.qe:                                            ; preds = %bb.qd
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8712
  %i.cjv = load ptr, ptr %i.cju, align 8, !tbaa !798
  %.not105.i.i = icmp eq ptr %i.cjv, null
  br i1 %.not105.i.i, label %bb.qf, label %.thread234.i.i

bb.qf:                                            ; preds = %bb.qe
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cja, i64 20
  %i.cjx = load i32, ptr %i.cjw, align 4, !tbaa !614
  %i.cjy = and i32 %i.cjx, 65536
  %.not106.i.i = icmp eq i32 %i.cjy, 0
  br i1 %.not106.i.i, label %bb.qg, label %.thread234.i.i

bb.qg:                                            ; preds = %bb.qf
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cfa, i64 7768
  %i.cka = load i32, ptr %i.cjz, align 8, !tbaa !547 ; 4 uses
  %i.ckb = and i32 %i.cka, 1
  %.not240.i323.i = icmp eq i32 %i.ckb, 0
  br i1 %.not240.i323.i, label %bb.qh, label %bb.qm

bb.qh:                                            ; preds = %bb.qg
  br i1 %i.cjg, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %bb.qh
  %i.ckc = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 638, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckc, label %bb.ql, label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  br i1 %i.cjh, label %bb.qk, label %bb.qm

bb.qk:                                            ; preds = %bb.qj
  %i.ckd = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 513, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckd, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk, %bb.qi
  store i32 0, ptr %i.cjr, align 8, !tbaa !820
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk, %bb.qj, %bb.qg
  %i.cke = phi i32 [ 0, %bb.ql ], [ -1, %bb.qk ], [ -1, %bb.qj ], [ -1, %bb.qg ] ; 3 uses
  %i.ckf = and i32 %i.cka, 2
  %.not241.i324.i = icmp eq i32 %i.ckf, 0
  br i1 %.not241.i324.i, label %bb.qn, label %bb.qs

bb.qn:                                            ; preds = %bb.qm
  br i1 %i.cjg, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.ckg = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 639, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckg, label %bb.qr, label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn
  br i1 %i.cjh, label %bb.qq, label %bb.qs

bb.qq:                                            ; preds = %bb.qp
  %i.ckh = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 514, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckh, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq, %bb.qo
  store i32 1, ptr %i.cjr, align 8, !tbaa !820
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq, %bb.qp, %bb.qm
  %i.cki = phi i32 [ 1, %bb.qr ], [ %i.cke, %bb.qq ], [ %i.cke, %bb.qp ], [ %i.cke, %bb.qm ] ; 3 uses
  %i.ckj = and i32 %i.cka, 4
  %.not242.i325.i = icmp eq i32 %i.ckj, 0
  br i1 %.not242.i325.i, label %bb.qt, label %bb.qy

bb.qt:                                            ; preds = %bb.qs
  br i1 %i.cjg, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %bb.qt
  %i.ckk = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 640, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckk, label %bb.qx, label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.qt
  br i1 %i.cjh, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  %i.ckl = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 515, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckl, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw, %bb.qu
  store i32 2, ptr %i.cjr, align 8, !tbaa !820
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qw, %bb.qv, %bb.qs
  %i.ckm = phi i32 [ 2, %bb.qx ], [ %i.cki, %bb.qw ], [ %i.cki, %bb.qv ], [ %i.cki, %bb.qs ] ; 3 uses
  %i.ckn = and i32 %i.cka, 8
  %.not243.i.i = icmp eq i32 %i.ckn, 0
  br i1 %.not243.i.i, label %bb.qz, label %.thread234.i.i

bb.qz:                                            ; preds = %bb.qy
  br i1 %i.cjg, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.cko = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 641, i32 noundef 5, i32 noundef -1)
  br i1 %i.cko, label %bb.rd, label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  br i1 %i.cjh, label %bb.rc, label %.thread234.i.i

bb.rc:                                            ; preds = %bb.rb
  %i.ckp = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 516, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckp, label %bb.rd, label %.thread234.i.i

bb.rd:                                            ; preds = %bb.rc, %bb.ra
  store i32 3, ptr %i.cjr, align 8, !tbaa !820
  br label %.thread234.i.i

.thread234.i.i:                                   ; preds = %bb.rd, %bb.rc, %bb.rb, %bb.qy, %bb.qf, %bb.qe
  %i.ckq = phi i32 [ -1, %bb.qe ], [ -1, %bb.qf ], [ 3, %bb.rd ], [ %i.ckm, %bb.rc ], [ %i.ckm, %bb.rb ], [ %i.ckm, %bb.qy ]
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8408
  store i32 %i.ckq, ptr %i.ckr, align 8, !tbaa !372
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8428
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.cks, align 4, !tbaa !75
  br label %.thread.i315.i

bb.re:                                            ; preds = %bb.qd
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8408
  store i32 -1, ptr %i.ckt, align 8, !tbaa !372
  %i.cku = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8428
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.cku, align 4, !tbaa !75
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

.thread.i315.i:                                   ; preds = %.thread234.i.i, %bb.qc, %bb.qb
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8400
  %i.ckw = load i32, ptr %i.ckv, align 8, !tbaa !820
  %i.ckx = icmp eq i32 %i.ckw, -1
  %or.cond3.i316.i = and i1 %i.ckx, %i.cjh
  br i1 %or.cond3.i316.i, label %bb.rf, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rf:                                            ; preds = %.thread.i315.i
  %i.cky = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 37 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 8224
  %i.cla = load ptr, ptr %i.ckz, align 8, !tbaa !370 ; 27 uses
  %i.clb = getelementptr inbounds nuw i8, ptr %i.cla, i64 20
  %i.clc = load i32, ptr %i.clb, align 4, !tbaa !614
  %i.cld = and i32 %i.clc, 65536
  %.not.i.i317.i = icmp eq i32 %i.cld, 0
  br i1 %.not.i.i317.i, label %bb.rg, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rg:                                            ; preds = %bb.rf
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cky, i64 8712
  %i.clf = load ptr, ptr %i.cle, align 8, !tbaa !798
  %.not53.i.i.i = icmp eq ptr %i.clf, null
  br i1 %.not53.i.i.i, label %bb.rh, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rh:                                            ; preds = %bb.rg
  %i.clg = getelementptr i8, ptr %i.cky, i64 388
  %i.clh = load i8, ptr %i.clg, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cli = trunc nuw i8 %i.clh to i1
  br i1 %i.cli, label %bb.ri, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.ri:                                            ; preds = %bb.rh
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cky, i64 7772
  %i.clk = load i8, ptr %i.clj, align 4, !tbaa !548, !range !99, !noundef !236
  %i.cll = trunc nuw i8 %i.clk to i1
  br i1 %i.cll, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cky, i64 5428
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !652
  %.not101.i.i.i = icmp eq i32 %i.cln, -1
  br i1 %.not101.i.i.i, label %bb.rk, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %i.clo = getelementptr i8, ptr %i.cky, i64 5624
  %i.clp = load i32, ptr %i.clo, align 8, !tbaa !524
  %.not.i.i.i.i322.i = icmp eq i32 %i.clp, -1
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i:        ; preds = %bb.rk, %bb.rj, %bb.rh
  %.0.i.i.i.i = phi i1 [ false, %bb.rh ], [ %.not.i.i.i.i322.i, %bb.rk ], [ false, %bb.rj ] ; 3 uses
  %i.clq = getelementptr i8, ptr %i.cky, i64 404
  %i.clr = load i8, ptr %i.clq, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cls = trunc nuw i8 %i.clr to i1
  br i1 %i.cls, label %bb.rl, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

bb.rl:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cky, i64 7772
  %i.clu = load i8, ptr %i.clt, align 4, !tbaa !548, !range !99, !noundef !236
  %i.clv = trunc nuw i8 %i.clu to i1
  br i1 %i.clv, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %i.clw = getelementptr inbounds nuw i8, ptr %i.cky, i64 5428
  %i.clx = load i32, ptr %i.clw, align 4, !tbaa !652
  %.not102.i.i.i = icmp eq i32 %i.clx, -1
  br i1 %.not102.i.i.i, label %bb.rn, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %i.cly = getelementptr i8, ptr %i.cky, i64 5636
  %i.clz = load i32, ptr %i.cly, align 4, !tbaa !524
  %.not.i.i56.i.i.i = icmp eq i32 %i.clz, -1
  %i.cma = xor i1 %.0.i.i.i.i, %.not.i.i56.i.i.i
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i:      ; preds = %bb.rn, %bb.rm, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i
  %.0.i55.i.i.i = phi i1 [ %.0.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i ], [ %i.cma, %bb.rn ], [ %.0.i.i.i.i, %bb.rm ]
  %i.cmb = getelementptr i8, ptr %i.cky, i64 420
  %i.cmc = load i8, ptr %i.cmb, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cmd = trunc nuw i8 %i.cmc to i1
  br i1 %i.cmd, label %bb.ro, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.ro:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i
  %i.cme = getelementptr i8, ptr %i.cky, i64 424
  %i.cmf = load float, ptr %i.cme, align 8, !tbaa !774 ; 8 uses
  %i.cmg = fcmp olt float %i.cmf, 0.000000e+00
  br i1 %i.cmg, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.cmh = fcmp oeq float %i.cmf, 0.000000e+00
  br i1 %i.cmh, label %.thread.i.i321.i, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cky, i64 164
  %14 = getelementptr inbounds nuw i8, ptr %i.cky, i64 168
  %15 = load float, ptr %14, align 8, !tbaa !728  ; 2 uses
  %16 = load float, ptr %i.cmi, align 4, !tbaa !726 ; 5 uses
  %i.cmj = fcmp ogt float %i.cmf, %16
  br i1 %i.cmj, label %bb.rr, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rr:                                            ; preds = %bb.rq
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cky, i64 64
  %i.cml = load float, ptr %i.cmk, align 8, !tbaa !727
  %i.cmm = fsub float %i.cmf, %i.cml              ; 3 uses
  %i.cmn = fcmp ult float %i.cmm, %i.cmf
  br i1 %i.cmn, label %bb.rs, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rs:                                            ; preds = %bb.rr
  %i.cmo = fcmp ugt float %15, 0.000000e+00
  %i.cmp = fcmp olt float %i.cmm, %16             ; 2 uses
  br i1 %i.cmo, label %.split.i.i.i, label %bb.rt

.split.i.i.i:                                     ; preds = %bb.rs
  %i.cmq = insertelement <2 x float> poison, float %i.cmf, i64 0
  %17 = insertelement <2 x float> %i.cmq, float %i.cmm, i64 1
  %i.cmr = insertelement <2 x float> poison, float %16, i64 0
  %i.cms = shufflevector <2 x float> %i.cmr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cmt = fsub <2 x float> %17, %i.cms
  %i.cmu = fcmp olt float %i.cmf, %16
  %18 = insertelement <2 x float> poison, float %15, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cmv = fdiv <2 x float> %i.cmt, %19
  %i.cmw = fptosi <2 x float> %i.cmv to <2 x i32>
  %i.cmx = insertelement <2 x i1> poison, i1 %i.cmu, i64 0
  %i.cmy = insertelement <2 x i1> %i.cmx, i1 %i.cmp, i64 1
  %i.cmz = select <2 x i1> %i.cmy, <2 x i32> splat (i32 -1), <2 x i32> %i.cmw ; 2 uses
  %shift781 = shufflevector <2 x i32> %i.cmz, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cna = icmp sgt <2 x i32> %i.cmz, %shift781
  %i.cnb = extractelement <2 x i1> %i.cna, i64 0
  br i1 %i.cnb, label %.thread.i.i321.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rt:                                            ; preds = %bb.rs
  %i.cnc = fcmp oge float %i.cmf, %16
  %i.cnd = and i1 %i.cnc, %i.cmp
  br i1 %i.cnd, label %.thread.i.i321.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

.thread.i.i321.i:                                 ; preds = %bb.rt, %.split.i.i.i, %bb.rp
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cky, i64 7772
  %i.cnf = load i8, ptr %i.cne, align 4, !tbaa !548, !range !99, !noundef !236
  %i.cng = trunc nuw i8 %i.cnf to i1
  br i1 %i.cng, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %.thread.i.i321.i
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cky, i64 5428
  %i.cni = load i32, ptr %i.cnh, align 4, !tbaa !652
  %.not103.i.i.i = icmp eq i32 %i.cni, -1
  br i1 %.not103.i.i.i, label %bb.rv, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rv:                                            ; preds = %bb.ru, %.thread.i.i321.i
  %i.cnj = getelementptr i8, ptr %i.cky, i64 5648
  %i.cnk = load i32, ptr %i.cnj, align 8, !tbaa !524
  %.not.i.i58.i.i.i = icmp eq i32 %i.cnk, -1
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i:   ; preds = %bb.rv, %bb.ru, %bb.rt, %.split.i.i.i, %bb.rr, %bb.rq, %bb.ro, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i
  %.230.i.i.i.i = phi i1 [ false, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i ], [ false, %bb.ro ], [ false, %bb.rt ], [ false, %bb.rr ], [ false, %bb.rq ], [ %.not.i.i58.i.i.i, %bb.rv ], [ false, %bb.ru ], [ false, %.split.i.i.i ] ; 3 uses
  %i.cnl = getelementptr i8, ptr %i.cky, i64 436
  %i.cnm = load i8, ptr %i.cnl, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cnn = trunc nuw i8 %i.cnm to i1
  br i1 %i.cnn, label %bb.rw, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.rw:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i
  %i.cno = getelementptr i8, ptr %i.cky, i64 440
  %i.cnp = load float, ptr %i.cno, align 8, !tbaa !774 ; 8 uses
  %i.cnq = fcmp olt float %i.cnp, 0.000000e+00
  br i1 %i.cnq, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.cnr = fcmp oeq float %i.cnp, 0.000000e+00
  br i1 %i.cnr, label %.thread83.i.i.i, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cky, i64 164
  %20 = getelementptr inbounds nuw i8, ptr %i.cky, i64 168
  %21 = load float, ptr %20, align 8, !tbaa !728  ; 2 uses
  %22 = load float, ptr %i.cns, align 4, !tbaa !726 ; 5 uses
  %i.cnt = fcmp ogt float %i.cnp, %22
  br i1 %i.cnt, label %bb.rz, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.rz:                                            ; preds = %bb.ry
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cky, i64 64
  %i.cnv = load float, ptr %i.cnu, align 8, !tbaa !727
  %i.cnw = fsub float %i.cnp, %i.cnv              ; 3 uses
  %i.cnx = fcmp ult float %i.cnw, %i.cnp
  br i1 %i.cnx, label %bb.sa, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sa:                                            ; preds = %bb.rz
  %i.cny = fcmp ugt float %21, 0.000000e+00
  %i.cnz = fcmp olt float %i.cnw, %22             ; 2 uses
  br i1 %i.cny, label %.split85.i.i.i, label %bb.sb

.split85.i.i.i:                                   ; preds = %bb.sa
  %i.coa = insertelement <2 x float> poison, float %i.cnp, i64 0
  %23 = insertelement <2 x float> %i.coa, float %i.cnw, i64 1
  %i.cob = insertelement <2 x float> poison, float %22, i64 0
  %i.coc = shufflevector <2 x float> %i.cob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cod = fsub <2 x float> %23, %i.coc
  %i.coe = fcmp olt float %i.cnp, %22
  %24 = insertelement <2 x float> poison, float %21, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cof = fdiv <2 x float> %i.cod, %25
  %i.cog = fptosi <2 x float> %i.cof to <2 x i32>
  %i.coh = insertelement <2 x i1> poison, i1 %i.coe, i64 0
  %i.coi = insertelement <2 x i1> %i.coh, i1 %i.cnz, i64 1
  %i.coj = select <2 x i1> %i.coi, <2 x i32> splat (i32 -1), <2 x i32> %i.cog ; 2 uses
  %shift782 = shufflevector <2 x i32> %i.coj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cok = icmp sgt <2 x i32> %i.coj, %shift782
  %i.col = extractelement <2 x i1> %i.cok, i64 0
  br i1 %i.col, label %.thread83.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sb:                                            ; preds = %bb.sa
  %i.com = fcmp oge float %i.cnp, %22
  %i.con = and i1 %i.com, %i.cnz
  br i1 %i.con, label %.thread83.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

.thread83.i.i.i:                                  ; preds = %bb.sb, %.split85.i.i.i, %bb.rx
  %i.coo = getelementptr inbounds nuw i8, ptr %i.cky, i64 7772
  %i.cop = load i8, ptr %i.coo, align 4, !tbaa !548, !range !99, !noundef !236
  %i.coq = trunc nuw i8 %i.cop to i1
  br i1 %i.coq, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %.thread83.i.i.i
  %i.cor = getelementptr inbounds nuw i8, ptr %i.cky, i64 5428
  %i.cos = load i32, ptr %i.cor, align 4, !tbaa !652
  %.not104.i.i.i = icmp eq i32 %i.cos, -1
  br i1 %.not104.i.i.i, label %bb.sd, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sd:                                            ; preds = %bb.sc, %.thread83.i.i.i
  %i.cot = getelementptr i8, ptr %i.cky, i64 5660
  %i.cou = load i32, ptr %i.cot, align 4, !tbaa !524
  %.not.i.i63.i.i.i = icmp eq i32 %i.cou, -1
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i: ; preds = %bb.sd, %bb.sc, %bb.sb, %.split85.i.i.i, %bb.rz, %bb.ry, %bb.rw, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i
  %.230.i60.i.i.i = phi i1 [ false, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i ], [ false, %bb.rw ], [ false, %bb.sb ], [ false, %bb.rz ], [ false, %bb.ry ], [ %.not.i.i63.i.i.i, %bb.sd ], [ false, %bb.sc ], [ false, %.split85.i.i.i ] ; 3 uses
  %i.cov = xor i1 %.230.i.i.i.i, %.230.i60.i.i.i
  %or.cond.i.i318.i = or i1 %.0.i55.i.i.i, %i.cov
  br i1 %or.cond.i.i318.i, label %bb.se, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.se:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cky, i64 8236 ; 2 uses
  %i.cox = load i32, ptr %i.cow, align 4, !tbaa !713
  %.not54.i.i.i = icmp eq i32 %i.cox, 0
  br i1 %.not54.i.i.i, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  call fastcc void @_ZN5ImGuiL15NavRestoreLayerE13ImGuiNavLayer(i32 noundef 0)
  br label %bb.sg

bb.sg:                                            ; preds = %bb.sf, %bb.se
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cla, i64 372
  %i.coz = load i16, ptr %i.coy, align 4, !tbaa !807
  %i.cpa = and i16 %i.coz, 1
  %i.cpb = icmp eq i16 %i.cpa, 0
  br i1 %i.cpb, label %bb.sh, label %._crit_edge.i.i319.i

._crit_edge.i.i319.i:                             ; preds = %bb.sg
  %.pre.i.i320.i = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %bb.sx

bb.sh:                                            ; preds = %bb.sg
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cla, i64 378
  %i.cpd = load i8, ptr %i.cpc, align 2, !tbaa !822, !range !99, !noundef !236
  %i.cpe = trunc nuw i8 %i.cpd to i1
  %.pre106.i.i.i = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  br i1 %i.cpe, label %bb.si, label %bb.sx

bb.si:                                            ; preds = %bb.sh
  %i.cpf = getelementptr i8, ptr %.pre106.i.i.i, i64 388
  %i.cpg = load i8, ptr %i.cpf, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cph = trunc nuw i8 %i.cpg to i1
  br i1 %i.cph, label %bb.sj, label %bb.sr

bb.sj:                                            ; preds = %bb.si
  %i.cpi = getelementptr i8, ptr %.pre106.i.i.i, i64 392
  %i.cpj = load float, ptr %i.cpi, align 4, !tbaa !774 ; 8 uses
  %i.cpk = fcmp olt float %i.cpj, 0.000000e+00
  br i1 %i.cpk, label %bb.sr, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.cpl = fcmp oeq float %i.cpj, 0.000000e+00
  br i1 %i.cpl, label %.thread86.i.i.i, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cpm = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 164
  %26 = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 168
  %27 = load float, ptr %26, align 8, !tbaa !728  ; 2 uses
  %28 = load float, ptr %i.cpm, align 4, !tbaa !726 ; 5 uses
  %i.cpn = fcmp ogt float %i.cpj, %28
  br i1 %i.cpn, label %bb.sm, label %bb.sr

bb.sm:                                            ; preds = %bb.sl
  %i.cpo = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 64
  %i.cpp = load float, ptr %i.cpo, align 8, !tbaa !727
  %i.cpq = fsub float %i.cpj, %i.cpp              ; 3 uses
  %i.cpr = fcmp ult float %i.cpq, %i.cpj
  br i1 %i.cpr, label %bb.sn, label %bb.sr

bb.sn:                                            ; preds = %bb.sm
  %i.cps = fcmp ugt float %27, 0.000000e+00
  %i.cpt = fcmp olt float %i.cpq, %28             ; 2 uses
  br i1 %i.cps, label %.split88.i.i.i, label %bb.so

.split88.i.i.i:                                   ; preds = %bb.sn
  %i.cpu = insertelement <2 x float> poison, float %i.cpj, i64 0
  %29 = insertelement <2 x float> %i.cpu, float %i.cpq, i64 1
  %i.cpv = insertelement <2 x float> poison, float %28, i64 0
  %i.cpw = shufflevector <2 x float> %i.cpv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cpx = fsub <2 x float> %29, %i.cpw
  %i.cpy = fcmp olt float %i.cpj, %28
  %30 = insertelement <2 x float> poison, float %27, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cpz = fdiv <2 x float> %i.cpx, %31
  %i.cqa = fptosi <2 x float> %i.cpz to <2 x i32>
  %i.cqb = insertelement <2 x i1> poison, i1 %i.cpy, i64 0
  %i.cqc = insertelement <2 x i1> %i.cqb, i1 %i.cpt, i64 1
  %i.cqd = select <2 x i1> %i.cqc, <2 x i32> splat (i32 -1), <2 x i32> %i.cqa ; 2 uses
  %shift783 = shufflevector <2 x i32> %i.cqd, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cqe = icmp sgt <2 x i32> %i.cqd, %shift783
  %i.cqf = extractelement <2 x i1> %i.cqe, i64 0
  br i1 %i.cqf, label %.thread86.i.i.i, label %bb.sr

bb.so:                                            ; preds = %bb.sn
  %i.cqg = fcmp oge float %i.cpj, %28
  %i.cqh = and i1 %i.cqg, %i.cpt
  br i1 %i.cqh, label %.thread86.i.i.i, label %bb.sr

.thread86.i.i.i:                                  ; preds = %bb.so, %.split88.i.i.i, %bb.sk
  %i.cqi = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 7772
  %i.cqj = load i8, ptr %i.cqi, align 4, !tbaa !548, !range !99, !noundef !236
  %i.cqk = trunc nuw i8 %i.cqj to i1
  br i1 %i.cqk, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %.thread86.i.i.i
  %i.cql = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 5428
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !652
  %.not105.i.i.i = icmp eq i32 %i.cqm, -1
  br i1 %.not105.i.i.i, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp, %.thread86.i.i.i
  %i.cqn = getelementptr i8, ptr %.pre106.i.i.i, i64 5624
  %i.cqo = load i32, ptr %i.cqn, align 4, !tbaa !524
  %.not.i.i69.i.i.i = icmp eq i32 %i.cqo, -1
  br i1 %.not.i.i69.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i, label %bb.sr

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i: ; preds = %bb.sq
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cla, i64 156
  %i.cqq = load float, ptr %i.cqp, align 4, !tbaa !823
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cla, i64 564
  %i.cqs = load float, ptr %i.cqr, align 4, !tbaa !378
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cla, i64 556
  %i.cqu = load float, ptr %i.cqt, align 4, !tbaa !377
  %i.cqv = fsub float %i.cqs, %i.cqu
  %i.cqw = fsub float %i.cqq, %i.cqv
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.cla, i64 172
  store float %i.cqw, ptr %i.cqx, align 4, !tbaa !824
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cla, i64 180
  store float 0.000000e+00, ptr %i.cqy, align 4, !tbaa !825
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cla, i64 188
  store float 0.000000e+00, ptr %i.cqz, align 4, !tbaa !826
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sr:                                            ; preds = %bb.sq, %bb.sp, %bb.so, %.split88.i.i.i, %bb.sm, %bb.sl, %bb.sj, %bb.si
  %i.cra = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 518, i32 noundef 1, i32 noundef -1)
  br i1 %i.cra, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %bb.sr
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cla, i64 156
  %i.crc = load float, ptr %i.crb, align 4, !tbaa !823
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cla, i64 564
  %i.cre = load float, ptr %i.crd, align 4, !tbaa !378
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cla, i64 556
  %i.crg = load float, ptr %i.crf, align 4, !tbaa !377
  %i.crh = fsub float %i.cre, %i.crg
  %i.cri = fadd float %i.crc, %i.crh
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cla, i64 172
  store float %i.cri, ptr %i.crj, align 4, !tbaa !824
  %i.crk = getelementptr inbounds nuw i8, ptr %i.cla, i64 180
  store float 0.000000e+00, ptr %i.crk, align 4, !tbaa !825
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cla, i64 188
  store float 0.000000e+00, ptr %i.crl, align 4, !tbaa !826
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.st:                                            ; preds = %bb.sr
  br i1 %.230.i.i.i.i, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.crm = getelementptr inbounds nuw i8, ptr %i.cla, i64 172
  store float 0.000000e+00, ptr %i.crm, align 4, !tbaa !824
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cla, i64 180
  store float 0.000000e+00, ptr %i.crn, align 4, !tbaa !825
  %i.cro = getelementptr inbounds nuw i8, ptr %i.cla, i64 188
  store float 0.000000e+00, ptr %i.cro, align 4, !tbaa !826
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sv:                                            ; preds = %bb.st
  br i1 %.230.i60.i.i.i, label %bb.sw, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sw:                                            ; preds = %bb.sv
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cla, i64 164
  %i.crq = load float, ptr %i.crp, align 4, !tbaa !827
  %i.crr = getelementptr inbounds nuw i8, ptr %i.cla, i64 172
  store float %i.crq, ptr %i.crr, align 4, !tbaa !824
  %i.crs = getelementptr inbounds nuw i8, ptr %i.cla, i64 180
  store float 0.000000e+00, ptr %i.crs, align 4, !tbaa !825
  %i.crt = getelementptr inbounds nuw i8, ptr %i.cla, i64 188
  store float 0.000000e+00, ptr %i.crt, align 4, !tbaa !826
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sx:                                            ; preds = %bb.sh, %._crit_edge.i.i319.i
  %i.cru = phi ptr [ %.pre.i.i320.i, %._crit_edge.i.i319.i ], [ %.pre106.i.i.i, %bb.sh ] ; 12 uses
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cla, i64 1016
  %i.crw = load i32, ptr %i.cow, align 4, !tbaa !713
  %i.crx = zext i32 %i.crw to i64
  %i.cry = getelementptr inbounds nuw [16 x i8], ptr %i.crv, i64 %i.crx ; 8 uses
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cla, i64 564
  %i.csa = load float, ptr %i.crz, align 4, !tbaa !378
  %i.csb = getelementptr inbounds nuw i8, ptr %i.cla, i64 556
  %i.csc = load float, ptr %i.csb, align 4, !tbaa !377
  %i.csd = fsub float %i.csa, %i.csc
  %i.cse = getelementptr inbounds nuw i8, ptr %i.cla, i64 704
  %i.csf = load float, ptr %i.cse, align 8, !tbaa !643
  %i.csg = fsub float %i.csd, %i.csf
  %i.csh = getelementptr inbounds nuw i8, ptr %i.cry, i64 12 ; 3 uses
  %i.csi = load float, ptr %i.csh, align 4, !tbaa !378
  %i.csj = getelementptr inbounds nuw i8, ptr %i.cry, i64 4 ; 3 uses
  %i.csk = load float, ptr %i.csj, align 4, !tbaa !377
  %i.csl = fsub float %i.csi, %i.csk
  %i.csm = fadd float %i.csg, %i.csl              ; 2 uses
  %i.csn = fcmp ole float %i.csm, 0.000000e+00
  %i.cso = select i1 %i.csn, float 0.000000e+00, float %i.csm ; 2 uses
  %i.csp = getelementptr i8, ptr %i.cru, i64 388
  %i.csq = load i8, ptr %i.csp, align 4, !tbaa !239, !range !99, !noundef !236
  %i.csr = trunc nuw i8 %i.csq to i1
  br i1 %i.csr, label %bb.sy, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i

bb.sy:                                            ; preds = %bb.sx
  %i.css = getelementptr i8, ptr %i.cru, i64 392
  %i.cst = load float, ptr %i.css, align 4, !tbaa !774 ; 8 uses
  %i.csu = fcmp olt float %i.cst, 0.000000e+00
  br i1 %i.csu, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.csv = fcmp oeq float %i.cst, 0.000000e+00
  br i1 %i.csv, label %.thread90.i.i.i, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.csw = getelementptr inbounds nuw i8, ptr %i.cru, i64 164
  %32 = getelementptr inbounds nuw i8, ptr %i.cru, i64 168
  %33 = load float, ptr %32, align 8, !tbaa !728  ; 2 uses
  %34 = load float, ptr %i.csw, align 4, !tbaa !726 ; 5 uses
  %i.csx = fcmp ogt float %i.cst, %34
  br i1 %i.csx, label %bb.tb, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i

bb.tb:                                            ; preds = %bb.ta
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cru, i64 64
  %i.csz = load float, ptr %i.csy, align 8, !tbaa !727
  %i.cta = fsub float %i.cst, %i.csz              ; 3 uses
  %i.ctb = fcmp ult float %i.cta, %i.cst
  br i1 %i.ctb, label %bb.tc, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i

bb.tc:                                            ; preds = %bb.tb
  %i.ctc = fcmp ugt float %33, 0.000000e+00
  %i.ctd = fcmp olt float %i.cta, %34             ; 2 uses
  br i1 %i.ctc, label %.split92.i.i.i, label %bb.td

.split92.i.i.i:                                   ; preds = %bb.tc
  %i.cte = insertelement <2 x float> poison, float %i.cst, i64 0
  %35 = insertelement <2 x float> %i.cte, float %i.cta, i64 1
  %i.ctf = insertelement <2 x float> poison, float %34, i64 0
  %i.ctg = shufflevector <2 x float> %i.ctf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cth = fsub <2 x float> %35, %i.ctg
  %i.cti = fcmp olt float %i.cst, %34
  %36 = insertelement <2 x float> poison, float %33, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctj = fdiv <2 x float> %i.cth, %37
  %i.ctk = fptosi <2 x float> %i.ctj to <2 x i32>
  %i.ctl = insertelement <2 x i1> poison, i1 %i.cti, i64 0
  %i.ctm = insertelement <2 x i1> %i.ctl, i1 %i.ctd, i64 1
  %i.ctn = select <2 x i1> %i.ctm, <2 x i32> splat (i32 -1), <2 x i32> %i.ctk ; 2 uses
  %shift784 = shufflevector <2 x i32> %i.ctn, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cto = icmp sgt <2 x i32> %i.ctn, %shift784
  %i.ctp = extractelement <2 x i1> %i.cto, i64 0
  br i1 %i.ctp, label %.thread90.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i

bb.td:                                            ; preds = %bb.tc
  %i.ctq = fcmp oge float %i.cst, %34
  %i.ctr = and i1 %i.ctq, %i.ctd
  br i1 %i.ctr, label %.thread90.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i

.thread90.i.i.i:                                  ; preds = %bb.td, %.split92.i.i.i, %bb.sz
  %i.cts = getelementptr i8, ptr %i.cru, i64 5632
  %i.ctt = load i8, ptr %i.cts, align 4, !tbaa !526, !range !99, !noundef !236
  %i.ctu = icmp eq i8 %i.ctt, 0
  br i1 %i.ctu, label %bb.te, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i

bb.te:                                            ; preds = %.thread90.i.i.i
  %i.ctv = fneg float %i.cso
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.cky, i64 8400
  store i32 3, ptr %i.ctw, align 8, !tbaa !820
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.cky, i64 8408
  store i32 2, ptr %i.ctx, align 8, !tbaa !372
  %i.cty = getelementptr inbounds nuw i8, ptr %i.cky, i64 8388
  store i32 2064, ptr %i.cty, align 4, !tbaa !375
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i: ; preds = %.thread90.i.i.i, %bb.td, %.split92.i.i.i, %bb.tb, %bb.ta, %bb.sy, %bb.sx
  %i.ctz = getelementptr i8, ptr %i.cru, i64 404
  %i.cua = load i8, ptr %i.ctz, align 4, !tbaa !239, !range !99, !noundef !236
  %i.cub = trunc nuw i8 %i.cua to i1
  br i1 %i.cub, label %bb.tf, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i

bb.tf:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i
  %i.cuc = getelementptr i8, ptr %i.cru, i64 408
  %i.cud = load float, ptr %i.cuc, align 4, !tbaa !774 ; 8 uses
  %i.cue = fcmp olt float %i.cud, 0.000000e+00
  br i1 %i.cue, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.cuf = fcmp oeq float %i.cud, 0.000000e+00
  br i1 %i.cuf, label %.thread94.i.i.i, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cru, i64 164
  %38 = getelementptr inbounds nuw i8, ptr %i.cru, i64 168
  %39 = load float, ptr %38, align 8, !tbaa !728  ; 2 uses
  %40 = load float, ptr %i.cug, align 4, !tbaa !726 ; 5 uses
  %i.cuh = fcmp ogt float %i.cud, %40
  br i1 %i.cuh, label %bb.ti, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i

bb.ti:                                            ; preds = %bb.th
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cru, i64 64
  %i.cuj = load float, ptr %i.cui, align 8, !tbaa !727
  %i.cuk = fsub float %i.cud, %i.cuj              ; 3 uses
  %i.cul = fcmp ult float %i.cuk, %i.cud
  br i1 %i.cul, label %bb.tj, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i

bb.tj:                                            ; preds = %bb.ti
  %i.cum = fcmp ugt float %39, 0.000000e+00
  %i.cun = fcmp olt float %i.cuk, %40             ; 2 uses
  br i1 %i.cum, label %.split96.i.i.i, label %bb.tk

.split96.i.i.i:                                   ; preds = %bb.tj
  %i.cuo = insertelement <2 x float> poison, float %i.cud, i64 0
  %41 = insertelement <2 x float> %i.cuo, float %i.cuk, i64 1
  %i.cup = insertelement <2 x float> poison, float %40, i64 0
  %i.cuq = shufflevector <2 x float> %i.cup, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cur = fsub <2 x float> %41, %i.cuq
  %i.cus = fcmp olt float %i.cud, %40
  %42 = insertelement <2 x float> poison, float %39, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cut = fdiv <2 x float> %i.cur, %43
  %i.cuu = fptosi <2 x float> %i.cut to <2 x i32>
  %i.cuv = insertelement <2 x i1> poison, i1 %i.cus, i64 0
  %i.cuw = insertelement <2 x i1> %i.cuv, i1 %i.cun, i64 1
  %i.cux = select <2 x i1> %i.cuw, <2 x i32> splat (i32 -1), <2 x i32> %i.cuu ; 2 uses
  %shift785 = shufflevector <2 x i32> %i.cux, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cuy = icmp sgt <2 x i32> %i.cux, %shift785
  %i.cuz = extractelement <2 x i1> %i.cuy, i64 0
  br i1 %i.cuz, label %.thread94.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i

bb.tk:                                            ; preds = %bb.tj
  %i.cva = fcmp oge float %i.cud, %40
  %i.cvb = and i1 %i.cva, %i.cun
  br i1 %i.cvb, label %.thread94.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i

.thread94.i.i.i:                                  ; preds = %bb.tk, %.split96.i.i.i, %bb.tg
  %i.cvc = getelementptr i8, ptr %i.cru, i64 5644
  %i.cvd = load i8, ptr %i.cvc, align 4, !tbaa !526, !range !99, !noundef !236
  %i.cve = icmp eq i8 %i.cvd, 0
  br i1 %i.cve, label %bb.tl, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i

bb.tl:                                            ; preds = %.thread94.i.i.i
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cky, i64 8400
  store i32 2, ptr %i.cvf, align 8, !tbaa !820
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cky, i64 8408
  store i32 3, ptr %i.cvg, align 8, !tbaa !372
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cky, i64 8388
  store i32 2064, ptr %i.cvh, align 4, !tbaa !375
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i: ; preds = %.thread94.i.i.i, %bb.tk, %.split96.i.i.i, %bb.ti, %bb.th, %bb.tf, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i
  br i1 %.230.i.i.i.i, label %bb.tm, label %bb.tp

bb.tm:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i
  store float 0.000000e+00, ptr %i.csh, align 4, !tbaa !378
  store float 0.000000e+00, ptr %i.csj, align 4, !tbaa !377
  %i.cvi = load float, ptr %i.cry, align 4, !tbaa !373
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cry, i64 8 ; 2 uses
  %i.cvk = load float, ptr %i.cvj, align 4, !tbaa !374
  %i.cvl = fcmp ogt float %i.cvi, %i.cvk
  br i1 %i.cvl, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  store float 0.000000e+00, ptr %i.cvj, align 4, !tbaa !374
  store float 0.000000e+00, ptr %i.cry, align 4, !tbaa !373
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cky, i64 8400
  store i32 3, ptr %i.cvm, align 8, !tbaa !820
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cky, i64 8388
  store i32 80, ptr %i.cvn, align 4, !tbaa !375
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.tp:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i
  br i1 %.230.i60.i.i.i, label %bb.tq, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.tq:                                            ; preds = %bb.tp
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.cla, i64 68
  %i.cvp = load float, ptr %i.cvo, align 4, !tbaa !828 ; 2 uses
  store float %i.cvp, ptr %i.csh, align 4, !tbaa !378
  store float %i.cvp, ptr %i.csj, align 4, !tbaa !377
  %i.cvq = load float, ptr %i.cry, align 4, !tbaa !373
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cry, i64 8 ; 2 uses
  %i.cvs = load float, ptr %i.cvr, align 4, !tbaa !374
  %i.cvt = fcmp ogt float %i.cvq, %i.cvs
  br i1 %i.cvt, label %bb.tr, label %bb.ts

bb.tr:                                            ; preds = %bb.tq
  store float 0.000000e+00, ptr %i.cvr, align 4, !tbaa !374
  store float 0.000000e+00, ptr %i.cry, align 4, !tbaa !373
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tr, %bb.tq
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cky, i64 8400
  store i32 2, ptr %i.cvu, align 8, !tbaa !820
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cky, i64 8388
  store i32 80, ptr %i.cvv, align 4, !tbaa !375
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i:   ; preds = %bb.ts, %bb.tp, %bb.to, %bb.tl, %bb.te, %bb.sw, %bb.sv, %bb.su, %bb.ss, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i, %bb.rg, %bb.rf, %.thread.i315.i, %bb.re
  %.0.i307.i = phi float [ 0.000000e+00, %bb.re ], [ 0.000000e+00, %.thread.i315.i ], [ 0.000000e+00, %bb.rf ], [ 0.000000e+00, %bb.rg ], [ 0.000000e+00, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i ], [ 0.000000e+00, %bb.tp ], [ %i.ctv, %bb.te ], [ %i.cso, %bb.tl ], [ 0.000000e+00, %bb.to ], [ 0.000000e+00, %bb.ts ], [ 0.000000e+00, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i ], [ 0.000000e+00, %bb.su ], [ 0.000000e+00, %bb.sw ], [ 0.000000e+00, %bb.sv ], [ 0.000000e+00, %bb.ss ] ; 2 uses
  store i8 0, ptr %i.cji, align 2, !tbaa !554
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8400 ; 2 uses
  %i.cvx = load i32, ptr %i.cvw, align 8, !tbaa !820 ; 3 uses
  %.not108.i.i = icmp eq i32 %i.cvx, -1
  br i1 %.not108.i.i, label %bb.tv, label %bb.tt

bb.tt:                                            ; preds = %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8408
  %i.cvz = load i32, ptr %i.cvy, align 8, !tbaa !372
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8388
  %i.cwb = load i32, ptr %i.cwa, align 4, !tbaa !375 ; 3 uses
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8392
  %i.cwd = load i32, ptr %i.cwc, align 8, !tbaa !821
  %i.cwe = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 32 uses
  %i.cwf = lshr i32 %i.cwb, 6
  %i.cwg = and i32 %i.cwf, 16
  %spec.select.i.i.i = or i32 %i.cwg, %i.cwb
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8385
  store i8 1, ptr %i.cwh, align 1, !tbaa !369
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8384
  store i8 1, ptr %i.cwi, align 8, !tbaa !553
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8400
  store i32 %i.cvx, ptr %i.cwj, align 8, !tbaa !820
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8404
  store i32 %i.cvx, ptr %i.cwk, align 4, !tbaa !555
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8408
  store i32 %i.cvz, ptr %i.cwl, align 8, !tbaa !372
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8388
  store i32 %spec.select.i.i.i, ptr %i.cwm, align 4, !tbaa !375
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8392
  store i32 %i.cwd, ptr %i.cwn, align 8, !tbaa !821
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8386
  store i8 0, ptr %i.cwo, align 2, !tbaa !554
  %i.cwp = and i32 %i.cwb, 512
  %.not22.i.i.i = icmp eq i32 %i.cwp, 0
  br i1 %.not22.i.i.i, label %bb.tu, label %_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i

bb.tu:                                            ; preds = %bb.tt
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwe, i64 304
  %i.cwr = load i32, ptr %i.cwq, align 8, !tbaa !783
  br label %_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i

_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i: ; preds = %bb.tu, %bb.tt
  %i.cws = phi i32 [ %i.cwr, %bb.tu ], [ 0, %bb.tt ]
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8396
  store i32 %i.cws, ptr %i.cwt, align 4, !tbaa !829
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8456
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8488
  store i32 0, ptr %i.cwv, align 8, !tbaa !830
  %i.cww = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cwu, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cww, align 8, !tbaa !527
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8500
  store float f0x7F7FFFFF, ptr %i.cwx, align 4, !tbaa !528
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8492
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cwy, align 4, !tbaa !75
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8512
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8544
  store i32 0, ptr %i.cxa, align 8, !tbaa !830
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cwz, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cxb, align 8, !tbaa !527
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8556
  store float f0x7F7FFFFF, ptr %i.cxc, align 4, !tbaa !528
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8548
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cxd, align 4, !tbaa !75
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8568
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8600
  store i32 0, ptr %i.cxf, align 8, !tbaa !830
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cxe, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cxg, align 8, !tbaa !527
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8612
  store float f0x7F7FFFFF, ptr %i.cxh, align 4, !tbaa !528
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8604
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cxi, align 4, !tbaa !75
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8452
  store i32 0, ptr %i.cxj, align 4, !tbaa !557
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8624
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8656
  store i32 0, ptr %i.cxl, align 8, !tbaa !830
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cxk, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cxm, align 8, !tbaa !527
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8668
  store float f0x7F7FFFFF, ptr %i.cxn, align 4, !tbaa !528
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8660
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cxo, align 4, !tbaa !75
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8321
  store i8 1, ptr %i.cxp, align 1, !tbaa !704
  br label %bb.tv

bb.tv:                                            ; preds = %_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i, %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8384 ; 3 uses
  %i.cxr = load i8, ptr %i.cxq, align 8, !tbaa !553, !range !99, !noundef !236
  %i.cxs = trunc nuw i8 %i.cxr to i1
  br i1 %i.cxs, label %bb.tw, label %bb.ud

bb.tw:                                            ; preds = %bb.tv
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8220
  %i.cxu = load i32, ptr %i.cxt, align 4, !tbaa !379
  %i.cxv = icmp eq i32 %i.cxu, 0
  br i1 %i.cxv, label %bb.tx, label %bb.ud

bb.tx:                                            ; preds = %bb.tw
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cfa, i64 10404
  %i.cxx = load i32, ptr %i.cxw, align 4, !tbaa !247
  %i.cxy = and i32 %i.cxx, 16
  %.not109.i.i = icmp eq i32 %i.cxy, 0
  br i1 %.not109.i.i, label %bb.ub, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  br i1 %i.cjl, label %bb.tz, label %bb.ua

bb.tz:                                            ; preds = %bb.ty
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cja, i64 8
  %i.cya = load ptr, ptr %i.cxz, align 8, !tbaa !313
  br label %bb.ua

bb.ua:                                            ; preds = %bb.tz, %bb.ty
  %i.cyb = phi ptr [ %i.cya, %bb.tz ], [ @.str.165, %bb.ty ]
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8236
  %i.cyd = load i32, ptr %i.cyc, align 4, !tbaa !713
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.761, ptr noundef %i.cyb, i32 noundef %i.cyd)
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.tx
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8323
  store i8 1, ptr %i.cye, align 1, !tbaa !796
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8322
end_hunk_2
begin_hunk_3_@_ZN5ImGui8NewFrameEv:bb.a
  %i.dbi = fcmp olt <2 x float> %i.dbh, %i.dax
  %i.dbj = fcmp ogt <2 x float> %i.dbh, %i.daz
  %i.dbk = select <2 x i1> %i.dbj, <2 x float> %i.daz, <2 x float> %i.dbh
  %i.dbl = select <2 x i1> %i.dbi, <2 x float> %i.dax, <2 x float> %i.dbk
  store <2 x float> %i.dbl, ptr %i.dbg, align 4
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8220
  store i32 0, ptr %i.dbm, align 4, !tbaa !379
  br label %.thread239.i.i

bb.ul:                                            ; preds = %bb.uf, %bb.ue, %bb.ud
  br i1 %i.cjl, label %.thread239.i.i, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

.thread239.i.i:                                   ; preds = %bb.ul, %_Z7ImClampRK6ImVec2S1_S1_.exit.i.i.i, %_ZNK6ImRect8ContainsERKS_.exit.i.i, %bb.ug
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.cja, i64 1016
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8236
  %i.dbp = load i32, ptr %i.dbo, align 4, !tbaa !713
  %i.dbq = zext i32 %i.dbp to i64                 ; 2 uses
  %i.dbr = getelementptr inbounds nuw [16 x i8], ptr %i.dbn, i64 %i.dbq ; 2 uses
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbr, i64 8
  %i.dbt = load <2 x float>, ptr %i.dbr, align 4  ; 3 uses
  %i.dbu = load <2 x float>, ptr %i.dbs, align 4  ; 3 uses
  %i.dbv = extractelement <2 x float> %i.dbu, i64 0
  %i.dbw = extractelement <2 x float> %i.dbt, i64 0
  %i.dbx = fcmp ogt float %i.dbw, %i.dbv
  %i.dby = fcmp ogt <2 x float> %i.dbt, %i.dbu
  %i.dbz = extractelement <2 x i1> %i.dby, i64 1
  %i.dca = select i1 %i.dbx, i1 true, i1 %i.dbz   ; 2 uses
  %i.dcb = select i1 %i.dca, <2 x float> zeroinitializer, <2 x float> %i.dbu
  %i.dcc = select i1 %i.dca, <2 x float> zeroinitializer, <2 x float> %i.dbt
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.cja, i64 296
  %i.dce = load <2 x float>, ptr %i.dcd, align 8, !tbaa !75 ; 2 uses
  %i.dcf = fadd <2 x float> %i.dcc, %i.dce        ; 6 uses
  %i.dcg = fadd <2 x float> %i.dcb, %i.dce        ; 6 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8388 ; 2 uses
  %i.dci = load i32, ptr %i.dch, align 4, !tbaa !375 ; 7 uses
  %i.dcj = and i32 %i.dci, 2048
  %.not111.i.i = icmp eq i32 %i.dcj, 0
  br i1 %.not111.i.i, label %_ZN6ImRect3AddERKS_.exit.i.i, label %bb.um

bb.um:                                            ; preds = %.thread239.i.i
  %i.dck = getelementptr inbounds nuw i8, ptr %i.cja, i64 552
  %i.dcl = load float, ptr %i.dck, align 8, !tbaa !373
  %i.dcm = extractelement <2 x float> %i.dcf, i64 0
  %i.dcn = fcmp ult float %i.dcm, %i.dcl
  br i1 %i.dcn, label %bb.uq, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.dco = getelementptr inbounds nuw i8, ptr %i.cja, i64 556
  %i.dcp = load float, ptr %i.dco, align 4, !tbaa !377
  %i.dcq = extractelement <2 x float> %i.dcf, i64 1
  %i.dcr = fcmp ult float %i.dcq, %i.dcp
  br i1 %i.dcr, label %bb.uq, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.cja, i64 560
  %i.dct = load float, ptr %i.dcs, align 8, !tbaa !374
  %i.dcu = extractelement <2 x float> %i.dcg, i64 0
  %i.dcv = fcmp ugt float %i.dcu, %i.dct
  br i1 %i.dcv, label %bb.uq, label %_ZNK6ImRect8ContainsERKS_.exit127.i.i

_ZNK6ImRect8ContainsERKS_.exit127.i.i:            ; preds = %bb.uo
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.cja, i64 564
  %i.dcx = load float, ptr %i.dcw, align 4, !tbaa !378
  %i.dcy = extractelement <2 x float> %i.dcg, i64 1
  %i.dcz = fcmp ugt float %i.dcy, %i.dcx
  br i1 %i.dcz, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %_ZNK6ImRect8ContainsERKS_.exit127.i.i
  %i.dda = or i32 %i.dci, 32                      ; 2 uses
  store i32 %i.dda, ptr %i.dch, align 4, !tbaa !375
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %_ZNK6ImRect8ContainsERKS_.exit127.i.i, %bb.uo, %bb.un, %bb.um
  %i.ddb = phi i32 [ %i.dci, %bb.um ], [ %i.dci, %bb.un ], [ %i.dci, %bb.uo ], [ %i.dda, %bb.up ], [ %i.dci, %_ZNK6ImRect8ContainsERKS_.exit127.i.i ] ; 2 uses
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8428
  store <2 x float> %i.dcf, ptr %i.ddc, align 4
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8436
  store <2 x float> %i.dcg, ptr %.sroa.16.0..sroa_idx.i.i, align 4
  %i.ddd = extractelement <2 x float> %i.dcf, i64 1 ; 2 uses
  %i.dde = fadd float %.0.i307.i, %i.ddd          ; 3 uses
  %.sroa.0132.4.vec.insert.i.i = insertelement <2 x float> %i.dcf, float %i.dde, i64 1 ; 2 uses
  %i.ddf = extractelement <2 x float> %i.dcg, i64 1 ; 2 uses
  %i.ddg = fadd float %.0.i307.i, %i.ddf          ; 3 uses
  %.sroa.16.12.vec.insert.i.i = insertelement <2 x float> %i.dcg, float %i.ddg, i64 1 ; 2 uses
  %i.ddh = fcmp ogt float %i.ddd, %i.dde
  br i1 %i.ddh, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8432
  store float %i.dde, ptr %i.ddi, align 8, !tbaa !377
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %i.ddj = fcmp olt float %i.ddf, %i.ddg
  br i1 %i.ddj, label %bb.ut, label %_ZN6ImRect3AddERKS_.exit.i.i

bb.ut:                                            ; preds = %bb.us
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8440
  store float %i.ddg, ptr %i.ddk, align 8, !tbaa !378
  br label %_ZN6ImRect3AddERKS_.exit.i.i

_ZN6ImRect3AddERKS_.exit.i.i:                     ; preds = %bb.ut, %bb.us, %.thread239.i.i
  %i.ddl = phi i32 [ %i.dci, %.thread239.i.i ], [ %i.ddb, %bb.us ], [ %i.ddb, %bb.ut ]
  %.sroa.16.0.i.i = phi <2 x float> [ %i.dcg, %.thread239.i.i ], [ %.sroa.16.12.vec.insert.i.i, %bb.us ], [ %.sroa.16.12.vec.insert.i.i, %bb.ut ] ; 8 uses
  %.sroa.0132.0.i.i = phi <2 x float> [ %i.dcf, %.thread239.i.i ], [ %.sroa.0132.4.vec.insert.i.i, %bb.us ], [ %.sroa.0132.4.vec.insert.i.i, %bb.ut ] ; 8 uses
  %i.ddm = load i8, ptr %i.cxq, align 8, !tbaa !553, !range !99, !noundef !236
  %i.ddn = trunc nuw i8 %i.ddm to i1
  br i1 %i.ddn, label %bb.uu, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.uu:                                            ; preds = %_ZN6ImRect3AddERKS_.exit.i.i
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.cja, i64 984
  %i.ddp = load ptr, ptr %i.ddo, align 8, !tbaa !371
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 1048
  %i.ddr = getelementptr inbounds nuw [8 x i8], ptr %i.ddq, i64 %i.dbq ; 5 uses
  %i.dds = load i32, ptr %i.cvw, align 8, !tbaa !820 ; 2 uses
  %i.ddt = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddt, i64 8224
  %i.ddv = load ptr, ptr %i.ddu, align 8, !tbaa !370 ; 2 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddv, i64 296
  %.sroa.04.0.copyload.i.i.i = load float, ptr %i.ddw, align 8, !tbaa !75 ; 2 uses
  %.sroa.5.0..sroa_idx.i128.i.i = getelementptr inbounds nuw i8, ptr %i.ddv, i64 300
  %.sroa.5.0.copyload.i129.i.i = load float, ptr %.sroa.5.0..sroa_idx.i128.i.i, align 4, !tbaa !75 ; 2 uses
  %i.ddx = and i32 %i.ddl, 128
  %i.ddy = icmp eq i32 %i.ddx, 0
  br i1 %i.ddy, label %bb.uv, label %bb.uz

bb.uv:                                            ; preds = %bb.uu
  %i.ddz = load float, ptr %i.ddr, align 4, !tbaa !249
  %i.dea = fcmp oeq float %i.ddz, f0x7F7FFFFF
  br i1 %i.dea, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %.sroa.0132.0.vec.extract137.i.i = extractelement <2 x float> %.sroa.0132.0.i.i, i64 0
  %i.deb = fadd float %.sroa.0132.0.vec.extract137.i.i, 1.000000e+00 ; 2 uses
  %.sroa.16.8.vec.extract154.i.i = extractelement <2 x float> %.sroa.16.0.i.i, i64 0 ; 2 uses
  %i.dec = fcmp olt float %i.deb, %.sroa.16.8.vec.extract154.i.i
  %i.ded = select i1 %i.dec, float %i.deb, float %.sroa.16.8.vec.extract154.i.i
  %i.dee = fsub float %i.ded, %.sroa.04.0.copyload.i.i.i
  store float %i.dee, ptr %i.ddr, align 4, !tbaa !249
  br label %bb.ux

bb.ux:                                            ; preds = %bb.uw, %bb.uv
  %i.def = getelementptr inbounds nuw i8, ptr %i.ddr, i64 4 ; 2 uses
  %i.deg = load float, ptr %i.def, align 4, !tbaa !250
  %i.deh = fcmp oeq float %i.deg, f0x7F7FFFFF
  br i1 %i.deh, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %foldExtExtBinop788 = fadd <2 x float> %.sroa.16.0.i.i, %.sroa.0132.0.i.i
  %i.dei = extractelement <2 x float> %foldExtExtBinop788, i64 1
  %i.dej = fmul float %i.dei, 5.000000e-01
  %i.dek = fsub float %i.dej, %.sroa.5.0.copyload.i129.i.i
  store float %i.dek, ptr %i.def, align 4, !tbaa !250
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux, %bb.uu
  %i.del = and i32 %i.dds, -2
  %or.cond.i130.i.i = icmp eq i32 %i.del, 2
  br i1 %or.cond.i130.i.i, label %bb.va, label %bb.vc

bb.va:                                            ; preds = %bb.uz
  %i.dem = load float, ptr %i.ddr, align 4, !tbaa !249 ; 2 uses
  %i.den = fcmp une float %i.dem, f0x7F7FFFFF
  br i1 %i.den, label %bb.vb, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.vb:                                            ; preds = %bb.va
  %i.deo = fadd float %.sroa.04.0.copyload.i.i.i, %i.dem ; 2 uses
  %.sroa.16.8.vec.insert.i.i = insertelement <2 x float> %.sroa.16.0.i.i, float %i.deo, i64 0
  %.sroa.0132.0.vec.insert.i.i = insertelement <2 x float> %.sroa.0132.0.i.i, float %i.deo, i64 0
  br label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.vc:                                            ; preds = %bb.uz
  %or.cond3.i.i.i = icmp ult i32 %i.dds, 2
  br i1 %or.cond3.i.i.i, label %bb.vd, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.vd:                                            ; preds = %bb.vc
  %i.dep = getelementptr inbounds nuw i8, ptr %i.ddr, i64 4
  %i.deq = load float, ptr %i.dep, align 4, !tbaa !250 ; 2 uses
  %i.der = fcmp une float %i.deq, f0x7F7FFFFF
  br i1 %i.der, label %bb.ve, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.ve:                                            ; preds = %bb.vd
  %i.des = fadd float %.sroa.5.0.copyload.i129.i.i, %i.deq ; 2 uses
  %.sroa.16.12.vec.insert161.i.i = insertelement <2 x float> %.sroa.16.0.i.i, float %i.des, i64 1
  %.sroa.0132.4.vec.insert145.i.i = insertelement <2 x float> %.sroa.0132.0.i.i, float %i.des, i64 1
  br label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i:  ; preds = %bb.ve, %bb.vd, %bb.vc, %bb.vb, %bb.va, %_ZN6ImRect3AddERKS_.exit.i.i, %bb.ul
  %.sroa.16.2.i.i = phi <2 x float> [ zeroinitializer, %bb.ul ], [ %.sroa.16.0.i.i, %_ZN6ImRect3AddERKS_.exit.i.i ], [ %.sroa.16.8.vec.insert.i.i, %bb.vb ], [ %.sroa.16.0.i.i, %bb.va ], [ %.sroa.16.12.vec.insert161.i.i, %bb.ve ], [ %.sroa.16.0.i.i, %bb.vd ], [ %.sroa.16.0.i.i, %bb.vc ]
  %.sroa.0132.2.i.i = phi <2 x float> [ zeroinitializer, %bb.ul ], [ %.sroa.0132.0.i.i, %_ZN6ImRect3AddERKS_.exit.i.i ], [ %.sroa.0132.0.vec.insert.i.i, %bb.vb ], [ %.sroa.0132.0.i.i, %bb.va ], [ %.sroa.0132.4.vec.insert145.i.i, %bb.ve ], [ %.sroa.0132.0.i.i, %bb.vd ], [ %.sroa.0132.0.i.i, %bb.vc ]
  %i.det = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8412
  store <2 x float> %.sroa.0132.2.i.i, ptr %i.det, align 4
  %.sroa.16.0..sroa_idx148.i.i = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8420
  store <2 x float> %.sroa.16.2.i.i, ptr %.sroa.16.0..sroa_idx148.i.i, align 4
  %i.deu = getelementptr inbounds nuw i8, ptr %i.aln, i64 8400 ; 2 uses
  %i.dev = load i32, ptr %i.deu, align 8, !tbaa !820
  %i.dew = icmp eq i32 %i.dev, -1
  br i1 %i.dew, label %bb.vf, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vf:                                            ; preds = %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i
  %i.dex = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 19 uses
  %i.dey = getelementptr inbounds nuw i8, ptr %i.dex, i64 8224
  %i.dez = load ptr, ptr %i.dey, align 8, !tbaa !370 ; 3 uses
  %i.dfa = icmp eq ptr %i.dez, null
  br i1 %i.dfa, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dex, i64 8712
  %i.dfc = load ptr, ptr %i.dfb, align 8, !tbaa !798
  %.not.i326.i = icmp eq ptr %i.dfc, null
  br i1 %.not.i326.i, label %bb.vh, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vh:                                            ; preds = %bb.vg
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.dez, i64 20
  %i.dfe = load i32, ptr %i.dfd, align 4, !tbaa !614
  %i.dff = and i32 %i.dfe, 65536
  %.not22.i.i = icmp eq i32 %i.dff, 0
  br i1 %.not22.i.i, label %bb.vi, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vi:                                            ; preds = %bb.vh
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dex, i64 8698
  %i.dfh = load i8, ptr %i.dfg, align 2, !tbaa !558, !range !99, !noundef !236
  %i.dfi = trunc nuw i8 %i.dfh to i1
  br i1 %i.dfi, label %bb.vj, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vj:                                            ; preds = %bb.vi
  %i.dfj = getelementptr i8, ptr %i.dex, i64 308
  %i.dfk = load i8, ptr %i.dfj, align 4, !tbaa !239, !range !99, !noundef !236
  %i.dfl = trunc nuw i8 %i.dfk to i1
  br i1 %i.dfl, label %bb.vk, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vk:                                            ; preds = %bb.vj
  %i.dfm = getelementptr i8, ptr %i.dex, i64 312
  %i.dfn = load float, ptr %i.dfm, align 8, !tbaa !774 ; 8 uses
  %i.dfo = fcmp olt float %i.dfn, 0.000000e+00
  br i1 %i.dfo, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dfp = fcmp oeq float %i.dfn, 0.000000e+00
  br i1 %i.dfp, label %.thread.i328.i, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dex, i64 164
  %44 = getelementptr inbounds nuw i8, ptr %i.dex, i64 168
  %45 = load float, ptr %44, align 8, !tbaa !728  ; 2 uses
  %46 = load float, ptr %i.dfq, align 4, !tbaa !726 ; 5 uses
  %i.dfr = fcmp ogt float %i.dfn, %46
  br i1 %i.dfr, label %bb.vn, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vn:                                            ; preds = %bb.vm
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dex, i64 64
  %i.dft = load float, ptr %i.dfs, align 8, !tbaa !727
  %i.dfu = fsub float %i.dfn, %i.dft              ; 3 uses
  %i.dfv = fcmp ult float %i.dfu, %i.dfn
  br i1 %i.dfv, label %bb.vo, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vo:                                            ; preds = %bb.vn
  %i.dfw = fcmp ugt float %45, 0.000000e+00
  %i.dfx = fcmp olt float %i.dfu, %46             ; 2 uses
  br i1 %i.dfw, label %.split.i331.i, label %bb.vp

.split.i331.i:                                    ; preds = %bb.vo
  %i.dfy = insertelement <2 x float> poison, float %i.dfn, i64 0
  %47 = insertelement <2 x float> %i.dfy, float %i.dfu, i64 1
  %i.dfz = insertelement <2 x float> poison, float %46, i64 0
  %i.dga = shufflevector <2 x float> %i.dfz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dgb = fsub <2 x float> %47, %i.dga
  %i.dgc = fcmp olt float %i.dfn, %46
  %48 = insertelement <2 x float> poison, float %45, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dgd = fdiv <2 x float> %i.dgb, %49
  %i.dge = fptosi <2 x float> %i.dgd to <2 x i32>
  %i.dgf = insertelement <2 x i1> poison, i1 %i.dgc, i64 0
  %i.dgg = insertelement <2 x i1> %i.dgf, i1 %i.dfx, i64 1
  %i.dgh = select <2 x i1> %i.dgg, <2 x i32> splat (i32 -1), <2 x i32> %i.dge ; 2 uses
  %shift790 = shufflevector <2 x i32> %i.dgh, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.dgi = icmp sgt <2 x i32> %i.dgh, %shift790
  %i.dgj = extractelement <2 x i1> %i.dgi, i64 0
  br i1 %i.dgj, label %.thread.i328.i, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vp:                                            ; preds = %bb.vo
  %i.dgk = fcmp oge float %i.dfn, %46
  %i.dgl = and i1 %i.dgk, %i.dfx
  br i1 %i.dgl, label %.thread.i328.i, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

.thread.i328.i:                                   ; preds = %bb.vp, %.split.i331.i, %bb.vl
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dex, i64 7772
  %i.dgn = load i8, ptr %i.dgm, align 4, !tbaa !548, !range !99, !noundef !236
  %i.dgo = trunc nuw i8 %i.dgn to i1
  br i1 %i.dgo, label %bb.vq, label %bb.vr

bb.vq:                                            ; preds = %.thread.i328.i
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dex, i64 5428
  %i.dgq = load i32, ptr %i.dgp, align 4, !tbaa !652
  %.not26.i.i = icmp eq i32 %i.dgq, -1
  br i1 %.not26.i.i, label %bb.vr, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vr:                                            ; preds = %bb.vq, %.thread.i328.i
  %i.dgr = getelementptr i8, ptr %i.dex, i64 5564
  %i.dgs = load i32, ptr %i.dgr, align 4, !tbaa !524
  %.not.i.i.i329.i = icmp eq i32 %i.dgs, -1
  br i1 %.not.i.i.i329.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i330.i, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i330.i:  ; preds = %bb.vr
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.dex, i64 300
  %i.dgu = load i8, ptr %i.dgt, align 4, !tbaa !759, !range !99, !noundef !236
  %i.dgv = trunc nuw i8 %i.dgu to i1
  br i1 %i.dgv, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vs

bb.vs:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i330.i
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dex, i64 302
  %i.dgx = load i8, ptr %i.dgw, align 2, !tbaa !1398, !range !99, !noundef !236
  %i.dgy = trunc nuw i8 %i.dgx to i1
  br i1 %i.dgy, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.dex, i64 40
  %i.dha = load i32, ptr %i.dgz, align 8, !tbaa !737
  %i.dhb = and i32 %i.dha, 1
  %.not23.i.i = icmp eq i32 %i.dhb, 0
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dex, i64 301
  %i.dhd = load i8, ptr %i.dhc, align 1, !tbaa !831, !range !99, !noundef !236
  %i.dhe = trunc nuw i8 %i.dhd to i1              ; 2 uses
  br i1 %.not23.i.i, label %bb.vw, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  br i1 %i.dhe, label %bb.vx, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dex, i64 8216
  %i.dhg = load i8, ptr %i.dhf, align 8, !tbaa !424, !range !99, !noundef !236
  %i.dhh = icmp eq i8 %i.dhg, 0
  br i1 %i.dhh, label %.sink.split.i.i, label %bb.vx

bb.vw:                                            ; preds = %bb.vt
  br i1 %i.dhe, label %bb.vx, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.vw, %bb.vv
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.dex, i64 5428
  %i.dhj = load i32, ptr %i.dhi, align 4, !tbaa !652
  %i.dhk = icmp ne i32 %i.dhj, 0
  %i.dhl = zext i1 %i.dhk to i32
  br label %bb.vx

bb.vx:                                            ; preds = %.sink.split.i.i, %bb.vw, %bb.vv, %bb.vu
  %.sink.i.sink.i = phi i32 [ %i.dhl, %.sink.split.i.i ], [ 1, %bb.vv ], [ -1, %bb.vw ], [ -1, %bb.vu ]
  %i.dhm = phi i32 [ 3, %.sink.split.i.i ], [ 3, %bb.vv ], [ 2, %bb.vw ], [ 2, %bb.vu ]
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dex, i64 8448
  store i32 %.sink.i.sink.i, ptr %i.dhn, align 8, !tbaa !376
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dez, i64 211
  %i.dhp = load i8, ptr %i.dho, align 1, !tbaa !721, !range !99, !noundef !236
  %i.dhq = trunc nuw i8 %i.dhp to i1
  %i.dhr = select i1 %i.dhq, i32 33, i32 3
  call void @_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii(i32 noundef -1, i32 noundef %i.dhm, i32 noundef 5120, i32 noundef %i.dhr)
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dex, i64 8452
  store i32 -1, ptr %i.dhs, align 4, !tbaa !557
  br label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i: ; preds = %bb.vx, %bb.vs, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i330.i, %bb.vr, %bb.vq, %bb.vp, %.split.i331.i, %bb.vn, %bb.vm, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %bb.vf, %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i
  %i.dht = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 45 uses
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 8385
  %i.dhv = load i8, ptr %i.dhu, align 1, !tbaa !369, !range !99, !noundef !236
  %i.dhw = trunc nuw i8 %i.dhv to i1
  br i1 %i.dhw, label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i, label %bb.vy

bb.vy:                                            ; preds = %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dht, i64 8322
  %i.dhy = load i8, ptr %i.dhx, align 2, !tbaa !703, !range !99, !noundef !236
  br label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i

_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i:     ; preds = %bb.vy, %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i
  %i.dhz = phi i8 [ %i.dhy, %bb.vy ], [ 1, %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i ]
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dht, i64 8321
  store i8 %i.dhz, ptr %i.dia, align 1, !tbaa !704
  %i.dib = getelementptr inbounds nuw i8, ptr %i.aln, i64 8219
  store i8 0, ptr %i.dib, align 1, !tbaa !715
  %i.dic = load ptr, ptr %i.aqt, align 8, !tbaa !370 ; 22 uses
  %.not238.i = icmp eq ptr %i.dic, null
  br i1 %.not238.i, label %bb.wo, label %bb.vz

bb.vz:                                            ; preds = %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i
  %i.did = getelementptr inbounds nuw i8, ptr %i.dic, i64 20
  %i.die = load i32, ptr %i.did, align 4, !tbaa !614
  %i.dif = and i32 %i.die, 65536
  %.not239.i = icmp eq i32 %i.dif, 0
  br i1 %.not239.i, label %bb.wa, label %bb.wo

bb.wa:                                            ; preds = %bb.vz
  %i.dig = getelementptr inbounds nuw i8, ptr %i.aln, i64 8712
  %i.dih = load ptr, ptr %i.dig, align 8, !tbaa !798
  %.not240.i = icmp eq ptr %i.dih, null
  br i1 %.not240.i, label %bb.wb, label %bb.wo

bb.wb:                                            ; preds = %bb.wa
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dic, i64 704
  %i.dij = load float, ptr %i.dii, align 8, !tbaa !643
  %i.dik = fmul float %i.dij, 1.000000e+02
  %i.dil = getelementptr inbounds nuw i8, ptr %i.aln, i64 64
  %i.dim = load float, ptr %i.dil, align 8, !tbaa !1389
  %i.din = call float @llvm.fmuladd.f32(float %i.dik, float %i.dim, float 5.000000e-01)
  %i.dio = fptosi float %i.din to i32
  %i.dip = sitofp i32 %i.dio to float             ; 4 uses
  %i.diq = load i32, ptr %i.deu, align 8, !tbaa !820 ; 5 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.dic, i64 372
  %i.dis = load i16, ptr %i.dir, align 4, !tbaa !807
  %i.dit = icmp eq i16 %i.dis, 0
  br i1 %i.dit, label %bb.wc, label %bb.wh

bb.wc:                                            ; preds = %bb.wb
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dic, i64 378
  %i.div = load i8, ptr %i.diu, align 2, !tbaa !822, !range !99, !noundef !236
  %i.diw = trunc nuw i8 %i.div to i1
  %i.dix = icmp ne i32 %i.diq, -1
  %or.cond17.i = select i1 %i.diw, i1 %i.dix, i1 false
  br i1 %or.cond17.i, label %bb.wd, label %bb.wh

bb.wd:                                            ; preds = %bb.wc
  %or.cond19.i = icmp ult i32 %i.diq, 2
  br i1 %or.cond19.i, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %bb.wd
  %i.diy = icmp eq i32 %i.diq, 0
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dic, i64 152
  %i.dja = load float, ptr %i.diz, align 8, !tbaa !694
  %i.djb = select i1 %i.diy, float -1.000000e+00, float 1.000000e+00
  %i.djc = call float @llvm.fmuladd.f32(float %i.djb, float %i.dip, float %i.dja)
  %i.djd = fptosi float %i.djc to i32
  %i.dje = sitofp i32 %i.djd to float
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dic, i64 168
  store float %i.dje, ptr %i.djf, align 8, !tbaa !832
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dic, i64 176
  store float 0.000000e+00, ptr %i.djg, align 8, !tbaa !833
  %i.djh = getelementptr inbounds nuw i8, ptr %i.dic, i64 184
  store float 0.000000e+00, ptr %i.djh, align 8, !tbaa !834
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %i.dji = and i32 %i.diq, -2
  %or.cond21.i = icmp eq i32 %i.dji, 2
  br i1 %or.cond21.i, label %bb.wg, label %bb.wh

bb.wg:                                            ; preds = %bb.wf
  %i.djj = icmp eq i32 %i.diq, 2
  %i.djk = getelementptr inbounds nuw i8, ptr %i.dic, i64 156
  %i.djl = load float, ptr %i.djk, align 4, !tbaa !823
  %i.djm = select i1 %i.djj, float -1.000000e+00, float 1.000000e+00
  %i.djn = call float @llvm.fmuladd.f32(float %i.djm, float %i.dip, float %i.djl)
  %i.djo = fptosi float %i.djn to i32
  %i.djp = sitofp i32 %i.djo to float
  %i.djq = getelementptr inbounds nuw i8, ptr %i.dic, i64 172
  store float %i.djp, ptr %i.djq, align 4, !tbaa !824
  %i.djr = getelementptr inbounds nuw i8, ptr %i.dic, i64 180
  store float 0.000000e+00, ptr %i.djr, align 4, !tbaa !825
  %i.djs = getelementptr inbounds nuw i8, ptr %i.dic, i64 188
  store float 0.000000e+00, ptr %i.djs, align 4, !tbaa !826
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %bb.wf, %bb.wc, %bb.wb
  br i1 %i.ant, label %bb.wi, label %bb.wo

bb.wi:                                            ; preds = %bb.wh
  %i.djt = getelementptr i8, ptr %i.dht, i64 2512
  %i.dju = load float, ptr %i.djt, align 4, !tbaa !764
  %i.djv = getelementptr i8, ptr %i.dht, i64 2496
  %i.djw = load float, ptr %i.djv, align 4, !tbaa !764
  %i.djx = getelementptr i8, ptr %i.dht, i64 2544
  %i.djy = load float, ptr %i.djx, align 4, !tbaa !764
  %i.djz = fsub float %i.dju, %i.djw              ; 2 uses
  %i.dka = getelementptr i8, ptr %i.dht, i64 2528
  %i.dkb = load float, ptr %i.dka, align 4, !tbaa !764
  %i.dkc = fsub float %i.djy, %i.dkb              ; 2 uses
  %i.dkd = getelementptr i8, ptr %i.dht, i64 2388
  %i.dke = load i8, ptr %i.dkd, align 4, !tbaa !239, !range !99, !noundef !236
  %i.dkf = trunc nuw i8 %i.dke to i1
  br i1 %i.dkf, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit338.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit338.thread.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit338.i:          ; preds = %bb.wi
  %i.dkg = getelementptr i8, ptr %i.dht, i64 7132
  %i.dkh = load i8, ptr %i.dkg, align 4, !tbaa !526, !range !99, !noundef !236
  %i.dki = icmp eq i8 %i.dkh, 0
  br i1 %i.dki, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit344.thread.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit338.thread.i

end_hunk_3
begin_hunk_4_@_ZN5ImGui8NewFrameEv:bb.a
  br i1 %.not296502, label %._crit_edge506, label %.lr.ph505

bb.zs:                                            ; preds = %.lr.ph500, %bb.zu
  %i.egt = phi i32 [ %i.egj, %.lr.ph500 ], [ %i.ehb, %bb.zu ]
  %indvars.iv520 = phi i64 [ 0, %.lr.ph500 ], [ %indvars.iv.next521, %bb.zu ] ; 3 uses
  %i.egu = load ptr, ptr %i.egl, align 8, !tbaa !592
  %i.egv = getelementptr inbounds nuw [4 x i8], ptr %i.egu, i64 %indvars.iv520
  %i.egw = load float, ptr %i.egv, align 4, !tbaa !75 ; 2 uses
  %i.egx = fcmp oge float %i.egw, 0.000000e+00
  %i.egy = fcmp olt float %i.egw, %i.dsm
  %or.cond477 = select i1 %i.egx, i1 %i.egy, i1 false
  br i1 %or.cond477, label %bb.zt, label %bb.zu

bb.zt:                                            ; preds = %bb.zs
  %i.egz = load ptr, ptr %i.egm, align 8, !tbaa !596
  %i.eha = getelementptr inbounds nuw [592 x i8], ptr %i.egz, i64 %indvars.iv520
  call void @_ZN5ImGui30TableGcCompactTransientBuffersEP10ImGuiTable(ptr noundef %i.eha)
  %.pre532 = load i32, ptr %i.egi, align 8, !tbaa !1410
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zs, %bb.zt
  %i.ehb = phi i32 [ %i.egt, %bb.zs ], [ %.pre532, %bb.zt ] ; 2 uses
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %i.ehc = sext i32 %i.ehb to i64
  %i.ehd = icmp slt i64 %indvars.iv.next521, %i.ehc
  br i1 %i.ehd, label %bb.zs, label %._crit_edge501, !llvm.loop !1351

._crit_edge506:                                   ; preds = %bb.zz, %._crit_edge501
  %i.ehe = load i8, ptr %i.dsd, align 1, !tbaa !550, !range !99, !noundef !236
  %i.ehf = trunc nuw i8 %i.ehe to i1
  br i1 %i.ehf, label %bb.aaa, label %bb.aab

.lr.ph505:                                        ; preds = %._crit_edge501, %bb.zz
  %.0503 = phi ptr [ %i.eip, %bb.zz ], [ %i.egp, %._crit_edge501 ] ; 6 uses
  %i.ehg = getelementptr inbounds nuw i8, ptr %.0503, i64 40 ; 2 uses
  %i.ehh = load ptr, ptr %i.ehg, align 8, !tbaa !848 ; 2 uses
  %.not.i388 = icmp eq ptr %i.ehh, null
  br i1 %.not.i388, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE5clearEv.exit, label %bb.zv

bb.zv:                                            ; preds = %.lr.ph505
  %i.ehi = getelementptr inbounds nuw i8, ptr %.0503, i64 32
  %i.ehj = getelementptr inbounds nuw i8, ptr %.0503, i64 36
  store i32 0, ptr %i.ehj, align 4, !tbaa !1411
  store i32 0, ptr %i.ehi, align 8, !tbaa !1412
  %i.ehk = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.ehk, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.ehl = getelementptr inbounds nuw i8, ptr %i.ehk, i64 4
  %i.ehm = load i32, ptr %i.ehl, align 4, !tbaa !228 ; 2 uses
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.ehk, i64 10608 ; 3 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehk, i64 10604 ; 2 uses
  %i.ehp = load i16, ptr %i.eho, align 4, !tbaa !229 ; 2 uses
  %i.ehq = sext i16 %i.ehp to i64                 ; 2 uses
  %i.ehr = getelementptr inbounds [8 x i8], ptr %i.ehn, i64 %i.ehq ; 2 uses
  %i.ehs = load i32, ptr %i.ehr, align 4, !tbaa !231
  %.not.i.i.i389 = icmp eq i32 %i.ehs, %i.ehm
  br i1 %.not.i.i.i389, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.zx

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.zw
  %.phi.trans.insert.i.i390 = getelementptr inbounds nuw i8, ptr %i.ehr, i64 6
  %.pre.i.i391 = load i16, ptr %.phi.trans.insert.i.i390, align 2, !tbaa !233
  %i.eht = add i16 %.pre.i.i391, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.zx:                                            ; preds = %bb.zw
  %i.ehu = sext i16 %i.ehp to i32
  %i.ehv = add nsw i32 %i.ehu, 1
  %i.ehw = srem i32 %i.ehv, 6                     ; 2 uses
  %i.ehx = trunc nsw i32 %i.ehw to i16
  store i16 %i.ehx, ptr %i.eho, align 4, !tbaa !229
  %i.ehy = sext i32 %i.ehw to i64                 ; 2 uses
  %i.ehz = getelementptr inbounds [8 x i8], ptr %i.ehn, i64 %i.ehy ; 3 uses
  store i32 %i.ehm, ptr %i.ehz, align 4, !tbaa !231
  %i.eia = getelementptr inbounds nuw i8, ptr %i.ehz, i64 6
  store i16 0, ptr %i.eia, align 2, !tbaa !233
  %i.eib = getelementptr inbounds nuw i8, ptr %i.ehz, i64 4
  store i16 0, ptr %i.eib, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.zx, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.eic = phi i16 [ 1, %bb.zx ], [ %i.eht, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.eid = phi i64 [ %i.ehy, %bb.zx ], [ %i.ehq, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.eie = getelementptr inbounds [8 x i8], ptr %i.ehn, i64 %i.eid
  %i.eif = getelementptr inbounds nuw i8, ptr %i.eie, i64 6
  store i16 %i.eic, ptr %i.eif, align 2, !tbaa !233
  %i.eig = getelementptr inbounds nuw i8, ptr %i.ehk, i64 10600 ; 2 uses
  %i.eih = load i32, ptr %i.eig, align 4, !tbaa !235
  %i.eii = add nsw i32 %i.eih, 1
  store i32 %i.eii, ptr %i.eig, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.zv
  %i.eij = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.eik = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.eij(ptr noundef nonnull %i.ehh, ptr noundef %i.eik), !inline_history !1352
  store ptr null, ptr %i.ehg, align 8, !tbaa !848
  br label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE5clearEv.exit

_ZN8ImVectorI29ImGuiTableReconcileColumnDataE5clearEv.exit: ; preds = %.lr.ph505, %_ZN5ImGui7MemFreeEPv.exit.i
  %i.eil = getelementptr inbounds nuw i8, ptr %.0503, i64 8
  %i.eim = load float, ptr %i.eil, align 8, !tbaa !1414 ; 2 uses
  %i.ein = fcmp oge float %i.eim, 0.000000e+00
  %i.eio = fcmp olt float %i.eim, %i.dsm
  %or.cond300 = select i1 %i.ein, i1 %i.eio, i1 false
  br i1 %or.cond300, label %bb.zy, label %bb.zz

bb.zy:                                            ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE5clearEv.exit
  call void @_ZN5ImGui30TableGcCompactTransientBuffersEP18ImGuiTableTempData(ptr noundef nonnull %.0503)
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE5clearEv.exit
  %i.eip = getelementptr inbounds nuw i8, ptr %.0503, i64 176 ; 2 uses
  %.not296 = icmp eq ptr %i.eip, %i.egs
  br i1 %.not296, label %._crit_edge506, label %.lr.ph505

bb.aaa:                                           ; preds = %._crit_edge506
  call void @_ZN5ImGui29GcCompactTransientMiscBuffersEv()
  br label %bb.aab

bb.aab:                                           ; preds = %bb.aaa, %._crit_edge506
  store i8 0, ptr %i.dsd, align 1, !tbaa !550
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.c, i64 8224
  %i.eir = load ptr, ptr %i.eiq, align 8, !tbaa !370 ; 2 uses
  %.not297 = icmp eq ptr %i.eir, null
  br i1 %.not297, label %bb.aai, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.eis = getelementptr inbounds nuw i8, ptr %i.eir, i64 205
  %i.eit = load i8, ptr %i.eis, align 1, !tbaa !398, !range !99, !noundef !236
  %i.eiu = trunc nuw i8 %i.eit to i1
  br i1 %i.eiu, label %bb.aai, label %bb.aad

bb.aad:                                           ; preds = %bb.aac
  %i.eiv = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.eiw = getelementptr inbounds nuw i8, ptr %i.eiv, i64 5232
  %i.eix = load i32, ptr %i.eiw, align 8, !tbaa !803 ; 2 uses
  %i.eiy = icmp slt i32 %i.eix, 1
  br i1 %i.eiy, label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.aad
  %i.eiz = add nsw i32 %i.eix, -1
  %i.eja = getelementptr inbounds nuw i8, ptr %i.eiv, i64 5240
  %i.ejb = load ptr, ptr %i.eja, align 8, !tbaa !494
  %i.ejc = zext nneg i32 %i.eiz to i64
  br label %bb.aae

bb.aae:                                           ; preds = %bb.aah, %.lr.ph33.i
  %indvars.iv.i392 = phi i64 [ %i.ejc, %.lr.ph33.i ], [ %indvars.iv.next.i393, %bb.aah ] ; 3 uses
  %i.ejd = getelementptr inbounds nuw [8 x i8], ptr %i.ejb, i64 %indvars.iv.i392
  %i.eje = load ptr, ptr %i.ejd, align 8, !tbaa !601 ; 4 uses
  %i.ejf = icmp eq ptr %i.eje, null
  br i1 %i.ejf, label %bb.aah, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.ejg = getelementptr inbounds nuw i8, ptr %i.eje, i64 205
  %i.ejh = load i8, ptr %i.ejg, align 1, !tbaa !398, !range !99, !noundef !236
  %i.eji = trunc nuw i8 %i.ejh to i1
  br i1 %i.eji, label %bb.aag, label %bb.aah

bb.aag:                                           ; preds = %bb.aaf
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.eje, i64 20
  %i.ejk = load i32, ptr %i.ejj, align 4, !tbaa !614
  %i.ejl = and i32 %i.ejk, 66048
  %.not26.i = icmp eq i32 %i.ejl, 66048
  br i1 %.not26.i, label %bb.aah, label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit

bb.aah:                                           ; preds = %bb.aag, %bb.aaf, %bb.aae
  %indvars.iv.next.i393 = add nsw i64 %indvars.iv.i392, -1
  %i.ejm = icmp slt i64 %indvars.iv.i392, 1
  br i1 %i.ejm, label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit, label %bb.aae, !llvm.loop !39

_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit: ; preds = %bb.aag, %bb.aah, %bb.aad
  %.lcssa.sink.i = phi ptr [ null, %bb.aad ], [ null, %bb.aah ], [ %i.eje, %bb.aag ]
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %.lcssa.sink.i, i32 noundef 1), !inline_history !851
  br label %bb.aai

bb.aai:                                           ; preds = %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit, %bb.aac, %bb.aab
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.c, i64 5264
  call void @_ZN8ImVectorI20ImGuiWindowStackDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ejn, i32 noundef 0)
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.c, i64 8168
  call void @_ZN8ImVectorI14ImGuiPopupDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ejo, i32 noundef 0)
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.c, i64 8120 ; 3 uses
  call void @_ZN8ImVectorIiE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ejp, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 144, ptr %i.b, align 4, !tbaa !237
  call void @_ZN8ImVectorIiE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %i.ejp, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.c, i64 8128
  %i.ejr = load ptr, ptr %i.ejq, align 8, !tbaa !285
  %i.ejs = load i32, ptr %i.ejp, align 8, !tbaa !283
  %i.ejt = sext i32 %i.ejs to i64
  %i.eju = getelementptr [4 x i8], ptr %i.ejr, i64 %i.ejt
  %i.ejv = getelementptr i8, ptr %i.eju, i64 -4
  %i.ejw = load i32, ptr %i.ejv, align 4, !tbaa !237
  %i.ejx = getelementptr inbounds nuw i8, ptr %i.c, i64 7784
  store i32 %i.ejw, ptr %i.ejx, align 8, !tbaa !792
  %i.ejy = getelementptr inbounds nuw i8, ptr %i.c, i64 8136
  call void @_ZN8ImVectorI14ImGuiGroupDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ejy, i32 noundef 0)
  %i.ejz = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 29 uses
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejz, i64 10468 ; 2 uses
  store i32 0, ptr %i.eka, align 4, !tbaa !582
  %i.ekb = getelementptr inbounds nuw i8, ptr %i.ejz, i64 10465 ; 3 uses
  %i.ekc = load i8, ptr %i.ekb, align 1, !tbaa !580, !range !99, !noundef !236
  %i.ekd = trunc nuw i8 %i.ekc to i1
  br i1 %i.ekd, label %bb.aaj, label %_ZN5ImGuiL25UpdateDebugToolItemPickerEv.exit

bb.aaj:                                           ; preds = %bb.aai
  %i.eke = getelementptr inbounds nuw i8, ptr %i.ejz, i64 5408
  %i.ekf = load i32, ptr %i.eke, align 8, !tbaa !669 ; 5 uses
  %i.ekg = getelementptr inbounds nuw i8, ptr %i.ejz, i64 9400
  store i32 7, ptr %i.ekg, align 8, !tbaa !839
  %i.ekh = getelementptr i8, ptr %i.ejz, i64 532
  %i.eki = load i8, ptr %i.ekh, align 4, !tbaa !239, !range !99, !noundef !236
  %i.ekj = trunc nuw i8 %i.eki to i1
  br i1 %i.ekj, label %bb.aak, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

bb.aak:                                           ; preds = %bb.aaj
  %i.ekk = getelementptr i8, ptr %i.ejz, i64 536
  %i.ekl = load float, ptr %i.ekk, align 8, !tbaa !774 ; 8 uses
  %i.ekm = fcmp olt float %i.ekl, 0.000000e+00
  br i1 %i.ekm, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.ekn = fcmp oeq float %i.ekl, 0.000000e+00
  br i1 %i.ekn, label %.thread.i398, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.eko = getelementptr inbounds nuw i8, ptr %i.ejz, i64 164
  %50 = getelementptr inbounds nuw i8, ptr %i.ejz, i64 168
  %51 = load float, ptr %50, align 8, !tbaa !728  ; 2 uses
  %52 = load float, ptr %i.eko, align 4, !tbaa !726 ; 5 uses
  %i.ekp = fcmp ogt float %i.ekl, %52
  br i1 %i.ekp, label %bb.aan, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

bb.aan:                                           ; preds = %bb.aam
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.ejz, i64 64
  %i.ekr = load float, ptr %i.ekq, align 8, !tbaa !727
  %i.eks = fsub float %i.ekl, %i.ekr              ; 3 uses
  %i.ekt = fcmp ult float %i.eks, %i.ekl
  br i1 %i.ekt, label %bb.aao, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

bb.aao:                                           ; preds = %bb.aan
  %i.eku = fcmp ugt float %51, 0.000000e+00
  %i.ekv = fcmp olt float %i.eks, %52             ; 2 uses
  br i1 %i.eku, label %.split.i, label %bb.aap

.split.i:                                         ; preds = %bb.aao
  %i.ekw = insertelement <2 x float> poison, float %i.ekl, i64 0
  %53 = insertelement <2 x float> %i.ekw, float %i.eks, i64 1
  %i.ekx = insertelement <2 x float> poison, float %52, i64 0
  %i.eky = shufflevector <2 x float> %i.ekx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ekz = fsub <2 x float> %53, %i.eky
  %i.ela = fcmp olt float %i.ekl, %52
  %54 = insertelement <2 x float> poison, float %51, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %i.elb = fdiv <2 x float> %i.ekz, %55
  %i.elc = fptosi <2 x float> %i.elb to <2 x i32>
  %i.eld = insertelement <2 x i1> poison, i1 %i.ela, i64 0
  %i.ele = insertelement <2 x i1> %i.eld, i1 %i.ekv, i64 1
  %i.elf = select <2 x i1> %i.ele, <2 x i32> splat (i32 -1), <2 x i32> %i.elc ; 2 uses
  %shift793 = shufflevector <2 x i32> %i.elf, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.elg = icmp sgt <2 x i32> %i.elf, %shift793
  %i.elh = extractelement <2 x i1> %i.elg, i64 0
  br i1 %i.elh, label %.thread.i398, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

bb.aap:                                           ; preds = %bb.aao
  %i.eli = fcmp oge float %i.ekl, %52
  %i.elj = and i1 %i.eli, %i.ekv
  br i1 %i.elj, label %.thread.i398, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

.thread.i398:                                     ; preds = %bb.aap, %.split.i, %bb.aal
  %i.elk = getelementptr i8, ptr %i.ejz, i64 5740
  %i.ell = load i8, ptr %i.elk, align 4, !tbaa !526, !range !99, !noundef !236
  %i.elm = icmp eq i8 %i.ell, 0
  br i1 %i.elm, label %bb.aaq, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

bb.aaq:                                           ; preds = %.thread.i398
  store i8 0, ptr %i.ekb, align 1, !tbaa !580
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i: ; preds = %bb.aaq, %.thread.i398, %bb.aap, %.split.i, %bb.aan, %bb.aam, %bb.aak, %bb.aaj
  %i.eln = getelementptr inbounds nuw i8, ptr %i.ejz, i64 304
  %i.elo = load i32, ptr %i.eln, align 8, !tbaa !783
  %i.elp = icmp eq i32 %i.elo, 12288
  %i.elq = getelementptr inbounds nuw i8, ptr %i.ejz, i64 10466 ; 5 uses
  br i1 %i.elp, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread.split.preheader.i, label %bb.aar

bb.aar:                                           ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i
  %i.elr = load i8, ptr %i.elq, align 2, !tbaa !581 ; 2 uses
  %i.els = zext i8 %i.elr to i64                  ; 3 uses
  %i.elt = getelementptr inbounds nuw i8, ptr %i.ejz, i64 280
  %i.elu = getelementptr inbounds nuw i8, ptr %i.elt, i64 %i.els
  %i.elv = load i8, ptr %i.elu, align 1, !tbaa !243, !range !99, !noundef !236
  %i.elw = trunc nuw i8 %i.elv to i1
  br i1 %i.elw, label %bb.aas, label %bb.abb

bb.aas:                                           ; preds = %bb.aar
  %i.elx = getelementptr inbounds nuw i8, ptr %i.ejz, i64 2972
  %i.ely = getelementptr inbounds nuw [4 x i8], ptr %i.elx, i64 %i.els
  %i.elz = load float, ptr %i.ely, align 4, !tbaa !75
  %i.ema = fcmp oeq float %i.elz, 0.000000e+00
  br i1 %i.ema, label %.critedge.i.i396, label %bb.abb

.critedge.i.i396:                                 ; preds = %bb.aas
  %or.cond.i.i.i.i = icmp ult i8 %i.elr, 11
  br i1 %or.cond.i.i.i.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i.i, label %_ZN5ImGui14IsMouseClickedEiij.exit.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i.i: ; preds = %.critedge.i.i396
  %i.emb = getelementptr [12 x i8], ptr %i.ejz, i64 %i.els
  %i.emc = getelementptr i8, ptr %i.emb, i64 7300
  %i.emd = load i8, ptr %i.emc, align 4, !tbaa !526, !range !99, !noundef !236
  %i.eme = icmp eq i8 %i.emd, 0
  br label %_ZN5ImGui14IsMouseClickedEiij.exit.i

_ZN5ImGui14IsMouseClickedEiij.exit.i:             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i.i, %.critedge.i.i396
  %.2.i.i = phi i1 [ %i.eme, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i.i ], [ true, %.critedge.i.i396 ]
  %i.emf = icmp ne i32 %i.ekf, 0
  %or.cond.i397 = select i1 %.2.i.i, i1 %i.emf, i1 false
  br i1 %or.cond.i397, label %bb.aat, label %bb.abb

bb.aat:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit.i
  store i32 %i.ekf, ptr %i.eka, align 4, !tbaa !582
  store i8 0, ptr %i.ekb, align 1, !tbaa !580
  br label %bb.abb

_ZN5ImGui14IsMouseClickedEiij.exit.thread.split.preheader.i: ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.thread.i
  %i.emg = getelementptr inbounds nuw i8, ptr %i.ejz, i64 280
  %i.emh = load i8, ptr %i.emg, align 8, !tbaa !243, !range !99, !noundef !236
  %i.emi = trunc nuw i8 %i.emh to i1
  br i1 %i.emi, label %bb.aau, label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i

bb.aau:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit.thread.split.preheader.i
  %i.emj = getelementptr inbounds nuw i8, ptr %i.ejz, i64 2972
  %i.emk = load float, ptr %i.emj, align 4, !tbaa !75
  %i.eml = fcmp oeq float %i.emk, 0.000000e+00
  br i1 %i.eml, label %_ZN5ImGui14IsMouseClickedEiij.exit36.i, label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i

_ZN5ImGui14IsMouseClickedEiij.exit36.i:           ; preds = %bb.aau
  %i.emm = getelementptr i8, ptr %i.ejz, i64 7300
  %i.emn = load i8, ptr %i.emm, align 4, !tbaa !526, !range !99, !noundef !236
  %i.emo = icmp eq i8 %i.emn, 0
  br i1 %i.emo, label %bb.aav, label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i

bb.aav:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit36.i
  store i8 0, ptr %i.elq, align 2, !tbaa !581
  br label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i

_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i:    ; preds = %bb.aav, %_ZN5ImGui14IsMouseClickedEiij.exit36.i, %bb.aau, %_ZN5ImGui14IsMouseClickedEiij.exit.thread.split.preheader.i
  %i.emp = getelementptr inbounds nuw i8, ptr %i.ejz, i64 281
  %i.emq = load i8, ptr %i.emp, align 1, !tbaa !243, !range !99, !noundef !236
  %i.emr = trunc nuw i8 %i.emq to i1
  br i1 %i.emr, label %bb.aaw, label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i

bb.aaw:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i
  %i.ems = getelementptr inbounds nuw i8, ptr %i.ejz, i64 2976
  %i.emt = load float, ptr %i.ems, align 8, !tbaa !75
  %i.emu = fcmp oeq float %i.emt, 0.000000e+00
  br i1 %i.emu, label %_ZN5ImGui14IsMouseClickedEiij.exit36.1.i, label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i

_ZN5ImGui14IsMouseClickedEiij.exit36.1.i:         ; preds = %bb.aaw
  %i.emv = getelementptr i8, ptr %i.ejz, i64 7312
  %i.emw = load i8, ptr %i.emv, align 8, !tbaa !526, !range !99, !noundef !236
  %i.emx = icmp eq i8 %i.emw, 0
  br i1 %i.emx, label %bb.aax, label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i

bb.aax:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit36.1.i
  store i8 1, ptr %i.elq, align 2, !tbaa !581
  br label %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i

_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i:  ; preds = %bb.aax, %_ZN5ImGui14IsMouseClickedEiij.exit36.1.i, %bb.aaw, %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.i
  %i.emy = getelementptr inbounds nuw i8, ptr %i.ejz, i64 282
  %i.emz = load i8, ptr %i.emy, align 2, !tbaa !243, !range !99, !noundef !236
  %i.ena = trunc nuw i8 %i.emz to i1
  br i1 %i.ena, label %bb.aay, label %bb.aba

bb.aay:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i
  %i.enb = getelementptr inbounds nuw i8, ptr %i.ejz, i64 2980
  %i.enc = load float, ptr %i.enb, align 4, !tbaa !75
  %i.end = fcmp oeq float %i.enc, 0.000000e+00
  br i1 %i.end, label %_ZN5ImGui14IsMouseClickedEiij.exit36.2.i, label %bb.aba

_ZN5ImGui14IsMouseClickedEiij.exit36.2.i:         ; preds = %bb.aay
  %i.ene = getelementptr i8, ptr %i.ejz, i64 7324
  %i.enf = load i8, ptr %i.ene, align 4, !tbaa !526, !range !99, !noundef !236
  %i.eng = icmp eq i8 %i.enf, 0
  br i1 %i.eng, label %bb.aaz, label %bb.aba

bb.aaz:                                           ; preds = %_ZN5ImGui14IsMouseClickedEiij.exit36.2.i
  store i8 2, ptr %i.elq, align 2, !tbaa !581
  br label %bb.aba

bb.aba:                                           ; preds = %bb.aaz, %_ZN5ImGui14IsMouseClickedEiij.exit36.2.i, %bb.aay, %_ZN5ImGui14IsMouseClickedEiij.exit36.thread.1.i
  %i.enh = getelementptr inbounds nuw i8, ptr %i.ejz, i64 7928 ; 2 uses
  %i.eni = load i32, ptr %i.enh, align 8, !tbaa !852
  %i.enj = or i32 %i.eni, 64
  store i32 %i.enj, ptr %i.enh, align 8, !tbaa !852
  %i.enk = getelementptr inbounds nuw i8, ptr %i.ejz, i64 8032
  store float f0x3F333333, ptr %i.enk, align 8, !tbaa !853
  %i.enl = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.788, i32 noundef %i.ekf)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.789)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.793)
  br label %bb.abc

bb.abb:                                           ; preds = %bb.aat, %_ZN5ImGui14IsMouseClickedEiij.exit.i, %bb.aas, %bb.aar
  %i.enm = getelementptr inbounds nuw i8, ptr %i.ejz, i64 7928 ; 2 uses
  %i.enn = load i32, ptr %i.enm, align 8, !tbaa !852
  %i.eno = or i32 %i.enn, 64
  store i32 %i.eno, ptr %i.enm, align 8, !tbaa !852
  %i.enp = getelementptr inbounds nuw i8, ptr %i.ejz, i64 8032
  store float f0x3F333333, ptr %i.enp, align 8, !tbaa !853
  %i.enq = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.788, i32 noundef %i.ekf)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.789)
  %.not.i395 = icmp eq i32 %i.ekf, 0
  %i.enr = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.ens = getelementptr inbounds nuw i8, ptr %i.enr, i64 3532
  %i.ent = zext i1 %.not.i395 to i64
  %i.enu = getelementptr inbounds nuw [16 x i8], ptr %i.ens, i64 %i.ent
  %i.env = load i8, ptr %i.elq, align 2, !tbaa !581
  %i.enw = zext i8 %i.env to i64
  %i.enx = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN5ImGuiL25UpdateDebugToolItemPickerEv.mouse_button_names, i64 %i.enw
  %i.eny = load ptr, ptr %i.enx, align 8, !tbaa !256
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.enu, ptr noundef nonnull @.str.794, ptr noundef %i.eny)
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abb, %bb.aba
  call void @_ZN5ImGui3EndEv()
  %.pre533 = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %_ZN5ImGuiL25UpdateDebugToolItemPickerEv.exit

_ZN5ImGuiL25UpdateDebugToolItemPickerEv.exit:     ; preds = %bb.aai, %bb.abc
  %i.enz = phi ptr [ %i.ejz, %bb.aai ], [ %.pre533, %bb.abc ] ; 21 uses
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enz, i64 10588
  %i.eob = load i32, ptr %i.eoa, align 4, !tbaa !1415
  %i.eoc = add nsw i32 %i.eob, 1
  %i.eod = getelementptr inbounds nuw i8, ptr %i.enz, i64 4
  %i.eoe = load i32, ptr %i.eod, align 4, !tbaa !228
  %i.eof = icmp eq i32 %i.eoc, %i.eoe
  br i1 %i.eof, label %bb.abd, label %bb.abf

bb.abd:                                           ; preds = %_ZN5ImGuiL25UpdateDebugToolItemPickerEv.exit
  %i.eog = getelementptr inbounds nuw i8, ptr %i.enz, i64 5408
  %i.eoh = load i32, ptr %i.eog, align 8, !tbaa !669 ; 2 uses
  %.not.i418 = icmp eq i32 %i.eoh, 0
  br i1 %.not.i418, label %bb.abe, label %bb.abf

bb.abe:                                           ; preds = %bb.abd
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.enz, i64 5428
  %i.eoj = load i32, ptr %i.eoi, align 4, !tbaa !652
  br label %bb.abf

bb.abf:                                           ; preds = %bb.abe, %bb.abd, %_ZN5ImGuiL25UpdateDebugToolItemPickerEv.exit
  %.0.i399 = phi i32 [ 0, %_ZN5ImGuiL25UpdateDebugToolItemPickerEv.exit ], [ %i.eoj, %bb.abe ], [ %i.eoh, %bb.abd ] ; 4 uses
  %i.eok = getelementptr inbounds nuw i8, ptr %i.enz, i64 10528 ; 2 uses
  %i.eol = load i32, ptr %i.eok, align 8, !tbaa !854
  %.not.i.i400 = icmp eq i32 %i.eol, %.0.i399
  br i1 %.not.i.i400, label %bb.abs, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  store i32 %.0.i399, ptr %i.eok, align 8, !tbaa !854
  %i.eom = getelementptr inbounds nuw i8, ptr %i.enz, i64 10534
  store i8 -1, ptr %i.eom, align 2, !tbaa !855
  %i.eon = getelementptr inbounds nuw i8, ptr %i.enz, i64 10533
  store i8 0, ptr %i.eon, align 1, !tbaa !856
  %i.eoo = getelementptr inbounds nuw i8, ptr %i.enz, i64 10536
  call void @_ZN8ImVectorI19ImGuiStackLevelInfoE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.eoo, i32 noundef 0)
end_hunk_4
begin_hunk_5_@_ZN5ImGui9IsKeyDownE8ImGuiKeyj:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.t = load i32, ptr %i.s, align 4, !tbaa !652
  %i.u = icmp ne i32 %1, %i.t
  %i.v = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.v, %i.u
  %or.cond3.i = icmp ult i32 %i.m, 120
  %or.cond21.i = and i1 %or.cond3.i, %or.cond.i
  br i1 %or.cond21.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %or.cond.i.i, label %.split.i.i.i7, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

.split.i.i.i7:                                    ; preds = %bb.e
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.x = and i32 %i.w, 28
  %i.y = icmp eq i32 %i.x, 12
  %switch.offset.i.i.i8 = add nuw nsw i32 %i.w, 651
  %spec.select.i.i.i9 = select i1 %i.y, i32 %switch.offset.i.i.i8, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i: ; preds = %.split.i.i.i7, %bb.e
  %.0.i.i6 = phi i32 [ %0, %bb.e ], [ %spec.select.i.i.i9, %.split.i.i.i7 ]
  %i.z = sext i32 %.0.i.i6 to i64
  %i.aa = getelementptr [12 x i8], ptr %i.a, i64 %i.z ; 3 uses
  %i.ab = icmp eq i32 %1, 0
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 -572
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !526, !range !99, !noundef !236
  %i.ae = icmp eq i8 %i.ad, 0
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.g:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.af = getelementptr i8, ptr %i.aa, i64 -580
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !524 ; 2 uses
  %.not.i = icmp eq i32 %i.ag, %1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.aa, i64 -572
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !526, !range !99, !noundef !236
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not20.i = icmp ne i32 %i.ag, -1
  %or.cond23.not.i = or i1 %.not20.i, %i.aj
  br i1 %or.cond23.not.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit:          ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %switch.early.test.split.i.i, %switch.early.test.i.i, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %.0 = phi i1 [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit ], [ false, %bb.h ], [ false, %bb.d ], [ %i.ae, %bb.f ], [ true, %bb.i ], [ true, %switch.early.test.i.i ], [ true, %switch.early.test.split.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = add i32 %0, -512                         ; 2 uses
  %or.cond.i = icmp ult i32 %i.a, 155
  br i1 %or.cond.i, label %bb.b, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.a
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %switch.early.test.split.i, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

switch.early.test.split.i:                        ; preds = %switch.early.test.i
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.e = and i32 %i.d, 28
  %switch.i = icmp eq i32 %i.e, 12
  br i1 %switch.i, label %bb.b, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

bb.b:                                             ; preds = %switch.early.test.split.i, %bb.a
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 7772
  %i.h = load i8, ptr %i.g, align 4, !tbaa !548, !range !99, !noundef !236
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 5428
  %i.k = load i32, ptr %i.j, align 4, !tbaa !652
  %i.l = icmp ne i32 %1, %i.k
  %i.m = icmp ne i32 %1, 0
  %or.cond = and i1 %i.m, %i.l
  %or.cond3 = icmp ult i32 %i.a, 120
  %or.cond21 = and i1 %or.cond3, %or.cond
  br i1 %or.cond21, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = and i32 %0, 61440
  %.not.i = icmp ne i32 %i.n, 0
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.p = icmp eq i32 %i.o, 1
  %or.cond.i24 = select i1 %.not.i, i1 %i.p, i1 false
  br i1 %or.cond.i24, label %.split.i.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit

.split.i.i:                                       ; preds = %bb.d
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.r = and i32 %i.q, 28
  %i.s = icmp eq i32 %i.r, 12
  %switch.offset.i.i = add nuw nsw i32 %i.q, 651
  %spec.select.i.i = select i1 %i.s, i32 %switch.offset.i.i, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit: ; preds = %bb.d, %.split.i.i
  %.0.i = phi i32 [ %0, %bb.d ], [ %spec.select.i.i, %.split.i.i ]
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr [12 x i8], ptr %i.f, i64 %i.t ; 3 uses
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  %i.w = getelementptr i8, ptr %i.u, i64 -572
  %i.x = load i8, ptr %i.w, align 4, !tbaa !526, !range !99, !noundef !236
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

bb.f:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  %i.z = getelementptr i8, ptr %i.u, i64 -580
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !524 ; 2 uses
  %.not = icmp eq i32 %i.aa, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.u, i64 -572
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !526, !range !99, !noundef !236
  %i.ad = trunc nuw i8 %i.ac to i1
  %.not20 = icmp ne i32 %i.aa, -1
  %or.cond23.not = or i1 %.not20, %i.ad
  br i1 %or.cond23.not, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit:        ; preds = %switch.early.test.split.i, %switch.early.test.i, %bb.c, %bb.g, %bb.h, %bb.e
  %.2 = phi i1 [ false, %bb.g ], [ false, %bb.c ], [ %i.y, %bb.e ], [ true, %bb.h ], [ true, %switch.early.test.i ], [ true, %switch.early.test.split.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #24 {
bb.a:
  %i.a = zext i1 %1 to i32
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %0, i32 noundef %i.a, i32 noundef 0)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 14 uses
  %i.b = and i32 %0, 61440
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.d, i1 false ; 3 uses
  br i1 %or.cond.i.i, label %.split.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

.split.i.i.i:                                     ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.f = and i32 %i.e, 28
  %i.g = icmp eq i32 %i.f, 12
  %switch.offset.i.i.i = add nuw nsw i32 %i.e, 651
  %spec.select.i.i.i = select i1 %i.g, i32 %switch.offset.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit:             ; preds = %bb.a, %.split.i.i.i
  %.0.i.i = phi i32 [ %0, %bb.a ], [ %spec.select.i.i.i, %.split.i.i.i ]
  %i.h = sext i32 %.0.i.i to i64
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -7884
  %i.k = load i8, ptr %i.j, align 4, !tbaa !239, !range !99, !noundef !236
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.b:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.m = getelementptr i8, ptr %i.i, i64 -7880
  %i.n = load float, ptr %i.m, align 4, !tbaa !774 ; 4 uses
  %i.o = fcmp olt float %i.n, 0.000000e+00
  br i1 %i.o, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp oeq float %i.n, 0.000000e+00        ; 2 uses
  %i.q = and i32 %1, 255
  %spec.select.narrow.not = icmp eq i32 %i.q, 0
  %or.cond = or i1 %spec.select.narrow.not, %i.p
  br i1 %or.cond, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %1, 14
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.t = load float, ptr %i.s, align 4, !tbaa !726 ; 3 uses
  switch i32 %i.r, label %bb.g [
    i32 4, label %bb.e
    i32 8, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %3 = fmul float %i.t, 7.200000e-01
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.v = load float, ptr %i.u, align 8, !tbaa !728
  %4 = fmul float %i.v, 8.000000e-01
  br label %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit

bb.f:                                             ; preds = %bb.d
  %5 = fmul float %i.t, 7.200000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.x = load float, ptr %i.w, align 8, !tbaa !728
  %6 = fmul float %i.x, 3.000000e-01
  br label %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.z = load float, ptr %i.y, align 8, !tbaa !728
  br label %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit

_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit:    ; preds = %bb.e, %bb.f, %bb.g
  %.051 = phi float [ %i.t, %bb.g ], [ %3, %bb.e ], [ %5, %bb.f ] ; 5 uses
  %.sink.i = phi float [ %i.z, %bb.g ], [ %4, %bb.e ], [ %6, %bb.f ] ; 2 uses
  %i.aa = fcmp ogt float %i.n, %.051
  br i1 %i.aa, label %bb.h, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.h:                                             ; preds = %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit
  br i1 %or.cond.i.i, label %.split.i.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.ac = and i32 %i.ab, 28
  %i.ad = icmp eq i32 %i.ac, 12
  %switch.offset.i.i.i.i = add nuw nsw i32 %i.ab, 651
  %spec.select.i.i.i.i = select i1 %i.ad, i32 %switch.offset.i.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i:           ; preds = %.split.i.i.i.i, %bb.h
  %.0.i.i.i = phi i32 [ %0, %bb.h ], [ %spec.select.i.i.i.i, %.split.i.i.i.i ]
  %i.ae = sext i32 %.0.i.i.i to i64
  %i.af = getelementptr [16 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -7884
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !239, !range !99, !noundef !236
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.i:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i
  %i.aj = getelementptr i8, ptr %i.af, i64 -7880
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !774 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.am = load float, ptr %i.al, align 8, !tbaa !727
  %i.an = fsub float %i.ak, %i.am                 ; 3 uses
  %i.ao = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.ao, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = fcmp ult float %i.an, %i.ak
  br i1 %i.ap, label %bb.k, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = fcmp ugt float %.sink.i, 0.000000e+00
  %i.ar = fcmp olt float %i.an, %.051             ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp oge float %i.ak, %.051
  %i.at = and i1 %i.as, %i.ar
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = insertelement <2 x float> poison, float %i.an, i64 0
  %7 = insertelement <2 x float> %i.au, float %i.ak, i64 1
  %i.av = insertelement <2 x float> poison, float %.051, i64 0
  %8 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fsub <2 x float> %7, %8
  %i.ax = fcmp olt float %i.ak, %.051
  %9 = insertelement <2 x float> poison, float %.sink.i, i64 0
  %i.ay = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x float> %i.aw, %i.ay
  %i.ba = fptosi <2 x float> %i.az to <2 x i32>
  %i.bb = insertelement <2 x i1> poison, i1 %i.ar, i64 0
  %i.bc = insertelement <2 x i1> %i.bb, i1 %i.ax, i64 1
  %i.bd = select <2 x i1> %i.bc, <2 x i32> splat (i32 -1), <2 x i32> %i.ba ; 2 uses
  %shift = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = icmp sgt <2 x i32> %shift, %i.bd
  %i.bf = extractelement <2 x i1> %i.be, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  %.0.i = phi i1 [ %i.at, %bb.l ], [ %i.bf, %bb.m ], [ true, %bb.i ] ; 2 uses
  %i.bg = and i32 %1, 240
  %.not35 = icmp ne i32 %i.bg, 0
  %or.cond40.not = and i1 %.not35, %.0.i
  br i1 %or.cond40.not, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !437
  %i.bj = fpext float %i.n to double
  %i.bk = fsub double %i.bi, %i.bj
  %i.bl = fadd double %i.bk, f0x3EE4F8B580000000  ; 3 uses
  %i.bm = and i32 %1, 32
  %.not36 = icmp eq i32 %i.bm, 0
  br i1 %.not36, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 5520
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !771
  %i.bp = fcmp ule double %i.bo, %i.bl
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i1 [ true, %bb.o ], [ %i.bp, %bb.p ]  ; 2 uses
  %i.bq = and i32 %1, 64
  %.not37 = icmp eq i32 %i.bq, 0
  br i1 %.not37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 5528
  %i.bs = load double, ptr %i.br, align 8, !tbaa !772
  %i.bt = fcmp ule double %i.bs, %i.bl
  %spec.select42 = select i1 %i.bt, i1 %.0, i1 false
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i1 [ %.0, %bb.q ], [ %spec.select42, %bb.r ] ; 2 uses
  %i.bu = and i32 %1, 128
  %.not38 = icmp eq i32 %i.bu, 0
  br i1 %.not38, label %bb.t, label %.split

.split:                                           ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 5536
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !546
  %i.bx = fcmp ule double %i.bw, %i.bl
  %spec.select43 = select i1 %i.bx, i1 %.1, i1 false
  br i1 %spec.select43, label %bb.u, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.c
  %.4 = phi i1 [ %i.p, %bb.c ], [ %.0.i, %bb.n ], [ %.1, %bb.s ]
  br i1 %.4, label %bb.u, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.u:                                             ; preds = %.split, %bb.t
  %i.by = add i32 %0, -512                        ; 2 uses
  %or.cond.i.i44 = icmp ult i32 %i.by, 155
  br i1 %or.cond.i.i44, label %bb.v, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.u
  br i1 %i.d, label %switch.early.test.split.i.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

switch.early.test.split.i.i:                      ; preds = %switch.early.test.i.i
  %i.bz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.ca = and i32 %i.bz, 28
  %switch.i.i = icmp eq i32 %i.ca, 12
  br i1 %switch.i.i, label %bb.v, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.v:                                             ; preds = %switch.early.test.split.i.i, %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !548, !range !99, !noundef !236
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !652
  %i.cg = icmp ne i32 %2, %i.cf
  %i.ch = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.ch, %i.cg
  %or.cond3.i = icmp ult i32 %i.by, 120
  %or.cond21.i = and i1 %or.cond3.i, %or.cond.i
  br i1 %or.cond21.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond.i.i, label %.split.i.i.i47, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

.split.i.i.i47:                                   ; preds = %bb.x
  %i.ci = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.cj = and i32 %i.ci, 28
  %i.ck = icmp eq i32 %i.cj, 12
  %switch.offset.i.i.i48 = add nuw nsw i32 %i.ci, 651
  %spec.select.i.i.i49 = select i1 %i.ck, i32 %switch.offset.i.i.i48, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i: ; preds = %.split.i.i.i47, %bb.x
  %.0.i.i46 = phi i32 [ %0, %bb.x ], [ %spec.select.i.i.i49, %.split.i.i.i47 ]
  %i.cl = sext i32 %.0.i.i46 to i64
  %i.cm = getelementptr [12 x i8], ptr %i.a, i64 %i.cl ; 3 uses
  %i.cn = icmp eq i32 %2, 0
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.co = getelementptr i8, ptr %i.cm, i64 -572
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !526, !range !99, !noundef !236
  %i.cq = icmp eq i8 %i.cp, 0
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.z:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.cr = getelementptr i8, ptr %i.cm, i64 -580
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !524 ; 2 uses
  %.not.i = icmp eq i32 %i.cs, %2
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr i8, ptr %i.cm, i64 -572
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !526, !range !99, !noundef !236
  %i.cv = trunc nuw i8 %i.cu to i1
  %.not20.i = icmp ne i32 %i.cs, -1
  %or.cond23.not.i = or i1 %.not20.i, %i.cv
  br i1 %or.cond23.not.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit:          ; preds = %bb.j, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i, %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit, %bb.ab, %bb.aa, %bb.y, %bb.w, %switch.early.test.split.i.i, %switch.early.test.i.i, %.split, %bb.b, %bb.t, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %.230 = phi i1 [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit ], [ false, %bb.b ], [ false, %bb.t ], [ false, %.split ], [ true, %switch.early.test.split.i.i ], [ false, %bb.aa ], [ false, %bb.w ], [ %i.cq, %bb.y ], [ true, %bb.ab ], [ true, %switch.early.test.i.i ], [ false, %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit ], [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i ], [ false, %bb.j ]
  ret i1 %.230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui13IsKeyReleasedE8ImGuiKey(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = and i32 %0, 61440
  %.not.i.i.i = icmp ne i32 %i.b, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.d, i1 false ; 2 uses
  br i1 %or.cond.i.i.i, label %.split.i.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

.split.i.i.i.i:                                   ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.f = and i32 %i.e, 28
  %i.g = icmp eq i32 %i.f, 12
  %switch.offset.i.i.i.i = add nuw nsw i32 %i.e, 651
  %spec.select.i.i.i.i = select i1 %i.g, i32 %switch.offset.i.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i:           ; preds = %.split.i.i.i.i, %bb.a
  %.0.i.i.i = phi i32 [ %0, %bb.a ], [ %spec.select.i.i.i.i, %.split.i.i.i.i ]
  %i.h = sext i32 %.0.i.i.i to i64
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -7876
  %i.k = load float, ptr %i.j, align 4, !tbaa !775
  %i.l = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i
  %i.m = getelementptr i8, ptr %i.i, i64 -7884
  %i.n = load i8, ptr %i.m, align 4, !tbaa !239, !range !99, !noundef !236
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %0, -512
  %or.cond.i.i5.i = icmp ult i32 %i.p, 155
  br i1 %or.cond.i.i5.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  br i1 %i.d, label %switch.early.test.split.i.i.i, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit

switch.early.test.split.i.i.i:                    ; preds = %switch.early.test.i.i.i
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.r = and i32 %i.q, 28
  %switch.i.i.i = icmp eq i32 %i.r, 12
  br i1 %switch.i.i.i, label %bb.d, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit

bb.d:                                             ; preds = %switch.early.test.split.i.i.i, %bb.c
  br i1 %or.cond.i.i.i, label %.split.i.i.i8.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

.split.i.i.i8.i:                                  ; preds = %bb.d
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.t = and i32 %i.s, 28
  %i.u = icmp eq i32 %i.t, 12
  %switch.offset.i.i.i9.i = add nuw nsw i32 %i.s, 651
  %spec.select.i.i.i10.i = select i1 %i.u, i32 %switch.offset.i.i.i9.i, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i: ; preds = %.split.i.i.i8.i, %bb.d
  %.0.i.i7.i = phi i32 [ %0, %bb.d ], [ %spec.select.i.i.i10.i, %.split.i.i.i8.i ]
end_hunk_5
