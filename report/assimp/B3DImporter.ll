inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
  %i.aj = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #27 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.aj, i8 0, i64 1028, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1040
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1048
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1056
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1064
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 1072
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 1080
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 1088
  store ptr null, ptr %i.ar, align 8
  store ptr %i.aj, ptr %7, align 8
  %i.as = sitofp i32 %.0.copyload.i4 to double
  store double %i.as, ptr %i.ak, align 8
  %i.at = fpext float %.0.copyload.i9 to double
  store double %i.at, ptr %i.al, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not.i = icmp eq ptr %i.aw, %i.ay
  %i.az = ptrtoint ptr %i.aj to i64               ; 2 uses
  br i1 %.not.i, label %bb.k, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  store i64 %i.az, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %i.av, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.av, align 8
  br label %_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit

bb.k:                                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %i.bc = load ptr, ptr %i.au, align 8            ; 10 uses
  %i.bd = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
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
  %min.iters.check = icmp ult i64 %i.bq, 152
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
  %5 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.f = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %.sroa.0216.4.vec.extract = extractelement <2 x float> %i.d, i64 1 ; 2 uses
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.d, i64 0
  %i.g = fneg float %.sroa.0216.0.vec.extract     ; 2 uses
  %6 = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 0, i32 0, i32 3>
  %i.h = insertelement <4 x float> poison, float %i.g, i64 0
  %i.i = insertelement <4 x float> %6, float %i.g, i64 0
  %i.j = fmul <4 x float> %5, %i.i                ; 2 uses
  %7 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %8 = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.k = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %8, <4 x float> %i.j) ; 3 uses
  %i.l = extractelement <4 x float> %i.k, i64 2
  %i.m = fmul float %i.l, 2.000000e+00            ; 2 uses
  %9 = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %10 = insertelement <4 x float> %9, float 1.000000e+00, i64 0
  %11 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.n = insertelement <4 x float> %11, float 1.000000e+00, i64 0
  %i.o = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.p = shufflevector <4 x float> %i.n, <4 x float> %i.o, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.q = fmul <4 x float> %10, %i.p
  %12 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %i.k, <4 x float> %12, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %14 = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 poison, i32 1, i32 3, i32 1>
  %i.r = insertelement <4 x float> %14, float -2.000000e+00, i64 0
  %15 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %i.r, <4 x float> %i.q) ; 4 uses
  %16 = extractelement <4 x float> %15, i64 1
  %17 = fmul float %16, 2.000000e+00              ; 2 uses
  %i.s = extractelement <4 x float> %15, i64 2
  %i.t = fmul float %i.s, 2.000000e+00            ; 4 uses
  %i.u = extractelement <4 x float> %15, i64 3
  %i.v = fmul float %i.u, 2.000000e+00            ; 4 uses
  %foldExtExtBinop515.a = fmul <2 x float> %i.e, %i.e
  %i.w = extractelement <2 x float> %foldExtExtBinop515.a, i64 0
  %18 = fmul float %i.m, 0.000000e+00             ; 2 uses
  %19 = extractelement <4 x float> %15, i64 0     ; 2 uses
  %i.x = fmul float %19, 0.000000e+00             ; 2 uses
  %20 = fmul float %17, 0.000000e+00              ; 2 uses
  %i.y = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 3 uses
  %i.z = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 3 uses
  %21 = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %21, <4 x float> %i.k, <4 x i32> <i32 1, i32 5, i32 4, i32 5>
  %23 = fmul <4 x float> %22, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %24 = extractelement <4 x float> %23, i64 2     ; 2 uses
  %i.aa = fadd float %24, %i.x
  %i.ab = call float @llvm.fmuladd.f32(float %i.v, float 0.000000e+00, float %i.aa)
  %25 = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.ab)
  %26 = extractelement <4 x float> %23, i64 1
  %27 = fadd float %26, %20
  %28 = call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %19)
  %i.ac = call float @llvm.fmuladd.f32(float %i.v, float 0.000000e+00, float %28)
  %29 = fadd float %i.z, 0.000000e+00             ; 3 uses
  %30 = insertelement <4 x float> poison, float %i.ac, i64 0
  %31 = insertelement <4 x float> %30, float %17, i64 1
  %32 = insertelement <4 x float> %31, float %i.x, i64 2
  %33 = insertelement <4 x float> %32, float %20, i64 3
  %34 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> zeroinitializer, <4 x float> %33) ; 6 uses
  %i.ad = extractelement <4 x float> %34, i64 2
  %i.ae = fadd float %i.v, %i.ad
  %35 = extractelement <4 x float> %i.j, i64 3
  %i.af = call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %35)
  %i.ag = call float @llvm.fmuladd.f32(float %i.af, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.ah = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.w)
  %i.ai = call float @llvm.fmuladd.f32(float %i.ah, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %36 = fadd float %i.ag, %18
  %i.aj = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %36)
  %i.ak = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.aj) ; 2 uses
  %i.al = call float @llvm.fmuladd.f32(float %i.ai, float 0.000000e+00, float %27)
  %i.am = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.al) ; 3 uses
  %i.an = call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.m)
  %37 = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.an)
  %38 = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %37) ; 2 uses
  %39 = extractelement <4 x float> %34, i64 1
  %40 = call float @llvm.fmuladd.f32(float %i.ai, float 0.000000e+00, float %39)
  %41 = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %40) ; 3 uses
  %42 = call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %18) ; 2 uses
  %43 = fadd float %i.t, %42
  %44 = call float @llvm.fmuladd.f32(float %.fca.1.extract3, float 0.000000e+00, float %43) ; 2 uses
  %i.ao = extractelement <4 x float> %34, i64 3
  %i.ap = fadd float %i.ai, %i.ao
  %45 = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.fca.1.extract3, i64 0 ; 2 uses
  %46 = fadd <4 x float> %45, zeroinitializer     ; 3 uses
  %47 = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %42)
  %48 = fadd float %47, 0.000000e+00
  %49 = shufflevector <4 x float> %45, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.aq = insertelement <2 x float> %49, float %i.v, i64 1
  %50 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ar = insertelement <2 x float> %50, float %i.ae, i64 0
  %i.as = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> zeroinitializer, <2 x float> %i.ar) ; 2 uses
  %51 = fadd <2 x float> %i.as, <float -0.000000e+00, float 0.000000e+00>
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %53 = insertelement <2 x float> %49, float %i.ai, i64 1
  %54 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %55 = insertelement <2 x float> %54, float %i.ap, i64 0
  %56 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> zeroinitializer, <2 x float> %55) ; 3 uses
  %57 = fadd <2 x float> %56, <float -0.000000e+00, float 0.000000e+00>
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %59 = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 0 ; 2 uses
  %i.at = insertelement <2 x float> poison, float %25, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %59, %i.au             ; 2 uses
  %60 = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 1 ; 3 uses
  %i.aw = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %i.ax, <2 x float> %i.av)
  %i.az = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.ay)
  %i.bc = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> zeroinitializer, <2 x float> %i.bb)
  %i.bf = extractelement <2 x float> %i.av, i64 0
  %i.bg = call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.bf) ; 2 uses
  %i.bh = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.am, float %i.bg)
  %i.bi = call float @llvm.fmuladd.f32(float %i.y, float 0.000000e+00, float %i.bh)
  %i.bj = call float @llvm.fmuladd.f32(float %i.am, float 0.000000e+00, float %i.bg)
  %i.bk = fadd float %i.y, %i.bj
  %61 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61                 ; 2 uses
  %63 = insertelement <2 x float> poison, float %38, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %64, <2 x float> %62)
  %i.bl = insertelement <2 x float> poison, float %41, i64 0
  %66 = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> zeroinitializer, <2 x float> %65)
  %68 = insertelement <2 x float> poison, float %29, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> zeroinitializer, <2 x float> %67)
  %71 = extractelement <2 x float> %62, i64 0
  %72 = call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %71) ; 2 uses
  %73 = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %41, float %72)
  %74 = call float @llvm.fmuladd.f32(float %29, float 0.000000e+00, float %73)
  %75 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %72)
  %76 = fadd float %29, %75
  %i.bm = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.bn = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.bo = fmul <4 x float> %i.bn, %52             ; 2 uses
  %i.bp = extractelement <2 x float> %56, i64 0
  %shift = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop517 = fmul <2 x float> %shift, %i.as
  %77 = insertelement <2 x float> poison, float %44, i64 0
  %i.bq = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> %foldExtExtBinop517, <2 x i32> <i32 0, i32 2>
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %i.bq, <2 x float> %i.bs)
  %i.bu = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> zeroinitializer, <2 x float> %i.bt)
  %i.bw = shufflevector <4 x float> %46, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> zeroinitializer, <2 x float> %i.bv)
  %i.by = shufflevector <4 x float> %i.bm, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %78 = insertelement <4 x float> %i.by, float %44, i64 0
  %79 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %48, i64 1
  %80 = shufflevector <4 x float> %79, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %81 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %78, <4 x float> %80, <4 x float> %i.bo) ; 3 uses
  %82 = extractelement <4 x float> %81, i64 0
  %i.bz = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.fca.1.extract, i64 3
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %58, <4 x float> %81)
  %i.cb = fadd <4 x float> %46, %i.ca
  %83 = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bp, float %82)
  %i.cc = shufflevector <4 x float> %46, <4 x float> %58, <2 x i32> <i32 0, i32 5>
  %i.cd = shufflevector <4 x float> %81, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ce = insertelement <2 x float> %i.cd, float %83, i64 0
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.ce) ; 2 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 1
  %i.ch = fadd float %i.cg, 1.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.ci, align 8
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr exact i64 %i.co, 3
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.e unwind label %bb.r       ; 28 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.cs = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.cr, ptr %i.cs, align 8
  %i.cv = load ptr, ptr %i.cj, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.cj, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.cx = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.i, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #27
          to label %.noexc34 unwind label %bb.r   ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.da ; 2 uses
  store ptr %i.cr, ptr %i.dj, align 8
  %i.dk = icmp sgt i64 %i.da, 0
  br i1 %i.dk, label %bb.j, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.cx, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %.noexc34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.da) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.di, ptr %i.ci, align 8
  store ptr %i.dl, ptr %i.cj, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dm, ptr %i.ct, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 1096
  store ptr %1, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 1028
  store <2 x float> %i.be, ptr %i.do, align 4
  %.sroa.10152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1036
  store float %i.bi, ptr %.sroa.10152.0..sroa_idx, align 4
  %.sroa.13153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1040
  store float %i.bk, ptr %.sroa.13153.0..sroa_idx, align 8
  %.sroa.16154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1044
  store <2 x float> %70, ptr %.sroa.16154.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1052
  store float %74, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.25156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1056
  store float %76, ptr %.sroa.25156.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1060
  store <2 x float> %i.bx, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1068
  %i.dp = extractelement <2 x float> %i.cf, i64 0
  store float %i.dp, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1072
  store <4 x float> %i.cb, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1088
  store float %i.ch, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ds = load ptr, ptr %i.dq, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = load i64, ptr %i.dr, align 8
  %.not311 = icmp eq i64 %i.du, %i.dv
  br i1 %.not311, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread, label %.lr.ph318

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread:    ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1120
  store i32 0, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1128
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 1104
  store i32 0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 1112
  store ptr null, ptr %i.dz, align 8
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.lr.ph318:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
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
  %i.ef = load i64, ptr %i.ea, align 8
  %cond = icmp eq i64 %i.ef, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.eg = load ptr, ptr %4, align 8               ; 5 uses
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = icmp ne i32 %i.eh, 1213416781
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread222

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.el = load ptr, ptr %i.ed, align 8
  %i.em = load ptr, ptr %i.ec, align 8
  invoke void @_ZN6Assimp11B3DImporter8ReadMESHEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = lshr exact i64 %i.ep, 3
  %i.er = trunc i64 %i.eq to i32                  ; 2 uses
  %i.es = load ptr, ptr %i.ed, align 8
  %i.et = load ptr, ptr %i.ec, align 8
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 3
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = icmp ult i32 %i.er, %i.ey
  br i1 %i.ez, label %.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

bb.o:                                             ; preds = %bb.a
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.p:                                             ; preds = %bb.b
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.q:                                             ; preds = %bb.c
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.r:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.i, %bb.d
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.s:                                             ; preds = %bb.e
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 1144) #25
  br label %bb.bb

bb.t:                                             ; preds = %bb.l
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.u:                                             ; preds = %_ZN8aiStringaSERKS_.exit, %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %storemerge308 = phi i32 [ %i.fw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.er, %bb.n ] ; 3 uses
  %.sroa.16105.1307 = phi ptr [ %.sroa.16105.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.16105.0314, %bb.n ] ; 5 uses
  %.sroa.10101.1306 = phi ptr [ %.sroa.10101.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.10101.0313, %bb.n ] ; 3 uses
  %.sroa.096.1305 = phi ptr [ %.sroa.096.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.096.0312, %bb.n ] ; 7 uses
  %.not.i35 = icmp eq ptr %.sroa.10101.1306, %.sroa.16105.1307
  br i1 %.not.i35, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  store i32 %storemerge308, ptr %.sroa.10101.1306, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.x:                                             ; preds = %.lr.ph
  %i.fi = ptrtoint ptr %.sroa.16105.1307 to i64
  %i.fj = ptrtoint ptr %.sroa.096.1305 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 6 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775804
  br i1 %i.fl, label %bb.y, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.fm = ashr exact i64 %i.fk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i36, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = call i64 @llvm.umin.i64(i64 %i.fn, i64 2305843009213693951)
  %i.fq = select i1 %i.fo, i64 2305843009213693951, i64 %i.fp ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.fq, 0
  call void @llvm.assume(i1 %.not.i.i.i37)
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #27
          to label %.noexc40 unwind label %.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i32 %storemerge308, ptr %i.ft, align 4
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.z:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %.sroa.096.1305, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.z, %.noexc40
  %.not.i17.i.i38 = icmp eq ptr %.sroa.096.1305, null
  br i1 %.not.i17.i.i38, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.1305, i64 noundef %i.fk) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.w
  %.sroa.096.6 = phi ptr [ %i.fs, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.096.1305, %bb.w ] ; 2 uses
  %.pn = phi ptr [ %i.ft, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.10101.1306, %bb.w ]
  %.sroa.16105.6 = phi ptr [ %i.fv, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.16105.1307, %bb.w ] ; 2 uses
  %.sroa.10101.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.fw = add nuw i32 %storemerge308, 1           ; 2 uses
  %i.fx = load ptr, ptr %i.ed, align 8
  %i.fy = load ptr, ptr %i.ec, align 8
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = lshr exact i64 %i.gb, 3
  %i.gd = trunc i64 %i.gc to i32
end_hunk_0
