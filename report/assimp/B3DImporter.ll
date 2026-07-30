inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
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
  %i.ad = fmul float %i.ac, 2.000000e+00          ; 2 uses
  %i.ae = extractelement <4 x float> %i.ab, i64 2
  %i.af = fmul float %i.ae, 2.000000e+00          ; 4 uses
  %i.ag = extractelement <4 x float> %i.ab, i64 3
  %i.ah = fmul float %i.ag, 2.000000e+00          ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = fmul float %i.p, 0.000000e+00           ; 2 uses
  %i.ak = extractelement <4 x float> %i.ab, i64 0 ; 2 uses
  %i.al = fmul float %i.ak, 0.000000e+00          ; 2 uses
  %i.am = fmul float %i.ad, 0.000000e+00          ; 2 uses
  %i.an = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 3 uses
  %.sroa.0220.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 3 uses
  %i.ao = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> %i.n, <4 x i32> <i32 1, i32 5, i32 4, i32 5>
  %i.aq = fmul <4 x float> %i.ap, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 2 ; 2 uses
  %i.as = fadd float %i.ar, %i.al
  %i.at = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.as)
  %i.au = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.at)
  %i.av = extractelement <4 x float> %i.aq, i64 1
  %i.aw = fadd float %i.av, %i.am
  %i.ax = call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.ak)
  %i.ay = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.ax)
  %i.az = fadd float %.sroa.0220.4.vec.extract, 0.000000e+00 ; 3 uses
  %i.ba = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.ad, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.al, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.am, i64 3
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> zeroinitializer, <4 x float> %i.bd) ; 6 uses
  %i.bf = extractelement <4 x float> %i.be, i64 2
  %i.bg = fadd float %i.ah, %i.bf
  %i.bh = extractelement <4 x float> %i.k, i64 3
  %i.bi = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.8.vec.extract, float %i.bh)
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.bk = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.ai)
  %i.bl = call float @llvm.fmuladd.f32(float %i.bk, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %i.bm = fadd float %i.bj, %i.aj
  %i.bn = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bm)
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bn) ; 2 uses
  %i.bp = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.aw)
  %i.bq = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bp) ; 3 uses
  %i.br = call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.p)
  %i.bs = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.br)
  %i.bt = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.bs) ; 2 uses
  %i.bu = extractelement <4 x float> %i.be, i64 1
  %i.bv = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.bu)
  %i.bw = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.bv) ; 3 uses
  %i.bx = call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.aj) ; 2 uses
  %i.by = fadd float %i.af, %i.bx
  %i.bz = call float @llvm.fmuladd.f32(float %.fca.1.extract3, float 0.000000e+00, float %i.by) ; 2 uses
  %i.ca = extractelement <4 x float> %i.be, i64 3
  %i.cb = fadd float %i.bl, %i.ca
  %i.cc = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %.fca.1.extract3, i64 0 ; 2 uses
  %i.cd = fadd <4 x float> %i.cc, zeroinitializer ; 3 uses
  %i.ce = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bx)
  %i.cf = fadd float %i.ce, 0.000000e+00
  %i.cg = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.ch = insertelement <2 x float> %i.cg, float %i.ah, i64 1
  %i.ci = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cj = insertelement <2 x float> %i.ci, float %i.bg, i64 0
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> zeroinitializer, <2 x float> %i.cj) ; 2 uses
  %i.cl = fadd <2 x float> %i.ck, <float -0.000000e+00, float 0.000000e+00>
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cn = insertelement <2 x float> %i.cg, float %i.bl, i64 1
  %i.co = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cp = insertelement <2 x float> %i.co, float %i.cb, i64 0
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> zeroinitializer, <2 x float> %i.cp) ; 3 uses
  %i.cr = fadd <2 x float> %i.cq, <float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ct = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 0 ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.au, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = insertelement <2 x float> %.fca.0.extract, float 0.000000e+00, i64 1 ; 3 uses
  %i.cy = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cw)
  %i.db = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> zeroinitializer, <2 x float> %i.da)
  %i.de = insertelement <2 x float> poison, float %i.an, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.dd)
  %i.dh = extractelement <2 x float> %i.cw, i64 0
  %i.di = call float @llvm.fmuladd.f32(float %i.bo, float 0.000000e+00, float %i.dh) ; 2 uses
  %i.dj = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bq, float %i.di)
  %i.dk = call float @llvm.fmuladd.f32(float %i.an, float 0.000000e+00, float %i.dj)
  %i.dl = call float @llvm.fmuladd.f32(float %i.bq, float 0.000000e+00, float %i.di)
  %i.dm = fadd float %i.an, %i.dl
  %i.dn = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.ct, %i.dn           ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.dq, <2 x float> %i.do)
  %i.ds = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> zeroinitializer, <2 x float> %i.dr)
  %i.dv = insertelement <2 x float> poison, float %i.az, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> zeroinitializer, <2 x float> %i.du)
  %i.dy = extractelement <2 x float> %i.do, i64 0
  %i.dz = call float @llvm.fmuladd.f32(float %i.bt, float 0.000000e+00, float %i.dy) ; 2 uses
  %i.ea = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %i.bw, float %i.dz)
  %i.eb = call float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.ea)
  %i.ec = call float @llvm.fmuladd.f32(float %i.bw, float 0.000000e+00, float %i.dz)
  %i.ed = fadd float %i.az, %i.ec
  %i.ee = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.ef = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.eg = fmul <4 x float> %i.ef, %i.cm           ; 2 uses
  %5 = extractelement <2 x float> %i.cq, i64 0
  %i.eh = extractelement <4 x float> %i.cd, i64 0
  %shift = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop515 = fmul <2 x float> %shift, %i.ck
  %i.ei = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> %foldExtExtBinop515, <2 x i32> <i32 0, i32 2>
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.ej, <2 x float> %i.el)
  %i.en = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> zeroinitializer, <2 x float> %i.em)
  %i.ep = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> zeroinitializer, <2 x float> %i.eo)
  %i.er = shufflevector <4 x float> %i.ee, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %i.es = insertelement <4 x float> %i.er, float %i.bz, i64 0
  %i.et = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cf, i64 1
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.eu, <4 x float> %i.eg) ; 3 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 0
  %6 = call float @llvm.fmuladd.f32(float %.fca.1.extract, float %5, float %i.ew)
  %7 = call float @llvm.fmuladd.f32(float %i.eh, float 0.000000e+00, float %6)
  %8 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.fca.1.extract, i64 3
  %9 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %i.cs, <4 x float> %i.ev)
  %10 = fadd <4 x float> %i.cd, %9
  %11 = extractelement <2 x float> %i.cr, i64 1
  %12 = extractelement <4 x float> %i.ev, i64 3
  %13 = call float @llvm.fmuladd.f32(float %11, float 0.000000e+00, float %12)
  %i.ex = fadd float %13, 1.000000e+00
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = load ptr, ptr %i.ey, align 8
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = lshr exact i64 %i.fe, 3
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.e unwind label %bb.r       ; 28 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.fi = load ptr, ptr %i.ez, align 8            ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %.not.i = icmp eq ptr %i.fi, %i.fk
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.fh, ptr %i.fi, align 8
  %i.fl = load ptr, ptr %i.ez, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fm, ptr %i.ez, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.fn = load ptr, ptr %i.ey, align 8            ; 4 uses
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 6 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %bb.i, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.fs = ashr exact i64 %i.fq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 1152921504606846975)
  %i.fw = select i1 %i.fu, i64 1152921504606846975, i64 %i.fv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fx = shl nuw nsw i64 %i.fw, 3
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #27
          to label %.noexc34 unwind label %bb.r   ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 2 uses
  store ptr %i.fh, ptr %i.fz, align 8
  %i.ga = icmp sgt i64 %i.fq, 0
  br i1 %i.ga, label %bb.j, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr align 8 %i.fn, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %.noexc34
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fq) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.fy, ptr %i.ey, align 8
  store ptr %i.gb, ptr %i.ez, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gc, ptr %i.fj, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fh, i64 1096
  store ptr %1, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 1028
  store <2 x float> %i.dg, ptr %i.ge, align 4
  %.sroa.10152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1036
  store float %i.dk, ptr %.sroa.10152.0..sroa_idx, align 4
  %.sroa.13153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1040
  store float %i.dm, ptr %.sroa.13153.0..sroa_idx, align 8
  %.sroa.16154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1044
  store <2 x float> %i.dx, ptr %.sroa.16154.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1052
  store float %i.eb, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.25156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1056
  store float %i.ed, ptr %.sroa.25156.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1060
  store <2 x float> %i.eq, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1068
  store float %7, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1072
  store <4 x float> %10, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1088
  store float %i.ex, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gh = load ptr, ptr %i.gf, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = load i64, ptr %i.gg, align 8
  %.not311 = icmp eq i64 %i.gj, %i.gk
  br i1 %.not311, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread, label %.lr.ph318

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread:    ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 1120
  store i32 0, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fh, i64 1128
  store ptr null, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fh, i64 1104
  store i32 0, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.fh, i64 1112
  store ptr null, ptr %i.go, align 8
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.lr.ph318:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
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
  %i.gu = load i64, ptr %i.gp, align 8
  %cond = icmp eq i64 %i.gu, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.gv = load ptr, ptr %4, align 8               ; 5 uses
  %i.gw = load i32, ptr %i.gv, align 1
  %i.gx = icmp ne i32 %i.gw, 1213416781
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread222

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ha = load ptr, ptr %i.gs, align 8
  %i.hb = load ptr, ptr %i.gr, align 8
  invoke void @_ZN6Assimp11B3DImporter8ReadMESHEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = lshr exact i64 %i.he, 3
  %i.hg = trunc i64 %i.hf to i32                  ; 2 uses
  %i.hh = load ptr, ptr %i.gs, align 8
  %i.hi = load ptr, ptr %i.gr, align 8
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = lshr exact i64 %i.hl, 3
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = icmp ult i32 %i.hg, %i.hn
  br i1 %i.ho, label %.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

bb.o:                                             ; preds = %bb.a
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.p:                                             ; preds = %bb.b
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.q:                                             ; preds = %bb.c
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.r:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.i, %bb.d
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.s:                                             ; preds = %bb.e
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 1144) #25
  br label %bb.bb

bb.t:                                             ; preds = %bb.l
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.u:                                             ; preds = %_ZN8aiStringaSERKS_.exit, %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %storemerge308 = phi i32 [ %i.il, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.hg, %bb.n ] ; 3 uses
  %.sroa.16105.1307 = phi ptr [ %.sroa.16105.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.16105.0314, %bb.n ] ; 5 uses
  %.sroa.10101.1306 = phi ptr [ %.sroa.10101.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.10101.0313, %bb.n ] ; 3 uses
  %.sroa.096.1305 = phi ptr [ %.sroa.096.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.096.0312, %bb.n ] ; 7 uses
  %.not.i35 = icmp eq ptr %.sroa.10101.1306, %.sroa.16105.1307
  br i1 %.not.i35, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  store i32 %storemerge308, ptr %.sroa.10101.1306, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.x:                                             ; preds = %.lr.ph
  %i.hx = ptrtoint ptr %.sroa.16105.1307 to i64
  %i.hy = ptrtoint ptr %.sroa.096.1305 to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 6 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775804
  br i1 %i.ia, label %bb.y, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.ib = ashr exact i64 %i.hz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i36, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = call i64 @llvm.umin.i64(i64 %i.ic, i64 2305843009213693951)
  %i.if = select i1 %i.id, i64 2305843009213693951, i64 %i.ie ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.if, 0
  call void @llvm.assume(i1 %.not.i.i.i37)
  %i.ig = shl nuw nsw i64 %i.if, 2
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #27
          to label %.noexc40 unwind label %.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.hz ; 2 uses
  store i32 %storemerge308, ptr %i.ii, align 4
  %i.ij = icmp sgt i64 %i.hz, 0
  br i1 %i.ij, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.z:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ih, ptr align 4 %.sroa.096.1305, i64 %i.hz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.z, %.noexc40
  %.not.i17.i.i38 = icmp eq ptr %.sroa.096.1305, null
  br i1 %.not.i17.i.i38, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.1305, i64 noundef %i.hz) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.if
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.w
  %.sroa.096.6 = phi ptr [ %i.ih, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.096.1305, %bb.w ] ; 2 uses
  %.pn = phi ptr [ %i.ii, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.10101.1306, %bb.w ]
  %.sroa.16105.6 = phi ptr [ %i.ik, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.16105.1307, %bb.w ] ; 2 uses
  %.sroa.10101.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.il = add nuw i32 %storemerge308, 1           ; 2 uses
  %i.im = load ptr, ptr %i.gs, align 8
  %i.in = load ptr, ptr %i.gr, align 8
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = lshr exact i64 %i.iq, 3
  %i.is = trunc i64 %i.ir to i32
  %i.it = icmp ult i32 %i.il, %i.is
  br i1 %i.it, label %.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58, !llvm.loop !124

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj
end_hunk_0
