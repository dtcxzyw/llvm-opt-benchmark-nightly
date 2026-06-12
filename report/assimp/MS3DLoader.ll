inline.NumInlined: 1117
inline.NumDeleted: 529
begin_hunk_0_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fc, <4 x float> %i.eu) ; 2 uses
  %i.fe = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ff = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fg = fmul <4 x float> %i.ff, %i.fd
  %i.fh = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.a, i64 1
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fg)
  %i.fm = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fn = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.bb, i64 1
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fq = fmul <4 x float> %i.fm, %i.fp
  %i.fr = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x float> %i.fr, float %i.w, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ft, <4 x float> %i.fq)
  %i.fv = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fu, <4 x float> %i.fl)
  %i.fx = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.df, i64 1 ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fw, %i.fz
  %i.gb = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.aj, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ge = fmul <4 x float> %i.gd, %i.ei
  %i.gf = insertelement <4 x float> %i.dn, float %i.aj, i64 1
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.gg, <4 x float> %i.ge)
  %i.gi = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gj = fmul <4 x float> %i.ed, %i.gi
  %i.gk = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gl = insertelement <2 x float> %i.gk, float %i.a, i64 1
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.gh, <4 x float> %i.gj)
  %i.go = fmul <4 x float> %i.dr, %i.fp
  %i.gp = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.gq = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.gq, <4 x float> %i.go) ; 2 uses
  %i.gs = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gr, <4 x float> %i.gn)
  %i.gu = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gv = fmul <4 x float> %i.gt, %i.gu
  %i.gw = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.gx = insertelement <4 x float> %i.gw, float %i.bd, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gz = fmul <4 x float> %i.gy, %i.de
  %i.ha = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.hb = insertelement <4 x float> %i.ev, float %i.ba, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hc, <4 x float> %i.gz)
  %i.he = fmul <4 x float> %i.ed, %i.hd
  %i.hf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.a, i64 1
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hi = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hi, <4 x float> %i.he)
  %i.hk = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.hk, <4 x float> %i.hj)
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %4 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  store ptr null, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 176                 ; 3 uses
  %i.l = add nsw i64 %i.k, 63                     ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 2305843009213693944
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 5 uses
  %i.p = lshr i64 %i.l, 6                         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.g, align 8
  store ptr %i.o, ptr %3, align 8
  store i32 0, ptr %i.d, align 8
  %i.r = sdiv i64 %i.j, 11264
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.t = and i64 %i.k, -9223372036854775745
  %i.u = icmp ugt i64 %i.t, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.u, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.s, i64 %storemerge.idx.i.i.i.i.i
  %i.v = trunc i64 %i.k to i32
  %i.w = and i32 %i.v, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.e, align 8
  store i32 %i.w, ptr %i.f, align 8
  %.idx.i = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc, %bb.a
  %i.x = phi ptr [ null, %bb.a ], [ %i.q, %.noexc ] ; 4 uses
  %i.y = phi ptr [ null, %bb.a ], [ %i.o, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store float 1.000000e+00, ptr %4, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 4
  invoke void @_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i7 = icmp eq ptr %i.y, null
  br i1 %.not.i.i7, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aj
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ah) #28
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i.i8, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = ptrtoint ptr %i.y to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aq
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.ao) #28
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit9

_ZNSt13_Bvector_baseISaIbEED2Ev.exit9:            ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::StreamReader", align 8 ; 20 uses
  %i.h = alloca [10 x i8], align 1                ; 6 uses
  %6 = alloca %"class.std::vector.31", align 8    ; 20 uses
  %7 = alloca %"class.std::vector.41", align 8    ; 23 uses
  %8 = alloca %"class.std::vector", align 8       ; 22 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %struct.aiString, align 4          ; 11 uses
  %11 = alloca %struct.aiString, align 4          ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %struct.aiString, align 4          ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %struct.aiString, align 4          ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::map", align 8         ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.j, ptr %4, align 8
  store i16 25202, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.l, align 2
  %i.m = load ptr, ptr %1, align 8
  %i.n = load ptr, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.m, ptr noundef nonnull %i.j)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !8 ; 2 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.r = load ptr, ptr %4, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.t = load i64, ptr %i.j, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(22) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470: ; preds = %bb.c
  %i.z = load i64, ptr %i.j, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.pu

bb.d:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #24
  br label %bb.pu

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull %i.q, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 96 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 10 ; 4 uses
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 28 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = icmp ugt ptr %i.af, %i.ah
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ult ptr %i.af, %23
  %or.cond.i.i = select i1 %i.ai, i1 true, i1 %24
  br i1 %or.cond.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.35)
          to label %.invoke unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aj) #24
  br label %.body

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.h, ptr noundef nonnull align 1 dereferenceable(10) %i.ae, i64 10, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 14 ; 3 uses
  %i.am = icmp ugt ptr %i.al, %i.ah
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.32)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %bb.l, %bb.i, %bb.f, %bb.p
  %i.ao = phi ptr [ %i.aj, %bb.f ], [ %i.bd, %bb.p ], [ %i.an, %bb.i ], [ %i.ba, %bb.l ]
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.an) #24
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.af, align 1
  store ptr %i.al, ptr %i.ad, align 8
  %i.ar = load i64, ptr %i.h, align 1
  %i.as = xor i64 %i.ar, 3472328296563430221
  %i.at = getelementptr i8, ptr %i.h, i64 8
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i64
  %i.aw = xor i64 %i.av, 12336
  %i.ax = or i64 %i.as, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %.not390 = icmp eq i32 %i.az, 0
  br i1 %.not390, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA53_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(53) @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.invoke unwind label %bb.n

bb.m:                                             ; preds = %.invoke
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ba) #24
  br label %.body

bb.o:                                             ; preds = %bb.k
  %.not391 = icmp eq i32 %i.aq, 4
  br i1 %.not391, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.4)
          to label %.invoke unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bd) #24
  br label %.body

bb.r:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %i.bg = icmp ugt ptr %i.bf, %i.ah
  br i1 %i.bg, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bh = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull @.str.32)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.noexc477 unwind label %bb.z

.noexc477:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bh) #24
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.bj = load i16, ptr %i.al, align 1            ; 4 uses
  store ptr %i.bf, ptr %i.ad, align 8
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bj, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.v
  %i.bl = mul nuw nsw i64 %i.bk, 48               ; 3 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #26
          to label %.lr.ph.preheader unwind label %bb.aa ; 10 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.bm, i64 %i.bk
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.bl, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bm, i64 %i.bl
  %i.bo = ptrtoint ptr %i.bn to i64               ; 6 uses
  %i.bp = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %wide.trip.count = zext i16 %i.bj to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.aj, %bb.v
  %.0.lcssa.i.i.i.i.i1659 = phi i64 [ 0, %bb.v ], [ %i.bp, %bb.aj ]
  %.sink.i1657 = phi i64 [ 0, %bb.v ], [ %i.bo, %bb.aj ] ; 2 uses
  %.sroa.01053.01653 = phi ptr [ null, %bb.v ], [ %i.bm, %bb.aj ] ; 11 uses
  %i.bq = phi ptr [ %i.ah, %bb.v ], [ %i.ci, %bb.aj ] ; 24 uses
  %i.br = phi ptr [ %i.bf, %bb.v ], [ %i.cp, %bb.aj ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2 ; 4 uses
  %i.bt = icmp ugt ptr %i.bs, %i.bq
  br i1 %i.bt, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %._crit_edge
  %i.bu = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull @.str.32)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.noexc481 unwind label %bb.ao

.noexc481:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bu) #24
  br label %.body486

bb.z:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aj
  %i.by = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.ci, %bb.aj ]
  %i.bz = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.cp, %bb.aj ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bm, i64 %indvars.iv ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  store ptr %i.cb, ptr %i.ad, align 8
  %i.cc = icmp ugt ptr %i.cb, %i.by
  br i1 %i.cc, label %bb.ab, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit

bb.ab:                                            ; preds = %.lr.ph
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull @.str.35)
          to label %.invoke1726 unwind label %bb.ac

.invoke1726:                                      ; preds = %bb.ah, %bb.ae, %bb.ab
  %i.ce = phi ptr [ %i.ck, %bb.ae ], [ %i.cd, %bb.ab ], [ %i.cr, %bb.ah ]
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1727 unwind label %.loopexit.split-lp1129

.cont1727:                                        ; preds = %.invoke1726
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cd) #24
  br label %.body486.thread

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit: ; preds = %.lr.ph
  invoke void @_Z10ReadVectorRN6Assimp12StreamReaderILb0ELb0EEER10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.ca)
          to label %bb.ad unwind label %.loopexit1128

bb.ad:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit
  %i.cg = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  %i.ci = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.cj = icmp ugt ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ck = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull @.str.32)
          to label %.invoke1726 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.bu:                                            ; preds = %bb.bt
  %i.hq = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull @.str.32)
          to label %.invoke1728 unwind label %.body506.thread

.invoke1728:                                      ; preds = %bb.aq, %bb.bu, %bb.bm
  %i.hr = phi ptr [ %i.gu, %bb.bm ], [ %i.hq, %bb.bu ], [ %i.dt, %bb.aq ]
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1729 unwind label %bb.as

.cont1729:                                        ; preds = %.invoke1728
  unreachable

.body506.thread:                                  ; preds = %bb.bu
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hq) #24
  br label %.body506.thread1677

bb.bv:                                            ; preds = %bb.bt
  %i.ht = load i8, ptr %i.hi, align 1
  store ptr %i.ho, ptr %i.ad, align 8
  %i.hu = sext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.do, i64 76
  store i32 %i.hu, ptr %i.hv, align 4
  %indvars.iv.next1363 = add nuw nsw i64 %indvars.iv1362, 1 ; 2 uses
  %exitcond1366.not = icmp eq i64 %indvars.iv.next1363, %wide.trip.count1365
  br i1 %exitcond1366.not, label %._crit_edge1213, label %.lr.ph1212, !llvm.loop !10

bb.bw:                                            ; preds = %._crit_edge1213
  %i.hw = load i16, ptr %i.dh, align 1            ; 4 uses
  store ptr %i.di, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.hx = zext i16 %i.hw to i64                   ; 5 uses
  %.not.i.i.i.i533 = icmp eq i16 %i.hw, 0
  br i1 %.not.i.i.i.i533, label %.loopexit1124.thread, label %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempGroupESaIS2_EEC2EmRKS3_.exit.i

.loopexit1124.thread:                             ; preds = %bb.bw
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %._crit_edge1221.a

_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempGroupESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.bw
  %i.hz = mul nuw nsw i64 %i.hx, 104
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #26
          to label %.noexc535 unwind label %bb.cb ; 4 uses

.noexc535:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempGroupESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ia, ptr %6, align 8
  %i.ib = getelementptr inbounds nuw [104 x i8], ptr %i.ia, i64 %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ib, ptr %i.ic, align 8
  %xtraiter = and i64 %i.hx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc535, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.prol ], [ %i.ia, %.noexc535 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.if, %.lr.ph.i.i.i.i.i.prol ], [ %i.hx, %.noexc535 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc535 ]
  %i.id = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 72
  %i.ie = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.08.i.i.i.i.i.prol, i8 0, i64 104, i1 false)
  store ptr %i.ie, ptr %i.id, align 8
  %i.if = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 104 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc535
  %.lcssa1817.unr = phi ptr [ poison, %.noexc535 ], [ %i.ig, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ia, %.noexc535 ], [ %i.ig, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.hx, %.noexc535 ], [ %i.if, %.lr.ph.i.i.i.i.i.prol ]
  %i.ih = icmp ult i16 %i.hw, 8
  br i1 %i.ih, label %.lr.ph1220.preheader.a, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  %i.ij = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.08.i.i.i.i.i, i8 0, i64 104, i1 false)
  store ptr %i.ij, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  %i.il = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  %i.im = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ik, i8 0, i64 104, i1 false)
  store ptr %i.im, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208
  %i.io = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 280
  %i.ip = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.in, i8 0, i64 104, i1 false)
  store ptr %i.ip, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 312
  %i.ir = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 384
  %i.is = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.iq, i8 0, i64 104, i1 false)
  store ptr %i.is, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 416
  %i.iu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 488
  %i.iv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.it, i8 0, i64 104, i1 false)
  store ptr %i.iv, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 520
  %i.ix = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 592
  %i.iy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.iw, i8 0, i64 104, i1 false)
  store ptr %i.iy, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 624
  %i.ja = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 696
  %i.jb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.iz, i8 0, i64 104, i1 false)
  store ptr %i.jb, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 728
  %i.jd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 800
  %i.je = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.jc, i8 0, i64 104, i1 false)
  store ptr %i.je, ptr %i.jd, align 8
  %i.jf = add nsw i64 %.057.i.i.i.i.i, -8         ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 832 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph1220.preheader.a, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

.lr.ph1220.preheader.a:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa1817 = phi ptr [ %.lcssa1817.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.jg, %.lr.ph.i.i.i.i.i ]
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  store ptr %.lcssa1817, ptr %i.jh, align 8
  %wide.trip.count1374 = zext i16 %i.hw to i64
  br label %.lr.ph1220.a

._crit_edge1221.loopexit:                         ; preds = %bb.cv
  %.pre = load ptr, ptr %i.ad, align 8
  %.pre1417 = load ptr, ptr %i.ag, align 8
  br label %._crit_edge1221.a

._crit_edge1221.a:                                ; preds = %.loopexit1124.thread, %._crit_edge1221.loopexit
  %i.ji = phi ptr [ %i.hy, %.loopexit1124.thread ], [ %i.jh, %._crit_edge1221.loopexit ] ; 7 uses
  %i.jj = phi ptr [ %i.bq, %.loopexit1124.thread ], [ %.pre1417, %._crit_edge1221.loopexit ] ; 2 uses
  %i.jk = phi ptr [ %i.di, %.loopexit1124.thread ], [ %.pre, %._crit_edge1221.loopexit ] ; 2 uses
  %.0351.lcssa = phi i1 [ false, %.loopexit1124.thread ], [ %spec.select, %._crit_edge1221.loopexit ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2 ; 3 uses
  %i.jm = icmp ugt ptr %i.jl, %i.jj
  br i1 %i.jm, label %bb.bx, label %bb.cw

bb.bx:                                            ; preds = %._crit_edge1221.a
  %i.jn = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull @.str.32)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @__cxa_throw(ptr nonnull %i.jn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.noexc536 unwind label %bb.cz

.noexc536:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jn) #24
  br label %.body541

bb.ca:                                            ; preds = %bb.am
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body506

bb.cb:                                            ; preds = %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempGroupESaIS2_EEC2EmRKS3_.exit.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit903

.lr.ph1220.a:                                     ; preds = %.lr.ph1220.preheader.a, %bb.cv
  %indvars.iv1372.a = phi i64 [ 0, %.lr.ph1220.preheader.a ], [ %indvars.iv.next1373, %bb.cv ] ; 2 uses
  %.03511218 = phi i1 [ false, %.lr.ph1220.preheader.a ], [ %spec.select, %bb.cv ]
  %i.jr = load ptr, ptr %6, align 8
  %i.js = getelementptr inbounds nuw [104 x i8], ptr %i.jr, i64 %indvars.iv1372.a ; 5 uses
  %i.jt = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1 ; 3 uses
  store ptr %i.ju, ptr %i.ad, align 8
  %i.jv = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.jw = icmp ugt ptr %i.ju, %i.jv
  br i1 %i.jw, label %bb.cc, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit543

bb.cc:                                            ; preds = %.lr.ph1220.a
  %i.jx = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull @.str.35)
          to label %.invoke1732 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jx) #24
  br label %.body541

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit543: ; preds = %.lr.ph1220.a
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 33 ; 3 uses
  store ptr %i.jz, ptr %i.ad, align 8
  %i.ka = icmp ugt ptr %i.jz, %i.jv
  %i.kb = load ptr, ptr %22, align 8
  %i.kc = icmp ult ptr %i.jz, %i.kb
  %or.cond.i.i544 = select i1 %i.ka, i1 true, i1 %i.kc
  br i1 %or.cond.i.i544, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit543
  %i.kd = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull @.str.35)
          to label %.invoke1732 unwind label %bb.cf

.invoke1732:                                      ; preds = %bb.ce, %bb.cc
  %i.ke = phi ptr [ %i.jx, %bb.cc ], [ %i.kd, %bb.ce ]
  invoke void @__cxa_throw(ptr nonnull %i.ke, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1733 unwind label %bb.cp

.cont1733:                                        ; preds = %.invoke1732
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kd) #24
  br label %.body541

bb.cg:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.js, ptr noundef nonnull align 1 dereferenceable(32) %i.ju, i64 32, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store i8 0, ptr %i.kg, align 8
  %i.kh = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2 ; 2 uses
  %i.kj = load ptr, ptr %i.ag, align 8
  %i.kk = icmp ugt ptr %i.ki, %i.kj
  br i1 %i.kk, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.kl = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull @.str.32)
          to label %.invoke1734 unwind label %bb.ci

.invoke1734:                                      ; preds = %bb.cn, %bb.ch
  %i.km = phi ptr [ %i.kl, %bb.ch ], [ %i.lg, %bb.cn ]
  invoke void @__cxa_throw(ptr nonnull %i.km, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1735 unwind label %.loopexit.split-lp1120

.cont1735:                                        ; preds = %.invoke1734
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kl) #24
  br label %.body541

bb.cj:                                            ; preds = %bb.cg
  %i.ko = load i16, ptr %i.kh, align 1            ; 3 uses
  store ptr %i.ki, ptr %i.ad, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.js, i64 40 ; 3 uses
  %i.kq = zext i16 %i.ko to i64                   ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.js, i64 48 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8            ; 2 uses
  %i.kt = load ptr, ptr %i.kp, align 8            ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = ashr exact i64 %i.kw, 2                 ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %i.kq
  br i1 %i.ky, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.kz = sub nuw nsw i64 %i.kq, %i.kx
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i64 noundef %i.kz)
          to label %_ZNSt6vectorIjSaIjEE6resizeEm.exit unwind label %.loopexit1119

bb.cl:                                            ; preds = %bb.cj
  %i.la = icmp ugt i64 %i.kx, %i.kq
  br i1 %i.la, label %bb.cm, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.cm:                                            ; preds = %bb.cl
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kq ; 2 uses
  %.not.i.i = icmp eq ptr %i.ks, %i.lb
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.cm
  store ptr %i.lb, ptr %i.kr, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.ck, %bb.cl, %bb.cm, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.not1293 = icmp eq i16 %i.ko, 0
  br i1 %.not1293, label %._crit_edge1216, label %.lr.ph1215.preheader

.lr.ph1215.preheader:                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %wide.trip.count1370 = zext i16 %i.ko to i64
  br label %.lr.ph1215

._crit_edge1216:                                  ; preds = %bb.ct, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.lc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 2 uses
  %i.le = load ptr, ptr %i.ag, align 8
  %i.lf = icmp ugt ptr %i.ld, %i.le
  br i1 %i.lf, label %bb.cn, label %bb.cv

bb.cn:                                            ; preds = %._crit_edge1216
  %i.lg = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull @.str.32)
          to label %.invoke1734 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lg) #24
  br label %.body541

bb.cp:                                            ; preds = %.invoke1732
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body541

.loopexit1119:                                    ; preds = %bb.ck
  %lpad.loopexit1121 = landingpad { ptr, i32 }
          cleanup
  br label %.body541

.loopexit.split-lp1120:                           ; preds = %.invoke1734
  %lpad.loopexit.split-lp1122 = landingpad { ptr, i32 }
          cleanup
  br label %.body541

.lr.ph1215:                                       ; preds = %.lr.ph1215.preheader, %bb.ct
  %indvars.iv1367 = phi i64 [ 0, %.lr.ph1215.preheader ], [ %indvars.iv.next1368, %bb.ct ] ; 2 uses
  %i.lj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 2 ; 2 uses
  %i.ll = load ptr, ptr %i.ag, align 8
  %i.lm = icmp ugt ptr %i.lk, %i.ll
  br i1 %i.lm, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %.lr.ph1215
  %i.ln = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ln, ptr noundef nonnull @.str.32)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  invoke void @__cxa_throw(ptr nonnull %i.ln, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.noexc558 unwind label %bb.cu

.noexc558:                                        ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ln) #24
  br label %.body541

bb.ct:                                            ; preds = %.lr.ph1215
  %i.lp = load i16, ptr %i.lj, align 1
  store ptr %i.lk, ptr %i.ad, align 8
  %i.lq = sext i16 %i.lp to i32
  %i.lr = load ptr, ptr %i.kp, align 8
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv1367
  store i32 %i.lq, ptr %i.ls, align 4
  %indvars.iv.next1368 = add nuw nsw i64 %indvars.iv1367, 1 ; 2 uses
  %exitcond1371.not = icmp eq i64 %indvars.iv.next1368, %wide.trip.count1370
  br i1 %exitcond1371.not, label %._crit_edge1216, label %.lr.ph1215, !llvm.loop !14

bb.cu:                                            ; preds = %bb.cr
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body541

bb.cv:                                            ; preds = %._crit_edge1216
  %i.lu = load i8, ptr %i.lc, align 1             ; 2 uses
  store ptr %i.ld, ptr %i.ad, align 8
  %i.lv = sext i8 %i.lu to i32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  store i32 %i.lv, ptr %i.lw, align 8
  %i.lx = icmp eq i8 %i.lu, -1
  %spec.select = select i1 %i.lx, i1 true, i1 %.03511218 ; 2 uses
  %indvars.iv.next1373 = add nuw nsw i64 %indvars.iv1372.a, 1 ; 2 uses
  %exitcond1375.not = icmp eq i64 %indvars.iv.next1373, %wide.trip.count1374
  br i1 %exitcond1375.not, label %._crit_edge1221.loopexit, label %.lr.ph1220.a, !llvm.loop !15

bb.cw:                                            ; preds = %._crit_edge1221.a
  %i.ly = load i16, ptr %i.jk, align 1            ; 4 uses
  store ptr %i.jl, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.lz = zext i16 %i.ly to i64                   ; 5 uses
  %.not.i.i.i.i562 = icmp eq i16 %i.ly, 0
  br i1 %.not.i.i.i.i562, label %.loopexit1118.thread, label %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter12TempMaterialESaIS2_EEC2EmRKS3_.exit.i

.loopexit1118.thread:                             ; preds = %bb.cw
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge1226

_ZNSt12_Vector_baseIN6Assimp12MS3DImporter12TempMaterialESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.cw
  %i.mb = mul nuw nsw i64 %i.lz, 400
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #26
          to label %.noexc568 unwind label %bb.da ; 4 uses

.noexc568:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter12TempMaterialESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.mc, ptr %7, align 8
  %i.md = getelementptr inbounds nuw [400 x i8], ptr %i.mc, i64 %i.lz
  %i.me = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.md, ptr %i.me, align 8
  %xtraiter1825 = and i64 %i.lz, 7                ; 2 uses
  %lcmp.mod1826.not = icmp eq i64 %xtraiter1825, 0
  br i1 %lcmp.mod1826.not, label %.lr.ph.i.i.i.i.i563.prol.loopexit, label %.lr.ph.i.i.i.i.i563.prol

.lr.ph.i.i.i.i.i563.prol:                         ; preds = %.noexc568, %.lr.ph.i.i.i.i.i563.prol
  %.08.i.i.i.i.i564.prol = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i563.prol ], [ %i.mc, %.noexc568 ] ; 4 uses
  %.057.i.i.i.i.i565.prol = phi i64 [ %i.mh, %.lr.ph.i.i.i.i.i563.prol ], [ %i.lz, %.noexc568 ]
  %prol.iter1827 = phi i64 [ %prol.iter1827.next, %.lr.ph.i.i.i.i.i563.prol ], [ 0, %.noexc568 ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564.prol, i64 368
  %i.mg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564.prol, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.08.i.i.i.i.i564.prol, i8 0, i64 400, i1 false)
  store ptr %i.mg, ptr %i.mf, align 8
  %i.mh = add nsw i64 %.057.i.i.i.i.i565.prol, -1 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564.prol, i64 400 ; 3 uses
  %prol.iter1827.next = add i64 %prol.iter1827, 1 ; 2 uses
  %prol.iter1827.cmp.not = icmp eq i64 %prol.iter1827.next, %xtraiter1825
  br i1 %prol.iter1827.cmp.not, label %.lr.ph.i.i.i.i.i563.prol.loopexit, label %.lr.ph.i.i.i.i.i563.prol, !llvm.loop !16

.lr.ph.i.i.i.i.i563.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i563.prol, %.noexc568
  %.lcssa1816.unr = phi ptr [ poison, %.noexc568 ], [ %i.mi, %.lr.ph.i.i.i.i.i563.prol ]
  %.08.i.i.i.i.i564.unr = phi ptr [ %i.mc, %.noexc568 ], [ %i.mi, %.lr.ph.i.i.i.i.i563.prol ]
  %.057.i.i.i.i.i565.unr = phi i64 [ %i.lz, %.noexc568 ], [ %i.mh, %.lr.ph.i.i.i.i.i563.prol ]
  %i.mj = icmp ult i16 %i.ly, 8
  br i1 %i.mj, label %.lr.ph1225.preheader, label %.lr.ph.i.i.i.i.i563

.lr.ph.i.i.i.i.i563:                              ; preds = %.lr.ph.i.i.i.i.i563.prol.loopexit, %.lr.ph.i.i.i.i.i563
  %.08.i.i.i.i.i564 = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i563 ], [ %.08.i.i.i.i.i564.unr, %.lr.ph.i.i.i.i.i563.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i565 = phi i64 [ %i.nh, %.lr.ph.i.i.i.i.i563 ], [ %.057.i.i.i.i.i565.unr, %.lr.ph.i.i.i.i.i563.prol.loopexit ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 368
  %i.ml = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.08.i.i.i.i.i564, i8 0, i64 400, i1 false)
  store ptr %i.ml, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 400
  %i.mn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 768
  %i.mo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.mm, i8 0, i64 400, i1 false)
  store ptr %i.mo, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 800
  %i.mq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1168
  %i.mr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.mp, i8 0, i64 400, i1 false)
  store ptr %i.mr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1200
  %i.mt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1568
  %i.mu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ms, i8 0, i64 400, i1 false)
  store ptr %i.mu, ptr %i.mt, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1600
  %i.mw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1968
  %i.mx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 1984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.mv, i8 0, i64 400, i1 false)
  store ptr %i.mx, ptr %i.mw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2000
  %i.mz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2368
  %i.na = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.my, i8 0, i64 400, i1 false)
  store ptr %i.na, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2400
  %i.nc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2768
  %i.nd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.nb, i8 0, i64 400, i1 false)
  store ptr %i.nd, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 2800
  %i.nf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 3168
  %i.ng = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 3184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ne, i8 0, i64 400, i1 false)
  store ptr %i.ng, ptr %i.nf, align 8
  %i.nh = add nsw i64 %.057.i.i.i.i.i565, -8      ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i564, i64 3200 ; 2 uses
  %.not.i.i.i.i.i566.7 = icmp eq i64 %i.nh, 0
  br i1 %.not.i.i.i.i.i566.7, label %.lr.ph1225.preheader, label %.lr.ph.i.i.i.i.i563, !llvm.loop !17

.lr.ph1225.preheader:                             ; preds = %.lr.ph.i.i.i.i.i563, %.lr.ph.i.i.i.i.i563.prol.loopexit
  %.lcssa1816 = phi ptr [ %.lcssa1816.unr, %.lr.ph.i.i.i.i.i563.prol.loopexit ], [ %i.ni, %.lr.ph.i.i.i.i.i563 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  store ptr %.lcssa1816, ptr %i.nj, align 8
  %wide.trip.count1379 = zext i16 %i.ly to i64
  br label %.lr.ph1225

._crit_edge1226.loopexit:                         ; preds = %bb.dv
  %.pre1418 = load ptr, ptr %i.ad, align 8
  %.pre1419 = load ptr, ptr %i.ag, align 8
  br label %._crit_edge1226

._crit_edge1226:                                  ; preds = %.loopexit1118.thread, %._crit_edge1226.loopexit
  %i.nk = phi ptr [ %i.nj, %._crit_edge1226.loopexit ], [ %i.ma, %.loopexit1118.thread ] ; 15 uses
  %i.nl = phi ptr [ %.pre1419, %._crit_edge1226.loopexit ], [ %i.jj, %.loopexit1118.thread ] ; 4 uses
  %i.nm = phi ptr [ %.pre1418, %._crit_edge1226.loopexit ], [ %i.jl, %.loopexit1118.thread ] ; 5 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4 ; 2 uses
  %i.no = icmp ugt ptr %i.nn, %i.nl
  br i1 %i.no, label %bb.cx, label %bb.dw

bb.cx:                                            ; preds = %._crit_edge1226
  %i.np = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.np, ptr noundef nonnull @.str.32)
          to label %.invoke1738 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.np) #24
  br label %.body575

bb.cz:                                            ; preds = %bb.by
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body541

bb.da:                                            ; preds = %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter12TempMaterialESaIS2_EEC2EmRKS3_.exit.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889

.lr.ph1225:                                       ; preds = %.lr.ph1225.preheader, %bb.dv
  %indvars.iv1376 = phi i64 [ 0, %.lr.ph1225.preheader ], [ %indvars.iv.next1377, %bb.dv ] ; 2 uses
  %i.nt = load ptr, ptr %7, align 8
  %i.nu = getelementptr inbounds nuw [400 x i8], ptr %i.nt, i64 %indvars.iv1376 ; 12 uses
  %i.nv = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32 ; 3 uses
  store ptr %i.nw, ptr %i.ad, align 8
  %i.nx = load ptr, ptr %i.ag, align 8
  %i.ny = icmp ugt ptr %i.nw, %i.nx
  %i.nz = load ptr, ptr %22, align 8
  %i.oa = icmp ult ptr %i.nw, %i.nz
  %or.cond.i.i573 = select i1 %i.ny, i1 true, i1 %i.oa
  br i1 %or.cond.i.i573, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %.lr.ph1225
  %i.ob = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ob, ptr noundef nonnull @.str.35)
          to label %.invoke1736 unwind label %bb.dc

.invoke1736:                                      ; preds = %bb.dt, %bb.dq, %bb.do, %bb.dl, %bb.di, %bb.db
  %i.oc = phi ptr [ %i.pj, %bb.dq ], [ %i.ob, %bb.db ], [ %i.on, %bb.di ], [ %i.ov, %bb.dl ], [ %i.pd, %bb.do ], [ %i.pt, %bb.dt ]
  invoke void @__cxa_throw(ptr nonnull %i.oc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1737 unwind label %.loopexit.split-lp1114

.cont1737:                                        ; preds = %.invoke1736
  unreachable

bb.dc:                                            ; preds = %bb.db
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ob) #24
  br label %.body575

bb.dd:                                            ; preds = %.lr.ph1225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nu, ptr noundef nonnull align 1 dereferenceable(32) %i.nv, i64 32, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store i8 0, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 324
  invoke void @_Z9ReadColorRN6Assimp12StreamReaderILb0ELb0EEER9aiColor4tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.of)
          to label %bb.de unwind label %.loopexit1113

bb.de:                                            ; preds = %bb.dd
  %i.og = getelementptr inbounds nuw i8, ptr %i.nu, i64 292
  invoke void @_Z9ReadColorRN6Assimp12StreamReaderILb0ELb0EEER9aiColor4tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.og)
          to label %bb.df unwind label %.loopexit1113

bb.df:                                            ; preds = %bb.de
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nu, i64 308
  invoke void @_Z9ReadColorRN6Assimp12StreamReaderILb0ELb0EEER9aiColor4tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.oh)
          to label %bb.dg unwind label %.loopexit1113

bb.dg:                                            ; preds = %bb.df
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nu, i64 340
  invoke void @_Z9ReadColorRN6Assimp12StreamReaderILb0ELb0EEER9aiColor4tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.oi)
          to label %bb.dh unwind label %.loopexit1113

bb.dh:                                            ; preds = %bb.dg
  %i.oj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.ol = load ptr, ptr %i.ag, align 8
  %i.om = icmp ugt ptr %i.ok, %i.ol
  br i1 %i.om, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.on = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull @.str.32)
          to label %.invoke1736 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.on) #24
  br label %.body575

bb.dk:                                            ; preds = %bb.dh
  %i.op = getelementptr inbounds nuw i8, ptr %i.nu, i64 356
  %i.oq = load float, ptr %i.oj, align 1
  store ptr %i.ok, ptr %i.ad, align 8
  store float %i.oq, ptr %i.op, align 4
  %i.or = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load ptr, ptr %i.ag, align 8
  %i.ou = icmp ugt ptr %i.os, %i.ot
  br i1 %i.ou, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.ov = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ov, ptr noundef nonnull @.str.32)
          to label %.invoke1736 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ov) #24
  br label %.body575

bb.dn:                                            ; preds = %bb.dk
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nu, i64 360
  %i.oy = load float, ptr %i.or, align 1
  store ptr %i.os, ptr %i.ad, align 8
  store float %i.oy, ptr %i.ox, align 8
  %i.oz = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 1 ; 3 uses
  store ptr %i.pa, ptr %i.ad, align 8
  %i.pb = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.pc = icmp ugt ptr %i.pa, %i.pb
  br i1 %i.pc, label %bb.do, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit589

bb.do:                                            ; preds = %bb.dn
  %i.pd = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, ptr noundef nonnull @.str.35)
          to label %.invoke1736 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pd) #24
  br label %.body575

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit589: ; preds = %bb.dn
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 129 ; 3 uses
  store ptr %i.pf, ptr %i.ad, align 8
  %i.pg = icmp ugt ptr %i.pf, %i.pb
  %i.ph = load ptr, ptr %22, align 8
  %i.pi = icmp ult ptr %i.pf, %i.ph
  %or.cond.i.i590 = select i1 %i.pg, i1 true, i1 %i.pi
  br i1 %or.cond.i.i590, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit589
  %i.pj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, ptr noundef nonnull @.str.35)
          to label %.invoke1736 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pj) #24
  br label %.body575

bb.ds:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit589
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nu, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.pl, ptr noundef nonnull align 1 dereferenceable(128) %i.pa, i64 128, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nu, i64 161
  store i8 0, ptr %i.pm, align 1
  %i.pn = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 128 ; 3 uses
  store ptr %i.po, ptr %i.ad, align 8
  %i.pp = load ptr, ptr %i.ag, align 8
  %i.pq = icmp ugt ptr %i.po, %i.pp
  %i.pr = load ptr, ptr %22, align 8
  %i.ps = icmp ult ptr %i.po, %i.pr
  %or.cond.i.i595 = select i1 %i.pq, i1 true, i1 %i.ps
  br i1 %or.cond.i.i595, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.pt = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull @.str.35)
          to label %.invoke1736 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pt) #24
  br label %.body575

bb.dv:                                            ; preds = %bb.ds
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nu, i64 162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.pv, ptr noundef nonnull align 1 dereferenceable(128) %i.pn, i64 128, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.nu, i64 290
  store i8 0, ptr %i.pw, align 2
  %indvars.iv.next1377 = add nuw nsw i64 %indvars.iv1376, 1 ; 2 uses
  %exitcond1380.not = icmp eq i64 %indvars.iv.next1377, %wide.trip.count1379
  br i1 %exitcond1380.not, label %._crit_edge1226.loopexit, label %.lr.ph1225, !llvm.loop !18

.loopexit1113:                                    ; preds = %bb.dd, %bb.de, %bb.df, %bb.dg
  %lpad.loopexit1115 = landingpad { ptr, i32 }
          cleanup
  br label %.body575

.loopexit.split-lp1114:                           ; preds = %.invoke1736
  %lpad.loopexit.split-lp1116 = landingpad { ptr, i32 }
          cleanup
  br label %.body575

bb.dw:                                            ; preds = %._crit_edge1226
  %i.px = load float, ptr %i.nm, align 1          ; 3 uses
  store ptr %i.nn, ptr %i.ad, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.pz = icmp ugt ptr %i.py, %i.nl
  br i1 %i.pz, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.qa = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qa, ptr noundef nonnull @.str.32)
          to label %.invoke1738 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qa) #24
  br label %.body575

bb.dz:                                            ; preds = %bb.dw
  store ptr %i.py, ptr %i.ad, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.nm, i64 12 ; 3 uses
  %i.qd = icmp ugt ptr %i.qc, %i.nl
  br i1 %i.qd, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.qe = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef nonnull @.str.32)
          to label %.invoke1738 unwind label %bb.eb

.invoke1738:                                      ; preds = %bb.ea, %bb.dx, %bb.cx
  %i.qf = phi ptr [ %i.qa, %bb.dx ], [ %i.np, %bb.cx ], [ %i.qe, %bb.ea ]
  invoke void @__cxa_throw(ptr nonnull %i.qf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1739 unwind label %bb.eh

.cont1739:                                        ; preds = %.invoke1738
  unreachable

bb.eb:                                            ; preds = %bb.ea
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qe) #24
  br label %.body575

bb.ec:                                            ; preds = %bb.dz
  store ptr %i.qc, ptr %i.ad, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.nm, i64 14 ; 3 uses
  %i.qi = icmp ugt ptr %i.qh, %i.nl
  br i1 %i.qi, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.qj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qj, ptr noundef nonnull @.str.32)
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  invoke void @__cxa_throw(ptr nonnull %i.qj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.noexc607 unwind label %bb.ei

.noexc607:                                        ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qj) #24
  br label %.body575

bb.eg:                                            ; preds = %bb.ec
  %i.ql = load i16, ptr %i.qc, align 1            ; 4 uses
  store ptr %i.qh, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.qm = zext i16 %i.ql to i64                   ; 5 uses
  %.not.i.i.i.i611 = icmp eq i16 %i.ql, 0
  br i1 %.not.i.i.i.i611, label %.loopexit1112.thread, label %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempJointESaIS2_EEC2EmRKS3_.exit.i

.loopexit1112.thread:                             ; preds = %bb.eg
  %i.qn = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %._crit_edge1235

_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempJointESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.eg
  %i.qo = mul nuw nsw i64 %i.qm, 176
  %i.qp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #26
          to label %.noexc617 unwind label %bb.ej ; 4 uses

.noexc617:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempJointESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.qp, ptr %8, align 8
  %i.qq = getelementptr inbounds nuw [176 x i8], ptr %i.qp, i64 %i.qm
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.qq, ptr %i.qr, align 8
  %xtraiter1828 = and i64 %i.qm, 7                ; 2 uses
  %lcmp.mod1829.not = icmp eq i64 %xtraiter1828, 0
  br i1 %lcmp.mod1829.not, label %.lr.ph.i.i.i.i.i612.prol.loopexit, label %.lr.ph.i.i.i.i.i612.prol

.lr.ph.i.i.i.i.i612.prol:                         ; preds = %.noexc617, %.lr.ph.i.i.i.i.i612.prol
  %.08.i.i.i.i.i613.prol = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i612.prol ], [ %i.qp, %.noexc617 ] ; 4 uses
  %.057.i.i.i.i.i614.prol = phi i64 [ %i.qu, %.lr.ph.i.i.i.i.i612.prol ], [ %i.qm, %.noexc617 ]
  %prol.iter1830 = phi i64 [ %prol.iter1830.next, %.lr.ph.i.i.i.i.i612.prol ], [ 0, %.noexc617 ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613.prol, i64 144
  %i.qt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613.prol, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.08.i.i.i.i.i613.prol, i8 0, i64 176, i1 false)
  store ptr %i.qt, ptr %i.qs, align 8
  %i.qu = add nsw i64 %.057.i.i.i.i.i614.prol, -1 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613.prol, i64 176 ; 3 uses
  %prol.iter1830.next = add i64 %prol.iter1830, 1 ; 2 uses
  %prol.iter1830.cmp.not = icmp eq i64 %prol.iter1830.next, %xtraiter1828
  br i1 %prol.iter1830.cmp.not, label %.lr.ph.i.i.i.i.i612.prol.loopexit, label %.lr.ph.i.i.i.i.i612.prol, !llvm.loop !19

.lr.ph.i.i.i.i.i612.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i612.prol, %.noexc617
  %.lcssa1815.unr = phi ptr [ poison, %.noexc617 ], [ %i.qv, %.lr.ph.i.i.i.i.i612.prol ]
  %.08.i.i.i.i.i613.unr = phi ptr [ %i.qp, %.noexc617 ], [ %i.qv, %.lr.ph.i.i.i.i.i612.prol ]
  %.057.i.i.i.i.i614.unr = phi i64 [ %i.qm, %.noexc617 ], [ %i.qu, %.lr.ph.i.i.i.i.i612.prol ]
  %i.qw = icmp ult i16 %i.ql, 8
  br i1 %i.qw, label %.lr.ph1234.preheader, label %.lr.ph.i.i.i.i.i612

.lr.ph.i.i.i.i.i612:                              ; preds = %.lr.ph.i.i.i.i.i612.prol.loopexit, %.lr.ph.i.i.i.i.i612
  %.08.i.i.i.i.i613 = phi ptr [ %i.rv, %.lr.ph.i.i.i.i.i612 ], [ %.08.i.i.i.i.i613.unr, %.lr.ph.i.i.i.i.i612.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i614 = phi i64 [ %i.ru, %.lr.ph.i.i.i.i.i612 ], [ %.057.i.i.i.i.i614.unr, %.lr.ph.i.i.i.i.i612.prol.loopexit ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 144
  %i.qy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.08.i.i.i.i.i613, i8 0, i64 176, i1 false)
  store ptr %i.qy, ptr %i.qx, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 176
  %i.ra = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 320
  %i.rb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.qz, i8 0, i64 176, i1 false)
  store ptr %i.rb, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 352
  %i.rd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 496
  %i.re = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.rc, i8 0, i64 176, i1 false)
  store ptr %i.re, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 528
  %i.rg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 672
  %i.rh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.rf, i8 0, i64 176, i1 false)
  store ptr %i.rh, ptr %i.rg, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 704
  %i.rj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 848
  %i.rk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ri, i8 0, i64 176, i1 false)
  store ptr %i.rk, ptr %i.rj, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 880
  %i.rm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1024
  %i.rn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.rl, i8 0, i64 176, i1 false)
  store ptr %i.rn, ptr %i.rm, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1056
  %i.rp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1200
  %i.rq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ro, i8 0, i64 176, i1 false)
  store ptr %i.rq, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1232
  %i.rs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1376
  %i.rt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.rr, i8 0, i64 176, i1 false)
  store ptr %i.rt, ptr %i.rs, align 8
  %i.ru = add nsw i64 %.057.i.i.i.i.i614, -8      ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i613, i64 1408 ; 2 uses
  %.not.i.i.i.i.i615.7 = icmp eq i64 %i.ru, 0
  br i1 %.not.i.i.i.i.i615.7, label %.lr.ph1234.preheader, label %.lr.ph.i.i.i.i.i612, !llvm.loop !20

.lr.ph1234.preheader:                             ; preds = %.lr.ph.i.i.i.i.i612, %.lr.ph.i.i.i.i.i612.prol.loopexit
  %.lcssa1815 = phi ptr [ %.lcssa1815.unr, %.lr.ph.i.i.i.i.i612.prol.loopexit ], [ %i.rv, %.lr.ph.i.i.i.i.i612 ]
  %i.rw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 15 uses
  store ptr %.lcssa1815, ptr %i.rw, align 8
  %wide.trip.count1384 = zext i16 %i.ql to i64
  br label %.lr.ph1234

._crit_edge1235.loopexit:                         ; preds = %._crit_edge1231
  %.pre1420 = load ptr, ptr %i.ad, align 8
  br label %._crit_edge1235

._crit_edge1235:                                  ; preds = %.loopexit1112.thread, %._crit_edge1235.loopexit
  %i.rx = phi ptr [ %i.rw, %._crit_edge1235.loopexit ], [ %i.qn, %.loopexit1112.thread ] ; 37 uses
  %i.ry = phi ptr [ %.pre1420, %._crit_edge1235.loopexit ], [ %i.qh, %.loopexit1112.thread ] ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.ry to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %i.se = and i64 %i.sd, 4294967295
  %i.sf = icmp samesign ugt i64 %i.se, 4
  br i1 %i.sf, label %bb.gc, label %.critedge

bb.eh:                                            ; preds = %.invoke1738
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %.body575

bb.ei:                                            ; preds = %bb.ee
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body575

bb.ej:                                            ; preds = %_ZNSt12_Vector_baseIN6Assimp12MS3DImporter9TempJointESaIS2_EEC2EmRKS3_.exit.i
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877

.lr.ph1234:                                       ; preds = %.lr.ph1234.preheader, %._crit_edge1231
  %indvars.iv1381 = phi i64 [ 0, %.lr.ph1234.preheader ], [ %indvars.iv.next1382, %._crit_edge1231 ] ; 2 uses
  %i.sj = load ptr, ptr %8, align 8
  %i.sk = getelementptr inbounds nuw [176 x i8], ptr %i.sj, i64 %indvars.iv1381 ; 10 uses
  %i.sl = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1 ; 3 uses
  store ptr %i.sm, ptr %i.ad, align 8
  %i.sn = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.so = icmp ugt ptr %i.sm, %i.sn
  br i1 %i.so, label %bb.ek, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit621

bb.ek:                                            ; preds = %.lr.ph1234
  %i.sp = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sp, ptr noundef nonnull @.str.35)
          to label %.invoke1740 unwind label %bb.el

.invoke1740:                                      ; preds = %bb.fa, %bb.eu, %bb.ep, %bb.em, %bb.ek
  %i.sq = phi ptr [ %i.tq, %bb.eu ], [ %i.sp, %bb.ek ], [ %i.sw, %bb.em ], [ %i.tf, %bb.ep ], [ %i.uk, %bb.fa ]
  invoke void @__cxa_throw(ptr nonnull %i.sq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont1741 unwind label %.loopexit.split-lp1108

.cont1741:                                        ; preds = %.invoke1740
  unreachable

bb.el:                                            ; preds = %bb.ek
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sp) #24
  br label %.body619

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit621: ; preds = %.lr.ph1234
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sl, i64 33 ; 3 uses
  store ptr %i.ss, ptr %i.ad, align 8
  %i.st = icmp ugt ptr %i.ss, %i.sn
  %i.su = load ptr, ptr %22, align 8
  %i.sv = icmp ult ptr %i.ss, %i.su
  %or.cond.i.i622 = select i1 %i.st, i1 true, i1 %i.sv
  br i1 %or.cond.i.i622, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit621
  %i.sw = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sw, ptr noundef nonnull @.str.35)
          to label %.invoke1740 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sw) #24
  br label %.body619

bb.eo:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.sk, ptr noundef nonnull align 1 dereferenceable(32) %i.sm, i64 32, i1 false)
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 32
  store i8 0, ptr %i.sy, align 8
  %i.sz = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32 ; 3 uses
  store ptr %i.ta, ptr %i.ad, align 8
  %i.tb = load ptr, ptr %i.ag, align 8
  %i.tc = icmp ugt ptr %i.ta, %i.tb
  %i.td = load ptr, ptr %22, align 8
  %i.te = icmp ult ptr %i.ta, %i.td
  %or.cond.i.i627 = select i1 %i.tc, i1 true, i1 %i.te
  br i1 %or.cond.i.i627, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.tf = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tf, ptr noundef nonnull @.str.35)
          to label %.invoke1740 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.tg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tf) #24
  br label %.body619

bb.er:                                            ; preds = %bb.eo
  %i.th = getelementptr inbounds nuw i8, ptr %i.sk, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.th, ptr noundef nonnull align 1 dereferenceable(32) %i.sz, i64 32, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sk, i64 65
  store i8 0, ptr %i.ti, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sk, i64 68
  invoke void @_Z10ReadVectorRN6Assimp12StreamReaderILb0ELb0EEER10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.tj)
          to label %bb.es unwind label %.loopexit1107

bb.es:                                            ; preds = %bb.er
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sk, i64 80
  invoke void @_Z10ReadVectorRN6Assimp12StreamReaderILb0ELb0EEER10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.tk)
          to label %bb.et unwind label %.loopexit1107

bb.et:                                            ; preds = %bb.es
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sk, i64 96 ; 4 uses
  %i.tm = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 2 ; 2 uses
  %i.to = load ptr, ptr %i.ag, align 8
  %i.tp = icmp ugt ptr %i.tn, %i.to
  br i1 %i.tp, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.tq = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tq, ptr noundef nonnull @.str.32)
          to label %.invoke1740 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tq) #24
  br label %.body619

bb.ew:                                            ; preds = %bb.et
  %i.ts = load i16, ptr %i.tm, align 1
  store ptr %i.tn, ptr %i.ad, align 8
  %i.tt = sext i16 %i.ts to i64                   ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sk, i64 104 ; 4 uses
  %i.tv = load ptr, ptr %i.tu, align 8            ; 2 uses
  %i.tw = load ptr, ptr %i.tl, align 8            ; 2 uses
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %i.ua = ashr exact i64 %i.tz, 4                 ; 3 uses
  %i.ub = icmp ult i64 %i.ua, %i.tt
  br i1 %i.ub, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.uc = sub nuw nsw i64 %i.tt, %i.ua
  invoke void @_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, i64 noundef %i.uc)
          to label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit unwind label %.loopexit1107

bb.ey:                                            ; preds = %bb.ew
  %i.ud = icmp ugt i64 %i.ua, %i.tt
  br i1 %i.ud, label %bb.ez, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit

bb.ez:                                            ; preds = %bb.ey
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %i.tw, i64 %i.tt ; 2 uses
  %.not.i.i636.a = icmp eq ptr %i.tv, %i.ue
  br i1 %.not.i.i636.a, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.ez
  store ptr %i.ue, ptr %i.tu, align 8
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ez, %bb.ey, %bb.ex
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sk, i64 120 ; 4 uses
  %i.ug = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 2 ; 2 uses
  %i.ui = load ptr, ptr %i.ag, align 8
  %i.uj = icmp ugt ptr %i.uh, %i.ui
  br i1 %i.uj, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit
  %i.uk = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.uk, ptr noundef nonnull @.str.32)
          to label %.invoke1740 unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.uk) #24
  br label %.body619

bb.fc:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit
  %i.um = load i16, ptr %i.ug, align 1
  store ptr %i.uh, ptr %i.ad, align 8
  %i.un = sext i16 %i.um to i64                   ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sk, i64 128 ; 4 uses
  %i.up = load ptr, ptr %i.uo, align 8            ; 2 uses
  %i.uq = load ptr, ptr %i.uf, align 8            ; 2 uses
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = ashr exact i64 %i.ut, 4                 ; 3 uses
  %i.uv = icmp ult i64 %i.uu, %i.un
  br i1 %i.uv, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.uw = sub nuw nsw i64 %i.un, %i.uu
  invoke void @_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.uf, i64 noundef %i.uw)
          to label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645 unwind label %.loopexit1107

bb.fe:                                            ; preds = %bb.fc
  %i.ux = icmp ugt i64 %i.uu, %i.un
  br i1 %i.ux, label %bb.ff, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645

bb.ff:                                            ; preds = %bb.fe
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %i.uq, i64 %i.un ; 2 uses
  %.not.i.i642 = icmp eq ptr %i.up, %i.uy
  br i1 %.not.i.i642, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i643

_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i643: ; preds = %bb.ff
  store ptr %i.uy, ptr %i.uo, align 8
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645

_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645: ; preds = %bb.fd, %bb.fe, %bb.ff, %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i643
  %i.uz = load ptr, ptr %i.tu, align 8
  %i.va = load ptr, ptr %i.tl, align 8            ; 2 uses
  %.not1296 = icmp eq ptr %i.uz, %i.va
  br i1 %.not1296, label %.preheader1106, label %.lr.ph1228

.preheader1106:                                   ; preds = %bb.fp, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645
  %i.vb = load ptr, ptr %i.uo, align 8
  %i.vc = load ptr, ptr %i.uf, align 8            ; 2 uses
  %.not1297 = icmp eq ptr %i.vb, %i.vc
  br i1 %.not1297, label %._crit_edge1231, label %.lr.ph1230

.loopexit1107:                                    ; preds = %bb.er, %bb.es, %bb.ex, %bb.fd
  %lpad.loopexit1109 = landingpad { ptr, i32 }
          cleanup
  br label %.body619

.loopexit.split-lp1108:                           ; preds = %.invoke1740
  %lpad.loopexit.split-lp1110 = landingpad { ptr, i32 }
          cleanup
  br label %.body619

.lr.ph1228:                                       ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645, %bb.fp
  %i.vd = phi ptr [ %i.wp, %bb.fp ], [ %i.va, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645 ]
  %i.ve = phi i64 [ %i.wn, %bb.fp ], [ 0, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645 ]
  %.03591227 = phi i32 [ %i.wm, %bb.fp ], [ 0, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EE6resizeEm.exit645 ]
  %i.vf = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 4 ; 2 uses
  %i.vh = load ptr, ptr %i.ag, align 8
  %i.vi = icmp ugt ptr %i.vg, %i.vh
  br i1 %i.vi, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %.lr.ph1228
  %i.vj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vj, ptr noundef nonnull @.str.32)
          to label %.invoke1742 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vj) #24
  br label %.body619

bb.fi:                                            ; preds = %.lr.ph1228
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %i.vd, i64 %i.ve ; 4 uses
  %i.vm = load float, ptr %i.vf, align 1
  store ptr %i.vg, ptr %i.ad, align 8
  store float %i.vm, ptr %i.vl, align 4
  %i.vn = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 4 ; 2 uses
  %i.vp = load ptr, ptr %i.ag, align 8
  %i.vq = icmp ugt ptr %i.vo, %i.vp
  br i1 %i.vq, label %bb.fj, label %_ZN6Assimp12StreamReaderILb0ELb0EErsIfEERS1_RT_.exit.i650

bb.fj:                                            ; preds = %bb.fi
  %i.vr = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vr, ptr noundef nonnull @.str.32)
          to label %.invoke1742 unwind label %bb.fk

common.resume.i652:                               ; preds = %bb.fo, %bb.fm, %bb.fk
  %.sink.i653 = phi ptr [ %i.wh, %bb.fo ], [ %i.vz, %bb.fm ], [ %i.vr, %bb.fk ]
  %common.resume.op.i654 = phi { ptr, i32 } [ %i.wj, %bb.fo ], [ %i.wa, %bb.fm ], [ %i.vs, %bb.fk ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i653) #24
  br label %.body619

bb.fk:                                            ; preds = %bb.fj
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i652
end_hunk_1
begin_hunk_2_@_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.op:                                            ; preds = %._crit_edge1289, %bb.oo, %._crit_edge1275
  %i.bvn = phi ptr [ %i.biu, %._crit_edge1289 ], [ %i.biu, %bb.oo ], [ %i.bgi, %._crit_edge1275 ] ; 2 uses
  %i.bvo = load ptr, ptr %8, align 8              ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.bvo, %i.bvn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i837

.lr.ph.i.i.i837:                                  ; preds = %bb.op, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bwj, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i ], [ %i.bvo, %bb.op ] ; 7 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 144
  %i.bvq = load ptr, ptr %i.bvp, align 8          ; 2 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 160 ; 2 uses
  %i.bvs = icmp eq ptr %i.bvq, %i.bvr
  br i1 %i.bvs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i837
  %i.bvt = load i64, ptr %i.bvr, align 8
  %i.bvu = add i64 %i.bvt, 1
  call void @_ZdlPvm(ptr noundef %i.bvq, i64 noundef %i.bvu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i837, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bvv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120
  %i.bvw = load ptr, ptr %i.bvv, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.oq

bb.oq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bvx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136
  %i.bvy = load ptr, ptr %i.bvx, align 8
  %i.bvz = ptrtoint ptr %i.bvy to i64
  %i.bwa = ptrtoint ptr %i.bvw to i64
  %i.bwb = sub i64 %i.bvz, %i.bwa
  call void @_ZdlPvm(ptr noundef nonnull %i.bvw, i64 noundef %i.bwb) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.oq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bwc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.bwd = load ptr, ptr %i.bwc, align 8          ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.bwd, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i, label %bb.or

bb.or:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bwe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112
  %i.bwf = load ptr, ptr %i.bwe, align 8
  %i.bwg = ptrtoint ptr %i.bwf to i64
  %i.bwh = ptrtoint ptr %i.bwd to i64
  %i.bwi = sub i64 %i.bwg, %i.bwh
  call void @_ZdlPvm(ptr noundef nonnull %i.bwd, i64 noundef %i.bwi) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i: ; preds = %bb.or, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bwj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i838 = icmp eq ptr %i.bwj, %i.bvn
  br i1 %.not.i.i.i838, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i837, !llvm.loop !40

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.op
  %i.bwk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bvo, %bb.op ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bwk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit, label %bb.os

bb.os:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i
  %i.bwl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bwm = load ptr, ptr %i.bwl, align 8
  %i.bwn = ptrtoint ptr %i.bwm to i64
  %i.bwo = ptrtoint ptr %i.bwk to i64
  %i.bwp = sub i64 %i.bwn, %i.bwo
  call void @_ZdlPvm(ptr noundef nonnull %i.bwk, i64 noundef %i.bwp) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i, %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.bwq = load ptr, ptr %7, align 8              ; 3 uses
  %i.bwr = load ptr, ptr %i.nk, align 8           ; 2 uses
  %.not4.i.i.i839 = icmp eq ptr %i.bwq, %i.bwr
  br i1 %.not4.i.i.i839, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i840

.lr.ph.i.i.i840:                                  ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i
  %.05.i.i.i841 = phi ptr [ %i.bwy, %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i ], [ %i.bwq, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit ] ; 3 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %.05.i.i.i841, i64 368
  %i.bwt = load ptr, ptr %i.bws, align 8          ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %.05.i.i.i841, i64 384 ; 2 uses
  %i.bwv = icmp eq ptr %i.bwt, %i.bwu
  br i1 %i.bwv, label %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i842

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i842: ; preds = %.lr.ph.i.i.i840
  %i.bww = load i64, ptr %i.bwu, align 8
  %i.bwx = add i64 %i.bww, 1
  call void @_ZdlPvm(ptr noundef %i.bwt, i64 noundef %i.bwx) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i840, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i842
  %i.bwy = getelementptr inbounds nuw i8, ptr %.05.i.i.i841, i64 400 ; 2 uses
  %.not.i.i.i843 = icmp eq ptr %i.bwy, %i.bwr
  br i1 %.not.i.i.i843, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i840, !llvm.loop !41

_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i
  %.pr.i844 = load ptr, ptr %7, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit
  %i.bwz = phi ptr [ %.pr.i844, %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bwq, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i845 = icmp eq ptr %i.bwz, null
  br i1 %.not.i.i1.i845, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit, label %bb.ot

bb.ot:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i
  %i.bxa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bxb = load ptr, ptr %i.bxa, align 8
  %i.bxc = ptrtoint ptr %i.bxb to i64
  %i.bxd = ptrtoint ptr %i.bwz to i64
  %i.bxe = sub i64 %i.bxc, %i.bxd
  call void @_ZdlPvm(ptr noundef nonnull %i.bwz, i64 noundef %i.bxe) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i, %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bxf = load ptr, ptr %6, align 8              ; 3 uses
  %i.bxg = load ptr, ptr %i.ji, align 8           ; 2 uses
  %.not4.i.i.i847 = icmp eq ptr %i.bxf, %i.bxg
  br i1 %.not4.i.i.i847, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i848

.lr.ph.i.i.i848:                                  ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i
  %.05.i.i.i849 = phi ptr [ %i.bxu, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i ], [ %i.bxf, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit ] ; 5 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %.05.i.i.i849, i64 72
  %i.bxi = load ptr, ptr %i.bxh, align 8          ; 2 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %.05.i.i.i849, i64 88 ; 2 uses
  %i.bxk = icmp eq ptr %i.bxi, %i.bxj
  br i1 %i.bxk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i850

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i850: ; preds = %.lr.ph.i.i.i848
  %i.bxl = load i64, ptr %i.bxj, align 8
  %i.bxm = add i64 %i.bxl, 1
  call void @_ZdlPvm(ptr noundef %i.bxi, i64 noundef %i.bxm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i851: ; preds = %.lr.ph.i.i.i848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i850
  %i.bxn = getelementptr inbounds nuw i8, ptr %.05.i.i.i849, i64 40
  %i.bxo = load ptr, ptr %i.bxn, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i852 = icmp eq ptr %i.bxo, null
  br i1 %.not.i.i.i.i.i.i.i.i852, label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i, label %bb.ou

bb.ou:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i851
  %i.bxp = getelementptr inbounds nuw i8, ptr %.05.i.i.i849, i64 56
  %i.bxq = load ptr, ptr %i.bxp, align 8
  %i.bxr = ptrtoint ptr %i.bxq to i64
  %i.bxs = ptrtoint ptr %i.bxo to i64
  %i.bxt = sub i64 %i.bxr, %i.bxs
  call void @_ZdlPvm(ptr noundef nonnull %i.bxo, i64 noundef %i.bxt) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i: ; preds = %bb.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i851
  %i.bxu = getelementptr inbounds nuw i8, ptr %.05.i.i.i849, i64 104 ; 2 uses
  %.not.i.i.i853.a = icmp eq ptr %i.bxu, %i.bxg
  br i1 %.not.i.i.i853.a, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i848, !llvm.loop !42

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i
  %.pr.i854 = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit
  %i.bxv = phi ptr [ %.pr.i854, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bxf, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i855 = icmp eq ptr %i.bxv, null
  br i1 %.not.i.i1.i855, label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit, label %bb.ov

bb.ov:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i
  %i.bxw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bxx = load ptr, ptr %i.bxw, align 8
  %i.bxy = ptrtoint ptr %i.bxx to i64
  %i.bxz = ptrtoint ptr %i.bxv to i64
  %i.bya = sub i64 %i.bxy, %i.bxz
  call void @_ZdlPvm(ptr noundef nonnull %i.bxv, i64 noundef %i.bya) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i, %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i857 = icmp eq ptr %.sroa.01041.01665, null
  br i1 %.not.i.i.i857, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempTriangleESaIS2_EED2Ev.exit, label %bb.ow

bb.ow:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit
  %i.byb = ptrtoint ptr %.sroa.01041.01665 to i64
  %i.byc = sub i64 %.sink.i4981671, %i.byb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01041.01665, i64 noundef %i.byc) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempTriangleESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp12MS3DImporter12TempTriangleESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit, %bb.ow
  %.not.i.i.i858 = icmp eq ptr %.sroa.01053.01653, null
  br i1 %.not.i.i.i858, label %_ZNSt6vectorIN6Assimp12MS3DImporter10TempVertexESaIS2_EED2Ev.exit, label %bb.ox

bb.ox:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempTriangleESaIS2_EED2Ev.exit
  %i.byd = ptrtoint ptr %.sroa.01053.01653 to i64
  %i.bye = sub i64 %.sink.i1657, %i.byd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01053.01653, i64 noundef %i.bye) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter10TempVertexESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp12MS3DImporter10TempVertexESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempTriangleESaIS2_EED2Ev.exit, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.byf = load ptr, ptr %22, align 8             ; 2 uses
  %i.byg = icmp eq ptr %i.byf, null
  br i1 %i.byg, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter10TempVertexESaIS2_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.byf) #28
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %_ZNSt6vectorIN6Assimp12MS3DImporter10TempVertexESaIS2_EED2Ev.exit
  %i.byh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.byi = load ptr, ptr %i.byh, align 8          ; 8 uses
  %.not.i.i.i859 = icmp eq ptr %i.byi, null
  br i1 %.not.i.i.i859, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byi, i64 8 ; 4 uses
  %i.byk = load atomic i64, ptr %i.byj acquire, align 8 ; 2 uses
  %i.byl = icmp eq i64 %i.byk, 4294967297
  %i.bym = trunc i64 %i.byk to i32                ; 2 uses
  br i1 %i.byl, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  store i32 0, ptr %i.byj, align 8
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byi, i64 12
  store i32 0, ptr %i.byn, align 4
  %i.byo = load ptr, ptr %i.byi, align 8
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 16
  %i.byq = load ptr, ptr %i.byp, align 8
  call void %i.byq(ptr noundef nonnull align 8 dereferenceable(16) %i.byi) #24, !inline_history !43
  %i.byr = load ptr, ptr %i.byi, align 8
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byr, i64 24
  %i.byt = load ptr, ptr %i.bys, align 8
  call void %i.byt(ptr noundef nonnull align 8 dereferenceable(16) %i.byi) #24, !inline_history !43
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

bb.pc:                                            ; preds = %bb.pa
  %i.byu = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i860 = icmp eq i8 %i.byu, 0
  br i1 %.not.i.i.i.i860, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.byv = add nsw i32 %i.bym, -1
  store i32 %i.byv, ptr %i.byj, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.pe:                                            ; preds = %bb.pc
  %i.byw = atomicrmw volatile add ptr %i.byj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.pe, %bb.pd
  %.0.i.i.i.i.i861 = phi i32 [ %i.bym, %bb.pd ], [ %i.byw, %bb.pe ]
  %i.byx = icmp eq i32 %.0.i.i.i.i.i861, 1
  br i1 %i.byx, label %bb.pf, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, !prof !44

bb.pf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.byi) #24
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit:      ; preds = %bb.oz, %bb.pb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

.body619:                                         ; preds = %.loopexit1093, %.loopexit.split-lp1094, %.loopexit1107, %.loopexit.split-lp1108, %bb.oa, %bb.ob, %bb.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, %bb.gv, %bb.gl, %bb.hh, %bb.gt, %bb.ge, %bb.gp, %bb.gu, %bb.hx, %bb.hs, %bb.hp, %bb.hn, %bb.hy, %bb.fs, %common.resume.i667, %bb.gb, %bb.fh, %common.resume.i652, %bb.fq, %bb.el, %bb.eq, %bb.fb, %bb.ev, %bb.en, %bb.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit808, %bb.no, %bb.np, %bb.nn, %bb.nm, %bb.jr, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED2Ev.exit798, %bb.js, %bb.ip, %bb.iq, %bb.jh, %bb.jk, %bb.gs
  %i.byy = phi ptr [ %i.rx, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED2Ev.exit798 ], [ %i.rw, %common.resume.i667 ], [ %i.rx, %bb.np ], [ %i.rx, %bb.gs ], [ %i.rx, %bb.jk ], [ %i.rx, %bb.ip ], [ %i.rw, %bb.fb ], [ %i.rw, %common.resume.i652 ], [ %i.rx, %bb.jh ], [ %i.rx, %bb.iq ], [ %i.rx, %bb.jr ], [ %i.rw, %.loopexit.split-lp1108 ], [ %i.rx, %bb.js ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit808 ], [ %i.rx, %bb.nc ], [ %i.rx, %bb.nn ], [ %i.rx, %bb.nm ], [ %i.rx, %bb.oa ], [ %i.rx, %bb.hn ], [ %i.rx, %bb.no ], [ %i.rw, %bb.el ], [ %i.rw, %bb.en ], [ %i.rw, %bb.eq ], [ %i.rw, %bb.ev ], [ %i.rx, %bb.ob ], [ %i.rw, %bb.fh ], [ %i.rw, %bb.fq ], [ %i.rw, %bb.fs ], [ %i.rw, %bb.gb ], [ %i.rx, %bb.hs ], [ %i.rx, %bb.hc ], [ %i.rx, %bb.hh ], [ %i.rx, %bb.gv ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696 ], [ %i.rx, %bb.gp ], [ %i.rx, %bb.ge ], [ %i.rx, %bb.gl ], [ %i.rx, %bb.gt ], [ %i.rx, %bb.gu ], [ %i.rx, %bb.hp ], [ %i.rx, %bb.hx ], [ %i.rx, %bb.hy ], [ %i.rw, %.loopexit1107 ], [ %i.rx, %.loopexit1093 ], [ %i.rx, %.loopexit.split-lp1094 ]
  %.pn441.pn = phi { ptr, i32 } [ %.pn424.pn, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED2Ev.exit798 ], [ %common.resume.op.i669, %common.resume.i667 ], [ %i.biz, %bb.np ], [ %i.zr, %bb.gs ], [ %i.akc, %bb.jk ], [ %i.aha, %bb.ip ], [ %i.ul, %bb.fb ], [ %common.resume.op.i654, %common.resume.i652 ], [ %.pn433, %bb.jh ], [ %i.ahb, %bb.iq ], [ %i.alq, %bb.jr ], [ %lpad.loopexit.split-lp1110, %.loopexit.split-lp1108 ], [ %i.alr, %bb.js ], [ %i.bgl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit808 ], [ %i.bgk, %bb.nc ], [ %i.bix, %bb.nn ], [ %i.biw, %bb.nm ], [ %i.bml, %bb.oa ], [ %i.abo, %bb.hn ], [ %i.biy, %bb.no ], [ %i.sr, %bb.el ], [ %i.sx, %bb.en ], [ %i.tg, %bb.eq ], [ %i.tr, %bb.ev ], [ %i.bmm, %bb.ob ], [ %i.vk, %bb.fh ], [ %i.wv, %bb.fq ], [ %i.xd, %bb.fs ], [ %i.yo, %bb.gb ], [ %i.aby, %bb.hs ], [ %i.aak, %bb.hc ], [ %i.abc, %bb.hh ], [ %i.zu, %bb.gv ], [ %i.aal, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696 ], [ %i.zh, %bb.gp ], [ %i.yt, %bb.ge ], [ %i.zb, %bb.gl ], [ %i.zs, %bb.gt ], [ %i.zt, %bb.gu ], [ %i.abq, %bb.hp ], [ %i.adh, %bb.hx ], [ %i.adi, %bb.hy ], [ %lpad.loopexit1109, %.loopexit1107 ], [ %lpad.loopexit1095, %.loopexit1093 ], [ %lpad.loopexit.split-lp1096, %.loopexit.split-lp1094 ] ; 2 uses
  %i.byz = load ptr, ptr %8, align 8              ; 3 uses
  %i.bza = load ptr, ptr %i.byy, align 8          ; 2 uses
  %.not4.i.i.i862 = icmp eq ptr %i.byz, %i.bza
  br i1 %.not4.i.i.i862, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i874, label %.lr.ph.i.i.i863

.lr.ph.i.i.i863:                                  ; preds = %.body619, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i870
  %.05.i.i.i864 = phi ptr [ %i.bzv, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i870 ], [ %i.byz, %.body619 ] ; 7 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 144
  %i.bzc = load ptr, ptr %i.bzb, align 8          ; 2 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 160 ; 2 uses
  %i.bze = icmp eq ptr %i.bzc, %i.bzd
  br i1 %i.bze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i866, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i865

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i865: ; preds = %.lr.ph.i.i.i863
  %i.bzf = load i64, ptr %i.bzd, align 8
  %i.bzg = add i64 %i.bzf, 1
  call void @_ZdlPvm(ptr noundef %i.bzc, i64 noundef %i.bzg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i866

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i866: ; preds = %.lr.ph.i.i.i863, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i865
  %i.bzh = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 120
  %i.bzi = load ptr, ptr %i.bzh, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i867 = icmp eq ptr %i.bzi, null
  br i1 %.not.i.i.i.i.i.i.i.i867, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i868, label %bb.pg

bb.pg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i866
  %i.bzj = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 136
  %i.bzk = load ptr, ptr %i.bzj, align 8
  %i.bzl = ptrtoint ptr %i.bzk to i64
  %i.bzm = ptrtoint ptr %i.bzi to i64
  %i.bzn = sub i64 %i.bzl, %i.bzm
  call void @_ZdlPvm(ptr noundef nonnull %i.bzi, i64 noundef %i.bzn) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i868

_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i868: ; preds = %bb.pg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i866
  %i.bzo = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 96
  %i.bzp = load ptr, ptr %i.bzo, align 8          ; 3 uses
  %.not.i.i.i1.i.i.i.i.i869 = icmp eq ptr %i.bzp, null
  br i1 %.not.i.i.i1.i.i.i.i.i869, label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i870, label %bb.ph

bb.ph:                                            ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i868
  %i.bzq = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 112
  %i.bzr = load ptr, ptr %i.bzq, align 8
  %i.bzs = ptrtoint ptr %i.bzr to i64
  %i.bzt = ptrtoint ptr %i.bzp to i64
  %i.bzu = sub i64 %i.bzs, %i.bzt
  call void @_ZdlPvm(ptr noundef nonnull %i.bzp, i64 noundef %i.bzu) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i870

_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i870: ; preds = %bb.ph, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempKeyFrameESaIS2_EED2Ev.exit.i.i.i.i.i868
  %i.bzv = getelementptr inbounds nuw i8, ptr %.05.i.i.i864, i64 176 ; 2 uses
  %.not.i.i.i871 = icmp eq ptr %i.bzv, %i.bza
  br i1 %.not.i.i.i871, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i872, label %.lr.ph.i.i.i863, !llvm.loop !40

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i872: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempJointEEvPT_.exit.i.i.i870
  %.pr.i873 = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i874

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i874: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i872, %.body619
  %i.bzw = phi ptr [ %.pr.i873, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i872 ], [ %i.byz, %.body619 ] ; 3 uses
  %.not.i.i1.i875 = icmp eq ptr %i.bzw, null
  br i1 %.not.i.i1.i875, label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877, label %bb.pi

bb.pi:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i874
  %i.bzx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bzy = load ptr, ptr %i.bzx, align 8
  %i.bzz = ptrtoint ptr %i.bzy to i64
  %i.caa = ptrtoint ptr %i.bzw to i64
  %i.cab = sub i64 %i.bzz, %i.caa
  call void @_ZdlPvm(ptr noundef nonnull %i.bzw, i64 noundef %i.cab) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877

_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877: ; preds = %bb.pi, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i874, %bb.ej
  %.pn441.pn.pn = phi { ptr, i32 } [ %i.si, %bb.ej ], [ %.pn441.pn, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempJointES2_EvT_S4_RSaIT0_E.exit.i874 ], [ %.pn441.pn, %bb.pi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body575

.body575:                                         ; preds = %.loopexit1113, %.loopexit.split-lp1114, %bb.dy, %bb.eb, %bb.eh, %bb.cy, %bb.ei, %bb.ef, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877, %bb.dc, %bb.dm, %bb.dr, %bb.du, %bb.dp, %bb.dj
  %i.cac = phi ptr [ %i.nj, %bb.du ], [ %i.nj, %bb.dc ], [ %i.nj, %bb.dj ], [ %i.nj, %bb.dm ], [ %i.nj, %bb.dp ], [ %i.nj, %bb.dr ], [ %i.nk, %bb.ef ], [ %i.nk, %bb.eb ], [ %i.nk, %bb.cy ], [ %i.nk, %bb.dy ], [ %i.nk, %bb.eh ], [ %i.nk, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877 ], [ %i.nk, %bb.ei ], [ %i.nj, %.loopexit1113 ], [ %i.nj, %.loopexit.split-lp1114 ]
  %.pn447 = phi { ptr, i32 } [ %i.pu, %bb.du ], [ %i.od, %bb.dc ], [ %i.oo, %bb.dj ], [ %i.ow, %bb.dm ], [ %i.pe, %bb.dp ], [ %i.pk, %bb.dr ], [ %i.qk, %bb.ef ], [ %i.qg, %bb.eb ], [ %i.nq, %bb.cy ], [ %i.qb, %bb.dy ], [ %i.sg, %bb.eh ], [ %.pn441.pn.pn, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempJointESaIS2_EED2Ev.exit877 ], [ %i.sh, %bb.ei ], [ %lpad.loopexit1115, %.loopexit1113 ], [ %lpad.loopexit.split-lp1116, %.loopexit.split-lp1114 ] ; 2 uses
  %i.cad = load ptr, ptr %7, align 8              ; 3 uses
  %i.cae = load ptr, ptr %i.cac, align 8          ; 2 uses
  %.not4.i.i.i878 = icmp eq ptr %i.cad, %i.cae
  br i1 %.not4.i.i.i878, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i886, label %.lr.ph.i.i.i879

.lr.ph.i.i.i879:                                  ; preds = %.body575, %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i882
  %.05.i.i.i880 = phi ptr [ %i.cal, %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i882 ], [ %i.cad, %.body575 ] ; 3 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %.05.i.i.i880, i64 368
  %i.cag = load ptr, ptr %i.caf, align 8          ; 2 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %.05.i.i.i880, i64 384 ; 2 uses
  %i.cai = icmp eq ptr %i.cag, %i.cah
  br i1 %i.cai, label %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i882, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i881

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i881: ; preds = %.lr.ph.i.i.i879
  %i.caj = load i64, ptr %i.cah, align 8
  %i.cak = add i64 %i.caj, 1
  call void @_ZdlPvm(ptr noundef %i.cag, i64 noundef %i.cak) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i882

_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i882: ; preds = %.lr.ph.i.i.i879, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i881
  %i.cal = getelementptr inbounds nuw i8, ptr %.05.i.i.i880, i64 400 ; 2 uses
  %.not.i.i.i883 = icmp eq ptr %i.cal, %i.cae
  br i1 %.not.i.i.i883, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i884, label %.lr.ph.i.i.i879, !llvm.loop !41

_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i884: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter12TempMaterialEEvPT_.exit.i.i.i882
  %.pr.i885 = load ptr, ptr %7, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i886

_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i886: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i884, %.body575
  %i.cam = phi ptr [ %.pr.i885, %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i884 ], [ %i.cad, %.body575 ] ; 3 uses
  %.not.i.i1.i887 = icmp eq ptr %i.cam, null
  br i1 %.not.i.i1.i887, label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889, label %bb.pj

bb.pj:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i886
  %i.can = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cao = load ptr, ptr %i.can, align 8
  %i.cap = ptrtoint ptr %i.cao to i64
  %i.caq = ptrtoint ptr %i.cam to i64
  %i.car = sub i64 %i.cap, %i.caq
  call void @_ZdlPvm(ptr noundef nonnull %i.cam, i64 noundef %i.car) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889

_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889: ; preds = %bb.pj, %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i886, %bb.da
  %.pn447.pn = phi { ptr, i32 } [ %i.ns, %bb.da ], [ %.pn447, %_ZSt8_DestroyIPN6Assimp12MS3DImporter12TempMaterialES2_EvT_S4_RSaIT0_E.exit.i886 ], [ %.pn447, %bb.pj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body541

.body541:                                         ; preds = %.loopexit1119, %.loopexit.split-lp1120, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889, %bb.bz, %bb.cz, %bb.co, %bb.ci, %bb.cs, %bb.cu, %bb.cd, %bb.cf, %bb.cp
  %i.cas = phi ptr [ %i.jh, %bb.cs ], [ %i.jh, %bb.cf ], [ %i.jh, %bb.cd ], [ %i.jh, %bb.cp ], [ %i.jh, %bb.co ], [ %i.jh, %bb.ci ], [ %i.ji, %bb.bz ], [ %i.jh, %bb.cu ], [ %i.ji, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889 ], [ %i.ji, %bb.cz ], [ %i.jh, %.loopexit1119 ], [ %i.jh, %.loopexit.split-lp1120 ]
  %.pn451.pn.pn = phi { ptr, i32 } [ %i.lo, %bb.cs ], [ %i.kf, %bb.cf ], [ %i.jy, %bb.cd ], [ %i.li, %bb.cp ], [ %i.lh, %bb.co ], [ %i.kn, %bb.ci ], [ %i.jo, %bb.bz ], [ %i.lt, %bb.cu ], [ %.pn447.pn, %_ZNSt6vectorIN6Assimp12MS3DImporter12TempMaterialESaIS2_EED2Ev.exit889 ], [ %i.nr, %bb.cz ], [ %lpad.loopexit1121, %.loopexit1119 ], [ %lpad.loopexit.split-lp1122, %.loopexit.split-lp1120 ] ; 2 uses
  %i.cat = load ptr, ptr %6, align 8              ; 3 uses
  %i.cau = load ptr, ptr %i.cas, align 8          ; 2 uses
  %.not4.i.i.i890 = icmp eq ptr %i.cat, %i.cau
  br i1 %.not4.i.i.i890, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i900, label %.lr.ph.i.i.i891

.lr.ph.i.i.i891:                                  ; preds = %.body541, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i896
  %.05.i.i.i892 = phi ptr [ %i.cbi, %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i896 ], [ %i.cat, %.body541 ] ; 5 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %.05.i.i.i892, i64 72
  %i.caw = load ptr, ptr %i.cav, align 8          ; 2 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %.05.i.i.i892, i64 88 ; 2 uses
  %i.cay = icmp eq ptr %i.caw, %i.cax
  br i1 %i.cay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i894, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i893

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i893: ; preds = %.lr.ph.i.i.i891
  %i.caz = load i64, ptr %i.cax, align 8
  %i.cba = add i64 %i.caz, 1
  call void @_ZdlPvm(ptr noundef %i.caw, i64 noundef %i.cba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i894

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i894: ; preds = %.lr.ph.i.i.i891, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i893
  %i.cbb = getelementptr inbounds nuw i8, ptr %.05.i.i.i892, i64 40
  %i.cbc = load ptr, ptr %i.cbb, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i895 = icmp eq ptr %i.cbc, null
  br i1 %.not.i.i.i.i.i.i.i.i895, label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i896, label %bb.pk

bb.pk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i894
  %i.cbd = getelementptr inbounds nuw i8, ptr %.05.i.i.i892, i64 56
  %i.cbe = load ptr, ptr %i.cbd, align 8
  %i.cbf = ptrtoint ptr %i.cbe to i64
  %i.cbg = ptrtoint ptr %i.cbc to i64
  %i.cbh = sub i64 %i.cbf, %i.cbg
  call void @_ZdlPvm(ptr noundef nonnull %i.cbc, i64 noundef %i.cbh) #28
  br label %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i896

_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i896: ; preds = %bb.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i894
  %i.cbi = getelementptr inbounds nuw i8, ptr %.05.i.i.i892, i64 104 ; 2 uses
  %.not.i.i.i897 = icmp eq ptr %i.cbi, %i.cau
  br i1 %.not.i.i.i897, label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i898, label %.lr.ph.i.i.i891, !llvm.loop !42

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i898: ; preds = %_ZSt8_DestroyIN6Assimp12MS3DImporter9TempGroupEEvPT_.exit.i.i.i896
  %.pr.i899 = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i900

_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i900: ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i898, %.body541
  %i.cbj = phi ptr [ %.pr.i899, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i898 ], [ %i.cat, %.body541 ] ; 3 uses
  %.not.i.i1.i901 = icmp eq ptr %i.cbj, null
  br i1 %.not.i.i1.i901, label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit903, label %bb.pl

bb.pl:                                            ; preds = %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i900
  %i.cbk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cbl = load ptr, ptr %i.cbk, align 8
  %i.cbm = ptrtoint ptr %i.cbl to i64
  %i.cbn = ptrtoint ptr %i.cbj to i64
  %i.cbo = sub i64 %i.cbm, %i.cbn
  call void @_ZdlPvm(ptr noundef nonnull %i.cbj, i64 noundef %i.cbo) #28
  br label %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit903

_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit903: ; preds = %bb.pl, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i900, %bb.cb
  %.pn451.pn.pn.pn = phi { ptr, i32 } [ %i.jq, %bb.cb ], [ %.pn451.pn.pn, %_ZSt8_DestroyIPN6Assimp12MS3DImporter9TempGroupES2_EvT_S4_RSaIT0_E.exit.i900 ], [ %.pn451.pn.pn, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body506

.body506:                                         ; preds = %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit903, %bb.an, %bb.ca
  %.pn457.pn = phi { ptr, i32 } [ %i.jp, %bb.ca ], [ %i.dl, %bb.an ], [ %.pn451.pn.pn.pn, %_ZNSt6vectorIN6Assimp12MS3DImporter9TempGroupESaIS2_EED2Ev.exit903 ] ; 2 uses
  %.not.i.i.i904 = icmp eq ptr %.sroa.01041.01665, null
  br i1 %.not.i.i.i904, label %.body486, label %.body506.thread1677

.body506.thread1677:                              ; preds = %bb.bs, %bb.bl, %bb.bf, %bb.aw, %bb.as, %bb.bn, %bb.ar, %bb.bi, %common.resume.i, %bb.av, %bb.bq, %.body506.thread, %.body506
  %.sink.i4981669 = phi i64 [ %i.df, %.body506.thread ], [ %.sink.i4981671, %.body506 ], [ %i.df, %bb.bq ], [ %i.df, %bb.av ], [ %i.df, %common.resume.i ], [ %i.df, %bb.bi ], [ %i.df, %bb.ar ], [ %i.df, %bb.bn ], [ %i.df, %bb.as ], [ %i.df, %bb.aw ], [ %i.df, %bb.bf ], [ %i.df, %bb.bl ], [ %i.df, %bb.bs ]
  %.sroa.01041.01663 = phi ptr [ %i.dd, %.body506.thread ], [ %.sroa.01041.01665, %.body506 ], [ %i.dd, %bb.bq ], [ %i.dd, %bb.av ], [ %i.dd, %common.resume.i ], [ %i.dd, %bb.bi ], [ %i.dd, %bb.ar ], [ %i.dd, %bb.bn ], [ %i.dd, %bb.as ], [ %i.dd, %bb.aw ], [ %i.dd, %bb.bf ], [ %i.dd, %bb.bl ], [ %i.dd, %bb.bs ] ; 2 uses
  %.pn457.pn1071 = phi { ptr, i32 } [ %i.hs, %.body506.thread ], [ %.pn457.pn, %.body506 ], [ %i.gx, %bb.bq ], [ %i.dx, %bb.av ], [ %common.resume.op.i, %common.resume.i ], [ %i.gg, %bb.bi ], [ %i.du, %bb.ar ], [ %i.gv, %bb.bn ], [ %i.dv, %bb.as ], [ %i.em, %bb.aw ], [ %i.ge, %bb.bf ], [ %i.gt, %bb.bl ], [ %i.hk, %bb.bs ]
  %i.cbp = ptrtoint ptr %.sroa.01041.01663 to i64
  %i.cbq = sub i64 %.sink.i4981669, %i.cbp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01041.01663, i64 noundef %i.cbq) #28
  br label %.body486

.body486:                                         ; preds = %bb.y, %bb.ao, %.body506.thread1677, %.body506, %bb.ap
  %.pn462 = phi { ptr, i32 } [ %.pn457.pn, %.body506 ], [ %i.dm, %bb.ao ], [ %.pn457.pn1071, %.body506.thread1677 ], [ %i.dn, %bb.ap ], [ %i.bv, %bb.y ] ; 2 uses
  %.not.i.i.i906 = icmp eq ptr %.sroa.01053.01653, null
  br i1 %.not.i.i.i906, label %.body, label %.body486.thread

.body486.thread:                                  ; preds = %.loopexit.split-lp1129, %.loopexit1128, %bb.ac, %bb.af, %bb.ai, %.body486
  %.sink.i1655 = phi i64 [ %.sink.i1657, %.body486 ], [ %i.bo, %bb.af ], [ %i.bo, %bb.ai ], [ %i.bo, %bb.ac ], [ %i.bo, %.loopexit1128 ], [ %i.bo, %.loopexit.split-lp1129 ]
  %.sroa.01053.01651 = phi ptr [ %.sroa.01053.01653, %.body486 ], [ %i.bm, %bb.af ], [ %i.bm, %bb.ai ], [ %i.bm, %bb.ac ], [ %i.bm, %.loopexit1128 ], [ %i.bm, %.loopexit.split-lp1129 ] ; 2 uses
  %.pn4621075 = phi { ptr, i32 } [ %.pn462, %.body486 ], [ %i.cl, %bb.af ], [ %i.cs, %bb.ai ], [ %i.cf, %bb.ac ], [ %lpad.loopexit1130, %.loopexit1128 ], [ %lpad.loopexit.split-lp1131, %.loopexit.split-lp1129 ]
  %i.cbr = ptrtoint ptr %.sroa.01053.01651 to i64
  %i.cbs = sub i64 %.sink.i1655, %i.cbr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01053.01651, i64 noundef %i.cbs) #28
  br label %.body

.body:                                            ; preds = %bb.u, %bb.z, %.body486.thread, %.body486, %bb.aa, %bb.g, %bb.j, %bb.m, %bb.q, %bb.n
  %.pn466 = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bc, %bb.n ], [ %i.be, %bb.q ], [ %i.ak, %bb.g ], [ %i.bb, %bb.m ], [ %i.bi, %bb.u ], [ %i.bw, %bb.z ], [ %i.bx, %bb.aa ], [ %.pn462, %.body486 ], [ %.pn4621075, %.body486.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.cbt = load ptr, ptr %22, align 8             ; 2 uses
  %i.cbu = icmp eq ptr %i.cbt, null
  br i1 %i.cbu, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.cbt) #28
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %.body
  %i.cbv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cbw = load ptr, ptr %i.cbv, align 8          ; 8 uses
  %.not.i.i.i908 = icmp eq ptr %i.cbw, null
  br i1 %.not.i.i.i908, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 8 ; 4 uses
  %i.cby = load atomic i64, ptr %i.cbx acquire, align 8 ; 2 uses
  %i.cbz = icmp eq i64 %i.cby, 4294967297
  %i.cca = trunc i64 %i.cby to i32                ; 2 uses
  br i1 %i.cbz, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  store i32 0, ptr %i.cbx, align 8
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbw, i64 12
  store i32 0, ptr %i.ccb, align 4
  %i.ccc = load ptr, ptr %i.cbw, align 8
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 16
  %i.cce = load ptr, ptr %i.ccd, align 8
  call void %i.cce(ptr noundef nonnull align 8 dereferenceable(16) %i.cbw) #24, !inline_history !43
  %i.ccf = load ptr, ptr %i.cbw, align 8
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccf, i64 24
  %i.cch = load ptr, ptr %i.ccg, align 8
  call void %i.cch(ptr noundef nonnull align 8 dereferenceable(16) %i.cbw) #24, !inline_history !43
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912

bb.pq:                                            ; preds = %bb.po
  %i.cci = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i909 = icmp eq i8 %i.cci, 0
  br i1 %.not.i.i.i.i909, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ccj = add nsw i32 %i.cca, -1
  store i32 %i.ccj, ptr %i.cbx, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i910

bb.ps:                                            ; preds = %bb.pq
  %i.cck = atomicrmw volatile add ptr %i.cbx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i910

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i910: ; preds = %bb.ps, %bb.pr
  %.0.i.i.i.i.i911 = phi i32 [ %i.cca, %bb.pr ], [ %i.cck, %bb.ps ]
  %i.ccl = icmp eq i32 %.0.i.i.i.i.i911, 1
  br i1 %i.ccl, label %bb.pt, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912, !prof !44

bb.pt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i910
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cbw) #24
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912:   ; preds = %bb.pn, %bb.pp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i910, %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.pu

bb.pu:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472
  %.pn466.pn = phi { ptr, i32 } [ %.pn466, %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit912 ], [ %i.ab, %bb.d ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ]
  resume { ptr, i32 } %.pn466.pn

bb.pv:                                            ; preds = %bb.kq, %bb.ki, %bb.jz, %bb.jq, %bb.jj
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA22_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #24 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1) #24, !inline_history !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #25
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.m = zext i1 %2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.o, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.p, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store i8 %i.m, ptr %i.r, align 8
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  ret void

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  br label %common.resume
}

end_hunk_2
