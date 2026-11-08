Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN4pbrt18LinearLeastSquaresILi3EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEEPAT__KfS8_i:bb.a
  %.epil.init251 = phi float [ 0.000000e+00, %._crit_edge.1.2 ], [ %i.oy, %._crit_edge.2.2.unr-lcssa ]
  %.epil.init253 = phi float [ 0.000000e+00, %._crit_edge.1.2 ], [ %i.ov, %._crit_edge.2.2.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter248, 0
  tail call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader247
  %indvars.iv.2.2.epil = phi i64 [ %indvars.iv.2.2.epil.init, %.epil.preheader247 ], [ %indvars.iv.next.2.2.epil, %bb.r ] ; 3 uses
  %i.oz = phi float [ %.epil.init251, %.epil.preheader247 ], [ %i.pi, %bb.r ]
  %i.pa = phi float [ %.epil.init253, %.epil.preheader247 ], [ %i.pf, %bb.r ]
  %epil.iter249 = phi i64 [ 0, %.epil.preheader247 ], [ %epil.iter249.next, %bb.r ]
  %i.pb = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.2.2.epil
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !55 ; 3 uses
  %i.pe = fmul float %i.pd, %i.pd
  %i.pf = fadd float %i.pa, %i.pe                 ; 2 uses
  %gep.2.2.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2.2.epil
  %i.pg = load float, ptr %gep.2.2.epil, align 4, !tbaa !55
  %i.ph = fmul float %i.pd, %i.pg
  %i.pi = fadd float %i.oz, %i.ph                 ; 2 uses
  %indvars.iv.next.2.2.epil = add nuw nsw i64 %indvars.iv.2.2.epil, 1
  %epil.iter249.next = add i64 %epil.iter249, 1   ; 2 uses
  %epil.iter249.cmp.not = icmp eq i64 %epil.iter249.next, %xtraiter248
  br i1 %epil.iter249.cmp.not, label %._crit_edge.2.2, label %bb.r, !llvm.loop !1170

._crit_edge.2.2:                                  ; preds = %bb.r, %._crit_edge.2.2.unr-lcssa
  %.lcssa116 = phi float [ %i.ov, %._crit_edge.2.2.unr-lcssa ], [ %i.pf, %bb.r ]
  %.lcssa = phi float [ %i.oy, %._crit_edge.2.2.unr-lcssa ], [ %i.pi, %bb.r ] ; 2 uses
  store float %.lcssa116, ptr %i.np, align 4, !tbaa !55
  %i.pj = insertelement <3 x float> poison, float %.lcssa119, i64 0
  %i.pk = insertelement <3 x float> %i.pj, float %.lcssa117, i64 1
  %i.pl = insertelement <3 x float> %i.pk, float %.lcssa, i64 2
  %i.pm = insertelement <3 x float> poison, float %.lcssa125, i64 0
  %i.pn = insertelement <3 x float> %i.pm, float %.lcssa123, i64 1
  %i.po = insertelement <3 x float> %i.pn, float %.lcssa121, i64 2
  %i.pp = insertelement <3 x float> poison, float %.lcssa131, i64 0
  %i.pq = insertelement <3 x float> %i.pp, float %.lcssa129, i64 1
  %i.pr = insertelement <3 x float> %i.pq, float %.lcssa127, i64 2
  %i.ps = shufflevector <3 x float> %i.pr, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.pt = shufflevector <3 x float> %i.po, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.pu = shufflevector <3 x float> %i.pl, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  br label %.split51

bb.s:                                             ; preds = %bb.s, %.preheader44.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader44.preheader.new ], [ %indvars.iv.next.3, %bb.s ] ; 6 uses
  %i.pv = phi float [ 0.000000e+00, %.preheader44.preheader.new ], [ %i.qy, %bb.s ]
  %i.pw = phi float [ 0.000000e+00, %.preheader44.preheader.new ], [ %i.qv, %bb.s ]
  %niter = phi i64 [ 0, %.preheader44.preheader.new ], [ %niter.next.3, %bb.s ]
  %i.px = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv
  %i.py = load float, ptr %i.px, align 4, !tbaa !55 ; 3 uses
  %i.pz = fmul float %i.py, %i.py
  %i.qa = fadd float %i.pw, %i.pz
  %gep = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv
  %i.qb = load float, ptr %gep, align 4, !tbaa !55
  %i.qc = fmul float %i.py, %i.qb
  %i.qd = fadd float %i.pv, %i.qc
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.qe = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !55 ; 3 uses
  %i.qg = fmul float %i.qf, %i.qf
  %i.qh = fadd float %i.qa, %i.qg
  %gep.1139 = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv.next
  %i.qi = load float, ptr %gep.1139, align 4, !tbaa !55
  %i.qj = fmul float %i.qf, %i.qi
  %i.qk = fadd float %i.qd, %i.qj
  %indvars.iv.next.1140 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ql = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next.1140
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !55 ; 3 uses
  %i.qn = fmul float %i.qm, %i.qm
  %i.qo = fadd float %i.qh, %i.qn
  %gep.2142 = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv.next.1140
  %i.qp = load float, ptr %gep.2142, align 4, !tbaa !55
  %i.qq = fmul float %i.qm, %i.qp
  %i.qr = fadd float %i.qk, %i.qq
  %indvars.iv.next.2143 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.qs = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next.2143
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !55 ; 3 uses
  %i.qu = fmul float %i.qt, %i.qt
  %i.qv = fadd float %i.qo, %i.qu                 ; 3 uses
  %gep.3 = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv.next.2143
  %i.qw = load float, ptr %gep.3, align 4, !tbaa !55
  %i.qx = fmul float %i.qt, %i.qw
  %i.qy = fadd float %i.qr, %i.qx                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.s, !llvm.loop !1162

bb.t:                                             ; preds = %.split51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %.split51
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.re = load float, ptr %i.rd, align 16, !tbaa !55, !noalias !1174 ; 2 uses
  %i.rf = load <4 x float>, ptr %5, align 16, !tbaa !55, !noalias !1174
  %i.rg = load <4 x float>, ptr %i.qz, align 4, !tbaa !55, !noalias !1174
  %i.rh = load <4 x float>, ptr %i.ra, align 8, !tbaa !55, !noalias !1174
  %i.ri = load <2 x float>, ptr %i.rb, align 8, !tbaa !55, !noalias !1174 ; 3 uses
  %i.rj = load float, ptr %i.rc, align 4, !tbaa !55, !noalias !1174
  %i.rk = shufflevector <2 x float> %i.ri, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rl = shufflevector <4 x float> %i.rf, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rm = shufflevector <8 x float> %i.rl, <8 x float> %i.rk, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %i.rn = call <8 x float> @llvm.fma.v8f32(<8 x float> %i.rm, <8 x float> %i.e, <8 x float> zeroinitializer)
  %i.ro = shufflevector <2 x float> %i.ri, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rp = shufflevector <4 x float> %i.rg, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rq = shufflevector <8 x float> %i.rp, <8 x float> %i.ro, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %i.rr = call <8 x float> @llvm.fma.v8f32(<8 x float> %i.rq, <8 x float> %i.d, <8 x float> %i.rn)
  %i.rs = insertelement <8 x float> poison, float %i.re, i64 2
  %i.rt = shufflevector <4 x float> %i.rh, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ru = shufflevector <8 x float> %i.rt, <8 x float> %i.rs, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %i.rv = call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ru, <8 x float> %i.c, <8 x float> %i.rr)
  %i.rw = extractelement <2 x float> %i.ri, i64 0
  %i.rx = call noundef float @llvm.fma.f32(float %i.rw, float %.sroa.9.0, float 0.000000e+00)
  %i.ry = call noundef float @llvm.fma.f32(float %i.rj, float %.sroa.18.0, float %i.rx)
  %i.rz = call noundef float @llvm.fma.f32(float %i.re, float %.sroa.27.0, float %i.ry)
  store <8 x float> %i.rv, ptr %0, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.rz, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink = phi i8 [ 1, %bb.u ], [ 0, %bb.t ]
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sink, ptr %i.sa, align 4, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !29, !alias.scope !1177
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31, !alias.scope !1177
  store i8 0, ptr %i.a, align 8, !tbaa !32, !alias.scope !1177
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %1, ptr noundef %0)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !33, !alias.scope !1177 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !1177
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !33
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7InverseILi3EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.106") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !55 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %2 = load float, ptr %i.g, align 4, !tbaa !55   ; 6 uses
  %3 = load float, ptr %i.c, align 4, !tbaa !55   ; 8 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.b, align 4, !tbaa !55 ; 6 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !55 ; 7 uses
  %i.j = fmul float %i.i, %2                      ; 2 uses
  %i.k = fneg float %i.j
  %i.l = tail call noundef float @llvm.fma.f32(float %i.h, float %i.e, float %i.k)
  %i.m = fneg float %i.i                          ; 2 uses
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %2, float %i.j)
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %i.p = load float, ptr %i.a, align 4, !tbaa !55 ; 7 uses
  %i.q = fmul float %i.i, %3                      ; 2 uses
  %i.r = fneg float %i.q
  %i.s = tail call noundef float @llvm.fma.f32(float %i.p, float %i.e, float %i.r)
  %i.t = tail call noundef float @llvm.fma.f32(float %i.m, float %3, float %i.q)
  %i.u = fadd float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.h, %3                      ; 2 uses
  %i.w = fneg float %i.v
  %i.x = tail call noundef float @llvm.fma.f32(float %i.p, float %2, float %i.w)
  %i.y = fneg float %i.h
  %i.z = tail call noundef float @llvm.fma.f32(float %i.y, float %3, float %i.v)
  %i.aa = fadd float %i.x, %i.z                   ; 2 uses
  %i.ab = load float, ptr %4, align 4, !tbaa !55  ; 6 uses
  %i.ac = load float, ptr %1, align 4, !tbaa !55  ; 6 uses
  %i.ad = load float, ptr %5, align 4, !tbaa !55  ; 6 uses
  %i.ae = fmul float %i.ad, %i.u                  ; 2 uses
  %i.af = fneg float %i.ae
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.o, float %i.af)
  %i.ah = fneg float %i.ad                        ; 3 uses
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.u, float %i.ae)
  %i.aj = fadd float %i.ag, %i.ai
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.ab, float %i.aa, float %i.aj) ; 2 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.am = fdiv float 1.000000e+00, %i.ak          ; 2 uses
  %i.an = fmul float %i.p, %i.e                   ; 2 uses
  %i.ao = fneg float %i.an
  %i.ap = fneg float %i.p
  %i.aq = fmul float %i.ad, %i.e                  ; 2 uses
  %i.ar = fneg float %i.aq
  %6 = tail call noundef float @llvm.fma.f32(float %i.ab, float %2, float %i.ar)
  %7 = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.e, float %i.aq)
  %i.as = fmul float %3, %i.ab                    ; 2 uses
  %i.at = fneg float %i.as
  %i.au = fneg float %i.ab                        ; 2 uses
  %i.av = fmul float %i.ac, %2                    ; 2 uses
  %i.aw = fneg float %i.av
  %8 = tail call noundef float @llvm.fma.f32(float %i.ad, float %3, float %i.aw)
  %i.ax = fneg float %i.ac                        ; 2 uses
  %9 = tail call noundef float @llvm.fma.f32(float %i.ax, float %2, float %i.av)
  %i.ay = fmul float %i.ab, %i.h                  ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.ac, %i.i                  ; 2 uses
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.p, %i.ad                  ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.h, float %i.bd)
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.p, float %i.bc)
  %i.bg = fadd float %i.bf, %i.be
  %i.bh = fmul float %i.am, %i.bg
  %i.bi = fadd float %7, %6
  %i.bj = fadd float %8, %9
  %i.bk = tail call noundef float @llvm.fma.f32(float %i.i, float %3, float %i.ao)
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.e, float %i.an)
  %i.bm = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.e, float %i.at)
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.au, float %3, float %i.as)
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.i, float %i.az)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.au, float %i.h, float %i.ay)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.ab, float %i.p, float %i.bb)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.i, float %i.ba)
  %i.bs = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bk, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bn, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.bq, i64 3
  %i.bw = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bl, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bm, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.br, i64 3
  %i.ca = fadd <4 x float> %i.bv, %i.bz
  %i.cb = insertelement <8 x float> poison, float %i.am, i64 0
  %i.cc = shufflevector <8 x float> %i.cb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = insertelement <8 x float> poison, float %i.o, i64 0
  %i.ce = insertelement <8 x float> %i.cd, float %i.bi, i64 1
  %i.cf = shufflevector <4 x float> %i.ca, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cg = shufflevector <8 x float> %i.ce, <8 x float> %i.cf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.ch = insertelement <8 x float> %i.cg, float %i.aa, i64 6
  %i.ci = insertelement <8 x float> %i.ch, float %i.bj, i64 7
  %i.cj = fmul <8 x float> %i.cc, %i.ci
  store <8 x float> %i.cj, ptr %0, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bh, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sink, ptr %i.ck, align 4, !tbaa !264
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(13) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #30
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #30
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #30
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.z
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.i = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !29, !alias.scope !1188
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !31, !alias.scope !1188
  store i8 0, ptr %i.j, align 8, !tbaa !32, !alias.scope !1188
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !220, !noalias !1188 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1188 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !221, !noalias !1188 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !33, !alias.scope !1188 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #30, !noalias !1189
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !29, !alias.scope !1189
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !31, !alias.scope !1189
  store i8 0, ptr %i.ae, align 8, !tbaa !32, !alias.scope !1189
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !1189
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #30 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !31, !alias.scope !1189
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !1189 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %bb.j
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #32
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !33
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ae
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.j
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !32
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
end_hunk_0
