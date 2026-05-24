inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj:bb.a
  store ptr %i.kp, ptr %i.kn, align 8
  %i.kw = fmul float %i.kv, f0x3C8EFA35
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.fp, align 4 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %i.fr, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0 ; 4 uses
  %.sroa.0.4.vec.extract11.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 1 ; 4 uses
  %i.kx = fmul float %.sroa.0.4.vec.extract11.i, %.sroa.0.4.vec.extract11.i
  %i.ky = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.kx)
  %i.kz = call noundef float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float %.sroa.25.0.copyload, float %i.ky) ; 2 uses
  %i.la = fcmp oeq float %i.kz, 0.000000e+00
  br i1 %i.la, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.kz)
  %i.lb = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.lc = fmul float %.sroa.0.0.vec.extract8.i, %i.lb
  %i.ld = fmul float %.sroa.0.4.vec.extract11.i, %i.lb
  %i.le = fmul float %.sroa.25.0.copyload, %i.lb
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.0.4.vec.extract.pre-phi.i = phi float [ %.sroa.0.4.vec.extract11.i, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.ld, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.0.0.vec.extract.pre-phi.i = phi float [ %.sroa.0.0.vec.extract8.i, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.lc, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i = phi float [ %.sroa.25.0.copyload, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.le, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.lf = fmul float %i.kw, 5.000000e-01          ; 2 uses
  %i.lg = call noundef float @sinf(float noundef %i.lf) #28 ; 3 uses
  %i.lh = call noundef float @cosf(float noundef %i.lf) #28 ; 4 uses
  %i.li = fmul float %.sroa.0.0.vec.extract.pre-phi.i, %i.lg ; 10 uses
  %i.lj = fmul float %.sroa.0.4.vec.extract.pre-phi.i, %i.lg ; 10 uses
  %i.lk = fmul float %.sroa.7.0.i, %i.lg          ; 8 uses
  %i.ll = fmul float %i.lk, %i.lk                 ; 2 uses
  %i.lm = call float @llvm.fmuladd.f32(float %i.lj, float %i.lj, float %i.ll)
  %i.ln = call float @llvm.fmuladd.f32(float %i.lm, float -2.000000e+00, float 1.000000e+00)
  %i.lo = fneg float %i.lh                        ; 3 uses
  %i.lp = fmul float %i.lk, %i.lo
  %i.lq = call float @llvm.fmuladd.f32(float %i.li, float %i.lj, float %i.lp)
  %i.lr = fmul float %i.lq, 2.000000e+00
  %i.ls = fmul float %i.lj, %i.lh
  %i.lt = call float @llvm.fmuladd.f32(float %i.li, float %i.lk, float %i.ls)
  %i.lu = fmul float %i.lt, 2.000000e+00
  %i.lv = fmul float %i.lk, %i.lh
  %i.lw = call float @llvm.fmuladd.f32(float %i.li, float %i.lj, float %i.lv)
  %i.lx = fmul float %i.lw, 2.000000e+00
  %i.ly = call float @llvm.fmuladd.f32(float %i.li, float %i.li, float %i.ll)
  %i.lz = call float @llvm.fmuladd.f32(float %i.ly, float -2.000000e+00, float 1.000000e+00)
  %i.ma = fmul float %i.li, %i.lo
  %i.mb = call float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.ma)
  %i.mc = fmul float %i.mb, 2.000000e+00
  %i.md = fmul float %i.lj, %i.lo
  %i.me = call float @llvm.fmuladd.f32(float %i.li, float %i.lk, float %i.md)
  %i.mf = fmul float %i.me, 2.000000e+00
  %i.mg = fmul float %i.li, %i.lh
  %i.mh = call float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.mg)
  %i.mi = fmul float %i.mh, 2.000000e+00
  %i.mj = fmul float %i.lj, %i.lj
  %i.mk = call float @llvm.fmuladd.f32(float %i.li, float %i.li, float %i.mj)
  %i.ml = call float @llvm.fmuladd.f32(float %i.mk, float -2.000000e+00, float 1.000000e+00)
  %i.mm = call float @llvm.fmuladd.f32(float %i.ln, float 0.000000e+00, float %i.lr)
  %i.mn = call float @llvm.fmuladd.f32(float %i.lu, float 0.000000e+00, float %i.mm)
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mo = call float @llvm.fmuladd.f32(float %i.lx, float 0.000000e+00, float %i.lz)
  %i.mp = call float @llvm.fmuladd.f32(float %i.mc, float 0.000000e+00, float %i.mo)
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.mp, i64 1
  %i.mq = call float @llvm.fmuladd.f32(float %i.mf, float 0.000000e+00, float %i.mi)
  %i.mr = call float @llvm.fmuladd.f32(float %i.ml, float 0.000000e+00, float %i.mq)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.fm, i64 1040
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.ms, align 4
  store float %i.mr, ptr %i.fo, align 4
  %i.mt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8            ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = icmp ugt ptr %i.mw, %i.my
  br i1 %i.mz, label %bb.ca, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63

bb.ca:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.na = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.na, ptr noundef nonnull @.str.39)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @__cxa_throw(ptr nonnull %i.na, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.na) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63: ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.nc = load float, ptr %i.mv, align 1
  store ptr %i.mw, ptr %i.mu, align 8
  %i.nd = fmul float %i.nc, f0x3C8EFA35           ; 2 uses
  %i.ne = fcmp olt float %i.nd, 1.000000e-03
  %storemerge = select i1 %i.ne, float f0x3F490FDB, float %i.nd
  store float %storemerge, ptr %i.fs, align 4
  %i.nf = load i8, ptr %i.w, align 1, !range !30, !noundef !31
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63
  call void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63, %bb.cd, %bb.an, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.nh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  store ptr %i.nj, ptr %i.nk, align 8
  %i.nl = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40 ; 2 uses
  %i.nn = and i64 %i.bc, 4294967295               ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967295
  br i1 %i.no, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %i.nq = load ptr, ptr %i.np, align 8
  store ptr %i.nq, ptr %i.nm, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.cg:                                            ; preds = %bb.ce
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nn ; 2 uses
  store ptr %i.nt, ptr %i.nm, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = icmp ugt ptr %i.nt, %i.nv
  br i1 %i.nw, label %bb.ch, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.ch:                                            ; preds = %bb.cg
  %i.nx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, ptr noundef nonnull @.str.41)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @__cxa_throw(ptr nonnull %i.nx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nx) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64: ; preds = %bb.cf, %bb.cg
  %i.nz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 2 uses
  %i.oh = and i64 %i.og, 4294967295
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %.thread, label %bb.ck

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.ck:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  %.pre-phi130 = phi i64 [ %.pre129, %._crit_edge ], [ %i.og, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.oj = and i64 %.pre-phi130, 4294967294
  %i.ok = icmp samesign ult i64 %i.oj, 6
  br i1 %i.ok, label %.loopexit, label %bb.b

bb.cl:                                            ; preds = %bb.bu, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %lpad.phi109, %bb.am ], [ %lpad.phi, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.ck, %bb.a, %.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !38
  store i8 0, ptr %i.b, align 8, !alias.scope !38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8, !noalias !38    ; 2 uses
  %5 = icmp ugt ptr %i.e, %4
  %.08.i.i.i = select i1 %5, ptr %i.e, ptr %4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38 ; 2 uses
  %i.h = ptrtoint ptr %.08.i.i.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.g, i64 noundef %i.j)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !alias.scope !38 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.b, align 8, !alias.scope !38
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #29
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %2, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter18ParseMaterialChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967294
  %i.l = icmp samesign ult i64 %i.k, 6
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.q = load i32, ptr %i.m, align 2
  %i.r = add i32 %i.q, -6                         ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  %.pre = load ptr, ptr %i.b, align 8             ; 7 uses
  br i1 %i.s, label %._crit_edge64, label %bb.c, !llvm.loop !39

._crit_edge64:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre67 = load ptr, ptr %.phi.trans.insert66, align 8
  %.pre68 = ptrtoint ptr %.pre65 to i64
  %.pre69 = ptrtoint ptr %.pre67 to i64
  %.pre71 = sub i64 %.pre68, %.pre69
  br label %bb.bd, !llvm.loop !39

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nsw i32 %i.r, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ab, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %i.ac, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp ugt ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.al, %bb.k, %bb.h
  %.sink = phi ptr [ %i.hw, %bb.bc ], [ %i.ev, %bb.al ], [ %i.ay, %bb.k ], [ %i.am, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.hx, %bb.bc ], [ %i.ew, %bb.al ], [ %i.az, %bb.k ], [ %i.an, %bb.h ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.ao = ptrtoint ptr %i.ad to i64
  %i.ap = sub i64 %i.ao, %i.y
  %i.aq = load i16, ptr %1, align 2
  switch i16 %i.aq, label %bb.ax [
    i16 -24576, label %bb.i
    i16 -24544, label %bb.z
    i16 -24528, label %bb.ab
    i16 -24560, label %bb.ad
    i16 -24448, label %bb.af
    i16 -24496, label %bb.ah
    i16 -24320, label %bb.ai
    i16 -24447, label %bb.am
    i16 -24512, label %bb.an
    i16 -24511, label %bb.ao
    i16 -24444, label %bb.ap
    i16 -24064, label %bb.aq
    i16 -24016, label %bb.ar
    i16 -24048, label %bb.as
    i16 -23748, label %bb.at
    i16 -24060, label %bb.au
    i16 -23747, label %bb.av
    i16 -24032, label %bb.aw
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ar = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp ugt ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit

._crit_edge:                                      ; preds = %bb.i, %bb.l
end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3DS4MeshD2Ev:bb.a
  %.not.i.i.i2.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i2.i, label %_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #29
  br label %_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev.exit

_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3:   ; preds = %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !134
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !134
  store i8 0, ptr %i.a, align 8, !alias.scope !134
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !134 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load ptr, ptr %3, align 8, !noalias !134   ; 2 uses
  %5 = icmp ugt ptr %i.d, %4
  %.08.i.i.i.i = select i1 %5, ptr %i.d, ptr %4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !noalias !134 ; 2 uses
  %i.g = ptrtoint ptr %.08.i.i.i.i to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.i)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !alias.scope !134 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.o = load ptr, ptr %2, align 8
  %i.p = load i64, ptr %i.b, align 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = load i64, ptr %i.a, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.l, %bb.c ], [ %i.w, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.v, %bb.e ]
  %i.y = load i64, ptr %i.a, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.z) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.v, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #28
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA21_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i8 %.sroa.4.8.copyload, ptr %i.am, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i8 %.sroa.4.8.copyload, ptr %i.an, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 36
  store i8 %.sroa.4.8.copyload, ptr %i.ao, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ap = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !144

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.ar = phi ptr [ %i.d, %bb.i ], [ %.lcssa141.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.ar, ptr %i.c, align 8
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.j
  store ptr %i.as, ptr %i.c, align 8
  br label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i70 ], [ %i.ar, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i71, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i72, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 12
  %.not.i.i.i.i.i73 = icmp eq ptr %i.at, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !139

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.j
  store ptr %i.aw, ptr %i.c, align 8
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ax, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 4
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 12 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ax, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !142

_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit:   ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.f, %i.az
  %i.bb = sdiv exact i64 %i.ba, 12                ; 4 uses
  %i.bc = sub nsw i64 768614336404564650, %i.bb
  %i.bd = icmp ult i64 %i.bc, %2
  br i1 %i.bd, label %bb.k, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %2)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 768614336404564650)
  %i.bh = select i1 %i.bf, i64 768614336404564650, i64 %i.bg ; 3 uses
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = sub i64 %i.bi, %i.az
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bk = mul nuw nsw i64 %i.bh, 12
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #31
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.bm = phi ptr [ %i.bl, %bb.l ], [ null, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj ; 2 uses
  %xtraiter145 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i82.prol ], [ %i.bn, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ]
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83.prol, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bo = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 12 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !145

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bn, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ], [ %i.bp, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ], [ %i.bo, %.lr.ph.i.i.i.i82.prol ]
  %i.bq = icmp ult i64 %2, 4
  br i1 %i.bq, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bu = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !144

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.ay, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i89 ], [ %i.bm, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i89 ], [ %i.ay, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i91, i64 12, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 12 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bw, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !139

_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.bm, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bx, %.lr.ph.i.i.i.i.i89 ]
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i95 ], [ %i.by, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i97, i64 12, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 12 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.bz, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !139

_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.by, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ca, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.ay, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cd) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, %bb.m
  store ptr %i.bm, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bh
  store ptr %i.ce, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA10_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(10) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(10) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !158
  store i8 0, ptr %i.c, align 8, !alias.scope !158
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !158 ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !158   ; 2 uses
  %7 = icmp ugt ptr %i.f, %6
  %.08.i.i.i.i.i = select i1 %7, ptr %i.f, ptr %6
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !158 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !alias.scope !158 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !alias.scope !158
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #29
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.s, ptr %4, align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %4, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #28
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.af) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.m
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 696                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 13251971317320080)
  %i.l = select i1 %i.j, i64 13251971317320080, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 696                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(689) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(689) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 696 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !159

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #28 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i.i.i.i.i) #28, !inline_history !160
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 696 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 696 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 696, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.ac, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(689) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 696 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 696 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !159

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #28 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 696
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i.i.i.i.i34, align 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i.i.i.i.i34) #28, !inline_history !160
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 696 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ai, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #32
end_hunk_2
begin_hunk_3_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_lET_S8_S8_S8_T1_S9_T0_S9_:bb.a
  br i1 %i.ar, label %.lr.ph.i.i.i, label %bb.ab

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %1, %bb.aa ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %0, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.04.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.08.i.i.i, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %9, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_.exit, label %.lr.ph.i.i.i, !llvm.loop !222

bb.ab:                                            ; preds = %bb.aa
  %i.au = sub i64 %i.aj, %i.an
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.056.i.i = phi i64 [ %i.am, %bb.ab ], [ %.056.i.i.be, %.backedge ] ; 5 uses
  %.0.i.i = phi i64 [ %i.ap, %bb.ab ], [ %.0.i.i.be, %.backedge ] ; 12 uses
  %.sroa.026.0.i.i = phi ptr [ %0, %bb.ab ], [ %.sroa.026.0.i.i.be, %.backedge ] ; 7 uses
  %i.aw = sub nsw i64 %.056.i.i, %.0.i.i          ; 8 uses
  %i.ax = icmp slt i64 %.0.i.i, %i.aw
  br i1 %i.ax, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ay = icmp sgt i64 %i.aw, 0
  br i1 %i.ay, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %bb.ad
  %i.az = getelementptr inbounds [32 x i8], ptr %.sroa.026.0.i.i, i64 %.0.i.i ; 2 uses
  %.neg = add i64 %.0.i.i, 1
  %xtraiter60 = and i64 %i.aw, 1
  %i.ba = icmp eq i64 %.056.i.i, %.neg
  br i1 %i.ba, label %.lr.ph66.i.i.epil.preheader, label %.lr.ph66.preheader.i.i.new

.lr.ph66.preheader.i.i.new:                       ; preds = %.lr.ph66.preheader.i.i
  %unroll_iter64 = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph66.i.i

._crit_edge67.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph66.i.i
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %._crit_edge67.i.i, label %.lr.ph66.i.i.epil.preheader

.lr.ph66.i.i.epil.preheader:                      ; preds = %._crit_edge67.i.i.loopexit.unr-lcssa, %.lr.ph66.preheader.i.i
  %.sroa.025.063.i.i.epil.init = phi ptr [ %i.az, %.lr.ph66.preheader.i.i ], [ %i.bg, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.162.i.i.epil.init = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i ], [ %i.bf, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod63 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.026.162.i.i.epil.init, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.026.162.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.063.i.i.epil.init, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.063.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(28) %8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i.epil.init, i64 32
  br label %._crit_edge67.i.i

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.epil.preheader, %._crit_edge67.i.i.loopexit.unr-lcssa, %bb.ad
  %.sroa.026.1.lcssa.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.ad ], [ %i.bf, %._crit_edge67.i.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph66.i.i.epil.preheader ]
  %i.bc = srem i64 %.056.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_.exit, label %bb.ae

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i, %.lr.ph66.preheader.i.i.new
  %.sroa.025.063.i.i = phi ptr [ %i.az, %.lr.ph66.preheader.i.i.new ], [ %i.bg, %.lr.ph66.i.i ] ; 4 uses
  %.sroa.026.162.i.i = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i.new ], [ %i.bf, %.lr.ph66.i.i ] ; 4 uses
  %niter65 = phi i64 [ 0, %.lr.ph66.preheader.i.i.new ], [ %niter65.next.1, %.lr.ph66.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.026.162.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.026.162.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.063.i.i, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.063.i.i, ptr noundef nonnull align 8 dereferenceable(28) %8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, ptr noundef nonnull align 8 dereferenceable(28) %i.be, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.be, ptr noundef nonnull align 8 dereferenceable(28) %8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 64 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 64 ; 2 uses
  %niter65.next.1 = add i64 %niter65, 2           ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %niter65.next.1, %unroll_iter64
  br i1 %niter65.ncmp.1, label %._crit_edge67.i.i.loopexit.unr-lcssa, label %.lr.ph66.i.i, !llvm.loop !223

bb.ae:                                            ; preds = %._crit_edge67.i.i
  %i.bh = sub nsw i64 %.0.i.i, %i.bc
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds [32 x i8], ptr %.sroa.026.0.i.i, i64 %.056.i.i ; 3 uses
  %i.bj = sub i64 0, %i.aw
  %i.bk = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bl, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %xtraiter = and i64 %.0.i.i, 1
  %i.bm = icmp eq i64 %.0.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.0.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.060.i.i.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bt, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.sroa.026.259.i.i.epil.init = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.epil.init, i64 -32 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.056.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.ae ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !224

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.060.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.sroa.026.259.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, ptr noundef nonnull align 8 dereferenceable(28) %i.br, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -64 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bs, ptr noundef nonnull align 8 dereferenceable(28) %i.bt, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bt, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !225

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_.exit: ; preds = %._crit_edge.i.i, %._crit_edge67.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit, %_ZSt4moveIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit
  %.sroa.032.0 = phi ptr [ %i.p, %_ZSt4moveIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge67.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !238
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !238
  store i8 0, ptr %i.k, align 8, !alias.scope !238
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !238 ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !238   ; 2 uses
  %7 = icmp ugt ptr %i.n, %6
  %.08.i.i.i.i.i = select i1 %7, ptr %i.n, ptr %6
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !noalias !238 ; 2 uses
  %i.q = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.s)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %0, align 8, !alias.scope !238 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.k, align 8, !alias.scope !238
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #29
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.d
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aa, ptr %4, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %4, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #28
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #28
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !239

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !242

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

end_hunk_3
