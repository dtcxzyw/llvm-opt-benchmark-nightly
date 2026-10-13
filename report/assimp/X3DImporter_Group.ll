Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Group?download=true
inline.NumInlined: 283
inline.NumDeleted: 129
begin_hunk_0_@_ZN6Assimp11X3DImporter18startReadTransformERN4pugi8xml_nodeE:bb.a

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  br i1 %i.ap, label %bb.p, label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %9, align 8               ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not32 = icmp eq i64 %i.av, 16
  br i1 %.not32, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.9)
          to label %.invoke unwind label %bb.r

.invoke:                                          ; preds = %bb.k, %bb.q
  %i.ax = phi ptr [ %i.aw, %bb.q ], [ %i.ag, %bb.k ]
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aw) #19
  br label %bb.ai

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45:      ; preds = %bb.p
  %i.az = load <3 x float>, ptr %i.as, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.11.0.copyload11 = load float, ptr %.sroa.11.0..sroa_idx, align 4
  store ptr %i.as, ptr %i.aq, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

_ZNSt6vectorIfSaIfEE5clearEv.exit46:              ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, %bb.o
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.o ], [ %.sroa.11.0.copyload11, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 3 uses
  %i.ba = phi <3 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.az, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 10 uses
  %i.bb = load i64, ptr %i.h, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, null                 ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bh = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef null)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  br i1 %i.bf, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bi = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.u

bb.y:                                             ; preds = %bb.x
  br i1 %i.bi, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.ag unwind label %bb.u

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.m

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i64, ptr %i.j, align 8
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ad unwind label %bb.m

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bo = load float, ptr %6, align 8
  %i.bp = load <2 x float>, ptr %i.e, align 4     ; 2 uses
  %i.bq = load float, ptr %i.f, align 8
  %i.br = load <2 x float>, ptr %4, align 8       ; 4 uses
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 1, i32 1>
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> <float 1.000000e+00, float poison, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.bt, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> zeroinitializer, <4 x float> %i.bu) ; 6 uses
  %i.bw = call noundef float @cosf(float noundef %.sroa.8.0) #19 ; 4 uses
  %i.bx = call noundef float @sinf(float noundef %.sroa.8.0) #19 ; 2 uses
  %i.by = fsub float 1.000000e+00, %i.bw          ; 2 uses
  %i.bz = extractelement <4 x float> %i.ao, i64 3
  %i.ca = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.an, %i.cb           ; 3 uses
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ce = extractelement <2 x float> %i.cc, i64 0
  %i.cf = extractelement <2 x float> %i.an, i64 0
  %i.cg = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.an, %i.ch           ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.ck = fneg <2 x float> %i.ci
  %i.cl = fmul float %i.bz, %i.by
  %i.cm = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float %i.cl, i64 3
  %i.co = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cp = insertelement <4 x float> %i.cj, float %i.bw, i64 3
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.co, <4 x float> %i.cr) ; 7 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 1 ; 2 uses
  %i.cu = extractelement <4 x float> %i.cs, i64 0 ; 3 uses
  %i.cv = extractelement <4 x float> %i.cs, i64 3 ; 3 uses
  %i.cw = extractelement <4 x float> %i.bv, i64 0 ; 2 uses
  %i.cx = extractelement <3 x float> %i.ba, i64 2 ; 3 uses
  %i.cy = extractelement <3 x float> %i.ba, i64 1
  %i.cz = fmul float %i.cu, 0.000000e+00
  %i.da = call noundef float @cosf(float noundef %.sroa.11.0) #19 ; 4 uses
  %i.db = call noundef float @sinf(float noundef %.sroa.11.0) #19 ; 2 uses
  %i.dc = fsub float 1.000000e+00, %i.da          ; 2 uses
  %i.dd = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.de = shufflevector <4 x float> %i.cs, <4 x float> %i.dd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.df = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dg = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> zeroinitializer
  %i.di = fmul <4 x float> %i.dg, %i.dh           ; 3 uses
  %i.dj = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.dk = shufflevector <3 x float> %i.ba, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.dk, %i.dm           ; 3 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dp = fneg <2 x float> %i.dn
  %i.dq = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = extractelement <4 x float> %i.di, i64 1
  %i.dt = extractelement <2 x float> %i.dn, i64 1
  %i.du = fmul float %i.cx, %i.dc
  %i.dv = load float, ptr %5, align 8             ; 4 uses
  %i.dw = load float, ptr %i.c, align 4           ; 3 uses
  %i.dx = load float, ptr %i.d, align 8           ; 4 uses
  %i.dy = fneg float %.sroa.11.0                  ; 2 uses
  %i.dz = call noundef float @cosf(float noundef %i.dy) #19 ; 4 uses
  %i.ea = call noundef float @sinf(float noundef %i.dy) #19 ; 2 uses
  %i.eb = fsub float 1.000000e+00, %i.dz
  %i.ec = fmul float %i.cy, %i.ea                 ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ao, <4 x float> %i.dd, <4 x i32> <i32 3, i32 6, i32 6, i32 4>
  %i.ee = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.db, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.ea, i64 2
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ei = fmul <4 x float> %i.ed, %i.eh           ; 5 uses
  %i.ej = fneg <4 x float> %i.ei                  ; 4 uses
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> %i.ei, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.el = insertelement <4 x float> %i.ek, float %i.bw, i64 2
  %i.em = shufflevector <4 x float> %i.el, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.en = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.ao, <4 x float> %i.em) ; 5 uses
  %i.eo = extractelement <4 x float> %i.en, i64 1 ; 2 uses
  %i.ep = extractelement <4 x float> %i.en, i64 3 ; 4 uses
  %i.eq = call float @llvm.fmuladd.f32(float %i.ep, float 0.000000e+00, float %i.cz)
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.da, i64 1
  %i.et = shufflevector <4 x float> %i.es, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.de, <4 x float> %i.eu) ; 6 uses
  %i.ew = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ex = insertelement <4 x float> %i.ew, float %i.da, i64 1
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dq, <4 x float> %i.ey) ; 7 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = extractelement <4 x float> %i.ev, i64 1 ; 2 uses
  %i.fc = extractelement <4 x float> %i.ez, i64 2 ; 2 uses
  %i.fd = extractelement <4 x float> %i.ev, i64 2 ; 2 uses
  %i.fe = extractelement <4 x float> %i.ez, i64 3 ; 3 uses
  %i.ff = extractelement <4 x float> %i.ev, i64 3 ; 4 uses
  %i.fg = fneg float %i.ec
  %i.fh = load float, ptr %i.b, align 8           ; 4 uses
  %i.fi = load float, ptr %i.a, align 4           ; 2 uses
  %i.fj = fmul float %i.fi, 0.000000e+00          ; 2 uses
  %i.fk = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  %i.fl = fadd float %i.fk, %i.fj
  %i.fm = call float @llvm.fmuladd.f32(float %i.fk, float 0.000000e+00, float %i.fj) ; 2 uses
  %i.fn = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fo = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.dx, i64 0
  %i.fq = fmul float %i.cw, %i.eo
  %foldExtExtBinop = fmul <4 x float> %i.bv, %i.cs
  %i.fr = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.fs = extractelement <4 x float> %i.bv, i64 2 ; 4 uses
  %i.ft = extractelement <4 x float> %i.bv, i64 3 ; 2 uses
  %i.fu = fmul float %i.fs, %i.cu
  %i.fv = fmul float %i.fs, 0.000000e+00
  %i.fw = call float @llvm.fmuladd.f32(float %i.fs, float 0.000000e+00, float %i.fv)
  %i.fx = call float @llvm.fmuladd.f32(float %i.ft, float 0.000000e+00, float %i.fw)
  %10 = fadd float %i.fh, %i.fm
  %i.fy = fmul float %i.cw, 0.000000e+00
  %i.fz = call float @llvm.fmuladd.f32(float %i.ds, float %i.cx, float %i.dt) ; 3 uses
  %i.ga = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gb = insertelement <2 x float> %i.ga, float %i.bo, i64 0 ; 3 uses
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 2 uses
  %i.ge = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.gh = insertelement <2 x float> %i.gg, float %i.fl, i64 0
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> zeroinitializer, <2 x float> %i.gh)
  %i.gj = fadd <2 x float> %i.gb, %i.gi           ; 3 uses
  %i.gk = extractelement <2 x float> %i.gc, i64 0 ; 6 uses
  %i.gl = fmul float %i.gk, %i.eo
  %i.gm = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gc, <2 x float> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.go = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.gp = fmul <2 x float> %i.gn, %i.go
  %i.gq = fmul float %i.gk, %i.cu
  %i.gr = extractelement <2 x float> %i.gd, i64 0 ; 3 uses
  %i.gs = call float @llvm.fmuladd.f32(float %i.ep, float %i.gr, float %i.gq)
  %i.gt = call float @llvm.fmuladd.f32(float %i.cv, float %i.gk, float %i.gs)
  %i.gu = extractelement <2 x float> %i.gj, i64 0 ; 3 uses
  %i.gv = call float @llvm.fmuladd.f32(float %i.gu, float 0.000000e+00, float %i.gt) ; 4 uses
  %i.gw = fmul float %i.gk, 0.000000e+00
  %i.gx = call float @llvm.fmuladd.f32(float %i.gr, float 0.000000e+00, float %i.gw)
  %i.gy = call float @llvm.fmuladd.f32(float %i.gk, float 0.000000e+00, float %i.gx)
  %i.gz = fadd float %i.gy, %i.gu                 ; 4 uses
  %i.ha = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gd, <2 x float> %i.gp)
  %i.hc = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.hd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.gc, <2 x float> %i.hb)
  %i.he = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> zeroinitializer, <2 x float> %i.hd) ; 3 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.hg = extractelement <2 x float> %i.gc, i64 1 ; 6 uses
  %i.hh = call float @llvm.fmuladd.f32(float %i.ep, float %i.hg, float %i.fr)
  %i.hi = call float @llvm.fmuladd.f32(float %i.cv, float %i.hg, float %i.hh)
  %i.hj = extractelement <2 x float> %i.gj, i64 1 ; 3 uses
  %i.hk = call float @llvm.fmuladd.f32(float %i.hj, float 0.000000e+00, float %i.hi) ; 4 uses
  %i.hl = call float @llvm.fmuladd.f32(float %i.hg, float 0.000000e+00, float %i.fy)
  %i.hm = call float @llvm.fmuladd.f32(float %i.hg, float 0.000000e+00, float %i.hl)
  %i.hn = fadd float %i.hm, %i.hj                 ; 4 uses
  %i.ho = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %i.hp = fmul float %i.ho, 0.000000e+00
  %i.hq = extractelement <2 x float> %i.he, i64 1 ; 2 uses
  %i.hr = fmul float %i.hq, 0.000000e+00
  %i.hs = insertelement <4 x float> %i.fn, float %i.gv, i64 1
  %i.ht = insertelement <4 x float> %i.hs, float %i.hk, i64 3
  %i.hu = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.gz, i64 1
  %i.hv = insertelement <4 x float> %i.hu, float %i.hn, i64 3
  %i.hw = fmul float %i.fa, %i.ho
  %i.hx = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hy = fmul <4 x float> %i.hx, %i.hf           ; 4 uses
  %i.hz = fmul float %i.fe, %i.hq
  %i.ia = fneg float %i.fi
  %i.ib = fneg float %i.fh
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.id = load ptr, ptr %i.ic, align 8            ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 76
  %i.if = insertelement <3 x float> poison, float %i.eb, i64 0
  %i.ig = shufflevector <3 x float> %i.if, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ih = fmul <3 x float> %i.ba, %i.ig           ; 3 uses
  %i.ii = shufflevector <3 x float> %i.ih, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ij = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> %i.ej, <3 x i32> <i32 0, i32 6, i32 poison>
  %i.il = insertelement <3 x float> %i.ik, float %i.ec, i64 2
  %i.im = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ii, <3 x float> %i.ba, <3 x float> %i.il) ; 4 uses
  %i.in = shufflevector <3 x float> %i.ih, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.io = shufflevector <3 x float> %i.ba, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 2>
  %i.ip = shufflevector <4 x float> %i.ej, <4 x float> %i.ei, <3 x i32> <i32 6, i32 poison, i32 3>
  %i.iq = insertelement <3 x float> %i.ip, float %i.dz, i64 1
  %i.ir = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.in, <3 x float> %i.io, <3 x float> %i.iq) ; 4 uses
  %i.is = shufflevector <3 x float> %i.ba, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.it = shufflevector <4 x float> %i.ei, <4 x float> poison, <3 x i32> <i32 poison, i32 3, i32 poison>
  %i.iu = insertelement <3 x float> %i.it, float %i.fg, i64 0
  %i.iv = insertelement <3 x float> %i.iu, float %i.dz, i64 2
  %i.iw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ih, <3 x float> %i.is, <3 x float> %i.iv) ; 4 uses
  %i.ix = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ia, i64 1 ; 4 uses
  %i.iy = fneg <2 x float> %i.br
  %i.iz = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.iy, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ja = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.ib, i64 3 ; 4 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 92
  %i.jb = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jc = insertelement <2 x float> %i.gg, float 0.000000e+00, i64 1 ; 4 uses
  %i.jd = fmul <2 x float> %i.jb, %i.jc
  %i.je = fmul <2 x float> %i.go, %i.jc
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.jc, <2 x float> %i.je)
  %i.jg = call float @llvm.fmuladd.f32(float %i.ep, float %i.fs, float %i.fu)
  %i.jh = call float @llvm.fmuladd.f32(float %i.cv, float %i.ft, float %i.jg)
  %i.ji = fadd float %i.bq, %10                   ; 2 uses
  %i.jj = call float @llvm.fmuladd.f32(float %i.ce, float %i.cf, float %i.bw) ; 3 uses
  %i.jk = call float @llvm.fmuladd.f32(float %i.jj, float %i.gr, float %i.gl)
  %i.jl = call float @llvm.fmuladd.f32(float %i.ct, float %i.gk, float %i.jk)
  %i.jm = call float @llvm.fmuladd.f32(float %i.gu, float 0.000000e+00, float %i.jl) ; 4 uses
  %i.jn = call float @llvm.fmuladd.f32(float %i.jj, float %i.hg, float %i.fq)
  %i.jo = call float @llvm.fmuladd.f32(float %i.ct, float %i.hg, float %i.jn)
  %i.jp = call float @llvm.fmuladd.f32(float %i.hj, float 0.000000e+00, float %i.jo) ; 4 uses
  %i.jq = insertelement <2 x float> %i.gm, float 0.000000e+00, i64 1 ; 2 uses
  %i.jr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.jq, <2 x float> %i.jf)
  %i.js = fadd float %i.fx, %i.ji                 ; 2 uses
  %i.jt = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.jc, <2 x float> %i.jd)
  %i.jw = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jq, <2 x float> %i.jv)
  %i.jy = call float @llvm.fmuladd.f32(float %i.jm, float 0.000000e+00, float %i.hp)
  %i.jz = call float @llvm.fmuladd.f32(float %i.jp, float 0.000000e+00, float %i.hr)
  %i.ka = insertelement <4 x float> %i.fo, float %i.jy, i64 1
  %i.kb = insertelement <4 x float> %i.ka, float %i.jz, i64 3
  %i.kc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.kb)
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ke = fadd <4 x float> %i.hv, %i.kd           ; 4 uses
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.kg = insertelement <2 x float> %i.kf, float %i.ji, i64 0 ; 3 uses
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> zeroinitializer, <2 x float> %i.jx) ; 5 uses
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> zeroinitializer, <2 x float> %i.jr) ; 5 uses
  %i.kj = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kk = insertelement <2 x float> %i.kj, float %i.jh, i64 0
  %i.kl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> zeroinitializer, <2 x float> %i.kk) ; 5 uses
  %i.km = call float @llvm.fmuladd.f32(float %i.du, float %i.cx, float %i.da) ; 4 uses
  %i.kn = call float @llvm.fmuladd.f32(float %i.fb, float %i.jm, float %i.hw)
  %i.ko = call float @llvm.fmuladd.f32(float %i.fc, float %i.gv, float %i.kn)
  %i.kp = call float @llvm.fmuladd.f32(float %i.gz, float 0.000000e+00, float %i.ko) ; 3 uses
  %i.kq = extractelement <4 x float> %i.hy, i64 1
  %i.kr = call float @llvm.fmuladd.f32(float %i.fd, float %i.jm, float %i.kq)
  %i.ks = call float @llvm.fmuladd.f32(float %i.fz, float %i.gv, float %i.kr)
  %i.kt = call float @llvm.fmuladd.f32(float %i.gz, float 0.000000e+00, float %i.ks) ; 2 uses
  %i.ku = extractelement <4 x float> %i.hy, i64 3
  %i.kv = call float @llvm.fmuladd.f32(float %i.ff, float %i.jm, float %i.ku)
  %i.kw = call float @llvm.fmuladd.f32(float %i.km, float %i.gv, float %i.kv)
  %i.kx = call float @llvm.fmuladd.f32(float %i.gz, float 0.000000e+00, float %i.kw) ; 4 uses
  %i.ky = extractelement <4 x float> %i.hy, i64 0
  %i.kz = call float @llvm.fmuladd.f32(float %i.fb, float %i.jp, float %i.ky)
  %i.la = call float @llvm.fmuladd.f32(float %i.fc, float %i.hk, float %i.kz)
  %i.lb = call float @llvm.fmuladd.f32(float %i.hn, float 0.000000e+00, float %i.la) ; 3 uses
  %i.lc = extractelement <4 x float> %i.hy, i64 2
  %i.ld = call float @llvm.fmuladd.f32(float %i.fd, float %i.jp, float %i.lc)
  %i.le = call float @llvm.fmuladd.f32(float %i.fz, float %i.hk, float %i.ld)
  %i.lf = call float @llvm.fmuladd.f32(float %i.hn, float 0.000000e+00, float %i.le) ; 2 uses
  %i.lg = call float @llvm.fmuladd.f32(float %i.ff, float %i.jp, float %i.hz)
  %i.lh = call float @llvm.fmuladd.f32(float %i.km, float %i.hk, float %i.lg)
  %i.li = call float @llvm.fmuladd.f32(float %i.hn, float 0.000000e+00, float %i.lh) ; 4 uses
  %i.lj = extractelement <2 x float> %i.ki, i64 0
  %i.lk = fmul float %i.fe, %i.lj
  %i.ll = extractelement <2 x float> %i.kh, i64 0
  %i.lm = call float @llvm.fmuladd.f32(float %i.ff, float %i.ll, float %i.lk)
  %i.ln = extractelement <2 x float> %i.kl, i64 0
  %i.lo = call float @llvm.fmuladd.f32(float %i.km, float %i.ln, float %i.lm)
  %i.lp = call float @llvm.fmuladd.f32(float %i.js, float 0.000000e+00, float %i.lo) ; 4 uses
  %i.lq = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.lq, %i.ki
  %i.ls = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.kh, <2 x float> %i.lr)
  %i.lu = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.lv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.kl, <2 x float> %i.lt)
  %i.lw = insertelement <2 x float> %i.kf, float %i.js, i64 0 ; 3 uses
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> zeroinitializer, <2 x float> %i.lv) ; 4 uses
  %i.ly = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lz = fmul <2 x float> %i.ly, %i.ki
  %i.ma = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.kh, <2 x float> %i.lz)
  %i.mc = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.kl, <2 x float> %i.mb)
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> zeroinitializer, <2 x float> %i.me) ; 2 uses
  %i.mg = extractelement <2 x float> %i.ki, i64 1
  %i.mh = fmul float %i.fe, %i.mg
  %i.mi = extractelement <2 x float> %i.kh, i64 1
  %i.mj = call float @llvm.fmuladd.f32(float %i.ff, float %i.mi, float %i.mh)
  %i.mk = fmul <2 x float> %i.ki, zeroinitializer
  %i.ml = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> zeroinitializer, <2 x float> %i.mk)
  %i.mm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> zeroinitializer, <2 x float> %i.ml)
  %i.mn = fadd <2 x float> %i.lw, %i.mm           ; 5 uses
  %i.mo = fmul float %i.kt, 0.000000e+00          ; 2 uses
  %i.mp = call float @llvm.fmuladd.f32(float %i.dv, float %i.kp, float %i.mo)
  %i.mq = fmul float %i.dw, %i.kt
  %i.mr = call float @llvm.fmuladd.f32(float %i.kp, float 0.000000e+00, float %i.mq)
  %i.ms = call float @llvm.fmuladd.f32(float %i.kx, float 0.000000e+00, float %i.mr)
  %i.mt = extractelement <4 x float> %i.ke, i64 1 ; 3 uses
  %i.mu = call float @llvm.fmuladd.f32(float %i.mt, float 0.000000e+00, float %i.ms) ; 2 uses
  %i.mv = call float @llvm.fmuladd.f32(float %i.kp, float 0.000000e+00, float %i.mo) ; 2 uses
  %i.mw = call float @llvm.fmuladd.f32(float %i.dx, float %i.kx, float %i.mv)
  %i.mx = call float @llvm.fmuladd.f32(float %i.mt, float 0.000000e+00, float %i.mw) ; 2 uses
  %i.my = call float @llvm.fmuladd.f32(float %i.kx, float 0.000000e+00, float %i.mv)
  %i.mz = fadd float %i.mt, %i.my                 ; 2 uses
  %i.na = fmul float %i.lf, 0.000000e+00          ; 2 uses
  %i.nb = call float @llvm.fmuladd.f32(float %i.dv, float %i.lb, float %i.na)
  %i.nc = insertelement <4 x float> poison, float %i.km, i64 0
  %i.nd = insertelement <4 x float> %i.nc, float %i.kx, i64 1
  %i.ne = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nf = shufflevector <4 x float> %i.nd, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %i.ng = insertelement <4 x float> %i.nf, float %i.li, i64 3
  %i.nh = shufflevector <4 x float> %i.nf, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 0, i32 7>
  %i.ni = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.nj = insertelement <4 x float> %i.ni, float %i.mp, i64 1
  %i.nk = insertelement <4 x float> %i.nj, float %i.nb, i64 3
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.nm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ng, <4 x float> %i.nh, <4 x float> %i.nl)
  %i.nn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> zeroinitializer, <4 x float> %i.nm) ; 4 uses
  %i.no = fmul float %i.dw, %i.lf
end_hunk_0
