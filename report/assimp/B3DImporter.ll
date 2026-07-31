inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %bb.l
  unreachable

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
          to label %.noexc15 unwind label %bb.n   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i64 %i.az, ptr %i.bo, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc15
  %i.bp = sub i64 %i.bd, %i.be
  %i.bq = add i64 %i.bp, -8                       ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bt = add i64 %i.bd, -8
  %i.bu = sub i64 %i.bt, %i.be
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bn, i64 %i.bw
  %scevgep29 = getelementptr i8, ptr %i.bc, i64 %i.bw
  %bound0 = icmp ult ptr %i.bn, %scevgep29
  %bound1 = icmp ult ptr %i.bc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bn, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.ca ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.bc, i64 %i.ca ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.cb = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !alias.scope !117, !noalias !112
  %wide.load31 = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !117, !noalias !112
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !120, !noalias !117
  store <2 x i64> %wide.load31, ptr %i.cc, align 8, !alias.scope !120, !noalias !117
  %i.cd = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !alias.scope !117, !noalias !112
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !alias.scope !117, !noalias !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader33

.lr.ph.i.i.i.i.preheader33:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader33, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.cf = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !115, !noalias !112
  store i64 %i.cf, ptr %.012.i.i.i.i, align 8, !alias.scope !112, !noalias !115
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !115, !noalias !112
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, %i.aw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !123

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bn, %.noexc15 ], [ %i.by, %middle.block ], [ %i.ch, %.lr.ph.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.cj = load ptr, ptr %i.ax, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.cl) #25
  br label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.m
  store ptr %i.bn, ptr %i.au, align 8
  store ptr %i.ci, ptr %i.av, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.cm, ptr %i.ax, align 8
  br label %_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.n:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.l
  %i.cn = landingpad { ptr, i32 }
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
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.a, 0 ; 3 uses
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.a, 1 ; 2 uses
  %i.b = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.b, 1 ; 4 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.b, 0 ; 4 uses
  %i.d = extractvalue { <2 x float>, <2 x float> } %i.c, 0 ; 8 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.c, 1 ; 9 uses
  %.sroa.0220.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0 ; 4 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %.sroa.6217.8.vec.extract = extractelement <2 x float> %i.e, i64 0 ; 2 uses
  %.sroa.0216.4.vec.extract = extractelement <2 x float> %i.d, i64 1 ; 2 uses
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.d, i64 0
  %i.g = fneg float %.sroa.0216.0.vec.extract     ; 2 uses
  %i.h = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 0, i32 0, i32 3>
  %i.i = insertelement <4 x float> poison, float %i.g, i64 0
  %i.j = insertelement <4 x float> %i.h, float %i.g, i64 0
  %i.k = fmul <4 x float> %i.f, %i.j              ; 2 uses
  %i.l = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.m = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.n = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.m, <4 x float> %i.k) ; 3 uses
  %i.o = extractelement <4 x float> %i.n, i64 2
  %i.p = fmul float %i.o, 2.000000e+00            ; 2 uses
  %i.q = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %i.r = insertelement <4 x float> %i.q, float 1.000000e+00, i64 0
  %i.s = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.t = insertelement <4 x float> %i.s, float 1.000000e+00, i64 0
  %i.u = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.w = fmul <4 x float> %i.r, %i.v
  %i.x = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.n, <4 x float> %i.x, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %i.z = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 poison, i32 1, i32 3, i32 1>
  %i.aa = insertelement <4 x float> %i.z, float -2.000000e+00, i64 0
  %i.ab = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.aa, <4 x float> %i.w) ; 4 uses
  %i.ac = extractelement <4 x float> %i.ab, i64 1
  %5 = fmul float %i.ac, 2.000000e+00             ; 2 uses
  %i.ad = extractelement <4 x float> %i.ab, i64 2
  %i.ae = fmul float %i.ad, 2.000000e+00          ; 4 uses
  %i.af = extractelement <4 x float> %i.ab, i64 3
  %6 = fmul float %i.af, 2.000000e+00             ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ah = fmul float %i.p, 0.000000e+00           ; 2 uses
  %i.ai = extractelement <4 x float> %i.ab, i64 0 ; 2 uses
  %7 = fmul float %i.ai, 0.000000e+00             ; 2 uses
  %8 = fmul float %5, 0.000000e+00                ; 2 uses
  %i.aj = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 3 uses
  %.sroa.0220.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 3 uses
  %i.ak = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.n, <4 x i32> <i32 1, i32 5, i32 4, i32 5>
  %i.am = fmul <4 x float> %i.al, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.an = extractelement <4 x float> %i.am, i64 2 ; 2 uses
  %i.ao = fadd float %i.an, %7
  %i.ap = call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %i.ao)
  %i.aq = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.ap)
  %i.ar = extractelement <4 x float> %i.am, i64 1
  %i.as = fadd float %i.ar, %8
  %i.at = call float @llvm.fmuladd.f32(float %i.an, float 0.000000e+00, float %i.ai)
  %i.au = call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %i.at)
  %i.av = fadd float %.sroa.0220.4.vec.extract, 0.000000e+00 ; 3 uses
  %i.aw = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %5, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %7, i64 2
  %i.az = insertelement <4 x float> %i.ay, float %8, i64 3
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> zeroinitializer, <4 x float> %i.az) ; 6 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 2
  %i.bc = fadd float %6, %i.bb
  %i.bd = extractelement <4 x float> %i.k, i64 3
  %i.be = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.8.vec.extract, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.bg = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.ag)
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %i.bi = fadd float %i.bf, %i.ah
  %i.bj = call float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.bi)
  %i.bk = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bj) ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.as)
  %i.bm = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bl) ; 3 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bf, float 0.000000e+00, float %i.p)
  %i.bo = call float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.bn)
  %i.bp = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.bo) ; 2 uses
  %i.bq = extractelement <4 x float> %i.ba, i64 1
  %i.br = call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bq)
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.br) ; 3 uses
  %i.bt = call float @llvm.fmuladd.f32(float %i.bf, float 0.000000e+00, float %i.ah) ; 2 uses
  %i.bu = fadd float %i.ae, %i.bt
  %i.bv = call float @llvm.fmuladd.f32(float %.fca.1.extract3, float 0.000000e+00, float %i.bu) ; 2 uses
  %i.bw = extractelement <4 x float> %i.ba, i64 3
  %i.bx = fadd float %i.bh, %i.bw
  %i.by = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.fca.1.extract3, i64 0 ; 2 uses
  %i.bz = fadd <4 x float> %i.by, zeroinitializer ; 3 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.bt)
  %i.cb = fadd float %i.ca, 0.000000e+00
  %i.cc = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.cd = insertelement <2 x float> %i.cc, float %6, i64 1
  %i.ce = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cf = insertelement <2 x float> %i.ce, float %i.bc, i64 0
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cf) ; 2 uses
  %i.ch = fadd <2 x float> %i.cg, <float -0.000000e+00, float 0.000000e+00>
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cj = insertelement <2 x float> %i.cc, float %i.bh, i64 1
  %i.ck = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cl = insertelement <2 x float> %i.ck, float %i.bx, i64 0
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> zeroinitializer, <2 x float> %i.cl) ; 3 uses
  %i.cn = fadd <2 x float> %i.cm, <float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cp = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 0 ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cp, %i.cr           ; 2 uses
  %i.ct = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 1 ; 3 uses
  %i.cu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cs)
  %i.cx = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> zeroinitializer, <2 x float> %i.cw)
  %i.da = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> zeroinitializer, <2 x float> %i.cz)
  %i.dd = extractelement <2 x float> %i.cs, i64 0
  %i.de = call float @llvm.fmuladd.f32(float %i.bk, float 0.000000e+00, float %i.dd) ; 2 uses
  %i.df = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bm, float %i.de)
  %i.dg = call float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %i.df)
  %i.dh = call float @llvm.fmuladd.f32(float %i.bm, float 0.000000e+00, float %i.de)
  %i.di = fadd float %i.aj, %i.dh
  %i.dj = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.cp, %i.dj           ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.dm, <2 x float> %i.dk)
  %i.do = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> zeroinitializer, <2 x float> %i.dn)
  %i.dr = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> zeroinitializer, <2 x float> %i.dq)
  %i.du = extractelement <2 x float> %i.dk, i64 0
  %i.dv = call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.du) ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bs, float %i.dv)
  %i.dx = call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %i.dw)
  %i.dy = call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.dv)
  %i.dz = fadd float %i.av, %i.dy
  %i.ea = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.eb = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ec = fmul <4 x float> %i.eb, %i.ci           ; 2 uses
  %i.ed = extractelement <2 x float> %i.cm, i64 0
  %i.ee = extractelement <4 x float> %i.bz, i64 0
  %shift = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop515 = fmul <2 x float> %shift, %i.cg
  %i.ef = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> %foldExtExtBinop515, <2 x i32> <i32 0, i32 2>
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.eg, <2 x float> %i.ei)
  %i.ek = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> zeroinitializer, <2 x float> %i.ej)
  %i.em = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> zeroinitializer, <2 x float> %i.el)
  %i.eo = shufflevector <4 x float> %i.ea, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %i.ep = insertelement <4 x float> %i.eo, float %i.bv, i64 0
  %i.eq = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cb, i64 1
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.er, <4 x float> %i.ec) ; 3 uses
  %i.et = extractelement <4 x float> %i.es, i64 0
  %i.eu = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.ed, float %i.et)
  %i.ev = call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %i.eu)
  %i.ew = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.fca.1.extract, i64 3
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.co, <4 x float> %i.es)
  %i.ey = fadd <4 x float> %i.bz, %i.ex
  %i.ez = extractelement <2 x float> %i.cn, i64 1
  %i.fa = extractelement <4 x float> %i.es, i64 3
  %i.fb = call float @llvm.fmuladd.f32(float %i.ez, float 0.000000e+00, float %i.fa)
  %i.fc = fadd float %i.fb, 1.000000e+00
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = load ptr, ptr %i.fd, align 8
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = lshr exact i64 %i.fj, 3
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.e unwind label %bb.r       ; 28 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.fm, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.fn = load ptr, ptr %i.fe, align 8            ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8
  %.not.i = icmp eq ptr %i.fn, %i.fp
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fq = load ptr, ptr %i.fe, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fr, ptr %i.fe, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.fs = load ptr, ptr %i.fd, align 8            ; 4 uses
  %i.ft = ptrtoint ptr %i.fn to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 6 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.i, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #27
          to label %.noexc34 unwind label %bb.r   ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.fv ; 2 uses
  store ptr %i.fm, ptr %i.ge, align 8
  %i.gf = icmp sgt i64 %i.fv, 0
  br i1 %i.gf, label %bb.j, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.fs, i64 %i.fv, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %.noexc34
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fv) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.gd, ptr %i.fd, align 8
  store ptr %i.gg, ptr %i.fe, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gh, ptr %i.fo, align 8
end_hunk_0
