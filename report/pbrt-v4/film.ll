Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN4pbrt8LogFatalIJRA11_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_:bb.a
          to label %_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !379 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !379
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !33
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7Array2DINS_7RGBFilm5PixelEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt7RGBFilm5PixelEEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.e = sub nsw i32 %i.d, %.sroa.2.0.extract.trunc.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.h = sub nsw i32 %i.g, %.sroa.0.0.extract.trunc.i.i
  %i.i = mul nsw i32 %i.e, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = mul nsw i64 %i.j, 56
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt7RGBFilm5PixelEEEvPT_m.exit unwind label %bb.c, !inline_history !380

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt7RGBFilm5PixelEEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt7RGBFilm8AddSplatENS_6Point2IfEENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %class.anon.96, align 8             ; 4 uses
  %.fr = freeze <2 x float> %2                    ; 3 uses
  %shift = shufflevector <2 x float> %.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.a = fcmp uno <2 x float> %.fr, %shift
  %or.cond.i = extractelement <2 x i1> %i.a, i64 0
  %.sroa.4145.8.vec.extract = extractelement <2 x float> %3, i64 0
  %i.b = fcmp uno float %.sroa.4145.8.vec.extract, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.b
  %.sroa.4145.12.vec.extract = extractelement <2 x float> %3, i64 1
  %i.c = fcmp uno float %.sroa.4145.12.vec.extract, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.c
  br i1 %or.cond17.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 500, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(13) @.str.58) #32
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.i = load float, ptr %i.h, align 8, !tbaa !114 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.m, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.o = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.s = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  %i.v = fcmp une <4 x float> %i.g, zeroinitializer
  %i.w = shufflevector <2 x float> %.fr, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fdiv <4 x float> %i.w, %i.g
  %i.y = select <4 x i1> %i.v, <4 x float> %i.x, <4 x float> zeroinitializer ; 5 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aa = fmul <2 x float> %i.z, %i.l             ; 2 uses
  %i.ab = extractelement <4 x float> %i.y, i64 3
  %i.ac = fmul float %i.ab, %.sroa.8.12.vec.extract.i.i
  %i.ad = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = fmul <4 x float> %i.y, %i.ad            ; 4 uses
  %i.af = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fmul <4 x float> %i.y, %i.af            ; 4 uses
  %shift171 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ag, %shift171
  %shift173 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop174 = fadd <4 x float> %shift173, %foldExtExtBinop
  %shift176 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop177 = fadd <4 x float> %shift176, %foldExtExtBinop174
  %i.ah = extractelement <4 x float> %foldExtExtBinop177, i64 0
  %i.ai = fmul float %i.ah, 2.500000e-01
  %shift179 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %i.aa, %shift179
  %i.aj = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ak = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.ae, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.am = fmul <2 x float> %i.aj, %i.al
  %i.an = fadd <2 x float> %i.aj, %i.al
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aq = shufflevector <2 x float> %foldExtExtBinop180, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.at = insertelement <2 x float> %i.as, float %i.ac, i64 0
  %i.au = fadd <2 x float> %i.at, %i.ar
  %i.av = fmul <2 x float> %i.au, splat (float 2.500000e-01)
  %i.aw = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.av           ; 4 uses
  %i.az = fmul float %i.i, %i.ai                  ; 4 uses
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.bc = fcmp olt float %i.ba, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ba ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.az
  %.sroa.speculated = select i1 %i.be, float %i.az, float %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !101 ; 2 uses
  %i.bh = fcmp ogt float %.sroa.speculated, %i.bg ; 2 uses
  %i.bi = fdiv float %i.bg, %.sroa.speculated     ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.ay, %i.bk
  %i.bm = fmul float %i.az, %i.bi
  %.sroa.11.0 = select i1 %i.bh, float %i.bm, float %i.az
  %.sroa.0124.0 = select i1 %i.bh, <2 x float> %i.bl, <2 x float> %i.ay ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = and i64 %i.bo, 144115188075855871
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.bq, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = fadd <2 x float> %1, splat (float 5.000000e-01) ; 2 uses
  %i.bt = fsub <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bu = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 2 uses
  %i.bw = fadd <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bx = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bw)
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = add nsw <2 x i32> %i.by, splat (i32 1)  ; 2 uses
  %i.ca = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bz, <2 x i32> %i.bv)
  %.sroa.03.0.copyload.i = load i64, ptr %i.br, align 8, !tbaa !52
  %7 = insertelement <2 x i64> poison, i64 %.sroa.03.0.copyload.i, i64 0
  %i.cb = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cc = lshr <2 x i64> %i.cb, <i64 0, i64 32>
  %i.cd = trunc <2 x i64> %i.cc to <2 x i32>
  %i.ce = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ca, <2 x i32> %i.cd) ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bv, <2 x i32> %i.bz)
  %.sroa.0.0.copyload.i = load i64, ptr %i.cf, align 8, !tbaa !52
  %8 = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i, i64 0
  %i.ch = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = lshr <2 x i64> %i.ch, <i64 0, i64 32>
  %i.cj = trunc <2 x i64> %i.ci to <2 x i32>
  %i.ck = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cj, <2 x i32> %i.cg) ; 3 uses
  %i.cl = extractelement <2 x i32> %i.ce, i64 1   ; 2 uses
  %i.cm = extractelement <2 x i32> %i.ck, i64 1
  %i.cn = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cm)
  %i.co = icmp sge <2 x i32> %i.ce, %i.ck         ; 2 uses
  %i.cp = extractelement <2 x i1> %i.co, i64 0
  %i.cq = extractelement <2 x i1> %i.co, i64 1
  %.not = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.cr = extractelement <2 x i32> %i.ce, i64 0   ; 3 uses
  %.sroa.09.0.insert.insert.i.i66 = bitcast <2 x i32> %i.ce to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0124.0.vec.extract137 = extractelement <2 x float> %.sroa.0124.0, i64 0
  %.sroa.0124.4.vec.extract142 = extractelement <2 x float> %.sroa.0124.0, i64 1
  %.sroa.099.0.insert.ext105 = zext i32 %i.cr to i64
  %i.cw = extractelement <2 x i32> %i.ck, i64 0
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %.lr.ph.i.i
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.099.4.extract.trunc161 = phi i32 [ %i.cl, %.lr.ph ], [ %.sroa.099.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.099.0.extract.trunc160 = phi i32 [ %i.cr, %.lr.ph ], [ %.sroa.099.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.099.0159 = phi i64 [ %.sroa.09.0.insert.insert.i.i66, %.lr.ph ], [ %.sroa.099.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cx = phi <2 x i32> [ %i.ce, %.lr.ph ], [ %i.fu, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cy = sitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fsub <2 x float> %1, %i.cy
  %i.da = fadd <2 x float> %i.cz, splat (float -5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %i.da, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.db = load i64, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.dc = and i64 %i.db, 144115188075855871
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = lshr i64 %i.db, 57
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.dd, i32 noundef %i.dg) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.di = fcmp une float %i.dh, 0.000000e+00
  br i1 %i.di, label %_ZN4pbrt3RGBixEi.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZN4pbrt3RGBixEi.exit:                            ; preds = %bb.c
  %i.dj = load i32, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %i.dk = sub i32 %.sroa.099.0.extract.trunc160, %i.dj
  %i.dl = load i32, ptr %i.ct, align 4, !tbaa !109
  %i.dm = sub nsw i32 %.sroa.099.4.extract.trunc161, %i.dl
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !103
  %i.do = load i32, ptr %i.cv, align 8, !tbaa !107
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = mul nsw i32 %i.dp, %i.dm
  %i.dr = add nsw i32 %i.dk, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [56 x i8], ptr %i.dn, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 3 uses
  %i.dv = fmul float %i.dh, %.sroa.0124.0.vec.extract137
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = load atomic i64, ptr %i.du seq_cst, align 8 ; 2 uses
  %i.dy = bitcast i64 %i.dx to double
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = bitcast double %i.dz to i64
  %i.eb = cmpxchg weak ptr %i.du, i64 %i.dx, i64 %i.ea seq_cst seq_cst, align 8 ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  br i1 %i.ec, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %_ZN4pbrt3RGBixEi.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.ed = phi { i64, i1 } [ %i.ei, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.eb, %_ZN4pbrt3RGBixEi.exit ]
  %i.ee = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %i.ef = bitcast i64 %i.ee to double
  %i.eg = fadd double %i.dw, %i.ef
  %i.eh = bitcast double %i.eg to i64
  %i.ei = cmpxchg weak ptr %i.du, i64 %i.ee, i64 %i.eh seq_cst seq_cst, align 8 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  br i1 %i.ej, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN4pbrt3RGBixEi.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 3 uses
  %i.el = fmul float %i.dh, %.sroa.0124.4.vec.extract142
  %i.em = fpext float %i.el to double             ; 2 uses
  %i.en = load atomic i64, ptr %i.ek seq_cst, align 8 ; 2 uses
  %i.eo = bitcast i64 %i.en to double
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = bitcast double %i.ep to i64
  %i.er = cmpxchg weak ptr %i.ek, i64 %i.en, i64 %i.eq seq_cst seq_cst, align 8 ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.es, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1: ; preds = %_ZN4pbrt3RGBixEi.exit.1, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1
  %i.et = phi { i64, i1 } [ %i.ey, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1 ], [ %i.er, %_ZN4pbrt3RGBixEi.exit.1 ]
  %i.eu = extractvalue { i64, i1 } %i.et, 0       ; 2 uses
  %i.ev = bitcast i64 %i.eu to double
  %i.ew = fadd double %i.em, %i.ev
  %i.ex = bitcast double %i.ew to i64
  %i.ey = cmpxchg weak ptr %i.ek, i64 %i.eu, i64 %i.ex seq_cst seq_cst, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, %_ZN4pbrt3RGBixEi.exit.1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 3 uses
  %i.fb = fmul float %i.dh, %.sroa.11.0
  %i.fc = fpext float %i.fb to double             ; 2 uses
  %i.fd = load atomic i64, ptr %i.fa seq_cst, align 8 ; 2 uses
  %i.fe = bitcast i64 %i.fd to double
  %i.ff = fadd double %i.fc, %i.fe
  %i.fg = bitcast double %i.ff to i64
  %i.fh = cmpxchg weak ptr %i.fa, i64 %i.fd, i64 %i.fg seq_cst seq_cst, align 8 ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  br i1 %i.fi, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2
  %i.fj = phi { i64, i1 } [ %i.fo, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2 ], [ %i.fh, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.fk = extractvalue { i64, i1 } %i.fj, 0       ; 2 uses
  %i.fl = bitcast i64 %i.fk to double
  %i.fm = fadd double %i.fc, %i.fl
  %i.fn = bitcast double %i.fm to i64
  %i.fo = cmpxchg weak ptr %i.fa, i64 %i.fk, i64 %i.fn seq_cst seq_cst, align 8 ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, !llvm.loop !2

_ZN4pbrt16Bounds2iIteratorppEv.exit:              ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, %_ZN4pbrt3RGBixEi.exit.2, %bb.c
  %i.fq = add nsw i32 %.sroa.099.0.extract.trunc160, 1 ; 2 uses
  %.sroa.099.0.insert.ext = zext i32 %i.fq to i64
  %.sroa.099.0.insert.mask = and i64 %.sroa.099.0159, -4294967296 ; 2 uses
  %.sroa.099.0.insert.insert = or disjoint i64 %.sroa.099.0.insert.mask, %.sroa.099.0.insert.ext
  %i.fr = icmp eq i32 %i.fq, %i.cw
  %.sroa.099.4.insert.ext = add i64 %.sroa.099.0.insert.mask, 4294967296
  %.sroa.099.4.insert.insert = or disjoint i64 %.sroa.099.4.insert.ext, %.sroa.099.0.insert.ext105
  %.sroa.099.1 = select i1 %i.fr, i64 %.sroa.099.4.insert.insert, i64 %.sroa.099.0.insert.insert ; 4 uses
  %.sroa.099.0.extract.trunc = trunc i64 %.sroa.099.1 to i32 ; 2 uses
  %.not.i.i77 = icmp ne i32 %i.cr, %.sroa.099.0.extract.trunc
  %.sroa.099.4.extract.shift = lshr i64 %.sroa.099.1, 32
  %.sroa.099.4.extract.trunc = trunc nuw i64 %.sroa.099.4.extract.shift to i32 ; 2 uses
  %i.fs = icmp ne i32 %i.cn, %.sroa.099.4.extract.trunc
  %i.ft = select i1 %.not.i.i77, i1 true, i1 %i.fs
  %i.fu = bitcast i64 %.sroa.099.1 to <2 x i32>
  br i1 %i.ft, label %bb.c, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !29, !alias.scope !383
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31, !alias.scope !383
  store i8 0, ptr %i.a, align 8, !tbaa !32, !alias.scope !383
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4)
          to label %_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !383 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !383
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !33
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN4pbrt11GBufferFilmC2ENS_18FilmBaseParametersERKNS_17AnimatedTransformEbPKNS_13RGBColorSpaceEfbN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.dw = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dg, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !55, !noalias !421
  %i.dx = load <2 x float>, ptr %i.dh, align 4, !tbaa !55, !noalias !421 ; 3 uses
  %i.dy = load float, ptr %i.di, align 4, !tbaa !55, !noalias !421
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x float> %i.du, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = shufflevector <8 x float> %i.ea, <8 x float> %i.dz, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.ec = call <8 x float> @llvm.fma.v8f32(<8 x float> %i.eb, <8 x float> %i.dn, <8 x float> zeroinitializer)
  %i.ed = shufflevector <2 x float> %i.dx, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.dv, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <8 x float> %i.ee, <8 x float> %i.ed, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.eg = call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ef, <8 x float> %i.dq, <8 x float> %i.ec)
  %i.eh = insertelement <8 x float> poison, float %i.dk, i64 2
  %i.ei = shufflevector <4 x float> %i.dw, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <8 x float> %i.ei, <8 x float> %i.eh, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.ek = call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ej, <8 x float> %i.dt, <8 x float> %i.eg)
  %i.el = extractelement <2 x float> %i.dx, i64 0
  %i.em = call noundef float @llvm.fma.f32(float %i.el, float %i.dl, float 0.000000e+00)
  %i.en = call noundef float @llvm.fma.f32(float %i.dy, float %i.do, float %i.em)
  %i.eo = call noundef float @llvm.fma.f32(float %i.dk, float %i.dr, float %i.en)
  store <8 x float> %i.ek, ptr %i.ce, align 4
  store float %i.eo, ptr %i.cf, align 4, !tbaa !32
  ret void

bb.l:                                             ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.j ], [ %i.cs, %bb.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !33 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.l
  %i.et = load i64, ptr %i.er, align 8, !tbaa !32
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split

_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  %.sink30 = phi i64 [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %.sink = phi ptr [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %i.eu = add i64 %.sink30, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.eu) #31
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit19

_ZN4pbrt18FilmBaseParametersD2Ev.exit19:          ; preds = %_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split, %bb.l, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.h ], [ %.pn.pn, %bb.l ], [ %.pn.pn.pn.ph, %_ZN4pbrt18FilmBaseParametersD2Ev.exit19.sink.split ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7Array2DINS_11GBufferFilm5PixelEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt11GBufferFilm5PixelEEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.e = sub nsw i32 %i.d, %.sroa.2.0.extract.trunc.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.h = sub nsw i32 %i.g, %.sroa.0.0.extract.trunc.i.i
  %i.i = mul nsw i32 %i.e, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = mul nsw i64 %i.j, 192
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt11GBufferFilm5PixelEEEvPT_m.exit unwind label %bb.c, !inline_history !422

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt11GBufferFilm5PixelEEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt11GBufferFilm8AddSplatENS_6Point2IfEENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(872) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %class.anon.96, align 8             ; 4 uses
  %.fr = freeze <2 x float> %2                    ; 3 uses
  %shift = shufflevector <2 x float> %.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.a = fcmp uno <2 x float> %.fr, %shift
  %or.cond.i = extractelement <2 x i1> %i.a, i64 0
  %.sroa.4144.8.vec.extract = extractelement <2 x float> %3, i64 0
  %i.b = fcmp uno float %.sroa.4144.8.vec.extract, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.b
  %.sroa.4144.12.vec.extract = extractelement <2 x float> %3, i64 1
  %i.c = fcmp uno float %.sroa.4144.12.vec.extract, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.c
  br i1 %or.cond17.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 662, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(13) @.str.68) #32
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.i = load float, ptr %i.h, align 8, !tbaa !114 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.m, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.o = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.s = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  %i.v = fcmp une <4 x float> %i.g, zeroinitializer
  %i.w = shufflevector <2 x float> %.fr, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fdiv <4 x float> %i.w, %i.g
  %i.y = select <4 x i1> %i.v, <4 x float> %i.x, <4 x float> zeroinitializer ; 5 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aa = fmul <2 x float> %i.z, %i.l             ; 2 uses
  %i.ab = extractelement <4 x float> %i.y, i64 3
  %i.ac = fmul float %i.ab, %.sroa.8.12.vec.extract.i.i
  %i.ad = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = fmul <4 x float> %i.y, %i.ad            ; 4 uses
  %i.af = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fmul <4 x float> %i.y, %i.af            ; 4 uses
  %shift170 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ag, %shift170
  %shift172 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop173 = fadd <4 x float> %shift172, %foldExtExtBinop
  %shift175 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop176 = fadd <4 x float> %shift175, %foldExtExtBinop173
  %i.ah = extractelement <4 x float> %foldExtExtBinop176, i64 0
  %i.ai = fmul float %i.ah, 2.500000e-01
  %shift178 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop179 = fadd <2 x float> %i.aa, %shift178
  %i.aj = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ak = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.ae, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.am = fmul <2 x float> %i.aj, %i.al
  %i.an = fadd <2 x float> %i.aj, %i.al
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aq = shufflevector <2 x float> %foldExtExtBinop179, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.at = insertelement <2 x float> %i.as, float %i.ac, i64 0
  %i.au = fadd <2 x float> %i.at, %i.ar
  %i.av = fmul <2 x float> %i.au, splat (float 2.500000e-01)
  %i.aw = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.av           ; 4 uses
  %i.az = fmul float %i.i, %i.ai                  ; 4 uses
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.bc = fcmp olt float %i.ba, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ba ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.az
  %.sroa.speculated = select i1 %i.be, float %i.az, float %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !155 ; 2 uses
  %i.bh = fcmp ogt float %.sroa.speculated, %i.bg ; 2 uses
  %i.bi = fdiv float %i.bg, %.sroa.speculated     ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.ay, %i.bk
  %i.bm = fmul float %i.az, %i.bi
  %.sroa.11.0 = select i1 %i.bh, float %i.bm, float %i.az
  %.sroa.0123.0 = select i1 %i.bh, <2 x float> %i.bl, <2 x float> %i.ay ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = and i64 %i.bo, 144115188075855871
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.bq, align 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = fadd <2 x float> %1, splat (float 5.000000e-01) ; 2 uses
  %i.bt = fsub <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bu = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 2 uses
  %i.bw = fadd <2 x float> %i.bs, %.sroa.0.0.i.i.i
  %i.bx = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bw)
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = add nsw <2 x i32> %i.by, splat (i32 1)  ; 2 uses
  %i.ca = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bz, <2 x i32> %i.bv)
  %.sroa.03.0.copyload.i = load i64, ptr %i.br, align 8, !tbaa !52
  %7 = insertelement <2 x i64> poison, i64 %.sroa.03.0.copyload.i, i64 0
  %i.cb = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cc = lshr <2 x i64> %i.cb, <i64 0, i64 32>
  %i.cd = trunc <2 x i64> %i.cc to <2 x i32>
  %i.ce = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ca, <2 x i32> %i.cd) ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bv, <2 x i32> %i.bz)
  %.sroa.0.0.copyload.i = load i64, ptr %i.cf, align 8, !tbaa !52
  %8 = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i, i64 0
  %i.ch = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = lshr <2 x i64> %i.ch, <i64 0, i64 32>
  %i.cj = trunc <2 x i64> %i.ci to <2 x i32>
  %i.ck = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cj, <2 x i32> %i.cg) ; 3 uses
  %i.cl = extractelement <2 x i32> %i.ce, i64 1   ; 2 uses
  %i.cm = extractelement <2 x i32> %i.ck, i64 1
  %i.cn = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cm)
  %i.co = icmp sge <2 x i32> %i.ce, %i.ck         ; 2 uses
  %i.cp = extractelement <2 x i1> %i.co, i64 0
  %i.cq = extractelement <2 x i1> %i.co, i64 1
  %.not = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.cr = extractelement <2 x i32> %i.ce, i64 0   ; 3 uses
  %.sroa.09.0.insert.insert.i.i65 = bitcast <2 x i32> %i.ce to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 792
  %.sroa.0123.0.vec.extract136 = extractelement <2 x float> %.sroa.0123.0, i64 0
  %.sroa.0123.4.vec.extract141 = extractelement <2 x float> %.sroa.0123.0, i64 1
  %.sroa.098.0.insert.ext104 = zext i32 %i.cr to i64
  %i.cw = extractelement <2 x i32> %i.ck, i64 0
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %.lr.ph.i.i
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.098.4.extract.trunc160 = phi i32 [ %i.cl, %.lr.ph ], [ %.sroa.098.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.098.0.extract.trunc159 = phi i32 [ %i.cr, %.lr.ph ], [ %.sroa.098.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.098.0158 = phi i64 [ %.sroa.09.0.insert.insert.i.i65, %.lr.ph ], [ %.sroa.098.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cx = phi <2 x i32> [ %i.ce, %.lr.ph ], [ %i.fu, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.cy = sitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fsub <2 x float> %1, %i.cy
  %i.da = fadd <2 x float> %i.cz, splat (float -5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %i.da, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.db = load i64, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.dc = and i64 %i.db, 144115188075855871
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = lshr i64 %i.db, 57
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.dd, i32 noundef %i.dg) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.di = fcmp une float %i.dh, 0.000000e+00
  br i1 %i.di, label %_ZN4pbrt3RGBixEi.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZN4pbrt3RGBixEi.exit:                            ; preds = %bb.c
  %i.dj = load i32, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %i.dk = sub i32 %.sroa.098.0.extract.trunc159, %i.dj
  %i.dl = load i32, ptr %i.ct, align 4, !tbaa !109
  %i.dm = sub nsw i32 %.sroa.098.4.extract.trunc160, %i.dl
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !156
  %i.do = load i32, ptr %i.cv, align 8, !tbaa !107
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = mul nsw i32 %i.dp, %i.dm
  %i.dr = add nsw i32 %i.dk, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [192 x i8], ptr %i.dn, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 3 uses
  %i.dv = fmul float %i.dh, %.sroa.0123.0.vec.extract136
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = load atomic i64, ptr %i.du seq_cst, align 8 ; 2 uses
  %i.dy = bitcast i64 %i.dx to double
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = bitcast double %i.dz to i64
  %i.eb = cmpxchg weak ptr %i.du, i64 %i.dx, i64 %i.ea seq_cst seq_cst, align 8 ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  br i1 %i.ec, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %_ZN4pbrt3RGBixEi.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.ed = phi { i64, i1 } [ %i.ei, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.eb, %_ZN4pbrt3RGBixEi.exit ]
  %i.ee = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %i.ef = bitcast i64 %i.ee to double
  %i.eg = fadd double %i.dw, %i.ef
  %i.eh = bitcast double %i.eg to i64
  %i.ei = cmpxchg weak ptr %i.du, i64 %i.ee, i64 %i.eh seq_cst seq_cst, align 8 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  br i1 %i.ej, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN4pbrt3RGBixEi.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 3 uses
  %i.el = fmul float %i.dh, %.sroa.0123.4.vec.extract141
  %i.em = fpext float %i.el to double             ; 2 uses
  %i.en = load atomic i64, ptr %i.ek seq_cst, align 8 ; 2 uses
  %i.eo = bitcast i64 %i.en to double
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = bitcast double %i.ep to i64
  %i.er = cmpxchg weak ptr %i.ek, i64 %i.en, i64 %i.eq seq_cst seq_cst, align 8 ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.es, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1: ; preds = %_ZN4pbrt3RGBixEi.exit.1, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1
  %i.et = phi { i64, i1 } [ %i.ey, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1 ], [ %i.er, %_ZN4pbrt3RGBixEi.exit.1 ]
  %i.eu = extractvalue { i64, i1 } %i.et, 0       ; 2 uses
  %i.ev = bitcast i64 %i.eu to double
  %i.ew = fadd double %i.em, %i.ev
  %i.ex = bitcast double %i.ew to i64
  %i.ey = cmpxchg weak ptr %i.ek, i64 %i.eu, i64 %i.ex seq_cst seq_cst, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, %_ZN4pbrt3RGBixEi.exit.1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 56 ; 3 uses
  %i.fb = fmul float %i.dh, %.sroa.11.0
  %i.fc = fpext float %i.fb to double             ; 2 uses
  %i.fd = load atomic i64, ptr %i.fa seq_cst, align 8 ; 2 uses
  %i.fe = bitcast i64 %i.fd to double
  %i.ff = fadd double %i.fc, %i.fe
  %i.fg = bitcast double %i.ff to i64
  %i.fh = cmpxchg weak ptr %i.fa, i64 %i.fd, i64 %i.fg seq_cst seq_cst, align 8 ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  br i1 %i.fi, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2
  %i.fj = phi { i64, i1 } [ %i.fo, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2 ], [ %i.fh, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.fk = extractvalue { i64, i1 } %i.fj, 0       ; 2 uses
  %i.fl = bitcast i64 %i.fk to double
  %i.fm = fadd double %i.fc, %i.fl
  %i.fn = bitcast double %i.fm to i64
  %i.fo = cmpxchg weak ptr %i.fa, i64 %i.fk, i64 %i.fn seq_cst seq_cst, align 8 ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, !llvm.loop !2

_ZN4pbrt16Bounds2iIteratorppEv.exit:              ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, %_ZN4pbrt3RGBixEi.exit.2, %bb.c
  %i.fq = add nsw i32 %.sroa.098.0.extract.trunc159, 1 ; 2 uses
  %.sroa.098.0.insert.ext = zext i32 %i.fq to i64
  %.sroa.098.0.insert.mask = and i64 %.sroa.098.0158, -4294967296 ; 2 uses
  %.sroa.098.0.insert.insert = or disjoint i64 %.sroa.098.0.insert.mask, %.sroa.098.0.insert.ext
  %i.fr = icmp eq i32 %i.fq, %i.cw
  %.sroa.098.4.insert.ext = add i64 %.sroa.098.0.insert.mask, 4294967296
  %.sroa.098.4.insert.insert = or disjoint i64 %.sroa.098.4.insert.ext, %.sroa.098.0.insert.ext104
  %.sroa.098.1 = select i1 %i.fr, i64 %.sroa.098.4.insert.insert, i64 %.sroa.098.0.insert.insert ; 4 uses
  %.sroa.098.0.extract.trunc = trunc i64 %.sroa.098.1 to i32 ; 2 uses
  %.not.i.i76 = icmp ne i32 %i.cr, %.sroa.098.0.extract.trunc
  %.sroa.098.4.extract.shift = lshr i64 %.sroa.098.1, 32
  %.sroa.098.4.extract.trunc = trunc nuw i64 %.sroa.098.4.extract.shift to i32 ; 2 uses
  %i.fs = icmp ne i32 %i.cn, %.sroa.098.4.extract.trunc
  %i.ft = select i1 %.not.i.i76, i1 true, i1 %i.fs
  %i.fu = bitcast i64 %.sroa.098.1 to <2 x i32>
  br i1 %i.ft, label %bb.c, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt11GBufferFilm10WriteImageENS_13ImageMetadataEf(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr nofree noundef align 8 dereferenceable(304) %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.pbrt::Image", align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4pbrt11GBufferFilm8GetImageEPNS_13ImageMetadataEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Image") align 8 %4, ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull %1, float noundef %2)
  %i.b = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !110
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !29, !alias.scope !425
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !31, !alias.scope !425
  store i8 0, ptr %i.f, align 8, !tbaa !32, !alias.scope !425
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRNS_7Bounds2IiEEEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !425 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.f, align 8, !tbaa !32, !alias.scope !425
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #31
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !33
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.54, i32 noundef 684, ptr noundef %i.m)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEES6_PKcDpOT_.exit.i
  %i.n = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZN4pbrt3LogIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_7Bounds2IiEEEEEvNS_8LogLevelEPKciSD_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.f, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
end_hunk_1
begin_hunk_2_@_ZN4pbrt12SpectralFilmC2ENS_18FilmBaseParametersEffiPKNS_13RGBColorSpaceEfbN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %i.ev, i64 noundef 8)
          to label %bb.n unwind label %bb.p, !inline_history !445

bb.n:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIdEEPT_m.exit, %bb.m
  %.0.i.i.i64 = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIdEEPT_m.exit ], [ %i.fa, %bb.m ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i64, i8 0, i64 %i.ev, i1 false)
  %i.fb = load i64, ptr %i.di, align 8            ; 3 uses
  %i.fc = trunc i64 %i.fb to i32                  ; 3 uses
  %i.fd = load i32, ptr %i.do, align 4, !tbaa !109 ; 2 uses
  %i.fe = load i32, ptr %i.dk, align 8, !tbaa !107 ; 2 uses
  %.not.i66 = icmp sle i32 %i.fe, %i.fc
  %i.ff = lshr i64 %i.fb, 32
  %i.fg = trunc nuw i64 %i.ff to i32              ; 3 uses
  %i.fh = call i32 @llvm.smax.i32(i32 %i.fd, i32 %i.fg)
  %.not114 = icmp sle i32 %i.fd, %i.fg
  %.not = select i1 %.not.i66, i1 true, i1 %.not114
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.fi = load i32, ptr %i.ag, align 8, !tbaa !107 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !190
  %i.fn = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !107
  %i.fo = sub nsw i32 %i.fn, %i.fi
  %i.fp = sext i32 %4 to i64                      ; 3 uses
  br label %bb.q

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %bb.s, %bb.n
  ret void

bb.o:                                             ; preds = %bb.l
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.080.4.extract.trunc105 = phi i32 [ %i.fg, %.lr.ph ], [ %.sroa.080.4.extract.trunc, %bb.s ]
  %.sroa.080.0.extract.trunc104 = phi i32 [ %i.fc, %.lr.ph ], [ %.sroa.080.0.extract.trunc, %bb.s ] ; 2 uses
  %.045103 = phi ptr [ %.0.i.i.i, %.lr.ph ], [ %i.gg, %bb.s ] ; 2 uses
  %.046102 = phi ptr [ %.0.i.i.i64, %.lr.ph ], [ %i.gf, %bb.s ] ; 2 uses
  %.sroa.080.0101 = phi i64 [ %i.fb, %.lr.ph ], [ %.sroa.080.1, %bb.s ]
  %i.fs = sub i32 %.sroa.080.0.extract.trunc104, %i.fi
  %i.ft = sub nsw i32 %.sroa.080.4.extract.trunc105, %i.fk
  %i.fu = mul nsw i32 %i.fo, %i.ft
  %i.fv = add nsw i32 %i.fs, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [80 x i8], ptr %i.fm, i64 %i.fw ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  store ptr %.045103, ptr %i.fy, align 8, !tbaa !195
  %i.fz = getelementptr inbounds [8 x i8], ptr %.045103, i64 %i.fp ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !196
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  store ptr %.046102, ptr %i.gb, align 8, !tbaa !197
  %i.gc = add nsw i32 %.sroa.080.0.extract.trunc104, 1 ; 2 uses
  %.sroa.080.0.insert.ext = zext i32 %i.gc to i64
  %.sroa.080.0.insert.mask = and i64 %.sroa.080.0101, -4294967296 ; 2 uses
  %.sroa.080.0.insert.insert = or disjoint i64 %.sroa.080.0.insert.mask, %.sroa.080.0.insert.ext
  %i.gd = icmp eq i32 %i.gc, %i.fe
  br i1 %i.gd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ge = load i32, ptr %i.di, align 8, !tbaa !107
  %.sroa.080.0.insert.ext86 = zext i32 %i.ge to i64
  %.sroa.080.4.insert.ext = add i64 %.sroa.080.0.insert.mask, 4294967296
  %.sroa.080.4.insert.insert = or disjoint i64 %.sroa.080.4.insert.ext, %.sroa.080.0.insert.ext86
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.080.1 = phi i64 [ %.sroa.080.4.insert.insert, %bb.r ], [ %.sroa.080.0.insert.insert, %bb.q ] ; 3 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %.046102, i64 %i.fp
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.fp
  %.sroa.080.0.extract.trunc = trunc i64 %.sroa.080.1 to i32 ; 2 uses
  %.not.i.i = icmp ne i32 %i.fc, %.sroa.080.0.extract.trunc
  %.sroa.080.4.extract.shift = lshr i64 %.sroa.080.1, 32
  %.sroa.080.4.extract.trunc = trunc nuw i64 %.sroa.080.4.extract.shift to i32 ; 2 uses
  %i.gh = icmp ne i32 %i.fh, %.sroa.080.4.extract.trunc
  %i.gi = select i1 %.not.i.i, i1 true, i1 %i.gh
  br i1 %i.gi, label %bb.q, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit

bb.t:                                             ; preds = %bb.p, %bb.o, %bb.j
  %.pn51 = phi { ptr, i32 } [ %i.dx, %bb.j ], [ %i.fr, %bb.p ], [ %i.fq, %bb.o ]
  call void @_ZN4pbrt7Array2DINS_12SpectralFilm5PixelEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ag) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.t ], [ %i.dw, %bb.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !33 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.u
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !32
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit58.sink.split

_ZN4pbrt18FilmBaseParametersD2Ev.exit58.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  %.sink116 = phi i64 [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78 ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ]
  %.sink = phi ptr [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ]
  %.pn51.pn.pn.ph = phi { ptr, i32 } [ %.pn51.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ]
  %i.go = add i64 %.sink116, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.go) #31
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit58

_ZN4pbrt18FilmBaseParametersD2Ev.exit58:          ; preds = %_ZN4pbrt18FilmBaseParametersD2Ev.exit58.sink.split, %bb.u, %bb.h
  %.pn51.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.h ], [ %.pn51.pn, %bb.u ], [ %.pn51.pn.pn.ph, %_ZN4pbrt18FilmBaseParametersD2Ev.exit58.sink.split ]
  resume { ptr, i32 } %.pn51.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7Array2DINS_12SpectralFilm5PixelEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt12SpectralFilm5PixelEEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.e = sub nsw i32 %i.d, %.sroa.2.0.extract.trunc.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.h = sub nsw i32 %i.g, %.sroa.0.0.extract.trunc.i.i
  %i.i = mul nsw i32 %i.e, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = mul nsw i64 %i.j, 80
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.l, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt12SpectralFilm5PixelEEEvPT_m.exit unwind label %bb.c, !inline_history !448

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE17deallocate_objectIN4pbrt12SpectralFilm5PixelEEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, i64 %1, float noundef %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
_ZN4pbrt3RGBixEi.exit.2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !109
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [80 x i8], ptr %i.h, i64 %i.n ; 6 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !167
  %i.q = fptrunc <2 x double> %i.p to <2 x float> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !167
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !449
  %i.w = fptrunc double %i.v to float             ; 3 uses
  %i.x = fcmp une float %i.w, 0.000000e+00        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x float> %i.q, %i.z
  %i.ab = fdiv float %i.t, %i.w
  %.sroa.0.0 = select i1 %i.x, <2 x float> %i.aa, <2 x float> %i.q
  %.sroa.11.0 = select i1 %i.x, float %i.ab, float %i.t
  %i.ac = fpext float %2 to double                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %3 = load float, ptr %i.ae, align 4, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ah = load atomic i64, ptr %i.ag seq_cst, align 8
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !191
  %i.aj = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ak = insertelement <2 x i64> %i.aj, i64 %i.ah, i64 1
  %i.al = bitcast <2 x i64> %i.ak to <2 x double>
  %i.am = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.al
  %4 = insertelement <2 x float> poison, float %3, i64 0
  %i.ap = insertelement <2 x float> %4, float %i.ai, i64 1
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = fdiv <2 x double> %i.ao, %i.aq
  %i.as = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = fptrunc <2 x double> %i.at to <2 x float> ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aw = load atomic i64, ptr %i.av seq_cst, align 8
  %i.ax = load float, ptr %i.ae, align 4, !tbaa !191
  %i.ay = bitcast i64 %i.aw to double
  %i.az = fmul double %i.ac, %i.ay
  %i.ba = fpext float %i.ax to double
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = fpext float %.sroa.11.0 to double
  %i.bd = fadd double %i.bb, %i.bc
  %i.be = fptrunc double %i.bd to float           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = load <4 x float>, ptr %i.bf, align 8, !tbaa !55 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %5 = load <2 x float>, ptr %i.bg, align 8, !tbaa !55
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %6, <2 x i32> <i32 1, i32 4>
  %i.bk = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = shufflevector <4 x float> %i.bh, <4 x float> %6, <2 x i32> <i32 2, i32 5>
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bp, %i.bi
  %i.br = fadd <2 x float> %i.bq, zeroinitializer
  %i.bs = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.bs, %i.bj
  %i.bu = fadd <2 x float> %i.br, %i.bt
  %i.bv = fadd <2 x float> %i.bu, %i.bn
  %i.bw = load <2 x float>, ptr %i.bo, align 8, !tbaa !55
  %i.bx = fmul <2 x float> %i.bw, %i.au           ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fadd float %i.by, 0.000000e+00
  %i.ca = extractelement <2 x float> %i.bx, i64 1
  %i.cb = fadd float %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !55
  %i.ce = fmul float %i.cd, %i.be
  %i.cf = fadd float %i.ce, %i.cb
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bv, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.cf, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt12SpectralFilm8AddSplatENS_6Point2IfEENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(180) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %6 = alloca %class.anon.96, align 8             ; 4 uses
  %.fr = freeze <2 x float> %2                    ; 3 uses
  %.sroa.0204.0.vec.extract = extractelement <2 x float> %.fr, i64 0 ; 3 uses
  %.sroa.0204.4.vec.extract = extractelement <2 x float> %.fr, i64 1 ; 3 uses
  %or.cond.i = fcmp uno float %.sroa.0204.0.vec.extract, %.sroa.0204.4.vec.extract
  %.sroa.11.8.vec.extract = extractelement <2 x float> %3, i64 0 ; 3 uses
  %i.a = fcmp uno float %.sroa.11.8.vec.extract, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.a
  %.sroa.11.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.b = fcmp uno float %.sroa.11.12.vec.extract, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.b
  br i1 %or.cond17.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA13_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 914, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(13) @.str.58) #32
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = load <4 x float>, ptr %i.e, align 4      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.h = load float, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.l, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.n = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.n, 0
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.r = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.s = extractvalue { <2 x float>, <2 x float> } %i.r, 0
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.r, 1
  %i.u = fcmp une <4 x float> %i.f, zeroinitializer
  %i.v = shufflevector <2 x float> %.fr, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.w = fdiv <4 x float> %i.v, %i.f
  %i.x = select <4 x i1> %i.u, <4 x float> %i.w, <4 x float> zeroinitializer ; 5 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.z = fmul <2 x float> %i.y, %i.k              ; 2 uses
  %i.aa = extractelement <4 x float> %i.x, i64 3
  %i.ab = fmul float %i.aa, %.sroa.8.12.vec.extract.i.i
  %i.ac = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = fmul <4 x float> %i.x, %i.ac            ; 4 uses
  %i.ae = shufflevector <2 x float> %i.s, <2 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = fmul <4 x float> %i.x, %i.ae            ; 4 uses
  %shift = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.af, %shift
  %shift232 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop233 = fadd <4 x float> %shift232, %foldExtExtBinop
  %shift235 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop236 = fadd <4 x float> %shift235, %foldExtExtBinop233
  %i.ag = extractelement <4 x float> %foldExtExtBinop236, i64 0
  %i.ah = fmul float %i.ag, 2.500000e-01
  %shift238 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fadd <2 x float> %i.z, %shift238
  %i.ai = shufflevector <4 x float> %i.x, <4 x float> %i.ad, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.aj = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ad, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.al = fmul <2 x float> %i.ai, %i.ak
  %i.am = fadd <2 x float> %i.ai, %i.ak
  %i.an = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ao = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ap = shufflevector <2 x float> %foldExtExtBinop239, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.aq = fadd <2 x float> %i.ap, %i.an
  %i.ar = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.as = insertelement <2 x float> %i.ar, float %i.ab, i64 0
  %i.at = fadd <2 x float> %i.as, %i.aq
  %i.au = fmul <2 x float> %i.at, splat (float 2.500000e-01)
  %i.av = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %i.au           ; 4 uses
  %i.ay = fmul float %i.h, %i.ah                  ; 4 uses
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.ba = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bb = fcmp olt float %i.az, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.az ; 2 uses
  %i.bd = fcmp olt float %i.bc, %i.ay
  %.sroa.speculated = select i1 %i.bd, float %i.ay, float %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load float, ptr %i.be, align 4, !tbaa !188 ; 4 uses
  %i.bg = fcmp ogt float %.sroa.speculated, %i.bf ; 2 uses
  %i.bh = fdiv float %i.bf, %.sroa.speculated     ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.ax, %i.bj
  %i.bl = fmul float %i.ay, %i.bh
  %.sroa.11.0 = select i1 %i.bg, float %i.bl, float %i.ay
  %.sroa.0161.0 = select i1 %i.bg, <2 x float> %i.bk, <2 x float> %i.ax ; 2 uses
  %i.bm = fcmp olt float %.sroa.0204.0.vec.extract, %.sroa.0204.4.vec.extract
  %.sroa.speculated.i = select i1 %i.bm, float %.sroa.0204.4.vec.extract, float %.sroa.0204.0.vec.extract ; 2 uses
  %i.bn = fcmp olt float %.sroa.speculated.i, %.sroa.11.8.vec.extract
  %.sroa.speculated.1.i = select i1 %i.bn, float %.sroa.11.8.vec.extract, float %.sroa.speculated.i ; 2 uses
  %i.bo = fcmp olt float %.sroa.speculated.1.i, %.sroa.11.12.vec.extract
  %.sroa.speculated.2.i = select i1 %i.bo, float %.sroa.11.12.vec.extract, float %.sroa.speculated.1.i ; 2 uses
  %i.bp = fcmp ogt float %.sroa.speculated.2.i, %i.bf
  %i.bq = fdiv float %i.bf, %.sroa.speculated.2.i
  %i.br = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x float> %i.v, %i.bs
  %i.bu = select i1 %i.bp, <4 x float> %i.bt, <4 x float> %i.v
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !36
  %i.bx = and i64 %i.bw, 144115188075855871
  %i.by = inttoptr i64 %i.bx to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.by, align 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = fadd <2 x float> %1, splat (float 5.000000e-01) ; 2 uses
  %i.cb = fsub <2 x float> %i.ca, %.sroa.0.0.i.i.i
  %i.cc = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cb)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>   ; 2 uses
  %i.ce = fadd <2 x float> %i.ca, %.sroa.0.0.i.i.i
  %i.cf = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ce)
  %i.cg = fptosi <2 x float> %i.cf to <2 x i32>
  %i.ch = add nsw <2 x i32> %i.cg, splat (i32 1)  ; 2 uses
  %i.ci = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ch, <2 x i32> %i.cd)
  %.sroa.03.0.copyload.i = load i64, ptr %i.bz, align 8, !tbaa !52
  %7 = insertelement <2 x i64> poison, i64 %.sroa.03.0.copyload.i, i64 0
  %i.cj = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ck = lshr <2 x i64> %i.cj, <i64 0, i64 32>
  %i.cl = trunc <2 x i64> %i.ck to <2 x i32>
  %i.cm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ci, <2 x i32> %i.cl) ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cd, <2 x i32> %i.ch)
  %.sroa.0.0.copyload.i = load i64, ptr %i.cn, align 8, !tbaa !52
  %8 = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i, i64 0
  %i.cp = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cq = lshr <2 x i64> %i.cp, <i64 0, i64 32>
  %i.cr = trunc <2 x i64> %i.cq to <2 x i32>
  %i.cs = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cr, <2 x i32> %i.co) ; 3 uses
  %i.ct = extractelement <2 x i32> %i.cm, i64 1   ; 2 uses
  %i.cu = extractelement <2 x i32> %i.cs, i64 1
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 %i.cu)
  %i.cw = icmp sge <2 x i32> %i.cm, %i.cs         ; 2 uses
  %i.cx = extractelement <2 x i1> %i.cw, i64 0
  %i.cy = extractelement <2 x i1> %i.cw, i64 1
  %.not = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %.not, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.cz = load <4 x float>, ptr %i.e, align 4     ; 2 uses
  %i.da = fcmp une <4 x float> %i.cz, zeroinitializer
  %i.db = fdiv <4 x float> %i.bu, %i.cz
  %i.dc = fmul <4 x float> %i.db, splat (float 2.500000e-01)
  %i.dd = select <4 x i1> %i.da, <4 x float> %i.dc, <4 x float> zeroinitializer ; 4 uses
  %i.de = extractelement <2 x i32> %i.cm, i64 0   ; 3 uses
  %.sroa.09.0.insert.insert.i.i97 = bitcast <2 x i32> %i.cm to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0161.0.vec.extract174 = extractelement <2 x float> %.sroa.0161.0, i64 0
  %.sroa.0161.4.vec.extract179 = extractelement <2 x float> %.sroa.0161.0, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.0134.0.insert.ext140 = zext i32 %i.de to i64
  %i.dp = extractelement <2 x i32> %i.cs, i64 0
  %i.dq = extractelement <4 x float> %i.dd, i64 0
  %i.dr = extractelement <4 x float> %i.dd, i64 1
  %i.ds = extractelement <4 x float> %i.dd, i64 2
  %i.dt = extractelement <4 x float> %i.dd, i64 3
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %.lr.ph.i.i
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.0134.4.extract.trunc195 = phi i32 [ %i.ct, %.lr.ph ], [ %.sroa.0134.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.0134.0.extract.trunc194 = phi i32 [ %i.de, %.lr.ph ], [ %.sroa.0134.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.0134.0193 = phi i64 [ %.sroa.09.0.insert.insert.i.i97, %.lr.ph ], [ %.sroa.0134.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.du = phi <2 x i32> [ %i.cm, %.lr.ph ], [ %i.li, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.dv = sitofp <2 x i32> %i.du to <2 x float>
  %i.dw = fsub <2 x float> %1, %i.dv
  %i.dx = fadd <2 x float> %i.dw, splat (float -5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> %i.dx, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.dy = load i64, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.dz = and i64 %i.dy, 144115188075855871
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = lshr i64 %i.dy, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -1
  %i.ee = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ea, i32 noundef %i.ed) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ef = fcmp une float %i.ee, 0.000000e+00
  br i1 %i.ef, label %_ZN4pbrt3RGBixEi.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZN4pbrt3RGBixEi.exit:                            ; preds = %bb.c
  %i.eg = load i32, ptr %i.df, align 8, !tbaa !107 ; 2 uses
  %i.eh = sub i32 %.sroa.0134.0.extract.trunc194, %i.eg
  %i.ei = load i32, ptr %i.dg, align 4, !tbaa !109
  %i.ej = sub nsw i32 %.sroa.0134.4.extract.trunc195, %i.ei
  %i.ek = load ptr, ptr %i.dh, align 8, !tbaa !190
  %i.el = load i32, ptr %i.di, align 8, !tbaa !107
  %i.em = sub nsw i32 %i.el, %i.eg
  %i.en = mul nsw i32 %i.em, %i.ej
  %i.eo = add nsw i32 %i.eh, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [80 x i8], ptr %i.ek, i64 %i.ep ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.es = fmul float %i.ee, %.sroa.0161.0.vec.extract174
  %i.et = fpext float %i.es to double             ; 2 uses
  %i.eu = load atomic i64, ptr %i.er seq_cst, align 8 ; 2 uses
  %i.ev = bitcast i64 %i.eu to double
  %i.ew = fadd double %i.et, %i.ev
  %i.ex = bitcast double %i.ew to i64
  %i.ey = cmpxchg weak ptr %i.er, i64 %i.eu, i64 %i.ex seq_cst seq_cst, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %_ZN4pbrt3RGBixEi.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %i.fa = phi { i64, i1 } [ %i.ff, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.ey, %_ZN4pbrt3RGBixEi.exit ]
  %i.fb = extractvalue { i64, i1 } %i.fa, 0       ; 2 uses
  %i.fc = bitcast i64 %i.fb to double
  %i.fd = fadd double %i.et, %i.fc
  %i.fe = bitcast double %i.fd to i64
  %i.ff = cmpxchg weak ptr %i.er, i64 %i.fb, i64 %i.fe seq_cst seq_cst, align 8 ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fg, label %_ZN4pbrt3RGBixEi.exit.1, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.1:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN4pbrt3RGBixEi.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 3 uses
  %i.fi = fmul float %i.ee, %.sroa.0161.4.vec.extract179
  %i.fj = fpext float %i.fi to double             ; 2 uses
  %i.fk = load atomic i64, ptr %i.fh seq_cst, align 8 ; 2 uses
  %i.fl = bitcast i64 %i.fk to double
  %i.fm = fadd double %i.fj, %i.fl
  %i.fn = bitcast double %i.fm to i64
  %i.fo = cmpxchg weak ptr %i.fh, i64 %i.fk, i64 %i.fn seq_cst seq_cst, align 8 ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1: ; preds = %_ZN4pbrt3RGBixEi.exit.1, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1
  %i.fq = phi { i64, i1 } [ %i.fv, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1 ], [ %i.fo, %_ZN4pbrt3RGBixEi.exit.1 ]
  %i.fr = extractvalue { i64, i1 } %i.fq, 0       ; 2 uses
  %i.fs = bitcast i64 %i.fr to double
  %i.ft = fadd double %i.fj, %i.fs
  %i.fu = bitcast double %i.ft to i64
  %i.fv = cmpxchg weak ptr %i.fh, i64 %i.fr, i64 %i.fu seq_cst seq_cst, align 8 ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  br i1 %i.fw, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, !llvm.loop !2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.1, %_ZN4pbrt3RGBixEi.exit.1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 3 uses
  %i.fy = fmul float %i.ee, %.sroa.11.0
  %i.fz = fpext float %i.fy to double             ; 2 uses
  %i.ga = load atomic i64, ptr %i.fx seq_cst, align 8 ; 2 uses
  %i.gb = bitcast i64 %i.ga to double
  %i.gc = fadd double %i.fz, %i.gb
  %i.gd = bitcast double %i.gc to i64
  %i.ge = cmpxchg weak ptr %i.fx, i64 %i.ga, i64 %i.gd seq_cst seq_cst, align 8 ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  br i1 %i.gf, label %_ZN4pbrt12AtomicDouble3AddEd.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2
  %i.gg = phi { i64, i1 } [ %i.gl, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2 ], [ %i.ge, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.gh = extractvalue { i64, i1 } %i.gg, 0       ; 2 uses
  %i.gi = bitcast i64 %i.gh to double
  %i.gj = fadd double %i.fz, %i.gi
  %i.gk = bitcast double %i.gj to i64
  %i.gl = cmpxchg weak ptr %i.fx, i64 %i.gh, i64 %i.gk seq_cst seq_cst, align 8 ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %_ZN4pbrt12AtomicDouble3AddEd.exit.2, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, !llvm.loop !2

_ZN4pbrt12AtomicDouble3AddEd.exit.2:              ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i.2, %_ZN4pbrt3RGBixEi.exit.2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 4 uses
  %i.go = load float, ptr %4, align 4, !tbaa !55
  %i.gp = load i32, ptr %i.dj, align 8, !tbaa !187 ; 2 uses
  %i.gq = sitofp i32 %i.gp to float
  %i.gr = load float, ptr %i.dk, align 8, !tbaa !185 ; 2 uses
  %i.gs = fsub float %i.go, %i.gr
  %i.gt = fmul float %i.gs, %i.gq
  %i.gu = load float, ptr %i.dl, align 4, !tbaa !186
  %i.gv = fsub float %i.gu, %i.gr
  %i.gw = fdiv float %i.gt, %i.gv
  %i.gx = fptosi float %i.gw to i32               ; 2 uses
  %i.gy = add nsw i32 %i.gp, -1
  %i.gz = icmp slt i32 %i.gx, 0
  %..i.i = call i32 @llvm.smin.i32(i32 %i.gx, i32 %i.gy)
  %.0.i.i = select i1 %i.gz, i32 0, i32 %..i.i
  %i.ha = load ptr, ptr %i.gn, align 8, !tbaa !197
  %i.hb = sext i32 %.0.i.i to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.hb ; 3 uses
  %i.hd = fmul float %i.ee, %i.dq
  %i.he = fpext float %i.hd to double             ; 2 uses
  %i.hf = load atomic i64, ptr %i.hc seq_cst, align 8 ; 2 uses
  %i.hg = bitcast i64 %i.hf to double
  %i.hh = fadd double %i.he, %i.hg
  %i.hi = bitcast double %i.hh to i64
  %i.hj = cmpxchg weak ptr %i.hc, i64 %i.hf, i64 %i.hi seq_cst seq_cst, align 8 ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  br i1 %i.hk, label %_ZN4pbrt12AtomicDouble3AddEd.exit125, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124: ; preds = %_ZN4pbrt12AtomicDouble3AddEd.exit.2, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124
  %i.hl = phi { i64, i1 } [ %i.hq, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124 ], [ %i.hj, %_ZN4pbrt12AtomicDouble3AddEd.exit.2 ]
  %i.hm = extractvalue { i64, i1 } %i.hl, 0       ; 2 uses
  %i.hn = bitcast i64 %i.hm to double
  %i.ho = fadd double %i.he, %i.hn
  %i.hp = bitcast double %i.ho to i64
  %i.hq = cmpxchg weak ptr %i.hc, i64 %i.hm, i64 %i.hp seq_cst seq_cst, align 8 ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 1
  br i1 %i.hr, label %_ZN4pbrt12AtomicDouble3AddEd.exit125, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124, !llvm.loop !2

_ZN4pbrt12AtomicDouble3AddEd.exit125:             ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i124, %_ZN4pbrt12AtomicDouble3AddEd.exit.2
  %i.hs = load float, ptr %i.dm, align 4, !tbaa !55
  %i.ht = load i32, ptr %i.dj, align 8, !tbaa !187 ; 2 uses
  %i.hu = sitofp i32 %i.ht to float
  %i.hv = load float, ptr %i.dk, align 8, !tbaa !185 ; 2 uses
  %i.hw = fsub float %i.hs, %i.hv
  %i.hx = fmul float %i.hw, %i.hu
  %i.hy = load float, ptr %i.dl, align 4, !tbaa !186
  %i.hz = fsub float %i.hy, %i.hv
  %i.ia = fdiv float %i.hx, %i.hz
  %i.ib = fptosi float %i.ia to i32               ; 2 uses
  %i.ic = add nsw i32 %i.ht, -1
  %i.id = icmp slt i32 %i.ib, 0
  %..i.i.1 = call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.ic)
  %.0.i.i.1 = select i1 %i.id, i32 0, i32 %..i.i.1
  %i.ie = load ptr, ptr %i.gn, align 8, !tbaa !197
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRNS_7Bounds2IiEEEEEvPS7_PKcOT_DpOT0_:bb.a
.noexc39:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.invoke:                                          ; preds = %bb.a, %bb.s, %bb.c
  %i.cu = phi i32 [ 257, %bb.c ], [ 266, %bb.s ], [ 229, %bb.a ]
  %i.cv = phi ptr [ @.str.120, %bb.c ], [ @.str.121, %bb.s ], [ @.str.119, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.118, i32 noundef %i.cu, ptr noundef nonnull %i.cv) #32
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cw = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.v
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !32
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.w:                                             ; preds = %bb.u, %bb.r, %bb.b
  %.pn25 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn20.pn.pn.pn, %bb.r ], [ %i.ct, %bb.u ]
  %i.db = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.w
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !32
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn25
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4pbrt6Point2IiEEEZNS0_7RGBFilm8GetImageEPNS0_13ImageMetadataEfE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #1 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !127   ; 4 uses
  %.val2 = load i64, ptr %1, align 4              ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !1202 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1203, !nonnull !47, !align !248
  %i.e = load float, ptr %i.d, align 4, !tbaa !55
  %i.f = tail call { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 %.val2, float noundef %i.e) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %i.f, 0 ; 6 uses
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %i.f, 1 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = load i8, ptr %i.g, align 4, !tbaa !102, !range !46, !noundef !47
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt7RGBFilm8GetImageEPNS0_13ImageMetadataEfE3$_0JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 0 ; 3 uses
  %.sroa.09.4.vec.extract17.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 1 ; 2 uses
  %i.j = fcmp olt float %.sroa.09.0.vec.extract.i.i.i, %.sroa.09.4.vec.extract17.i.i.i
  %i.k = select i1 %i.j, float %.sroa.09.4.vec.extract17.i.i.i, float %.sroa.09.0.vec.extract.i.i.i ; 2 uses
  %i.l = fcmp olt float %i.k, %.fca.1.extract.i.i.i
  %.sroa.speculated.i.i.i = select i1 %i.l, float %.fca.1.extract.i.i.i, float %i.k
  %i.m = fcmp ogt float %.sroa.speculated.i.i.i, 6.550400e+04
  br i1 %i.m, label %bb.b, label %"_ZSt10__invoke_rIvRZN4pbrt7RGBFilm8GetImageEPNS0_13ImageMetadataEfE3$_0JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = fcmp ogt float %.sroa.09.0.vec.extract.i.i.i, 6.550400e+04
  %.sroa.09.0.vec.insert.i.i.i = insertelement <2 x float> %.fca.0.extract.i.i.i, float 6.550400e+04, i64 0
  %spec.select.i.i.i = select i1 %i.n, <2 x float> %.sroa.09.0.vec.insert.i.i.i, <2 x float> %.fca.0.extract.i.i.i ; 3 uses
  %.sroa.09.4.vec.extract.i.i.i = extractelement <2 x float> %spec.select.i.i.i, i64 1
  %i.o = fcmp ogt float %.sroa.09.4.vec.extract.i.i.i, 6.550400e+04
  %.sroa.09.4.vec.insert.i.i.i = insertelement <2 x float> %spec.select.i.i.i, float 6.550400e+04, i64 1
  %.sroa.09.1.i.i.i = select i1 %i.o, <2 x float> %.sroa.09.4.vec.insert.i.i.i, <2 x float> %spec.select.i.i.i
  %i.p = fcmp ogt float %.fca.1.extract.i.i.i, 6.550400e+04
  %.sroa.11.0.i.i.i = select i1 %i.p, float 6.550400e+04, float %.fca.1.extract.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1204, !nonnull !47, !align !248
  %i.s = atomicrmw add ptr %i.r, i32 1 seq_cst, align 4 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN4pbrt7RGBFilm8GetImageEPNS0_13ImageMetadataEfE3$_0JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

"_ZSt10__invoke_rIvRZN4pbrt7RGBFilm8GetImageEPNS0_13ImageMetadataEfE3$_0JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.a, %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.09.2.i.i.i = phi <2 x float> [ %.sroa.09.1.i.i.i, %bb.b ], [ %.fca.0.extract.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.fca.0.extract.i.i.i, %bb.a ]
  %.sroa.11.1.i.i.i = phi float [ %.sroa.11.0.i.i.i, %bb.b ], [ %.fca.1.extract.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.fca.1.extract.i.i.i, %bb.a ]
  %.sroa.07.0.extract.trunc.i.i.i = trunc i64 %.val2 to i32
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.val2, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !107
  %i.v = sub nsw i32 %.sroa.07.0.extract.trunc.i.i.i, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !109
  %i.y = sub nsw i32 %.sroa.3.0.extract.trunc.i.i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1205, !nonnull !47, !align !249
  %.sroa.4.0.insert.ext.i.i.i = zext i32 %i.y to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i64 %.sroa.4.0.insert.ext.i.i.i, 32
  %.sroa.08.0.insert.ext.i.i.i = zext i32 %i.v to i64
  %.sroa.08.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.08.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.09.2.i.i.i, ptr %i.a, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %.sroa.11.1.i.i.i, ptr %i.ab, align 8, !tbaa !55
  call void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152) %i.aa, i64 %.sroa.08.0.insert.insert.i.i.i, ptr nonnull %i.a, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt6Point2IiEEEZNS0_7RGBFilm8GetImageEPNS0_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt7RGBFilm8GetImageEPNS_13ImageMetadataEfE3$_0", ptr %0, align 8, !tbaa !251
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !127
  store ptr %.val, ptr %0, align 8, !tbaa !127
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1206
  store ptr %i.a, ptr %0, align 8, !tbaa !127
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !127 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #31
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt7RGBFilm8GetImageEPNS1_13ImageMetadataEfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, float noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN4pbrt3RGBixEi.exit.2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !109
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.n ; 6 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !167
  %i.q = fptrunc <2 x double> %i.p to <2 x float> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !167
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !1208
  %i.w = fptrunc double %i.v to float             ; 3 uses
  %i.x = fcmp une float %i.w, 0.000000e+00        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x float> %i.q, %i.z
  %i.ab = fdiv float %i.t, %i.w
  %.sroa.0.0 = select i1 %i.x, <2 x float> %i.aa, <2 x float> %i.q
  %.sroa.11.0 = select i1 %i.x, float %i.ab, float %i.t
  %i.ac = fpext float %2 to double                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %3 = load float, ptr %i.ae, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ah = load atomic i64, ptr %i.ag seq_cst, align 8
  %i.ai = load float, ptr %i.ae, align 8, !tbaa !106
  %i.aj = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ak = insertelement <2 x i64> %i.aj, i64 %i.ah, i64 1
  %i.al = bitcast <2 x i64> %i.ak to <2 x double>
  %i.am = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.al
  %4 = insertelement <2 x float> poison, float %3, i64 0
  %i.ap = insertelement <2 x float> %4, float %i.ai, i64 1
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = fdiv <2 x double> %i.ao, %i.aq
  %i.as = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = fptrunc <2 x double> %i.at to <2 x float> ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aw = load atomic i64, ptr %i.av seq_cst, align 8
  %i.ax = load float, ptr %i.ae, align 8, !tbaa !106
  %i.ay = bitcast i64 %i.aw to double
  %i.az = fmul double %i.ac, %i.ay
  %i.ba = fpext float %i.ax to double
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = fpext float %.sroa.11.0 to double
  %i.bd = fadd double %i.bb, %i.bc
  %i.be = fptrunc double %i.bd to float           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bh = load <4 x float>, ptr %i.bf, align 4, !tbaa !55 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %5 = load <2 x float>, ptr %i.bg, align 4, !tbaa !55
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %6, <2 x i32> <i32 1, i32 4>
  %i.bk = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = shufflevector <4 x float> %i.bh, <4 x float> %6, <2 x i32> <i32 2, i32 5>
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bp, %i.bi
  %i.br = fadd <2 x float> %i.bq, zeroinitializer
  %i.bs = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.bs, %i.bj
  %i.bu = fadd <2 x float> %i.br, %i.bt
  %i.bv = fadd <2 x float> %i.bu, %i.bn
  %i.bw = load <2 x float>, ptr %i.bo, align 4, !tbaa !55
  %i.bx = fmul <2 x float> %i.bw, %i.au           ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fadd float %i.by, 0.000000e+00
  %i.ca = extractelement <2 x float> %i.bx, i64 1
  %i.cb = fadd float %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !55
  %i.ce = fmul float %i.cd, %i.be
  %i.cf = fadd float %i.ce, %i.cb
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bv, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.cf, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152), i64, ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKNS_13RGBColorSpaceERKfRKbEEEvPS7_PKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 42, i64 noundef 0) #30
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 115, i64 noundef 0) #30
  %.not19 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 100, i64 noundef 0) #30
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %.not20 = icmp eq i64 %i.f, -1
  br i1 %.not20, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not19, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.o ; 0 uses

_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.m = load ptr, ptr %6, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !29, !alias.scope !1217
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !31, !alias.scope !1217
  store i8 0, ptr %i.n, align 8, !tbaa !32, !alias.scope !1217
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !220, !noalias !1217 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1217 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221, !noalias !1217 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !33, !alias.scope !1217 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ae = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.m, ptr noundef %i.ae) #30, !noalias !1218
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ai, ptr %8, align 8, !tbaa !29, !alias.scope !1218
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !31, !alias.scope !1218
  store i8 0, ptr %i.ai, align 8, !tbaa !32, !alias.scope !1218
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ah, i8 noundef signext 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = load ptr, ptr %8, align 8, !tbaa !33, !alias.scope !1218
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.ah, ptr noundef %i.m, ptr noundef %i.ae) #30 ; 0 uses
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !31, !alias.scope !1218
  %i.an = add i64 %i.am, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.an, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #29
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %8, align 8, !tbaa !33, !alias.scope !1218 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ai
  br i1 %i.as, label %.body29, label %.body29.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %bb.j
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !31
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.at
  br i1 %i.ax, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #32
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.ay = load ptr, ptr %8, align 8, !tbaa !33
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay, i64 noundef %i.at)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ba = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ai
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bc = load i64, ptr %i.ai, align 8, !tbaa !32
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.n
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !32
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %7, align 8, !tbaa !73
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
end_hunk_3
