Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt10_HashtableI33AtomNonbondedAndKineticPropertiesSt4pairIKS0_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.r = or i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %.02530, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !234
  %i.u = sext i16 %i.t to i64
  %i.v = shl nsw i64 %i.u, 32
  %i.w = or i64 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.02530, i64 20
  %i.y = load i16, ptr %i.x, align 4, !tbaa !25
  %i.z = sext i16 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 48
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.02530, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !250
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.ab, %i.af
  %i.ah = urem i64 %i.ag, %1                      ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !260 ; 2 uses
  %.not27 = icmp eq ptr %i.aj, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !252
  store ptr %i.ak, ptr %.02530, align 8, !tbaa !253
  store ptr %.02530, ptr %i.g, align 8, !tbaa !252
  store ptr %i.g, ptr %i.ai, align 8, !tbaa !260
  %i.al = load ptr, ptr %.02530, align 8, !tbaa !253
  %.not28 = icmp eq ptr %i.al, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.am, align 8, !tbaa !260
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !253
  store ptr %i.an, ptr %.02530, align 8, !tbaa !253
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !260
  store ptr %.02530, ptr %i.ao, align 8, !tbaa !253
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.ah, %bb.f ], [ %i.ah, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !329

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableI33AtomNonbondedAndKineticPropertiesSt4pairIKS0_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !228   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt10_HashtableI33AtomNonbondedAndKineticPropertiesSt4pairIKS0_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !229
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.au) #27
  br label %_ZNSt10_HashtableI33AtomNonbondedAndKineticPropertiesSt4pairIKS0_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableI33AtomNonbondedAndKineticPropertiesSt4pairIKS0_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.av, align 8, !tbaa !229
  store ptr %.0.i, ptr %0, align 8, !tbaa !228
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

declare noundef float @_Z18calc_ewaldcoeff_ljff(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #13

declare noundef float @_Z17calc_ewaldcoeff_qff(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare float @erfcf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef float @_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t(i1 noundef zeroext %0, i1 noundef zeroext %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #17 {
bb.a:
  %i.a = fmul float %5, %5                        ; 2 uses
  %i.b = fmul float %2, 2.000000e+00              ; 3 uses
  %i.c = fmul float %i.b, 8.000000e+00
  %i.d = fmul float %i.c, 8.000000e+00
  %i.e = fcmp ogt float %i.a, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fmul float %3, %5
  %i.g = fdiv float %i.f, %2                      ; 3 uses
  %i.h = fneg float %i.g                          ; 2 uses
  %i.i = fmul float %i.g, %i.h
  %i.j = fmul float %3, 2.000000e+00              ; 3 uses
  %i.k = fdiv float %i.i, %i.j
  %i.l = tail call noundef float @expf(float noundef %i.k) #26 ; 3 uses
  %i.m = tail call noundef float @sqrtf(float noundef %i.j) #26
  %i.n = fdiv float %i.g, %i.m
  %i.o = tail call noundef float @erfcf(float noundef %i.n) #26
  %i.p = fpext float %i.h to double
  %i.q = fpext float %i.j to double
  %i.r = fdiv double %i.q, f0x400921FB54442D18
  %i.s = tail call double @sqrt(double noundef %i.r) #26
  %i.t = fpext float %i.l to double
  %i.u = fmul double %i.s, %i.t
  %i.v = fpext float %i.o to double               ; 4 uses
  %i.w = fdiv double %i.u, %i.v
  %i.x = fadd double %i.w, %i.p
  %i.y = fptrunc double %i.x to float
  %i.z = fmul float %i.l, %i.l
  %i.aa = fpext float %i.z to double
  %i.ab = fmul double %i.v, f0x400921FB54442D18
  %i.ac = fmul double %i.ab, %i.v
  %i.ad = fdiv double %i.aa, %i.ac
  %i.ae = tail call double @exp(double noundef %i.ad) #26
  %i.af = fmul double %i.ae, f0x3FF921FB54442D18
  %i.ag = fmul double %i.af, %i.v
  %i.ah = fptrunc double %i.ag to float
  %i.ai = fadd float %5, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi float [ %i.ah, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %.0 = phi float [ %i.ai, %bb.c ], [ %5, %bb.b ] ; 2 uses
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = fmul float %4, %5
  %i.ak = fdiv float %i.aj, %2                    ; 3 uses
  %i.al = fneg float %i.ak                        ; 2 uses
  %i.am = fmul float %i.ak, %i.al
  %i.an = fmul float %4, 2.000000e+00             ; 3 uses
  %i.ao = fdiv float %i.am, %i.an
  %i.ap = tail call noundef float @expf(float noundef %i.ao) #26 ; 3 uses
  %i.aq = tail call noundef float @sqrtf(float noundef %i.an) #26
  %i.ar = fdiv float %i.ak, %i.aq
  %i.as = tail call noundef float @erfcf(float noundef %i.ar) #26
  %i.at = fpext float %i.al to double
  %i.au = fpext float %i.an to double
  %i.av = fdiv double %i.au, f0x400921FB54442D18
  %i.aw = tail call double @sqrt(double noundef %i.av) #26
  %i.ax = fpext float %i.ap to double
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = fpext float %i.as to double             ; 4 uses
  %i.ba = fdiv double %i.ay, %i.az
  %i.bb = fadd double %i.ba, %i.at
  %i.bc = fptrunc double %i.bb to float
  %i.bd = fmul float %i.ap, %i.ap
  %i.be = fpext float %i.bd to double
  %i.bf = fmul double %i.az, f0x400921FB54442D18
  %i.bg = fmul double %i.bf, %i.az
  %i.bh = fdiv double %i.be, %i.bg
  %i.bi = tail call double @exp(double noundef %i.bh) #26
  %i.bj = fmul double %i.bi, f0x3FF921FB54442D18
  %i.bk = fmul double %i.bj, %i.az
  %i.bl = fptrunc double %i.bk to float
  %i.bm = fadd float %.0, %i.bc
  %i.bn = fmul float %.067, %i.bl
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.168 = phi float [ %i.bn, %bb.e ], [ %.067, %bb.d ]
  %.1 = phi float [ %i.bm, %bb.e ], [ %.0, %bb.d ] ; 6 uses
  %i.bo = fneg float %.1
  %i.bp = fmul float %.1, %i.bo
  %i.bq = fdiv float %i.bp, %i.b
  %i.br = tail call noundef float @expf(float noundef %i.bq) #26
  %i.bs = fpext float %i.br to double
  %i.bt = fdiv double %i.bs, f0x40040D931FF62705
  %i.bu = fptrunc double %i.bt to float
  %i.bv = tail call noundef float @sqrtf(float noundef %i.b) #26
  %i.bw = fdiv float %.1, %i.bv
  %i.bx = tail call noundef float @erfcf(float noundef %i.bw) #26
  %i.by = fmul float %i.bx, 5.000000e-01
  %.pre = fmul float %.1, %.1
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bu, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.pre-phi = phi float [ %i.a, %bb.a ], [ %.pre, %bb.f ] ; 7 uses
  %.269 = phi float [ 1.000000e+00, %bb.a ], [ %.168, %bb.f ]
  %.2 = phi float [ %5, %bb.a ], [ %.1, %bb.f ]   ; 3 uses
  %i.cb = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ca, %bb.f ] ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cd = fneg <2 x float> %i.cb
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = fadd float %2, %.pre-phi
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = tail call float @llvm.fmuladd.f32(float %2, float 2.000000e+00, float %.pre-phi)
  %i.ci = tail call float @llvm.fmuladd.f32(float %2, float 3.000000e+00, float %.pre-phi)
  %i.cj = fmul float %.2, %i.ci
  %i.ck = fmul float %.pre-phi, 6.000000e+00
  %i.cl = fmul float %2, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %.pre-phi, float %.pre-phi, float %i.cl)
  %i.cn = fmul float %2, 3.000000e+00
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %2, float %i.cm)
  %i.cp = tail call float @llvm.fmuladd.f32(float %2, float 5.000000e+00, float %.pre-phi)
  %7 = tail call noundef float @sqrtf(float noundef %2) #26 ; 3 uses
  %i.cq = load <2 x float>, ptr %6, align 4, !tbaa !27
  %8 = fmul float %.2, %7                         ; 2 uses
  %i.cr = fmul float %7, %i.ch
  %i.cs = load <2 x float>, ptr %i.cg, align 4, !tbaa !27
  %i.ct = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cu = insertelement <4 x float> %i.ct, float 1.000000e+00, i64 0
  %i.cv = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cx = insertelement <4 x float> poison, float %.269, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = fmul <4 x float> %i.cw, %i.cy           ; 2 uses
  %i.da = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float 5.000000e-01, float 6.000000e+00, float 2.400000e+01>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.db = fmul <4 x float> %i.cz, %i.da
  %i.dc = fdiv <4 x float> %i.cz, %i.da
  %i.dd = shufflevector <4 x float> %i.db, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %9 = fmul float %8, %i.cp
  %i.de = insertelement <4 x float> poison, float %.2, i64 0
  %i.df = insertelement <4 x float> %i.de, float %8, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.cj, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %9, i64 3
  %i.di = fmul <4 x float> %i.dh, %i.ce
  %i.dj = insertelement <4 x float> poison, float %7, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.cf, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.cr, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.co, i64 3
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.cc, <4 x float> %i.di)
  %i.do = fmul <4 x float> %i.dn, %i.dd           ; 4 uses
  %shift = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.do, %shift
  %shift77 = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop78 = fadd <4 x float> %foldExtExtBinop, %shift77
  %shift80 = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop81 = fadd <4 x float> %foldExtExtBinop78, %shift80
  %i.dp = extractelement <4 x float> %foldExtExtBinop81, i64 0
  ret float %i.dp
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #13

declare noundef i32 @_ZN3gmx18nonbondedMtsFactorERK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress uwtable
define noundef float @_Z25verletBufferPressureErrorRK10gmx_mtop_tfRK10t_inputrecibfRK18VerletbufListSetup(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(888) %2, i32 noundef %3, i1 noundef zeroext %4, float noundef %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %10 = alloca %"class.std::vector.90", align 8   ; 9 uses
  %11 = alloca %"struct.std::pair", align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128
  switch i32 %i.b, label %bb.b [
    i32 0, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.j
    i32 9, label %bb.j
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1535) #25
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.e, %bb.h ], [ %i.d, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.f = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.c, %bb.f ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.w

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.k = tail call noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %2)
  br i1 %i.k, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.m = load float, ptr %i.l, align 4, !tbaa !332
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.n = tail call noundef float @_Z23maxReferenceTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi float [ %i.m, %bb.k ], [ %i.n, %bb.l ] ; 2 uses
  %i.o = fcmp ugt float %.0, 0.000000e+00
  br i1 %i.o, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.p = load i32, ptr %i.a, align 4, !tbaa !128
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.s = load float, ptr %i.r, align 8, !tbaa !129
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.u = phi i1 [ false, %bb.n ], [ %i.t, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130
  %i.x = icmp ne i32 %i.w, 0
  call fastcc void @_ZL24getVerletBufferAtomtypesRK10gmx_mtop_tbb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(768) %0, i1 noundef zeroext %i.u, i1 noundef zeroext %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !192
  %i.aa = fptrunc double %i.z to float
  invoke fastcc void @_ZL17getVdwDerivativesRK10t_inputrecf(ptr dead_on_unwind noalias writable align 4 %11, ptr noundef nonnull align 8 dereferenceable(888) %2, float noundef %i.aa)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %10, align 8, !tbaa !136  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !203
  %i.al = invoke fastcc noundef float @_ZL13pressureErrorN3gmx8ArrayRefIK17VerletbufAtomtypeEERK14gmx_ffparams_tRK10t_inputrecfRKSt4pairI17pot_derivatives_tSB_EbifRK18VerletbufListSetupif(ptr %i.ac, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(888) %2, float noundef %.0, ptr noundef nonnull align 4 dereferenceable(32) %11, i1 noundef zeroext %4, i32 noundef %3, float noundef %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.ak, float noundef %1)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !204
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ap) #27
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.v

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ar = load ptr, ptr %10, align 8, !tbaa !136  ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit39, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !204
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #27
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit39

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit39: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.w

bb.v:                                             ; preds = %bb.m, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit
  %.032 = phi float [ %i.al, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit ], [ 0.000000e+00, %bb.m ]
  ret float %.032
end_hunk_0
