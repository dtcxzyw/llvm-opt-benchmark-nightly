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
          to label %.noexc15 unwind label %bb.n   ; 10 uses

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
  %i.o = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %i.p = insertelement <4 x float> %i.o, float 1.000000e+00, i64 0
  %i.q = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.r = insertelement <4 x float> %i.q, float 1.000000e+00, i64 0
  %i.s = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.t = shufflevector <4 x float> %i.r, <4 x float> %i.s, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.u = fmul <4 x float> %i.p, %i.t
  %i.v = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.n, <4 x float> %i.v, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %i.x = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 poison, i32 1, i32 3, i32 1>
  %i.y = insertelement <4 x float> %i.x, float -2.000000e+00, i64 0
  %i.z = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.y, <4 x float> %i.u) ; 3 uses
  %i.aa = extractelement <4 x float> %i.z, i64 2
  %i.ab = fmul float %i.aa, 2.000000e+00          ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ad = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 3 uses
  %.sroa.0220.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 3 uses
  %i.ae = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.n, <4 x i32> <i32 1, i32 5, i32 4, i32 5>
  %i.ag = fmul <4 x float> %i.af, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 2
  %i.ai = fadd float %.sroa.0220.4.vec.extract, 0.000000e+00 ; 3 uses
  %i.aj = extractelement <4 x float> %i.k, i64 3
  %5 = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.8.vec.extract, float %i.aj)
  %i.ak = call float @llvm.fmuladd.f32(float %5, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.al = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.ac)
  %i.am = call float @llvm.fmuladd.f32(float %i.al, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %i.an = extractelement <4 x float> %i.z, i64 0
  %i.ao = shufflevector <4 x float> %i.z, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 3, i32 6>
  %i.ap = fmul <4 x float> %i.ao, <float 1.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.aq = fmul <4 x float> %i.ap, <float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 5 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.an)
  %i.as = extractelement <4 x float> %i.aq, i64 2 ; 2 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.as, float 0.000000e+00, float %i.ar)
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.aq, <4 x i32> <i32 0, i32 poison, i32 4, i32 5>
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> zeroinitializer, <4 x float> %i.aw) ; 6 uses
  %i.ay = shufflevector <4 x float> %i.ag, <4 x float> %i.ax, <4 x i32> <i32 2, i32 1, i32 6, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.ak, i64 3
  %i.ba = fadd <4 x float> %i.aq, %i.az           ; 4 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = call float @llvm.fmuladd.f32(float %i.as, float 0.000000e+00, float %i.bb)
  %i.bd = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bc)
  %i.be = extractelement <4 x float> %i.ba, i64 3
  %i.bf = call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.be)
  %i.bg = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bf) ; 2 uses
  %i.bh = extractelement <4 x float> %i.ba, i64 1
  %i.bi = call float @llvm.fmuladd.f32(float %i.am, float 0.000000e+00, float %i.bh)
  %i.bj = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bi) ; 3 uses
  %i.bk = extractelement <4 x float> %i.ap, i64 3
  %i.bl = call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.bk)
  %i.bm = call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.bl)
  %i.bn = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.bm) ; 2 uses
  %i.bo = extractelement <4 x float> %i.ax, i64 1
  %i.bp = call float @llvm.fmuladd.f32(float %i.am, float 0.000000e+00, float %i.bo)
  %i.bq = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.bp) ; 3 uses
  %i.br = extractelement <4 x float> %i.aq, i64 3
  %i.bs = call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.br) ; 2 uses
  %i.bt = fadd float %i.ab, %i.bs
  %i.bu = call float @llvm.fmuladd.f32(float %.fca.1.extract3, float 0.000000e+00, float %i.bt) ; 2 uses
  %i.bv = extractelement <4 x float> %i.ax, i64 3
  %i.bw = fadd float %i.am, %i.bv
  %i.bx = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.fca.1.extract3, i64 0 ; 3 uses
  %i.by = fadd <4 x float> %i.bx, zeroinitializer ; 3 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.bs)
  %i.ca = fadd float %i.bz, 0.000000e+00
  %i.cb = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> %i.aq, <2 x i32> <i32 0, i32 6>
  %i.cd = shufflevector <4 x float> %i.ba, <4 x float> %i.ax, <2 x i32> <i32 2, i32 6>
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.cd) ; 2 uses
  %i.cf = fadd <2 x float> %i.ce, <float -0.000000e+00, float 0.000000e+00>
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ch = insertelement <2 x float> %i.cb, float %i.am, i64 1
  %i.ci = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cj = insertelement <2 x float> %i.ci, float %i.bw, i64 0
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> zeroinitializer, <2 x float> %i.cj) ; 3 uses
  %i.cl = fadd <2 x float> %i.ck, <float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cn = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 0 ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cn, %i.cp           ; 2 uses
  %i.cr = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 1 ; 3 uses
  %i.cs = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.ct, <2 x float> %i.cq)
  %i.cv = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> zeroinitializer, <2 x float> %i.cu)
  %i.cy = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> zeroinitializer, <2 x float> %i.cx)
  %i.db = extractelement <2 x float> %i.cq, i64 0
  %i.dc = call float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %i.db) ; 2 uses
  %i.dd = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bj, float %i.dc)
  %i.de = call float @llvm.fmuladd.f32(float %i.ad, float 0.000000e+00, float %i.dd)
  %i.df = call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.dc)
  %i.dg = fadd float %i.ad, %i.df
  %i.dh = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.cn, %i.dh           ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> zeroinitializer, <2 x float> %i.dl)
  %i.dp = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> zeroinitializer, <2 x float> %i.do)
  %i.ds = extractelement <2 x float> %i.di, i64 0
  %i.dt = call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float %i.ds) ; 2 uses
  %i.du = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bq, float %i.dt)
  %i.dv = call float @llvm.fmuladd.f32(float %i.ai, float 0.000000e+00, float %i.du)
  %i.dw = call float @llvm.fmuladd.f32(float %i.bq, float 0.000000e+00, float %i.dt)
  %i.dx = fadd float %i.ai, %i.dw
  %i.dy = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.dz = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ea = fmul <4 x float> %i.dz, %i.cg           ; 2 uses
  %6 = extractelement <2 x float> %i.ck, i64 0
  %i.eb = extractelement <4 x float> %i.by, i64 0
  %shift = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop515 = fmul <2 x float> %shift, %i.ce
  %i.ec = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> %foldExtExtBinop515, <2 x i32> <i32 0, i32 2>
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.ed, <2 x float> %i.ef)
  %i.eh = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> zeroinitializer, <2 x float> %i.eg)
  %i.ej = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> zeroinitializer, <2 x float> %i.ei)
  %i.el = shufflevector <4 x float> %i.dy, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %i.em = insertelement <4 x float> %i.el, float %i.bu, i64 0
  %i.en = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ca, i64 1
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.eo, <4 x float> %i.ea) ; 3 uses
  %i.eq = extractelement <4 x float> %i.ep, i64 0
  %7 = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %6, float %i.eq)
  %i.er = call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float %7)
  %i.es = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.fca.1.extract, i64 3
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.cm, <4 x float> %i.ep)
  %i.eu = fadd <4 x float> %i.by, %i.et
  %8 = extractelement <2 x float> %i.cl, i64 1
  %9 = extractelement <4 x float> %i.ep, i64 3
  %10 = call float @llvm.fmuladd.f32(float %8, float 0.000000e+00, float %9)
  %i.ev = fadd float %10, 1.000000e+00
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.ew, align 8
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = lshr exact i64 %i.fc, 3
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.e unwind label %bb.r       ; 28 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.fg = load ptr, ptr %i.ex, align 8            ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  %.not.i = icmp eq ptr %i.fg, %i.fi
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ff, ptr %i.fg, align 8
  %i.fj = load ptr, ptr %i.ex, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fk, ptr %i.ex, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.fl = load ptr, ptr %i.ew, align 8            ; 4 uses
  %i.fm = ptrtoint ptr %i.fg to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.i, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #27
          to label %.noexc34 unwind label %bb.r   ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  store ptr %i.ff, ptr %i.fx, align 8
  %i.fy = icmp sgt i64 %i.fo, 0
  br i1 %i.fy, label %bb.j, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr align 8 %i.fl, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %.noexc34
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.fw, ptr %i.ew, align 8
  store ptr %i.fz, ptr %i.ex, align 8
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.ga, ptr %i.fh, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ff, i64 1096
  store ptr %1, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 1028
  store <2 x float> %i.da, ptr %i.gc, align 4
  %.sroa.10152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1036
  store float %i.de, ptr %.sroa.10152.0..sroa_idx, align 4
  %.sroa.13153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1040
  store float %i.dg, ptr %.sroa.13153.0..sroa_idx, align 8
  %.sroa.16154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1044
  store <2 x float> %i.dr, ptr %.sroa.16154.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1052
  store float %i.dv, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.25156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1056
  store float %i.dx, ptr %.sroa.25156.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1060
  store <2 x float> %i.ek, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1068
  store float %i.er, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1072
  store <4 x float> %i.eu, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1088
  store float %i.ev, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gf = load ptr, ptr %i.gd, align 8
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -8
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = load i64, ptr %i.ge, align 8
  %.not311 = icmp eq i64 %i.gh, %i.gi
  br i1 %.not311, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread, label %.lr.ph318

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread:    ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ff, i64 1120
  store i32 0, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ff, i64 1128
  store ptr null, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ff, i64 1104
  store i32 0, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ff, i64 1112
  store ptr null, ptr %i.gm, align 8
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.lr.ph318:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.16.0317 = phi ptr [ null, %.lr.ph318 ], [ %.sroa.16.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.10.0316 = phi ptr [ null, %.lr.ph318 ], [ %.sroa.10.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 10 uses
  %.sroa.0.0315 = phi ptr [ null, %.lr.ph318 ], [ %.sroa.0.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 13 uses
  %.sroa.16105.0314 = phi ptr [ null, %.lr.ph318 ], [ %.sroa.16105.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 14 uses
  %.sroa.10101.0313 = phi ptr [ null, %.lr.ph318 ], [ %.sroa.10101.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 9 uses
  %.sroa.096.0312 = phi ptr [ null, %.lr.ph318 ], [ %.sroa.096.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN6Assimp11B3DImporter9ReadChunkB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.gs = load i64, ptr %i.gn, align 8
  %cond = icmp eq i64 %i.gs, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.gt = load ptr, ptr %4, align 8               ; 5 uses
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = icmp ne i32 %i.gu, 1213416781
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread222

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gy = load ptr, ptr %i.gq, align 8
  %i.gz = load ptr, ptr %i.gp, align 8
  invoke void @_ZN6Assimp11B3DImporter8ReadMESHEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = lshr exact i64 %i.hc, 3
  %i.he = trunc i64 %i.hd to i32                  ; 2 uses
  %i.hf = load ptr, ptr %i.gq, align 8
  %i.hg = load ptr, ptr %i.gp, align 8
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = lshr exact i64 %i.hj, 3
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = icmp ult i32 %i.he, %i.hl
  br i1 %i.hm, label %.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

bb.o:                                             ; preds = %bb.a
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.p:                                             ; preds = %bb.b
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.q:                                             ; preds = %bb.c
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.r:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.i, %bb.d
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.s:                                             ; preds = %bb.e
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 1144) #25
  br label %bb.bb

bb.t:                                             ; preds = %bb.l
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.u:                                             ; preds = %_ZN8aiStringaSERKS_.exit, %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %storemerge308 = phi i32 [ %i.ij, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.he, %bb.n ] ; 3 uses
  %.sroa.16105.1307 = phi ptr [ %.sroa.16105.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.16105.0314, %bb.n ] ; 5 uses
  %.sroa.10101.1306 = phi ptr [ %.sroa.10101.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.10101.0313, %bb.n ] ; 3 uses
  %.sroa.096.1305 = phi ptr [ %.sroa.096.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.096.0312, %bb.n ] ; 7 uses
  %.not.i35 = icmp eq ptr %.sroa.10101.1306, %.sroa.16105.1307
  br i1 %.not.i35, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  store i32 %storemerge308, ptr %.sroa.10101.1306, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.x:                                             ; preds = %.lr.ph
  %i.hv = ptrtoint ptr %.sroa.16105.1307 to i64
  %i.hw = ptrtoint ptr %.sroa.096.1305 to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 6 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775804
  br i1 %i.hy, label %bb.y, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.hz = ashr exact i64 %i.hx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i36, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 2305843009213693951)
  %i.id = select i1 %i.ib, i64 2305843009213693951, i64 %i.ic ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i37)
  %i.ie = shl nuw nsw i64 %i.id, 2
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #27
          to label %.noexc40 unwind label %.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hx ; 2 uses
  store i32 %storemerge308, ptr %i.ig, align 4
  %i.ih = icmp sgt i64 %i.hx, 0
  br i1 %i.ih, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.z:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.if, ptr align 4 %.sroa.096.1305, i64 %i.hx, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.z, %.noexc40
  %.not.i17.i.i38 = icmp eq ptr %.sroa.096.1305, null
  br i1 %.not.i17.i.i38, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.1305, i64 noundef %i.hx) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.w
  %.sroa.096.6 = phi ptr [ %i.if, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.096.1305, %bb.w ] ; 2 uses
  %.pn = phi ptr [ %i.ig, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.10101.1306, %bb.w ]
  %.sroa.16105.6 = phi ptr [ %i.ii, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.16105.1307, %bb.w ] ; 2 uses
  %.sroa.10101.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ij = add nuw i32 %storemerge308, 1           ; 2 uses
  %i.ik = load ptr, ptr %i.gq, align 8
  %i.il = load ptr, ptr %i.gp, align 8
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = lshr exact i64 %i.io, 3
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = icmp ult i32 %i.ij, %i.iq
  br i1 %i.ir, label %.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58, !llvm.loop !124

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_0
