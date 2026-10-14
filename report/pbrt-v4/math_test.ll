Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN7testing8internal11CmpHelperNEIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_:bb.a

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi4EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi4EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.al, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.aj, %bb.s ] ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !32
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ah, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.40") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load <16 x float>, ptr %1, align 4, !tbaa !37 ; 17 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !37 ; 3 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !37
  %i.j = load <2 x float>, ptr %i.f, align 4, !tbaa !37 ; 3 uses
  %i.k = load <2 x float>, ptr %i.a, align 4, !tbaa !37 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !37
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !37 ; 3 uses
  %i.n = fneg <16 x float> %i.g
  %i.o = shufflevector <16 x float> %i.n, <16 x float> poison, <4 x i32> <i32 13, i32 5, i32 12, i32 4> ; 5 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.q = shufflevector <2 x float> %i.h, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> %i.j, <2 x float> %i.m, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = fmul <2 x float> %i.q, %i.r              ; 2 uses
  %i.t = fneg <2 x float> %i.s
  %i.u = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 8, i32 0>
  %i.v = insertelement <2 x float> poison, float %i.i, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.l, i64 1
  %i.x = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.z = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.y, <2 x float> %i.r, <2 x float> %i.s)
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 4 uses
  %i.ab = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 13, i32 13, i32 5, i32 5, i32 12, i32 12, i32 4, i32 4>
  %i.ac = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 11, i32 10, i32 3, i32 2, i32 11, i32 10, i32 3, i32 2> ; 2 uses
  %i.ad = fmul <8 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = fneg <8 x float> %i.ad
  %i.af = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 9, i32 9, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0>
  %i.ag = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 15, i32 14, i32 7, i32 6, i32 15, i32 14, i32 7, i32 6>
  %i.ah = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.af, <8 x float> %i.ag, <8 x float> %i.ae)
  %i.ai = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.p, <8 x float> %i.ac, <8 x float> %i.ad)
  %i.aj = fadd <8 x float> %i.ah, %i.ai           ; 19 uses
  %i.ak = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 14, i32 6> ; 2 uses
  %i.al = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 11, i32 3> ; 2 uses
  %i.am = fmul <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = fneg <2 x float> %i.am
  %i.ao = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 10, i32 2>
  %i.ap = shufflevector <16 x float> %i.g, <16 x float> poison, <2 x i32> <i32 15, i32 7>
  %i.aq = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = fneg <2 x float> %i.ak                  ; 4 uses
  %i.as = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ar, <2 x float> %i.al, <2 x float> %i.am)
  %i.at = fadd <2 x float> %i.aq, %i.as           ; 4 uses
  %i.au = extractelement <8 x float> %i.aj, i64 7
  %i.av = fneg float %i.au                        ; 2 uses
  %i.aw = extractelement <8 x float> %i.aj, i64 2
  %i.ax = fneg float %i.aw                        ; 2 uses
  %i.ay = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ba = fmul float %i.az, %i.ay                 ; 4 uses
  %i.bb = fneg float %i.ba
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.az, float %i.ay, float %i.bb)
  %i.bd = extractelement <8 x float> %i.aj, i64 0 ; 2 uses
  %i.be = fmul float %i.bd, %i.av                 ; 4 uses
  %i.bf = fneg float %i.be
  %i.bg = tail call noundef float @llvm.fma.f32(float %i.av, float %i.bd, float %i.bf)
  %i.bh = extractelement <8 x float> %i.aj, i64 1 ; 2 uses
  %i.bi = extractelement <8 x float> %i.aj, i64 6 ; 2 uses
  %i.bj = fmul float %i.bi, %i.bh                 ; 4 uses
  %i.bk = fneg float %i.bj
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bi, float %i.bh, float %i.bk)
  %i.bm = extractelement <8 x float> %i.aj, i64 3 ; 2 uses
  %i.bn = extractelement <8 x float> %i.aj, i64 4 ; 2 uses
  %i.bo = fmul float %i.bm, %i.bn                 ; 4 uses
  %i.bp = fneg float %i.bo
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bn, float %i.bp)
  %i.br = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.bs = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.bt = fmul float %i.br, %i.bs                 ; 4 uses
  %i.bu = fneg float %i.bt
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bs, float %i.bu)
  %i.bw = extractelement <8 x float> %i.aj, i64 5 ; 2 uses
  %i.bx = fmul float %i.bw, %i.ax                 ; 3 uses
  %i.by = fneg float %i.bx
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.bw, float %i.by)
  %i.ca = fadd float %i.bt, %i.bx                 ; 4 uses
  %i.cb = fsub float %i.ca, %i.bt                 ; 2 uses
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fsub float %i.bt, %i.cc
  %i.ce = fsub float %i.bx, %i.cb
  %i.cf = fadd float %i.ce, %i.cd
  %i.cg = fadd float %i.bz, %i.cf
  %i.ch = fadd float %i.bv, %i.cg
  %i.ci = fadd float %i.ca, %i.bo                 ; 4 uses
  %i.cj = fsub float %i.ci, %i.bo                 ; 2 uses
  %i.ck = fsub float %i.ci, %i.cj
  %i.cl = fsub float %i.bo, %i.ck
  %i.cm = fsub float %i.ca, %i.cj
  %i.cn = fadd float %i.cm, %i.cl
  %i.co = fadd float %i.cn, %i.ch
  %i.cp = fadd float %i.bq, %i.co
  %i.cq = fadd float %i.bj, %i.ci                 ; 4 uses
  %i.cr = fsub float %i.cq, %i.bj                 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fsub float %i.bj, %i.cs
  %i.cu = fsub float %i.ci, %i.cr
  %i.cv = fadd float %i.cu, %i.ct
  %i.cw = fadd float %i.cv, %i.cp
  %i.cx = fadd float %i.bl, %i.cw
  %i.cy = fadd float %i.be, %i.cq                 ; 4 uses
  %i.cz = fsub float %i.cy, %i.be                 ; 2 uses
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fsub float %i.be, %i.da
  %i.dc = fsub float %i.cq, %i.cz
  %i.dd = fadd float %i.dc, %i.db
  %i.de = fadd float %i.dd, %i.cx
  %i.df = fadd float %i.bg, %i.de
  %i.dg = fadd float %i.ba, %i.cy                 ; 3 uses
  %i.dh = fsub float %i.dg, %i.ba                 ; 2 uses
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fsub float %i.ba, %i.di
  %i.dk = fsub float %i.cy, %i.dh
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, %i.df
  %i.dn = fadd float %i.bc, %i.dm
  %i.do = fadd float %i.dg, %i.dn                 ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %0, i8 0, i64 68, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.dq = shufflevector <2 x float> %i.at, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %2 = load <4 x float>, ptr %i.dr, align 4
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load float, ptr %i.du, align 4, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !37 ; 2 uses
  %i.dy = fdiv float 1.000000e+00, %i.do
  %i.dz = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 7, i32 2, i32 15, i32 10, i32 3, i32 6, i32 11, i32 14> ; 2 uses
  %i.ea = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 3 uses
  %i.eb = fmul <8 x float> %i.dz, %i.ea           ; 4 uses
  %i.ec = insertelement <2 x float> %3, float %i.dv, i64 1
  %i.ed = fneg <2 x float> %i.ec                  ; 2 uses
  %i.ee = shufflevector <2 x float> %i.m, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.ef = fneg <2 x float> %i.ee
  %i.eg = fneg <16 x float> %i.g
  %i.eh = shufflevector <16 x float> %i.eg, <16 x float> poison, <4 x i32> <i32 2, i32 7, i32 10, i32 15>
  %i.ei = fneg <16 x float> %i.g
  %i.ej = shufflevector <16 x float> %i.ei, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ek, align 4, !tbaa !50
  %i.el = shufflevector <2 x float> %i.at, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.em = shufflevector <16 x float> %i.g, <16 x float> %i.el, <8 x i32> <i32 5, i32 16, i32 17, i32 17, i32 16, i32 16, i32 8, i32 17>
  %i.en = shufflevector <16 x float> %i.el, <16 x float> %i.g, <8 x i32> <i32 0, i32 poison, i32 29, i32 poison, i32 16, i32 poison, i32 1, i32 poison>
  %i.eo = shufflevector <2 x float> %i.ef, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 poison, i32 6, i32 poison>
  %i.eq = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.er = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 6, i32 10> ; 2 uses
  %i.es = fmul <8 x float> %i.em, %i.er           ; 4 uses
  %i.et = fneg <8 x float> %i.es
  %i.eu = shufflevector <8 x float> %i.er, <8 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 3, i32 poison, i32 5, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x float> %i.g, <16 x float> %i.eu, <8 x i32> <i32 5, i32 17, i32 13, i32 19, i32 0, i32 21, i32 8, i32 23>
  %i.ew = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ev, <8 x float> %i.dq, <8 x float> %i.et)
  %i.ex = fneg <8 x float> %i.eb
  %i.ey = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> %i.ea, <8 x float> %i.ex)
  %i.ez = shufflevector <2 x float> %i.ar, <2 x float> %i.ed, <8 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.eh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fc = fmul <8 x float> %i.aj, %i.fb           ; 3 uses
  %i.fd = fneg <8 x float> %i.fc
  %i.fe = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.fb, <8 x float> %i.aj, <8 x float> %i.fd)
  %i.ff = fadd <8 x float> %i.fc, %i.eb           ; 4 uses
  %i.fg = fsub <8 x float> %i.ff, %i.eb           ; 2 uses
  %i.fh = fsub <8 x float> %i.ff, %i.fg
  %i.fi = fsub <8 x float> %i.eb, %i.fh
  %i.fj = fsub <8 x float> %i.fc, %i.fg
  %i.fk = fadd <8 x float> %i.fj, %i.fi
  %i.fl = fadd <8 x float> %i.fe, %i.fk
  %i.fm = fadd <8 x float> %i.ey, %i.fl
  %i.fn = fadd <8 x float> %i.es, %i.ff           ; 3 uses
  %i.fo = fsub <8 x float> %i.fn, %i.es           ; 2 uses
  %i.fp = fsub <8 x float> %i.fn, %i.fo
  %i.fq = fsub <8 x float> %i.es, %i.fp
  %i.fr = fsub <8 x float> %i.ff, %i.fo
  %i.fs = fadd <8 x float> %i.fr, %i.fq
  %i.ft = fadd <8 x float> %i.fs, %i.fm
  %i.fu = fadd <8 x float> %i.ew, %i.ft
  %i.fv = fadd <8 x float> %i.fn, %i.fu
  %i.fw = insertelement <8 x float> poison, float %i.dy, i64 0
  %i.fx = shufflevector <8 x float> %i.fw, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fy = fmul <8 x float> %i.fv, %i.fx
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %i.fz, ptr %0, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ga = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <16 x float> %i.ga, <16 x float> %i.g, <4 x i32> <i32 3, i32 16, i32 2, i32 24> ; 2 uses
  %i.gc = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.gd = shufflevector <2 x float> %i.k, <2 x float> %i.h, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x float> %i.ej, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 8, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 7, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gi = shufflevector <8 x float> %i.aj, <8 x float> %i.eq, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 10, i32 3>
  %i.gj = fmul <8 x float> %i.gh, %i.gi           ; 4 uses
  %i.gk = fneg <8 x float> %i.gj
  %i.gl = shufflevector <4 x float> %i.gb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <8 x float> %i.gh, <8 x float> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 3, i32 3>
  %i.go = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.gm, <8 x float> %i.gn, <8 x float> %i.gk)
  %i.gp = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gq = shufflevector <8 x float> %i.ea, <8 x float> %i.gp, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 8, i32 9, i32 9>
  %i.gr = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <8 x float> %i.gr, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.gt = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gv = shufflevector <4 x float> %i.o, <4 x float> %i.gu, <8 x i32> <i32 1, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.gw = shufflevector <2 x float> %i.m, <2 x float> %i.j, <8 x i32> <i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 1, i32 poison, i32 3> ; 2 uses
  %i.gx = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 poison, i32 13, i32 6, i32 15>
  %i.gy = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gz = shufflevector <8 x float> %i.gx, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.ha = fmul <8 x float> %i.gs, %i.gz           ; 3 uses
  %i.hb = insertelement <8 x float> %i.gw, float %i.dt, i64 0
  %i.hc = insertelement <8 x float> %i.hb, float %i.dx, i64 2
  %i.hd = shufflevector <8 x float> %i.hc, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 poison, i32 7>
  %i.he = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x float> %i.hd, <8 x float> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 7> ; 3 uses
  %i.hg = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 poison, i32 4, i32 poison, i32 6, i32 5, i32 poison, i32 7, i32 poison>
  %i.hh = shufflevector <8 x float> %i.gp, <8 x float> %i.hg, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 0, i32 14, i32 2> ; 2 uses
  %i.hi = shufflevector <8 x float> %i.hf, <8 x float> %i.gs, <8 x i32> <i32 0, i32 13, i32 14, i32 14, i32 13, i32 poison, i32 6, i32 poison>
  %i.hj = shufflevector <8 x float> %i.hi, <8 x float> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 9> ; 2 uses
  %i.hk = shufflevector <2 x float> %i.aa, <2 x float> %i.ed, <8 x i32> <i32 0, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = insertelement <8 x float> %i.hk, float %i.dx, i64 2
  %i.hm = shufflevector <8 x float> %i.gt, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 15, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <8 x float> %i.hl, <8 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ho = fmul <8 x float> %i.hj, %i.hn           ; 3 uses
  %i.hp = fneg <8 x float> %i.hh
  %i.hq = fmul <8 x float> %i.hf, %i.hp
  %i.hr = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hf, <8 x float> %i.hh, <8 x float> %i.hq)
  %i.hs = shufflevector <8 x float> %i.aj, <8 x float> %i.hj, <8 x i32> <i32 4, i32 9, i32 6, i32 10, i32 9, i32 13, i32 10, i32 15> ; 2 uses
  %i.ht = shufflevector <8 x float> %i.eq, <8 x float> %i.hn, <8 x i32> <i32 1, i32 9, i32 0, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = shufflevector <8 x float> %i.gt, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <8 x float> %i.ht, <8 x float> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hw = fneg <8 x float> %i.hv
  %i.hx = fmul <8 x float> %i.hs, %i.hw
  %i.hy = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hv, <8 x float> %i.hs, <8 x float> %i.hx)
  %i.hz = fadd <8 x float> %i.ho, %i.ha           ; 4 uses
  %i.ia = shufflevector <8 x float> %i.ho, <8 x float> %i.ha, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15> ; 2 uses
  %i.ib = fsub <8 x float> %i.hz, %i.ia           ; 2 uses
  %i.ic = fsub <8 x float> %i.hz, %i.ib
  %i.id = fsub <8 x float> %i.ia, %i.ic
  %i.ie = shufflevector <8 x float> %i.ha, <8 x float> %i.ho, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15>
  %i.if = fsub <8 x float> %i.ie, %i.ib
  %i.ig = fadd <8 x float> %i.if, %i.id
  %i.ih = fadd <8 x float> %i.hy, %i.ig
  %i.ii = fadd <8 x float> %i.hr, %i.ih
  %i.ij = fadd <8 x float> %i.gj, %i.hz           ; 3 uses
  %i.ik = fsub <8 x float> %i.ij, %i.gj           ; 2 uses
  %i.il = fsub <8 x float> %i.ij, %i.ik
  %i.im = fsub <8 x float> %i.gj, %i.il
  %i.in = fsub <8 x float> %i.hz, %i.ik
  %i.io = fadd <8 x float> %i.in, %i.im
  %i.ip = fadd <8 x float> %i.io, %i.ii
  %i.iq = fadd <8 x float> %i.go, %i.ip
  %i.ir = fadd <8 x float> %i.ij, %i.iq
  %i.is = fmul <8 x float> %i.ir, %i.fx
  store <8 x float> %i.is, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SquareMatrix_Inverse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %19 = alloca %"class.pbrt::SquareMatrix", align 16 ; 11 uses
  %20 = alloca %"class.pstd::optional", align 8   ; 9 uses
  %21 = alloca %"class.pbrt::SquareMatrix", align 8 ; 9 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %23 = alloca %"class.testing::Message", align 8 ; 14 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 14 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.pbrt::SquareMatrix.33", align 16 ; 13 uses
  %30 = alloca %"class.pstd::optional.35", align 16 ; 13 uses
  %31 = alloca %"class.pbrt::SquareMatrix.33", align 4 ; 8 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %33 = alloca %"class.testing::Message", align 8 ; 14 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 14 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 9 uses
  %40 = alloca %"class.pstd::optional.40", align 16 ; 11 uses
  %41 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 8 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %43 = alloca %"class.testing::Message", align 8 ; 14 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %47 = alloca %"class.testing::Message", align 8 ; 14 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %50 = alloca %"class.testing::Message", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 4
  %gep.1.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %indvars.iv728.sroa.gep896 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.b

.preheader560:                                    ; preds = %bb.bv
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 3 uses
  %gep.1.i245 = getelementptr inbounds nuw i8, ptr %30, i64 12
  %gep.2.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %30, i64 20
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  br label %bb.bx

bb.b:                                             ; preds = %bb.a, %bb.bv
  %i.ay = phi i32 [ 0, %bb.a ], [ %i.lw, %bb.bv ] ; 2 uses
  %indvars.iv731 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next732, %bb.bv ] ; 3 uses
  %i.az = mul i64 %indvars.iv731, 9202493588570546565 ; 2 uses
  %i.ba = lshr i64 %i.az, 27
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -9089707755183418291     ; 2 uses
  %i.bd = lshr i64 %i.bc, 33
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = shl nuw nsw i64 %indvars.iv731, 1
  %i.bg = or disjoint i64 %i.bf, 1                ; 5 uses
  %i.bh = add i64 %i.be, %i.bg
  %i.bi = mul i64 %i.bh, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = mul i64 %i.bj, 6364136223846793005
  %i.bl = add i64 %i.bk, %i.bg                    ; 2 uses
  %i.bm = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bn = insertelement <2 x i64> %i.bm, i64 %i.bl, i64 1 ; 3 uses
  %i.bo = lshr <2 x i64> %i.bn, splat (i64 45)
  %i.bp = lshr <2 x i64> %i.bn, splat (i64 27)
  %i.bq = xor <2 x i64> %i.bo, %i.bp
  %i.br = trunc <2 x i64> %i.bq to <2 x i32>      ; 2 uses
  %i.bs = lshr <2 x i64> %i.bn, splat (i64 59)
  %i.bt = trunc nuw nsw <2 x i64> %i.bs to <2 x i32>
  %i.bu = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.br, <2 x i32> %i.br, <2 x i32> %i.bt)
  %i.bv = uitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = fmul nnan <2 x float> %i.bv, splat (float f0x2F800000) ; 2 uses
  %i.bx = fcmp olt <2 x float> %i.bw, splat (float f0x3F7FFFFF)
  %i.by = select <2 x i1> %i.bx, <2 x float> %i.bw, <2 x float> splat (float f0x3F7FFFFF)
  %i.bz = fmul nnan <2 x float> %i.by, splat (float 2.000000e+01)
  %i.ca = fadd <2 x float> %i.bz, splat (float -1.000000e+01)
  %i.cb = mul i64 %i.bl, 6364136223846793005
  %i.cc = add i64 %i.cb, %i.bg                    ; 2 uses
  %i.cd = mul i64 %i.cc, 6364136223846793005
  %i.ce = add i64 %i.cd, %i.bg
  %i.cf = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.cg = insertelement <2 x i64> %i.cf, i64 %i.ce, i64 1 ; 3 uses
  %i.ch = lshr <2 x i64> %i.cg, splat (i64 45)
  %i.ci = lshr <2 x i64> %i.cg, splat (i64 27)
  %i.cj = xor <2 x i64> %i.ch, %i.ci
  %i.ck = trunc <2 x i64> %i.cj to <2 x i32>      ; 2 uses
  %i.cl = lshr <2 x i64> %i.cg, splat (i64 59)
  %i.cm = trunc nuw nsw <2 x i64> %i.cl to <2 x i32>
  %i.cn = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ck, <2 x i32> %i.ck, <2 x i32> %i.cm)
  %i.co = uitofp <2 x i32> %i.cn to <2 x float>
  %i.cp = fmul nnan <2 x float> %i.co, splat (float f0x2F800000) ; 2 uses
  %i.cq = fcmp olt <2 x float> %i.cp, splat (float f0x3F7FFFFF)
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.cp, <2 x float> splat (float f0x3F7FFFFF)
  %i.cs = fmul nnan <2 x float> %i.cr, splat (float 2.000000e+01)
  %i.ct = fadd <2 x float> %i.cs, splat (float -1.000000e+01)
  store <2 x float> %i.ca, ptr %19, align 16
  store <2 x float> %i.ct, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @_ZN4pbrt7InverseILi2EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %20, ptr noundef nonnull align 4 dereferenceable(16) %19)
  %i.cu = load i8, ptr %i.j, align 8, !tbaa !46, !range !19, !noundef !20
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cw = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !34
  br label %bb.bv

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.cx = load <2 x float>, ptr %20, align 8, !tbaa !37 ; 2 uses
  %i.cy = load <2 x float>, ptr %gep.1.i, align 8, !tbaa !37 ; 2 uses
  %52 = load <4 x float>, ptr %19, align 16
  %i.cz = load float, ptr %i.k, align 4, !tbaa !37
  %i.da = shufflevector <4 x float> %52, <4 x float> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.da, <2 x float> %i.cx, <2 x float> zeroinitializer)
  %i.dc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dd, <2 x float> %i.cy, <2 x float> %i.db)
  %i.df = load float, ptr %i.i, align 8, !tbaa !37
  %i.dg = load float, ptr %i.l, align 4, !tbaa !37
  %i.dh = insertelement <2 x float> poison, float %i.df, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.di, <2 x float> %i.cx, <2 x float> zeroinitializer)
  %i.dk = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dl, <2 x float> %i.cy, <2 x float> %i.dj)
  store <2 x float> %i.de, ptr %21, align 8
  store <2 x float> %i.dm, ptr %i.m, align 8
  br label %.preheader561

.preheader561:                                    ; preds = %bb.d, %bb.f
  %i.dn = phi i1 [ true, %bb.d ], [ false, %bb.f ]
  %indvars.iv728.sroa.phi = phi ptr [ %21, %bb.d ], [ %indvars.iv728.sroa.gep896, %bb.f ] ; 2 uses
  %indvars.iv728 = phi i64 [ 0, %bb.d ], [ 1, %bb.f ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %indvars.iv728.sroa.phi, i64 %indvars.iv728
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.bv

bb.f:                                             ; preds = %bb.bu
  br i1 %i.dn, label %.preheader561, label %bb.e, !llvm.loop !119

bb.g:                                             ; preds = %.preheader561, %bb.bu
  %i.dp = phi i1 [ true, %.preheader561 ], [ false, %bb.bu ]
  %indvars.iv = phi i64 [ 0, %.preheader561 ], [ 1, %bb.bu ] ; 2 uses
  %i.dq = icmp eq i64 %indvars.iv728, %indvars.iv
  br i1 %i.dq, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.dr = load float, ptr %i.do, align 4, !tbaa !37
  %i.ds = call noundef float @llvm.fabs.f32(float %i.dr) ; 3 uses
  %i.dt = fpext float %i.ds to double
  %i.du = fcmp olt double %i.dt, 1.000000e-05
  %i.dv = fadd float %i.ds, -1.000000e+00         ; 2 uses
  %i.dw = fadd float %i.ds, 1.000000e+00
  %i.dx = fmul float %i.dw, 5.000000e-01
  %i.dy = fdiv float %i.dv, %i.dx
  %.0.in.i = select i1 %i.du, float %i.dv, float %i.dy
  %.0.i = fcmp olt float %.0.in.i, f0x38D1B717    ; 2 uses
  %i.dz = zext i1 %.0.i to i8
  store i8 %i.dz, ptr %22, align 8, !tbaa !18
  store ptr null, ptr %i.u, align 8, !tbaa !21
  br i1 %.0.i, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ea = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %.noexc143 unwind label %.loopexit567

.noexc143:                                        ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %18, align 8, !tbaa !26
  %i.ed = load i64, ptr %i.v, align 8, !tbaa !51
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef %i.ec, i64 noundef %i.ed)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc143
  %i.ef = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.w
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.eh = load i64, ptr %i.w, align 8, !tbaa !32
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %.noexc143
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.w
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.k
  %i.em = load i64, ptr %i.w, align 8, !tbaa !32
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.eo = load ptr, ptr %23, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.233, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %.loopexit567 ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.er = load i8, ptr %i.j, align 8, !tbaa !46, !range !19, !noundef !20
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.341, i32 noundef 235, ptr noundef nonnull @.str.326, ptr noundef nonnull align 1 dereferenceable(4) @.str.342) #28
          to label %.noexc145 unwind label %.loopexit.split-lp568

.noexc145:                                        ; preds = %bb.l
  unreachable

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.et = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %.noexc153 unwind label %.loopexit567

.noexc153:                                        ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %17, align 8, !tbaa !26
  %i.ew = load i64, ptr %i.x, align 8, !tbaa !51
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.ev, i64 noundef %i.ew)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150 unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150: ; preds = %.noexc153
  %i.ey = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.y
  br i1 %i.ez, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150
  %i.fa = load i64, ptr %i.y, align 8, !tbaa !32
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152

bb.m:                                             ; preds = %.noexc153
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.y
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147: ; preds = %bb.m
  %i.ff = load i64, ptr %i.y, align 8, !tbaa !32
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.fh = load ptr, ptr %23, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.234, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158 unwind label %.loopexit567 ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152
  %i.fk = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %.noexc165 unwind label %.loopexit567

.noexc165:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %16, align 8, !tbaa !26
  %i.fn = load i64, ptr %i.z, align 8, !tbaa !51
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm, i64 noundef %i.fn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162: ; preds = %.noexc165
  %i.fp = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.aa
  br i1 %i.fq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162
  %i.fr = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164

bb.n:                                             ; preds = %.noexc165
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.aa
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159: ; preds = %bb.n
  %i.fw = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.fx = add i64 %i.fw, 1
end_hunk_0
begin_hunk_1_@_ZN16Math_TwoSum_Test8TestBodyEv:bb.a
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit37:          ; preds = %bb.ak, %.noexc.i.i33, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !157

bb.ap:                                            ; preds = %bb.aj, %bb.q
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.aj ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22Math_InnerProduct_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.d = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -9089707755183418291       ; 2 uses
  %i.h = lshr i64 %i.g, 33
  %i.i = xor i64 %i.h, %i.g
  %i.j = shl nuw nsw i64 %indvars.iv, 1
  %i.k = or disjoint i64 %i.j, 1                  ; 17 uses
  %i.l = add i64 %i.i, %i.k
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.k                       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, %i.k                       ; 2 uses
  %i.u = mul i64 %i.t, 6364136223846793005
  %i.v = add i64 %i.u, %i.k                       ; 2 uses
  %i.w = mul i64 %i.v, 6364136223846793005
  %i.x = add i64 %i.w, %i.k                       ; 2 uses
  %i.y = mul i64 %i.x, 6364136223846793005
  %i.z = add i64 %i.y, %i.k                       ; 2 uses
  %i.aa = mul i64 %i.z, 6364136223846793005
  %i.ab = add i64 %i.aa, %i.k                     ; 2 uses
  %i.ac = mul i64 %i.ab, 6364136223846793005
  %i.ad = add i64 %i.ac, %i.k                     ; 2 uses
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, %i.k                     ; 2 uses
  %i.ag = mul i64 %i.af, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.k                     ; 2 uses
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, %i.k                     ; 2 uses
  %i.ak = mul i64 %i.aj, 6364136223846793005
  %i.al = add i64 %i.ak, %i.k                     ; 2 uses
  %i.am = mul i64 %i.al, 6364136223846793005
  %i.an = add i64 %i.am, %i.k                     ; 2 uses
  %i.ao = mul i64 %i.an, 6364136223846793005
  %i.ap = add i64 %i.ao, %i.k                     ; 2 uses
  %i.aq = insertelement <8 x i64> poison, i64 %i.ap, i64 0
  %i.ar = insertelement <8 x i64> %i.aq, i64 %i.al, i64 1
  %i.as = insertelement <8 x i64> %i.ar, i64 %i.ah, i64 2
  %i.at = insertelement <8 x i64> %i.as, i64 %i.ad, i64 3
  %i.au = insertelement <8 x i64> %i.at, i64 %i.z, i64 4
  %i.av = insertelement <8 x i64> %i.au, i64 %i.v, i64 5
  %i.aw = insertelement <8 x i64> %i.av, i64 %i.r, i64 6
  %i.ax = insertelement <8 x i64> %i.aw, i64 %i.n, i64 7 ; 3 uses
  %i.ay = lshr <8 x i64> %i.ax, splat (i64 45)
  %i.az = lshr <8 x i64> %i.ax, splat (i64 27)
  %i.ba = xor <8 x i64> %i.ay, %i.az
  %i.bb = trunc <8 x i64> %i.ba to <8 x i32>      ; 2 uses
  %i.bc = lshr <8 x i64> %i.ax, splat (i64 59)
  %i.bd = trunc nuw nsw <8 x i64> %i.bc to <8 x i32>
  %i.be = call <8 x i32> @llvm.fshr.v8i32(<8 x i32> %i.bb, <8 x i32> %i.bb, <8 x i32> %i.bd)
  %i.bf = uitofp <8 x i32> %i.be to <8 x float>
  %i.bg = fmul nnan <8 x float> %i.bf, splat (float f0x2F800000) ; 2 uses
  %i.bh = fcmp olt <8 x float> %i.bg, splat (float f0x3F7FFFFF)
  %i.bi = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %i.bj = insertelement <4 x i64> %i.bi, i64 %i.ab, i64 1
  %i.bk = insertelement <4 x i64> %i.bj, i64 %i.t, i64 2
  %i.bl = insertelement <4 x i64> %i.bk, i64 %i.p, i64 3 ; 3 uses
  %i.bm = lshr <4 x i64> %i.bl, splat (i64 45)
  %i.bn = lshr <4 x i64> %i.bl, splat (i64 27)
  %i.bo = xor <4 x i64> %i.bm, %i.bn
  %i.bp = trunc <4 x i64> %i.bo to <4 x i32>      ; 2 uses
  %i.bq = lshr <4 x i64> %i.bl, splat (i64 59)
  %i.br = trunc nuw nsw <4 x i64> %i.bq to <4 x i32>
  %i.bs = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> %i.br)
  %i.bt = uitofp <4 x i32> %i.bs to <4 x float>
  %i.bu = fmul nnan <4 x float> %i.bt, splat (float f0x2F800000) ; 2 uses
  %i.bv = fcmp olt <4 x float> %i.bu, splat (float f0x3F7FFFFF)
  %i.bw = select <4 x i1> %i.bv, <4 x float> %i.bu, <4 x float> splat (float f0x3F7FFFFF)
  %i.bx = fcmp olt <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = mul i64 %i.ap, 6364136223846793005
  %i.bz = add i64 %i.by, %i.k
  %i.ca = select <8 x i1> %i.bh, <8 x float> %i.bg, <8 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.cb = fsub nnan <8 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = fmul nnan <8 x float> %i.cb, splat (float 1.000000e+01)
  %i.cd = fmul nnan <8 x float> %i.ca, splat (float 1.000000e+01)
  %i.ce = fsub <8 x float> %i.cd, %i.cc
  %i.cf = fpext <8 x float> %i.ce to <8 x double> ; 8 uses
  %i.cg = extractelement <8 x double> %i.cf, i64 7
  %i.ch = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cg) #25
  %i.ci = extractelement <8 x double> %i.cf, i64 6
  %i.cj = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ci) #25
  %i.ck = extractelement <8 x double> %i.cf, i64 5
  %i.cl = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ck) #25
  %i.cm = extractelement <8 x double> %i.cf, i64 4
  %i.cn = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cm) #25
  %i.co = insertelement <4 x double> poison, double %i.cl, i64 0
  %i.cp = insertelement <4 x double> %i.co, double %i.cn, i64 1
  %i.cq = insertelement <4 x double> %i.cp, double %i.cj, i64 2
  %i.cr = insertelement <4 x double> %i.cq, double %i.ch, i64 3
  %i.cs = fptrunc <4 x double> %i.cr to <4 x float> ; 2 uses
  %i.ct = fneg <4 x float> %i.cs
  %i.cu = select <4 x i1> %i.bx, <4 x float> %i.ct, <4 x float> %i.cs ; 3 uses
  %i.cv = extractelement <8 x double> %i.cf, i64 3
  %i.cw = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cv) #25
  %i.cx = extractelement <8 x double> %i.cf, i64 2
  %i.cy = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cx) #25
  %i.cz = extractelement <8 x double> %i.cf, i64 1
  %i.da = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cz) #25
  %i.db = extractelement <8 x double> %i.cf, i64 0
  %i.dc = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.db) #25
  %i.dd = insertelement <4 x double> poison, double %i.da, i64 0
  %i.de = insertelement <4 x double> %i.dd, double %i.dc, i64 1
  %i.df = insertelement <4 x double> %i.de, double %i.cy, i64 2
  %i.dg = insertelement <4 x double> %i.df, double %i.cw, i64 3
  %i.dh = fptrunc <4 x double> %i.dg to <4 x float> ; 2 uses
  %i.di = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %i.dj = insertelement <4 x i64> %i.di, i64 %i.bz, i64 1
  %i.dk = insertelement <4 x i64> %i.dj, i64 %i.aj, i64 2
  %i.dl = insertelement <4 x i64> %i.dk, i64 %i.af, i64 3 ; 3 uses
  %i.dm = lshr <4 x i64> %i.dl, splat (i64 45)
  %i.dn = lshr <4 x i64> %i.dl, splat (i64 27)
  %i.do = xor <4 x i64> %i.dm, %i.dn
  %i.dp = trunc <4 x i64> %i.do to <4 x i32>      ; 2 uses
  %i.dq = lshr <4 x i64> %i.dl, splat (i64 59)
  %i.dr = trunc nuw nsw <4 x i64> %i.dq to <4 x i32>
  %i.ds = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.dp, <4 x i32> %i.dp, <4 x i32> %i.dr)
  %i.dt = uitofp <4 x i32> %i.ds to <4 x float>
  %i.du = fmul nnan <4 x float> %i.dt, splat (float f0x2F800000) ; 2 uses
  %i.dv = fcmp olt <4 x float> %i.du, splat (float f0x3F7FFFFF)
  %i.dw = select <4 x i1> %i.dv, <4 x float> %i.du, <4 x float> splat (float f0x3F7FFFFF)
  %i.dx = fcmp olt <4 x float> %i.dw, splat (float 5.000000e-01)
  %i.dy = fneg <4 x float> %i.dh
  %i.dz = select <4 x i1> %i.dx, <4 x float> %i.dy, <4 x float> %i.dh ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ea = fmul <4 x float> %i.cu, %i.dz           ; 5 uses
  %i.eb = extractelement <4 x float> %i.ea, i64 0 ; 3 uses
  %i.ec = extractelement <4 x float> %i.ea, i64 1 ; 2 uses
  %i.ed = fneg <4 x float> %i.ea
  %i.ee = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.cu, <4 x float> %i.dz, <4 x float> %i.ed) ; 4 uses
  %i.ef = fadd float %i.eb, %i.ec                 ; 4 uses
  %i.eg = fsub float %i.ef, %i.eb                 ; 2 uses
  %i.eh = fsub float %i.ef, %i.eg
  %i.ei = fsub float %i.eb, %i.eh
  %i.ej = fsub float %i.ec, %i.eg
  %i.ek = fadd float %i.ej, %i.ei
  %i.el = extractelement <4 x float> %i.ee, i64 1
  %i.em = fadd float %i.el, %i.ek
  %i.en = extractelement <4 x float> %i.ee, i64 0
  %i.eo = fadd float %i.en, %i.em
  %i.ep = extractelement <4 x float> %i.ea, i64 2 ; 3 uses
  %i.eq = fadd float %i.ep, %i.ef                 ; 4 uses
  %i.er = fsub float %i.eq, %i.ep                 ; 2 uses
  %i.es = fsub float %i.eq, %i.er
  %i.et = fsub float %i.ep, %i.es
  %i.eu = fsub float %i.ef, %i.er
  %i.ev = fadd float %i.eu, %i.et
  %i.ew = fadd float %i.ev, %i.eo
  %i.ex = extractelement <4 x float> %i.ee, i64 2
  %i.ey = fadd float %i.ex, %i.ew
  %i.ez = extractelement <4 x float> %i.ea, i64 3 ; 3 uses
  %i.fa = fadd float %i.ez, %i.eq                 ; 3 uses
  %i.fb = fsub float %i.fa, %i.ez                 ; 2 uses
  %i.fc = fsub float %i.fa, %i.fb
  %i.fd = fsub float %i.ez, %i.fc
  %i.fe = fsub float %i.eq, %i.fb
  %i.ff = fadd float %i.fe, %i.fd
  %i.fg = fadd float %i.ff, %i.ey
  %i.fh = extractelement <4 x float> %i.ee, i64 3
  %i.fi = fadd float %i.fh, %i.fg
  %i.fj = fadd float %i.fa, %i.fi
  store float %i.fj, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fk = fpext <4 x float> %i.cu to <4 x double>
  %i.fl = fpext <4 x float> %i.dz to <4 x double>
  %i.fm = fmul <4 x double> %i.fk, %i.fl          ; 4 uses
  %shift = shufflevector <4 x double> %i.fm, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %shift, %i.fm
  %shift65 = shufflevector <4 x double> %foldExtExtBinop, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop66 = fadd <4 x double> %shift65, %i.fm
  %shift68 = shufflevector <4 x double> %i.fm, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop69 = fadd <4 x double> %foldExtExtBinop66, %shift68
  %i.fn = extractelement <4 x double> %foldExtExtBinop69, i64 0
  %i.fo = fptrunc double %i.fn to float
  store float %i.fo, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.307, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.fp = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.ft = phi ptr [ %i.fs, %bb.f ], [ @.str.324, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 971, ptr noundef %i.ft)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fu = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.fv, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.fw = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !31
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(128) %i.fw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.o ], [ %i.ge, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.gd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn.pn

bb.r:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i42 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i42, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i43 unwind label %bb.v

.noexc.i.i43:                                     ; preds = %bb.s
  br i1 %i.gh, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i43
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !21  ; 4 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !26 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %.noexc.i.i43, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !158
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29PermutationElement_Valid_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i32 2, ptr %i.a, align 4, !tbaa !34
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %bb.a
  %i.h = phi i32 [ 2, %bb.a ], [ %.be, %.preheader.backedge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.be, %.preheader.backedge ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit99, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.preheader
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = add nsw i64 %i.i, 63                     ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 2305843009213693944
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29 ; 5 uses
  %i.n = lshr i64 %i.j, 6                         ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.n, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %.idx.i, i1 false)
  %.pre242 = load i32, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !34
  %.not192 = icmp sgt i32 %.pre242, 0
  br i1 %.not192, label %.lr.ph, label %.loopexit295

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.o = and i32 %i.h, 63
  %i.p = zext nneg i32 %i.o to i64
end_hunk_1
