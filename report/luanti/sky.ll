Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getTransformedBoundingBoxEv(ptr dead_on_unwind noalias writable sret(%"class.core::aabbox3d") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(218) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !226
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load <6 x float>, ptr %0, align 4, !tbaa !37 ; 12 uses
  %i.k = load <3 x float>, ptr %i.g, align 8, !tbaa !37 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.m = load <3 x float>, ptr %i.e, align 8, !tbaa !37
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.o = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> zeroinitializer
  %i.p = fmul nsz <4 x float> %i.o, %i.n          ; 2 uses
  %i.q = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.r = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.s = fmul nsz <4 x float> %i.r, %i.n          ; 2 uses
  %i.t = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 3>
  %i.u = fcmp nsz olt <4 x float> %i.p, %i.s      ; 2 uses
  %i.v = load <3 x float>, ptr %i.h, align 8, !tbaa !37
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.x = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.y = fmul nsz <4 x float> %i.x, %i.w          ; 2 uses
  %i.z = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 4, i32 1>
  %i.aa = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ab = fmul nsz <4 x float> %i.aa, %i.w        ; 2 uses
  %i.ac = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 1, i32 4>
  %i.ad = fcmp nsz olt <4 x float> %i.y, %i.ab    ; 2 uses
  %i.ae = load <3 x float>, ptr %i.i, align 8, !tbaa !37
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.ag = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ah = fmul nsz <4 x float> %i.ag, %i.af       ; 2 uses
  %i.ai = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 5, i32 2>
  %i.aj = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ak = fmul nsz <4 x float> %i.aj, %i.af       ; 2 uses
  %i.al = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 2, i32 5>
  %i.am = fcmp nsz olt <4 x float> %i.ah, %i.ak   ; 2 uses
  %.v = select <4 x i1> %i.u, <4 x float> %i.q, <4 x float> %i.t
  %i.an = fmul nsz <4 x float> %.v, %i.n
  %.v1 = select <4 x i1> %i.ad, <4 x float> %i.z, <4 x float> %i.ac
  %i.ao = fmul nsz <4 x float> %.v1, %i.w
  %.v2 = select <4 x i1> %i.am, <4 x float> %i.ai, <4 x float> %i.al
  %i.ap = fmul nsz <4 x float> %.v2, %i.af
  %i.aq = fadd nsz <4 x float> %i.l, %i.an
  %i.ar = fadd nsz <4 x float> %i.ao, %i.aq
  %i.as = fadd nsz <4 x float> %i.ap, %i.ar
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %i.at, ptr %0, align 4, !tbaa !37
  %i.au = shufflevector <4 x i1> %i.u, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.av = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ax = select <2 x i1> %i.au, <2 x float> %i.av, <2 x float> %i.aw
  %i.ay = shufflevector <4 x i1> %i.ad, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.az = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ba = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bb = select <2 x i1> %i.ay, <2 x float> %i.az, <2 x float> %i.ba
  %i.bc = shufflevector <4 x i1> %i.am, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.bd = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bf = select <2 x i1> %i.bc, <2 x float> %i.bd, <2 x float> %i.be
  %i.bg = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bh = fadd nsz <2 x float> %i.bg, %i.ax
  %i.bi = fadd nsz <2 x float> %i.bb, %i.bh
  %i.bj = fadd nsz <2 x float> %i.bf, %i.bi
  store <2 x float> %i.bj, ptr %i.f, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !230    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 8, %i.g
  tail call void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.i)
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 96
  br i1 %.not, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i.i, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !229
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 4 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !384    ; 18 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ae = load <2 x float>, ptr %i.n, align 4, !tbaa !37
  %i.af = load <2 x float>, ptr %i.p, align 4, !tbaa !37 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.q, align 4, !tbaa !37
  %i.ah = load <2 x float>, ptr %i.r, align 4, !tbaa !37 ; 2 uses
  %i.ai = fadd nsz <2 x float> %i.ae, %i.af
  %i.aj = fadd nsz <2 x float> %i.ag, %i.ah
  %i.ak = fmul nsz <2 x float> %i.ai, splat (float 5.000000e-01) ; 3 uses
  %i.al = fmul nsz <2 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.am = fsub nsz <2 x float> %i.ak, %i.af       ; 2 uses
  %i.an = fsub nsz <2 x float> %i.al, %i.ah       ; 2 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.ak, %i.am ; 2 uses
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 5 uses
  %i.ap = fadd nsz <2 x float> %i.al, %i.an       ; 5 uses
  store float %i.ao, ptr %i.o, align 4, !tbaa !178
  %i.aq = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  store float %i.aq, ptr %i.s, align 4, !tbaa !179
  %i.ar = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  store float %i.ar, ptr %i.t, align 4, !tbaa !177
  store float %i.ao, ptr %i.u, align 4, !tbaa !178
  %i.as = fsub nsz <2 x float> %i.ak, %i.am       ; 3 uses
  %i.at = extractelement <2 x float> %i.as, i64 1 ; 3 uses
  store float %i.at, ptr %i.v, align 4, !tbaa !179
  store float %i.ar, ptr %i.w, align 4, !tbaa !177
  %foldExtExtBinop10 = fsub nsz <2 x float> %i.al, %i.an
  %i.au = extractelement <2 x float> %foldExtExtBinop10, i64 1 ; 4 uses
  store float %i.ao, ptr %i.x, align 4, !tbaa !178
  store float %i.aq, ptr %i.y, align 4, !tbaa !179
  store float %i.au, ptr %i.z, align 4, !tbaa !177
  store float %i.ao, ptr %i.aa, align 4, !tbaa !178
  store float %i.at, ptr %i.ab, align 4, !tbaa !179
  store float %i.au, ptr %i.ac, align 4, !tbaa !177
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.ap, <8 x i32> <i32 0, i32 2, i32 3, i32 0, i32 1, i32 3, i32 0, i32 2>
  store <8 x float> %i.av, ptr %i.ad, align 4, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.au, ptr %i.aw, align 4, !tbaa !177
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.ay = extractelement <2 x float> %i.as, i64 0
  store float %i.ay, ptr %i.ax, align 4, !tbaa !178
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.at, ptr %i.az, align 4, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.au, ptr %i.ba, align 4, !tbaa !177
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.bj = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.bk = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %i.bl = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x float> %i.bl, %i.bk
  %i.bn = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bj, <2 x float> %i.bm)
  %i.bp = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.bq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bp, <2 x float> %i.bo)
  %i.bs = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.bt = fadd nsz <2 x float> %i.br, %i.bs
  %i.bu = load float, ptr %i.bf, align 8, !tbaa !37
  %i.bv = load float, ptr %i.bg, align 8, !tbaa !37
  %i.bw = fmul nsz float %i.aq, %i.bv
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.bu, float %i.bw)
  %i.by = load float, ptr %i.bh, align 8, !tbaa !37
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.by, float %i.bx)
  %i.ca = load float, ptr %i.bi, align 8, !tbaa !37
  %i.cb = fadd nsz float %i.ca, %i.bz
  store <2 x float> %i.bt, ptr %i.o, align 4
  store float %i.cb, ptr %i.t, align 4, !tbaa !37
  %i.cc = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %2 = load <3 x float>, ptr %i.cd, align 4, !tbaa !37 ; 5 uses
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !178
  %i.cg = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.ch = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %3 = shufflevector <3 x float> %2, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fmul nsz <2 x float> %3, %i.ch
  %i.cj = shufflevector <3 x float> %2, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cg, <2 x float> %i.ci)
  %i.cl = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %4 = shufflevector <3 x float> %2, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %i.cl, <2 x float> %i.ck)
  %i.cn = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.co = fadd nsz <2 x float> %i.cm, %i.cn
  %i.cp = load float, ptr %i.bf, align 8, !tbaa !37
  %i.cq = load float, ptr %i.bg, align 8, !tbaa !37
  %5 = extractelement <3 x float> %2, i64 1
  %i.cr = fmul nsz float %5, %i.cq
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.cp, float %i.cr)
  %i.ct = load float, ptr %i.bh, align 8, !tbaa !37
  %6 = extractelement <3 x float> %2, i64 2
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ct, float %i.cs)
  %i.cv = load float, ptr %i.bi, align 8, !tbaa !37
  %i.cw = fadd nsz float %i.cv, %i.cu
  store <2 x float> %i.co, ptr %i.cd, align 4
  store float %i.cw, ptr %i.ce, align 4, !tbaa !37
  %i.cx = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %7 = load <3 x float>, ptr %i.cy, align 4, !tbaa !37 ; 5 uses
  %i.da = load float, ptr %i.cy, align 4, !tbaa !178
  %i.db = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.dc = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul nsz <2 x float> %8, %i.dc
  %i.de = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.db, <2 x float> %i.dd)
  %i.dg = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.dg, <2 x float> %i.df)
  %i.di = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.dj = fadd nsz <2 x float> %i.dh, %i.di
  %i.dk = load float, ptr %i.bf, align 8, !tbaa !37
  %i.dl = load float, ptr %i.bg, align 8, !tbaa !37
  %10 = extractelement <3 x float> %7, i64 1
  %i.dm = fmul nsz float %10, %i.dl
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dk, float %i.dm)
  %i.do = load float, ptr %i.bh, align 8, !tbaa !37
  %11 = extractelement <3 x float> %7, i64 2
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %11, float %i.do, float %i.dn)
  %i.dq = load float, ptr %i.bi, align 8, !tbaa !37
  %i.dr = fadd nsz float %i.dq, %i.dp
  store <2 x float> %i.dj, ptr %i.cy, align 4
  store float %i.dr, ptr %i.cz, align 4, !tbaa !37
  %i.ds = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 36 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 44
  %12 = load <3 x float>, ptr %i.dt, align 4, !tbaa !37 ; 5 uses
  %i.dv = load float, ptr %i.dt, align 4, !tbaa !178
  %i.dw = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.dx = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = fmul nsz <2 x float> %13, %i.dx
  %i.dz = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.dw, <2 x float> %i.dy)
  %i.eb = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %14 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ec = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.eb, <2 x float> %i.ea)
  %i.ed = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.ee = fadd nsz <2 x float> %i.ec, %i.ed
  %i.ef = load float, ptr %i.bf, align 8, !tbaa !37
  %i.eg = load float, ptr %i.bg, align 8, !tbaa !37
  %15 = extractelement <3 x float> %12, i64 1
  %i.eh = fmul nsz float %15, %i.eg
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %i.dv, float %i.ef, float %i.eh)
  %i.ej = load float, ptr %i.bh, align 8, !tbaa !37
  %16 = extractelement <3 x float> %12, i64 2
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %16, float %i.ej, float %i.ei)
  %i.el = load float, ptr %i.bi, align 8, !tbaa !37
  %i.em = fadd nsz float %i.el, %i.ek
  store <2 x float> %i.ee, ptr %i.dt, align 4
  store float %i.em, ptr %i.du, align 4, !tbaa !37
  %i.en = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %17 = load <3 x float>, ptr %i.eo, align 4, !tbaa !37 ; 5 uses
  %i.eq = load float, ptr %i.eo, align 4, !tbaa !178
  %i.er = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.es = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul nsz <2 x float> %18, %i.es
  %i.eu = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.er, <2 x float> %i.et)
  %i.ew = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %19 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.ez = fadd nsz <2 x float> %i.ex, %i.ey
  %i.fa = load float, ptr %i.bf, align 8, !tbaa !37
  %i.fb = load float, ptr %i.bg, align 8, !tbaa !37
  %20 = extractelement <3 x float> %17, i64 1
  %i.fc = fmul nsz float %20, %i.fb
  %i.fd = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.fa, float %i.fc)
  %i.fe = load float, ptr %i.bh, align 8, !tbaa !37
  %21 = extractelement <3 x float> %17, i64 2
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %21, float %i.fe, float %i.fd)
  %i.fg = load float, ptr %i.bi, align 8, !tbaa !37
  %i.fh = fadd nsz float %i.fg, %i.ff
  store <2 x float> %i.ez, ptr %i.eo, align 4
  store float %i.fh, ptr %i.ep, align 4, !tbaa !37
  %i.fi = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 60 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 68
  %22 = load <3 x float>, ptr %i.fj, align 4, !tbaa !37 ; 5 uses
  %i.fl = load float, ptr %i.fj, align 4, !tbaa !178
  %i.fm = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.fn = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %23 = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = fmul nsz <2 x float> %23, %i.fn
  %i.fp = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fm, <2 x float> %i.fo)
  %i.fr = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %24 = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %i.fr, <2 x float> %i.fq)
  %i.ft = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.fu = fadd nsz <2 x float> %i.fs, %i.ft
  %i.fv = load float, ptr %i.bf, align 8, !tbaa !37
  %i.fw = load float, ptr %i.bg, align 8, !tbaa !37
  %25 = extractelement <3 x float> %22, i64 1
  %i.fx = fmul nsz float %25, %i.fw
  %i.fy = tail call nsz float @llvm.fmuladd.f32(float %i.fl, float %i.fv, float %i.fx)
  %i.fz = load float, ptr %i.bh, align 8, !tbaa !37
  %26 = extractelement <3 x float> %22, i64 2
  %i.ga = tail call nsz float @llvm.fmuladd.f32(float %26, float %i.fz, float %i.fy)
  %i.gb = load float, ptr %i.bi, align 8, !tbaa !37
  %i.gc = fadd nsz float %i.gb, %i.ga
  store <2 x float> %i.fu, ptr %i.fj, align 4
  store float %i.gc, ptr %i.fk, align 4, !tbaa !37
  %i.gd = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 72 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %27 = load <3 x float>, ptr %i.ge, align 4, !tbaa !37 ; 5 uses
  %i.gg = load float, ptr %i.ge, align 4, !tbaa !178
  %i.gh = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.gi = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %28 = shufflevector <3 x float> %27, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = fmul nsz <2 x float> %28, %i.gi
  %i.gk = shufflevector <3 x float> %27, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gm = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %29 = shufflevector <3 x float> %27, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.gm, <2 x float> %i.gl)
  %i.go = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.gp = fadd nsz <2 x float> %i.gn, %i.go
  %i.gq = load float, ptr %i.bf, align 8, !tbaa !37
  %i.gr = load float, ptr %i.bg, align 8, !tbaa !37
  %30 = extractelement <3 x float> %27, i64 1
  %i.gs = fmul nsz float %30, %i.gr
  %i.gt = tail call nsz float @llvm.fmuladd.f32(float %i.gg, float %i.gq, float %i.gs)
  %i.gu = load float, ptr %i.bh, align 8, !tbaa !37
  %31 = extractelement <3 x float> %27, i64 2
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %31, float %i.gu, float %i.gt)
  %i.gw = load float, ptr %i.bi, align 8, !tbaa !37
  %i.gx = fadd nsz float %i.gw, %i.gv
  store <2 x float> %i.gp, ptr %i.ge, align 4
  store float %i.gx, ptr %i.gf, align 4, !tbaa !37
  %i.gy = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 84 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 92
  %32 = load <3 x float>, ptr %i.gz, align 4, !tbaa !37 ; 5 uses
  %i.hb = load float, ptr %i.gz, align 4, !tbaa !178
  %i.hc = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.hd = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %33 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.he = fmul nsz <2 x float> %33, %i.hd
  %i.hf = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hc, <2 x float> %i.he)
  %i.hh = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %34 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.hh, <2 x float> %i.hg)
  %i.hj = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.hk = fadd nsz <2 x float> %i.hi, %i.hj
  %i.hl = load float, ptr %i.bf, align 8, !tbaa !37
  %i.hm = load float, ptr %i.bg, align 8, !tbaa !37
  %35 = extractelement <3 x float> %32, i64 1
  %i.hn = fmul nsz float %35, %i.hm
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.hb, float %i.hl, float %i.hn)
  %i.hp = load float, ptr %i.bh, align 8, !tbaa !37
  %36 = extractelement <3 x float> %32, i64 2
  %i.hq = tail call nsz float @llvm.fmuladd.f32(float %36, float %i.hp, float %i.ho)
  %i.hr = load float, ptr %i.bi, align 8, !tbaa !37
  %i.hs = fadd nsz float %i.hr, %i.hq
  store <2 x float> %i.hk, ptr %i.gz, align 4
  store float %i.hs, ptr %i.ha, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load float, ptr %i.e, align 4, !tbaa !177
  %i.g = fmul nsz float %i.f, f0x3C8EFA35
  %i.h = fpext nsz float %i.g to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 2 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = fneg nsz double %sin40.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = fneg nsz double %cos41.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load <2 x float>, ptr %i.d, align 4, !tbaa !37
  %i.r = fmul nsz <2 x float> %i.q, splat (float f0x3C8EFA35)
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.t = fpext <2 x float> %i.s to <2 x double>
  %i.u = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.t) ; 2 uses
  %i.v = extractvalue { <2 x double>, <2 x double> } %i.u, 0 ; 5 uses
  %i.w = extractvalue { <2 x double>, <2 x double> } %i.u, 1 ; 5 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.z = insertelement <2 x double> %i.y, double %sin40.i.i, i64 1 ; 4 uses
  %i.aa = fmul nsz <2 x double> %i.x, %i.z
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float> ; 4 uses
  store <2 x float> %i.ab, ptr %0, align 4, !tbaa !37
  %i.ac = extractelement <2 x double> %i.v, i64 0
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.i, align 4, !tbaa !37
  %i.af = shufflevector <2 x double> %i.w, <2 x double> %i.v, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x double> %i.v, %i.af       ; 2 uses
  %i.ah = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.j, i64 0
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %i.al = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.z, <2 x double> %i.ak)
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 3 uses
  store <2 x float> %i.an, ptr %i.k, align 4, !tbaa !37
  %i.ao = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = insertelement <2 x double> %i.ai, double %i.n, i64 1
  %i.aq = fmul nsz <2 x double> %i.ao, %i.ap
  %i.ar = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.z, <2 x double> %i.aq)
  %i.at = fptrunc <2 x double> %i.as to <2 x float> ; 5 uses
  store <2 x float> %i.at, ptr %i.m, align 4, !tbaa !37
  %i.au = shufflevector <2 x double> %i.v, <2 x double> %i.w, <2 x i32> <i32 1, i32 2>
  %i.av = fmul nsz <2 x double> %i.w, %i.au       ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fptrunc nsz double %i.aw to float       ; 3 uses
  store float %i.ax, ptr %i.l, align 4, !tbaa !37
  %i.ay = extractelement <2 x double> %i.av, i64 1
  %i.az = fptrunc nsz double %i.ay to float       ; 5 uses
  store float %i.az, ptr %i.c, align 4, !tbaa !37
  %i.ba = load <2 x float>, ptr %i.o, align 8, !tbaa !37 ; 5 uses
  store <2 x float> %i.ba, ptr %i.p, align 4, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !177 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.bc, ptr %i.bd, align 4, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bf = load float, ptr %i.be, align 8, !tbaa !178 ; 4 uses
  %i.bg = fcmp nsz oeq float %i.bf, 1.000000e+00
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !179 ; 2 uses
  %i.bj = fcmp nsz oeq float %i.bi, 1.000000e+00
  %or.cond = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !177
  %i.bm = fcmp nsz une float %i.bl, 1.000000e+00
  br i1 %i.bm, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bn = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bi, %bb.a ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !177 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bq = fmul nsz <2 x float> %i.an, zeroinitializer ; 2 uses
  %i.br = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.bs, <2 x float> %i.bq)
  %i.bu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer, <2 x float> %i.bt)
  %i.bv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.bu)
  store <2 x float> %i.bv, ptr %0, align 4, !tbaa !37
  %i.bw = fmul nsz float %i.ax, 0.000000e+00      ; 2 uses
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bf, float %i.bw)
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.bx)
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.by)
  store float %i.bz, ptr %i.i, align 4, !tbaa !37
  %i.ca = fmul nsz float %i.bf, 0.000000e+00
  store float %i.ca, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !37
  %i.cb = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul nsz <2 x float> %i.cc, %i.an
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.cd)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer, <2 x float> %i.ce)
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.cf)
  store <2 x float> %i.cg, ptr %i.k, align 4, !tbaa !37
  %i.ch = fmul nsz float %i.bn, %i.ax
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.ch)
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.ci)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.cj)
  store float %i.ck, ptr %i.l, align 4, !tbaa !37
  %i.cl = fmul nsz float %i.bn, 0.000000e+00
  store float %i.cl, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !37
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.bw) ; 2 uses
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.bp, float %i.cm)
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.cn)
  store float %i.co, ptr %i.c, align 4, !tbaa !37
  %i.cp = fmul nsz float %i.bp, 0.000000e+00
  store float %i.cp, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !37
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.bq) ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.m, align 4, !tbaa !37
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer, <2 x float> %i.cq)
  %i.cw = fadd nsz <2 x float> %i.ba, %i.cv
  store <2 x float> %i.cw, ptr %i.p, align 4, !tbaa !37
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.cm)
  %i.cy = fadd nsz float %i.cx, %i.bc
  store float %i.cy, ptr %i.bd, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !68
  ret void
end_hunk_0
