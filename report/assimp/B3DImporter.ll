Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/B3DImporter?download=true
inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #27
          to label %.noexc15 unwind label %bb.n   ; 7 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i64 %i.az, ptr %i.bo, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc15
  %i.bp = add i64 %i.bd, -8
  %i.bq = sub i64 %i.bp, %i.be                    ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bt = shl i64 %n.vec, 3                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bc, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.bw ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.bc, i64 %i.bw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.bx = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !alias.scope !110
  %wide.load30 = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !110
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !109
  store <2 x i64> %wide.load30, ptr %i.by, align 8, !alias.scope !109
  %i.bz = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !alias.scope !110
  store <2 x ptr> splat (ptr null), ptr %i.bz, align 8, !alias.scope !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader32

.lr.ph.i.i.i.i.preheader32:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader32, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader32 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader32 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.cb = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !110
  store i64 %i.cb, ptr %.012.i.i.i.i, align 8, !alias.scope !109
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !110
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.aw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !108

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bn, %.noexc15 ], [ %i.bu, %middle.block ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.cf = load ptr, ptr %i.ax, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ch) #25
  br label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.m
  store ptr %i.bn, ptr %i.au, align 8
  store ptr %i.ce, ptr %i.av, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.ci, ptr %i.ax, align 8
  br label %_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.n:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI11aiAnimationEclEPS0_.exit

_ZNKSt14default_deleteI11aiAnimationEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1096) #25
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI11aiAnimationEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.80", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6Assimp11B3DImporter10ReadStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.a = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.b unwind label %bb.o       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.a, 0 ; 4 uses
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.a, 1 ; 2 uses
  %i.b = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.c unwind label %bb.o       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.d unwind label %bb.o       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.b, 1 ; 3 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.b, 0 ; 4 uses
  %i.d = extractvalue { <2 x float>, <2 x float> } %i.c, 0 ; 7 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.c, 1 ; 11 uses
  %.sroa.0228.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0
  %.sroa.0228.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1
  %.sroa.0226.4.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 1
  %.sroa.0224.0.vec.extract = extractelement <2 x float> %i.d, i64 0 ; 2 uses
  %i.f = fneg float %.sroa.0224.0.vec.extract     ; 2 uses
  %i.g = fadd float %.sroa.0228.0.vec.extract, 0.000000e+00 ; 3 uses
  %i.h = fadd float %.sroa.0228.4.vec.extract, 0.000000e+00 ; 3 uses
  %i.i = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.fca.1.extract3, i64 0 ; 3 uses
  %i.j = fadd <4 x float> %i.i, zeroinitializer   ; 3 uses
  %i.k = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.6225.8.vec.extract = extractelement <2 x float> %i.e, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %.sroa.0224.4.vec.extract = extractelement <2 x float> %i.d, i64 1 ; 3 uses
  %i.m = call float @llvm.fmuladd.f32(float %.sroa.0224.4.vec.extract, float %.sroa.0224.4.vec.extract, float %i.l)
  %i.n = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.o = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.p = insertelement <4 x float> poison, float %i.f, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.r = shufflevector <4 x float> %i.q, <4 x float> %i.o, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.s = fmul <4 x float> %i.n, %i.r              ; 2 uses
  %i.t = shufflevector <2 x float> %i.e, <2 x float> %i.d, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.u = insertelement <3 x float> %i.t, float %i.m, i64 2
  %i.v = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 0> ; 2 uses
  %i.w = insertelement <3 x float> %i.v, float -2.000000e+00, i64 2
  %i.x = shufflevector <4 x float> %i.s, <4 x float> poison, <3 x i32> <i32 3, i32 1, i32 poison>
  %i.y = insertelement <3 x float> %i.x, float 1.000000e+00, i64 2
  %i.z = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.u, <3 x float> %i.w, <3 x float> %i.y) ; 2 uses
  %i.aa = fmul <3 x float> %i.z, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ab = fmul float %.sroa.6225.8.vec.extract, %i.f
  %i.ac = fmul float %.sroa.0224.4.vec.extract, %.sroa.0224.0.vec.extract
  %foldExtExtBinop488 = fmul <2 x float> %i.e, %i.e
  %i.ad = shufflevector <2 x float> %foldExtExtBinop488, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ae = fmul <3 x float> %i.aa, zeroinitializer ; 4 uses
  %i.af = call float @llvm.fmuladd.f32(float %.sroa.6225.8.vec.extract, float %.sroa.6225.8.vec.extract, float %i.l)
  %i.ag = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 1> ; 2 uses
  %i.ah = insertelement <3 x float> %i.ag, float %i.af, i64 1
  %i.ai = insertelement <3 x float> %i.v, float -2.000000e+00, i64 1
  %i.aj = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.s, <3 x i32> <i32 6, i32 1, i32 4>
  %i.ak = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ah, <3 x float> %i.ai, <3 x float> %i.aj) ; 3 uses
  %i.al = fmul <3 x float> %i.ak, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 4 uses
  %i.am = extractelement <3 x float> %i.al, i64 2
  %i.an = shufflevector <2 x float> %i.d, <2 x float> %i.e, <3 x i32> <i32 1, i32 1, i32 2>
  %i.ao = shufflevector <3 x float> %i.ag, <3 x float> <float poison, float 1.000000e+00, float 1.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5>
  %i.ap = shufflevector <3 x float> %i.ad, <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5>
  %i.aq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.an, <3 x float> %i.ao, <3 x float> %i.ap)
  %i.ar = shufflevector <2 x float> %i.e, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 1>
  %i.as = insertelement <3 x float> %i.ar, float -2.000000e+00, i64 0
  %i.at = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.ab, i64 1
  %i.au = insertelement <3 x float> %i.at, float %i.ac, i64 2
  %i.av = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aq, <3 x float> %i.as, <3 x float> %i.au) ; 4 uses
  %i.aw = fmul <3 x float> %i.av, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 5 uses
  %i.ax = extractelement <3 x float> %i.al, i64 0
  %i.ay = extractelement <3 x float> %i.ae, i64 2
  %i.az = call float @llvm.fmuladd.f32(float %i.am, float 0.000000e+00, float %i.ay) ; 2 uses
  %i.ba = extractelement <3 x float> %i.ae, i64 0
  %i.bb = call float @llvm.fmuladd.f32(float %i.ax, float 0.000000e+00, float %i.ba) ; 2 uses
  %i.bc = fadd <3 x float> %i.al, %i.ae
  %i.bd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aw, <3 x float> zeroinitializer, <3 x float> %i.bc)
  %i.be = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <3 x i32> zeroinitializer
  %i.bf = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> zeroinitializer, <3 x float> %i.bd) ; 5 uses
  %i.bg = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 0 ; 2 uses
  %i.bh = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bi = fmul <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = extractelement <3 x float> %i.ak, i64 1
  %i.bk = extractelement <3 x float> %i.aw, i64 1
  %5 = extractelement <3 x float> %i.ae, i64 1
  %6 = call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %5) ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.bk, float 0.000000e+00, float %6)
  %i.bm = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %6, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %i.bb, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 3
  %i.bq = shufflevector <3 x float> %i.aw, <3 x float> %i.av, <4 x i32> <i32 2, i32 1, i32 3, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 0.000000e+00, i64 3
  %i.bs = fadd <4 x float> %i.bp, %i.br           ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 1
  %i.bu = call float @llvm.fmuladd.f32(float %.fca.1.extract3, float 0.000000e+00, float %i.bt) ; 2 uses
  %i.bv = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bw = shufflevector <2 x float> %i.k, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.by = insertelement <2 x float> %i.bx, float %i.az, i64 1
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> zeroinitializer, <2 x float> %i.by) ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cb = fadd <4 x float> %i.ca, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.cc = shufflevector <4 x float> %i.i, <4 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cd = shufflevector <3 x float> %i.cc, <3 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ce = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.bb, i64 1
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cf) ; 3 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ci = fadd <4 x float> %i.ch, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cj = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 1 ; 3 uses
  %i.ck = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.ck, <2 x float> %i.bi)
  %i.cm = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> zeroinitializer, <2 x float> %i.cl)
  %i.co = insertelement <2 x float> poison, float %i.g, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> zeroinitializer, <2 x float> %i.cn)
  %i.cr = extractelement <2 x float> %i.bi, i64 0
  %i.cs = extractelement <3 x float> %i.bf, i64 1
  %i.ct = call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float %i.cr) ; 2 uses
  %i.cu = extractelement <3 x float> %i.bf, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.cu, float %i.ct)
  %i.cw = call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.cv)
  %i.cx = call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.ct)
  %i.cy = fadd float %i.g, %i.cx
  %i.cz = shufflevector <3 x float> %i.al, <3 x float> %i.ak, <3 x i32> <i32 0, i32 4, i32 2>
  %i.da = shufflevector <3 x float> %i.aa, <3 x float> %i.z, <3 x i32> <i32 0, i32 1, i32 5>
  %i.db = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cz, <3 x float> zeroinitializer, <3 x float> %i.da)
  %7 = shufflevector <3 x float> %i.av, <3 x float> %i.aw, <3 x i32> <i32 0, i32 4, i32 5>
  %i.dc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %7, <3 x float> zeroinitializer, <3 x float> %i.db)
  %i.dd = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.de = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dd, <3 x float> zeroinitializer, <3 x float> %i.dc) ; 5 uses
  %i.df = shufflevector <3 x float> %i.de, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dg = fmul <2 x float> %i.bg, %i.df           ; 2 uses
  %i.dh = shufflevector <3 x float> %i.de, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.dh, <2 x float> %i.dg)
  %i.dj = shufflevector <3 x float> %i.de, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> zeroinitializer, <2 x float> %i.di)
  %i.dl = insertelement <2 x float> poison, float %i.h, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> zeroinitializer, <2 x float> %i.dk)
  %i.do = extractelement <2 x float> %i.dg, i64 0
  %i.dp = extractelement <3 x float> %i.de, i64 1
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %i.do)
  %i.dr = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.dt = fmul <4 x float> %i.ds, %i.cb           ; 2 uses
  %i.du = extractelement <4 x float> %i.j, i64 0
  %i.dv = extractelement <2 x float> %i.bz, i64 0
  %i.dw = fmul float %.sroa.0226.4.vec.extract, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ea = insertelement <2 x float> %i.dz, float %i.dw, i64 1
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.dy, <2 x float> %i.ea)
  %i.ec = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> zeroinitializer, <2 x float> %i.eb)
  %i.ee = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.ed)
  %i.eg = shufflevector <4 x float> %i.dr, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %i.eh = insertelement <4 x float> %i.eg, float %i.bu, i64 0
  %i.ei = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.bs, <4 x i32> <i32 0, i32 7, i32 7, i32 7>
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ei, <4 x float> %i.dt) ; 2 uses
  %i.ek = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.fca.1.extract, i64 3
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.ci, <4 x float> %i.ej)
  %i.em = fadd <4 x float> %i.j, %i.el
  %8 = shufflevector <2 x float> %i.cg, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %9 = shufflevector <3 x float> %i.de, <3 x float> %8, <4 x i32> <i32 0, i32 0, i32 3, i32 poison>
  %10 = shufflevector <4 x float> %9, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.en = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %.fca.1.extract, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ep = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.ej, <4 x i32> <i32 0, i32 0, i32 4, i32 7>
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.eo, <4 x float> %i.eq) ; 4 uses
  %i.es = extractelement <4 x float> %i.er, i64 0
  %i.et = call float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.es)
  %i.eu = extractelement <4 x float> %i.er, i64 1
  %i.ev = fadd float %i.h, %i.eu
  %i.ew = extractelement <4 x float> %i.er, i64 2
  %i.ex = call float @llvm.fmuladd.f32(float %i.du, float 0.000000e+00, float %i.ew)
  %i.ey = extractelement <4 x float> %i.er, i64 3
  %i.ez = fadd float %i.ey, 1.000000e+00
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %i.fa, align 8
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = lshr exact i64 %i.fg, 3
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.e unwind label %bb.o       ; 28 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.fk = load ptr, ptr %i.fb, align 8            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %.not.i = icmp eq ptr %i.fk, %i.fm
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.fj, ptr %i.fk, align 8
  %i.fn = load ptr, ptr %i.fb, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fo, ptr %i.fb, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.fp = load ptr, ptr %i.fa, align 8            ; 4 uses
  %i.fq = ptrtoint ptr %i.fk to i64
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 5 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.i, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.fu = ashr exact i64 %i.fs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fu, i64 1)
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i, %i.fu ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fu
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 1152921504606846975)
  %i.fy = select i1 %i.fw, i64 1152921504606846975, i64 %i.fx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fz = shl nuw nsw i64 %i.fy, 3
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #27
          to label %.noexc34 unwind label %bb.o   ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fs ; 2 uses
  store ptr %i.fj, ptr %i.gb, align 8
  %i.gc = icmp sgt i64 %i.fs, 0
  br i1 %i.gc, label %bb.j, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr align 8 %i.fp, i64 %i.fs, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %.noexc34
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ge = load ptr, ptr %i.fl, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.gg) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ga, ptr %i.fa, align 8
  store ptr %i.gd, ptr %i.fb, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.gh, ptr %i.fl, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fj, i64 1096
  store ptr %1, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fj, i64 1028
  store <2 x float> %i.cq, ptr %i.gj, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1036
  store float %i.cw, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1040
  store float %i.cy, ptr %.sroa.13161.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1044
  store <2 x float> %i.dn, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1052
  store float %i.et, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.25163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1056
  store float %i.ev, ptr %.sroa.25163.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1060
  store <2 x float> %i.ef, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1068
  store float %i.ex, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1072
  store <4 x float> %i.em, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 1088
  store float %i.ez, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gm = load ptr, ptr %i.gk, align 8
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = load i64, ptr %i.gl, align 8
  %.not305 = icmp eq i64 %i.go, %i.gp
  br i1 %.not305, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread, label %.lr.ph312

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread:    ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fj, i64 1120
  store i32 0, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fj, i64 1128
  store ptr null, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 1104
  store i32 0, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fj, i64 1112
  store ptr null, ptr %i.gt, align 8
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.lr.ph312:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.18.0311 = phi ptr [ null, %.lr.ph312 ], [ %.sroa.18.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.11.0310 = phi ptr [ null, %.lr.ph312 ], [ %.sroa.11.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 10 uses
  %.sroa.0.0309 = phi ptr [ null, %.lr.ph312 ], [ %.sroa.0.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 13 uses
  %.sroa.18112.0308 = phi ptr [ null, %.lr.ph312 ], [ %.sroa.18112.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.11107.0307 = phi ptr [ null, %.lr.ph312 ], [ %.sroa.11107.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 9 uses
  %.sroa.0101.0306 = phi ptr [ null, %.lr.ph312 ], [ %.sroa.0101.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN6Assimp11B3DImporter9ReadChunkB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.gz = load i64, ptr %i.gu, align 8
  %cond = icmp eq i64 %i.gz, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.ha = load ptr, ptr %4, align 8               ; 5 uses
  %i.hb = load i32, ptr %i.ha, align 1
  %i.hc = icmp ne i32 %i.hb, 1213416781
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread230

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hf = load ptr, ptr %i.gx, align 8
  %i.hg = load ptr, ptr %i.gw, align 8
  invoke void @_ZN6Assimp11B3DImporter8ReadMESHEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.n unwind label %.loopexit.split-lp241.loopexit.split-lp

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = lshr exact i64 %i.hj, 3
  %i.hl = trunc i64 %i.hk to i32                  ; 2 uses
  %i.hm = load ptr, ptr %i.gx, align 8
  %i.hn = load ptr, ptr %i.gw, align 8
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = lshr exact i64 %i.hq, 3
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = icmp ult i32 %i.hl, %i.hs
  br i1 %i.ht, label %.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.i, %bb.d
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %bb.e
end_hunk_0
