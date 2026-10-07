Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExporter?download=true
inline.NumInlined: 9027
inline.NumDeleted: 2242
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp3FBX4Node13AddPropertiesIRlJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_KcEEEvOT_DpOT0_:bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRlEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre.i4 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i: ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %.pre.i4, %bb.e ] ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false)
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.b, align 8
  br label %_ZN6Assimp3FBX4Node13AddPropertiesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.m, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %_ZN6Assimp3FBX4Node13AddPropertiesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit

_ZN6Assimp3FBX4Node13AddPropertiesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = load float, ptr %i.g, align 4            ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load <2 x float>, ptr %i.n, align 4      ; 2 uses
  %i.u = load float, ptr %i.s, align 4            ; 2 uses
  %i.v = load <2 x float>, ptr %0, align 4        ; 4 uses
  %i.w = load <2 x float>, ptr %i.c, align 4      ; 4 uses
  %i.x = fmul <2 x float> %i.w, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.v, <2 x float> %i.x)
  %i.z = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = insertelement <2 x float> %i.z, float %i.k, i64 0 ; 2 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aa, <2 x float> %i.y)
  %i.ac = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ab) ; 3 uses
  store <2 x float> %i.ac, ptr %1, align 4
  %i.ad = fmul float %i.r, %i.r
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.ae)
  %sqrt.i49 = tail call noundef float @llvm.sqrt.f32(float %i.af) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %sqrt.i49, ptr %i.ag, align 4
  %i.ah = load float, ptr %0, align 4             ; 3 uses
  %i.ai = load float, ptr %i.m, align 4           ; 3 uses
  %i.aj = fmul float %i.ah, %i.ai                 ; 2 uses
  %i.ak = load float, ptr %i.s, align 4           ; 4 uses
  %i.al = fmul float %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load float, ptr %i.am, align 4          ; 6 uses
  %i.ao = load float, ptr %i.h, align 4           ; 5 uses
  %i.ap = fmul float %i.aj, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load float, ptr %i.aq, align 4          ; 6 uses
  %i.as = fneg float %i.ar
  %i.at = fmul float %i.ap, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.al, float %i.an, float %i.at)
  %i.av = load float, ptr %i.q, align 4           ; 3 uses
  %i.aw = fmul float %i.ah, %i.av                 ; 2 uses
  %i.ax = fmul float %i.ao, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = load float, ptr %i.ay, align 4          ; 6 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.az, float %i.au)
  %i.bb = load float, ptr %i.n, align 4           ; 4 uses
  %i.bc = fneg float %i.bb                        ; 3 uses
  %i.bd = fmul float %i.aw, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.an, float %i.ba)
  %i.bf = load float, ptr %i.d, align 4           ; 3 uses
  %i.bg = fmul float %i.ah, %i.bf                 ; 2 uses
  %i.bh = fmul float %i.bb, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ar, float %i.be)
  %i.bj = fneg float %i.ak                        ; 3 uses
  %i.bk = fmul float %i.bg, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.az, float %i.bi)
  %i.bm = load float, ptr %i.l, align 4           ; 3 uses
  %i.bn = fmul float %i.av, %i.bm                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load float, ptr %i.bo, align 4          ; 6 uses
  %i.bq = fneg float %i.ao                        ; 2 uses
  %i.br = fmul float %i.bn, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bp, float %i.bl)
  %i.bt = load float, ptr %i.g, align 4           ; 4 uses
  %i.bu = fmul float %i.bn, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.an, float %i.bs)
  %i.bw = fmul float %i.bf, %i.bm                 ; 2 uses
  %i.bx = fneg float %i.bt                        ; 3 uses
  %i.by = fmul float %i.bw, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.ar, float %i.bv)
  %i.ca = fmul float %i.ak, %i.bw
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bp, float %i.bz)
  %i.cc = load float, ptr %i.c, align 4           ; 3 uses
  %i.cd = fmul float %i.bm, %i.cc                 ; 2 uses
  %i.ce = fmul float %i.cd, %i.bj
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.an, float %i.cb)
  %i.cg = fmul float %i.ao, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ar, float %i.cf)
  %i.ci = load float, ptr %i.o, align 4           ; 3 uses
  %i.cj = fmul float %i.bf, %i.ci                 ; 2 uses
  %i.ck = fmul float %i.bt, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.az, float %i.ch)
  %i.cm = fmul float %i.cj, %i.bc
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bp, float %i.cl)
  %i.co = fmul float %i.cc, %i.ci                 ; 2 uses
  %i.cp = fmul float %i.bb, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.an, float %i.cn)
  %i.cr = fmul float %i.co, %i.bq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.az, float %i.cq)
  %i.ct = fmul float %i.ai, %i.ci                 ; 2 uses
  %i.cu = fmul float %i.ao, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.bp, float %i.cs)
  %i.cw = fmul float %i.ct, %i.bx
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.an, float %i.cv)
  %i.cy = load float, ptr %i.a, align 4           ; 3 uses
  %i.cz = fmul float %i.cc, %i.cy                 ; 2 uses
  %i.da = fmul float %i.cz, %i.bc
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.ar, float %i.cx)
  %i.dc = fmul float %i.ak, %i.cz
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.az, float %i.db)
  %i.de = fmul float %i.ai, %i.cy                 ; 2 uses
  %i.df = fmul float %i.de, %i.bj
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.bp, float %i.dd)
  %i.dh = fmul float %i.bt, %i.de
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ar, float %i.dg)
  %i.dj = fmul float %i.av, %i.cy                 ; 2 uses
  %i.dk = fmul float %i.dj, %i.bx
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.az, float %i.di)
  %i.dm = fmul float %i.bb, %i.dj
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.bp, float %i.dl)
  %i.do = fcmp olt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dp = insertelement <2 x float> %i.ac, float %.pre, i64 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dq = fneg <2 x float> %i.ac                  ; 2 uses
  %i.dr = fneg float %sqrt.i49                    ; 2 uses
  store <2 x float> %i.dq, ptr %1, align 4
  store float %i.dr, ptr %i.ag, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ds = phi float [ %sqrt.i49, %._crit_edge ], [ %i.dr, %bb.b ] ; 2 uses
  %i.dt = phi <2 x float> [ %i.dp, %._crit_edge ], [ %i.dq, %bb.b ] ; 2 uses
  %i.du = fcmp une <2 x float> %i.dt, zeroinitializer ; 3 uses
  %i.dv = fdiv <2 x float> splat (float 1.000000e+00), %i.dt ; 3 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  %i.dx = fmul float %i.k, %i.dw
  %i.dy = extractelement <2 x i1> %i.du, i64 0
  %.sroa.12.0 = select i1 %i.dy, float %i.dx, float %i.k
  %4 = fneg float %.sroa.12.0
  %5 = tail call noundef float @asinf(float noundef %4) #31 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %5, ptr %i.dz, align 4
  %i.ea = tail call noundef float @cosf(float noundef %5) #31 ; 2 uses
  %i.eb = tail call noundef float @llvm.fabs.f32(float %i.ea)
  %i.ec = fcmp ogt float %i.eb, f0x34000000
  br i1 %i.ec, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ed = fcmp une float %i.ds, 0.000000e+00
  %i.ee = fdiv float 1.000000e+00, %i.ds
  %i.ef = shufflevector <2 x float> %i.t, <2 x float> %i.v, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.eg = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.ei = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float %i.ee, i64 2
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.el = fmul <4 x float> %i.eh, %i.ek
  %i.em = shufflevector <2 x i1> %i.du, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.en = insertelement <4 x i1> %i.em, i1 %i.ed, i64 2
  %i.eo = shufflevector <4 x i1> %i.en, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ep = select <4 x i1> %i.eo, <4 x float> %i.el, <4 x float> %i.eh
  %i.eq = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fdiv <4 x float> %i.ep, %i.er           ; 4 uses
  %i.et = extractelement <4 x float> %i.es, i64 0
  %i.eu = extractelement <4 x float> %i.es, i64 2
  %i.ev = tail call noundef float @atan2f(float noundef %i.et, float noundef %i.eu) #31
  store float %i.ev, ptr %2, align 4
  %i.ew = extractelement <4 x float> %i.es, i64 1
  %i.ex = extractelement <4 x float> %i.es, i64 3
  %i.ey = tail call noundef float @atan2f(float noundef %i.ew, float noundef %i.ex) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ez = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fa = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = shufflevector <2 x i1> %i.du, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = select <2 x i1> %i.fc, <2 x float> %i.fb, <2 x float> %i.ez ; 2 uses
  store float 0.000000e+00, ptr %2, align 4
  %i.fe = extractelement <2 x float> %i.fd, i64 0
  %i.ff = fneg float %i.fe
  %i.fg = extractelement <2 x float> %i.fd, i64 1
  %i.fh = tail call noundef float @atan2f(float noundef %i.ff, float noundef %i.fg) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.ey, %bb.d ], [ %i.fh, %bb.e ]
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink, ptr %i.fi, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter23WriteAnimationCurveNodeERNS_12StreamWriterILb0ELb0EEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfESB_ll(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, <2 x float> %4, float %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  %i.e = alloca i64, align 8                      ; 2 uses
  %9 = alloca %"class.Assimp::FBX::Node", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.Assimp::FBX::Node", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i64 %2, ptr %i.c, align 8
  store i64 %7, ptr %i.d, align 8
  store i64 %8, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.f, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 18, ptr %i.b, align 8
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %10, align 8
  %i.h = load i64, ptr %i.b, align 8              ; 3 uses
  store i64 %i.h, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.g, ptr noundef nonnull align 1 dereferenceable(18) @.str.255, i64 18, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %10, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.l, ptr %9, align 8
  %i.m = load ptr, ptr %10, align 8               ; 2 uses
  %i.n = load i64, ptr %i.i, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.n, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.s   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i.i
  store ptr %i.p, ptr %9, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.l, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc34, %.noexc
  %i.r = phi ptr [ %i.p, %.noexc34 ], [ %i.l, %.noexc ] ; 2 uses
  switch i64 %i.n, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.m, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.x, i8 0, i64 49, i1 false)
  %i.y = load ptr, ptr %10, align 8               ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.f, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ac = load ptr, ptr %3, align 8, !noalias !382
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !382 ; 3 uses
  %i.af = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !382
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !382 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ah, ptr %12, align 8, !alias.scope !383
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !alias.scope !383
  store i8 0, ptr %i.ah, align 8, !alias.scope !383
  %i.aj = add i64 %i.ag, %i.ae
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.aj)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !alias.scope !383
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ae
  br i1 %i.am, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ao = load i64, ptr %i.ai, align 8, !alias.scope !383
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.ag
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %12, align 8, !alias.scope !383 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %.body, label %.body.sink.split

end_hunk_0
