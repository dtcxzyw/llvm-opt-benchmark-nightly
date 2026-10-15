Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_rotations?download=true
inline.NumInlined: 604
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6colvar11orientation4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store ptr %i.nk, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nm = load ptr, ptr %i.nc, align 8, !tbaa !119 ; 2 uses
  store ptr %i.nm, ptr %i.nl, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.no = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %i.ne ; 2 uses
  store ptr %i.no, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.ne
  store ptr %i.nq, ptr %i.np, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.na, i64 56
  store i64 %i.nd, ptr %i.nr, align 8, !tbaa !172
  %i.ns = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  store i64 %i.ne, ptr %i.ns, align 8, !tbaa !173
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !98 ; 2 uses
  store ptr %i.na, ptr %i.nt, align 8, !tbaa !98
  %.not.i.i.i.i180 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i180, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i.i.i: ; preds = %bb.be
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef 712) #17
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit

bb.bf:                                            ; preds = %._crit_edge221
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bb
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.be, %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i.i.i, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.557 = phi i32 [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.251, %bb.ak ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ 0, %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i.i.i ], [ 0, %bb.be ]
  %i.ny = load ptr, ptr %2, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit
  %i.nz = load ptr, ptr %i.o, align 8, !tbaa !160
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.ny to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.oc) #17
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.j
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.bf, %bb.j ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn69.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.nx, %bb.bh ], [ %.pn76.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.nw, %bb.bg ], [ %i.nv, %bb.bf ]
  %i.od = load ptr, ptr %2, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit183, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !160
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.od to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.oi) #17
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit183

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit183: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn84.pn

bb.bl:                                            ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, %bb.c
  %.658 = phi i32 [ %i.m, %bb.c ], [ %.557, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit ]
  ret i32 %.658
}

declare noundef i32 @_ZN6colvar3cvc17init_dependenciesEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6colvar3cvc8featuresEv(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6colvar3cvc15modify_featuresEv(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

declare void @_ZN6colvar3cvc14get_atom_listsEv(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc9read_dataEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar17orientation_angle10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(2312) initializes((1616, 1640), (1680, 1688)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 16    ; 7 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1528
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.f = load double, ptr %i.e, align 8, !tbaa !115, !noalias !176
  %i.g = fneg double %i.f
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !108, !noalias !176
  %i.i = fneg <2 x double> %i.h
  store <2 x double> %i.i, ptr %2, align 16, !tbaa !108, !alias.scope !176
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.g, ptr %i.j, align 16, !tbaa !115, !alias.scope !176
  call void @_ZNK12colvarmodule10atom_group17positions_shiftedERKNS_7rvectorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = load <2 x ptr>, ptr %1, align 16, !tbaa !119
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !101
  store ptr %i.q, ptr %i.m, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #17
  %.pr = load ptr, ptr %1, align 16, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.u = load ptr, ptr %i.p, align 16, !tbaa !101
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pr to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  call void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ab, i64 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.ag = load double, ptr %i.af, align 8, !tbaa !123 ; 3 uses
  %i.ah = fcmp ult double %i.ag, 0.000000e+00
  %i.ai = fneg double %i.ag
  %.sink4 = select i1 %i.ah, double %i.ai, double %i.ag
  %i.aj = call noundef double @acos(double noundef %.sink4) #18
  %.sink = fmul double %i.aj, f0x405CA5DC1A63C1F8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %.sink, ptr %i.ak, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar17orientation_angle14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2312) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.b = load double, ptr %i.a, align 8, !tbaa !123 ; 5 uses
  %i.c = fcmp oge double %i.b, 0.000000e+00
  %i.d = fmul double %i.b, %i.b
  %i.e = fcmp olt double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fneg double %i.b
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.b, double 1.000000e+00)
  %i.h = tail call noundef double @sqrt(double noundef %i.g) #18
  %i.i = fdiv double f0xC05CA5DC1A63C1F8, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = fneg double %i.j
  %i.l = select i1 %i.c, double %i.j, double %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  tail call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %i.n, i32 noundef 2)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !98   ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load double, ptr %i.p, align 8, !tbaa !108, !noalias !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %1 = load double, ptr %i.v, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %2 = load double, ptr %i.w, align 8, !tbaa !108, !noalias !183
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %i.y = load double, ptr %i.u, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %4 = load double, ptr %3, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %5 = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.aa = load <2 x double>, ptr %i.s, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %6 = insertelement <2 x double> poison, double %i.q, i64 0 ; 2 uses
  %i.ab = insertelement <2 x double> %6, double %2, i64 1 ; 2 uses
  %i.ac = fadd <2 x double> %i.ab, %i.aa          ; 2 uses
  %i.ad = load <2 x double>, ptr %i.x, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.af = fsub <2 x double> %i.ac, %i.ae
  %i.ag = fadd <2 x double> %i.ac, %i.ae
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3> ; 2 uses
  %7 = insertelement <2 x double> poison, double %1, i64 0
  %i.ai = insertelement <2 x double> %7, double %i.y, i64 1 ; 2 uses
  %i.aj = fsub <2 x double> %i.ah, %i.ai
  %i.ak = fadd <2 x double> %i.ah, %i.ai
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = insertelement <2 x double> poison, double %i.l, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ao = fmul <2 x double> %i.an, %i.al          ; 3 uses
  %8 = shufflevector <2 x double> %i.aa, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %9 = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 1, i32 2>
  %10 = fsub <2 x double> %8, %9                  ; 2 uses
  %11 = fadd <2 x double> %10, %i.ad
  %12 = insertelement <2 x double> poison, double %i.y, i64 0
  %13 = insertelement <2 x double> %12, double %1, i64 1
  %foldExtExtBinop.a = fsub <2 x double> %11, %13
  %14 = fmul <2 x double> %i.an, %foldExtExtBinop.a ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %16 = load double, ptr %15, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %17 = load double, ptr %i.r, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.ap = fadd double %16, %17
  %18 = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %19 = load double, ptr %18, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %20 = fadd double %i.ap, %19
  %21 = fneg double %16
  %22 = load double, ptr %i.z, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %23 = fsub double %22, %4
  %24 = load double, ptr %i.t, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %25 = fsub double %23, %24
  %26 = load <2 x double>, ptr %5, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %i.aq = extractelement <2 x double> %26, i64 0
  %i.ar = fadd double %25, %i.aq
  %27 = fmul double %i.l, %i.ar                   ; 2 uses
  %i.as = extractelement <2 x double> %26, i64 1
  %i.at = fadd double %20, %i.as
  %i.au = fmul double %i.l, %i.at                 ; 2 uses
  %28 = fadd double %4, %22
  %29 = fsub double %21, %17
  %30 = insertelement <2 x double> poison, double %28, i64 0
  %31 = insertelement <2 x double> %30, double %29, i64 1
  %32 = insertelement <2 x double> poison, double %24, i64 0
  %33 = insertelement <2 x double> %32, double %19, i64 1
  %i.av = fadd <2 x double> %31, %33
  %i.aw = fadd <2 x double> %i.av, %26
  %i.ax = fmul <2 x double> %i.an, %i.aw          ; 3 uses
  %shift = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fsub <2 x double> %shift, %i.ae
  %i.ay = extractelement <2 x double> %foldExtExtBinop69, i64 0
  %i.az = fadd double %i.ay, %1
  %i.ba = fmul double %i.l, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1144
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107 ; 9 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !125, !noalias !184 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !125, !noalias !184 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125, !noalias !184 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 1272
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !100 ; 3 uses
  %.idx.i = shl i64 %i.be, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.be, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bn = ptrtoaddr ptr %i.bm to i64              ; 5 uses
  %i.bo = ptrtoaddr ptr %i.bk to i64              ; 3 uses
  %i.bp = ptrtoaddr ptr %i.bi to i64              ; 3 uses
  %i.bq = ptrtoaddr ptr %i.bg to i64              ; 3 uses
  %i.br = shl i64 %i.be, 3                        ; 2 uses
  %i.bs = add i64 %i.br, -1
  %diff.check = icmp ult i64 %i.bs, 15
  %i.bt = sub i64 %i.bq, %i.bn
  %diff.check32 = icmp ugt i64 %i.bt, -16
  %conflict.rdx33 = or i1 %diff.check, %diff.check32
  %i.bu = sub i64 %i.bp, %i.bn
  %diff.check34 = icmp ugt i64 %i.bu, -16
  %conflict.rdx35 = or i1 %conflict.rdx33, %diff.check34
  %i.bv = sub i64 %i.bo, %i.bn
  %diff.check36 = icmp ugt i64 %i.bv, -16
  %conflict.rdx37 = or i1 %conflict.rdx35, %diff.check36
  %i.bw = add i64 %i.br, %i.bn                    ; 3 uses
  %i.bx = sub i64 %i.bq, %i.bw
  %diff.check38 = icmp ugt i64 %i.bx, -16
  %conflict.rdx39 = or i1 %conflict.rdx37, %diff.check38
  %i.by = sub i64 %i.bp, %i.bw
  %diff.check40 = icmp ugt i64 %i.by, -16
  %conflict.rdx41 = or i1 %conflict.rdx39, %diff.check40
  %i.bz = sub i64 %i.bo, %i.bw
  %diff.check42 = icmp ugt i64 %i.bz, -16
  %conflict.rdx43 = or i1 %conflict.rdx41, %diff.check42
  %i.ca = add i64 %.idx.i, %i.bn                  ; 3 uses
  %i.cb = sub i64 %i.bq, %i.ca
  %diff.check44 = icmp ugt i64 %i.cb, -16
  %conflict.rdx45 = or i1 %conflict.rdx43, %diff.check44
  %i.cc = sub i64 %i.bp, %i.ca
  %diff.check46 = icmp ugt i64 %i.cc, -16
  %conflict.rdx47 = or i1 %conflict.rdx45, %diff.check46
  %i.cd = sub i64 %i.bo, %i.ca
  %diff.check48 = icmp ugt i64 %i.cd, -16
  %conflict.rdx49 = or i1 %conflict.rdx47, %diff.check48
  br i1 %conflict.rdx49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, -2                      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat51 = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat53 = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat55 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat57 = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat59 = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %i.au, i64 0
  %broadcast.splat61 = shufflevector <2 x double> %broadcast.splatinsert60, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %27, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.ba, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %index
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !108, !noalias !184 ; 3 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %index
  %wide.load66 = load <2 x double>, ptr %i.cf, align 8, !tbaa !108, !noalias !184 ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %index
  %wide.load67 = load <2 x double>, ptr %i.cg, align 8, !tbaa !108, !noalias !184 ; 3 uses
  %i.ch = fmul <2 x double> %broadcast.splat, %wide.load66
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat51, <2 x double> %wide.load, <2 x double> %i.ch)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load67, <2 x double> %i.ci)
  %i.ck = fmul <2 x double> %broadcast.splat55, %wide.load66
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat57, <2 x double> %wide.load, <2 x double> %i.ck)
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %wide.load67, <2 x double> %i.cl)
  %i.cn = fmul <2 x double> %broadcast.splat61, %wide.load66
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat63, <2 x double> %wide.load, <2 x double> %i.cn)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat65, <2 x double> %wide.load67, <2 x double> %i.co)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index ; 3 uses
  store <2 x double> %i.cj, ptr %i.cq, align 8, !tbaa !108
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.be
  store <2 x double> %i.cm, ptr %i.cr, align 8, !tbaa !108
  %i.cs = getelementptr i8, ptr %i.cq, i64 %.idx.i
  store <2 x double> %i.cp, ptr %i.cs, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.dr, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.011
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !108, !noalias !184 ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.011
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !108, !noalias !184 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.011
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !108, !noalias !184 ; 2 uses
  %i.da = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %14, %i.db
  %i.dd = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.de, <2 x double> %i.dc)
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.dh, <2 x double> %i.df) ; 2 uses
  %i.dj = fmul double %i.au, %i.cx
  %i.dk = tail call double @llvm.fmuladd.f64(double %27, double %i.cv, double %i.dj)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.cz, double %i.dk)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.011 ; 3 uses
  %i.dn = extractelement <2 x double> %i.di, i64 0
  store double %i.dn, ptr %i.dm, align 8, !tbaa !108
  %i.do = getelementptr [8 x i8], ptr %i.dm, i64 %i.be
  %i.dp = extractelement <2 x double> %i.di, i64 1
  store double %i.dp, ptr %i.do, align 8, !tbaa !108
  %i.dq = getelementptr i8, ptr %i.dm, i64 %.idx.i
  store double %i.dl, ptr %i.dq, align 8, !tbaa !108
  %i.dr = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %i.be
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !182
}

declare void @_ZN6colvar3cvc15debug_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc17collect_gradientsERKSt6vectorIiSaIiEERS1_IN12colvarmodule7rvectorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN6colvar3cvc19calc_force_invgradsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc24calc_Jacobian_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar17orientation_angle11apply_forceERK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(2312) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6colvar3cvc11apply_forceERK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6colvar17orientation_angle5dist2ERK11colvarvalueS3_(ptr noundef nonnull align 8 dereferenceable(2312) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6colvar3cvc5dist2ERK11colvarvalueS3_(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(168) %2)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6colvar17orientation_angle11dist2_lgradERK11colvarvalueS3_(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(2312) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6colvar3cvc11dist2_lgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(1608) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6colvar17orientation_angle11dist2_rgradERK11colvarvalueS3_(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(2312) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6colvar3cvc11dist2_rgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(1608) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZNK6colvar17orientation_angle4wrapER11colvarvalue(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZN6colvar3cvc14get_param_gradERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef i32 @_ZN6colvar3cvc23init_total_force_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar17orientation_angleD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1384
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2312) %i.a) #18, !inline_history !99
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar17orientation_angleD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar17orientation_angleD0Ev(ptr noundef nonnull align 8 dereferenceable(2312) %i.a) #18
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZThn320_NK6colvar3cvc8featuresEv(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZThn320_N6colvar3cvc15modify_featuresEv(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10colvardeps23do_feature_side_effectsEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
declare noundef i32 @_ZThn320_N6colvar3cvc17init_dependenciesEv(ptr noundef) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar16orientation_projD0Ev(ptr noundef nonnull align 8 dereferenceable(2312) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2312) %0) #18, !inline_history !99
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2312) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar16orientation_proj10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(2312) initializes((1616, 1640), (1680, 1688)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 16    ; 7 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1528
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.f = load double, ptr %i.e, align 8, !tbaa !115, !noalias !187
  %i.g = fneg double %i.f
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !108, !noalias !187
  %i.i = fneg <2 x double> %i.h
  store <2 x double> %i.i, ptr %2, align 16, !tbaa !108, !alias.scope !187
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.g, ptr %i.j, align 16, !tbaa !115, !alias.scope !187
  call void @_ZNK12colvarmodule10atom_group17positions_shiftedERKNS_7rvectorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = load <2 x ptr>, ptr %1, align 16, !tbaa !119
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !101
  store ptr %i.q, ptr %i.m, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #17
  %.pr = load ptr, ptr %1, align 16, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.u = load ptr, ptr %i.p, align 16, !tbaa !101
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pr to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  call void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ab, i64 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.ag = load double, ptr %i.af, align 8, !tbaa !123 ; 2 uses
  %i.ah = fmul double %i.ag, 2.000000e+00
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double %i.ag, double -1.000000e+00)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.ai, ptr %i.aj, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar16orientation_proj14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2312) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.b = load double, ptr %i.a, align 8, !tbaa !123
  %i.c = fmul double %i.b, 4.000000e+00           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  tail call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %i.e, i32 noundef 2)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !98   ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load double, ptr %i.g, align 8, !tbaa !108, !noalias !194
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %1 = load double, ptr %i.m, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %2 = load double, ptr %i.n, align 8, !tbaa !108, !noalias !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.p = load double, ptr %i.l, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %4 = load double, ptr %3, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.r = load <2 x double>, ptr %i.j, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %6 = insertelement <2 x double> poison, double %i.h, i64 0 ; 2 uses
  %i.s = insertelement <2 x double> %6, double %2, i64 1 ; 2 uses
  %i.t = fadd <2 x double> %i.s, %i.r             ; 2 uses
  %i.u = load <2 x double>, ptr %i.o, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.w = fsub <2 x double> %i.t, %i.v
  %i.x = fadd <2 x double> %i.t, %i.v
  %i.y = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 0, i32 3> ; 2 uses
  %7 = insertelement <2 x double> poison, double %1, i64 0
  %i.z = insertelement <2 x double> %7, double %i.p, i64 1 ; 2 uses
  %i.aa = fsub <2 x double> %i.y, %i.z
  %i.ab = fadd <2 x double> %i.y, %i.z
  %i.ac = shufflevector <2 x double> %i.aa, <2 x double> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = fmul <2 x double> %i.ae, %i.ac          ; 3 uses
  %8 = shufflevector <2 x double> %i.r, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %9 = shufflevector <2 x double> %i.s, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %10 = fsub <2 x double> %8, %9                  ; 2 uses
  %11 = fadd <2 x double> %10, %i.u
  %12 = insertelement <2 x double> poison, double %i.p, i64 0
  %13 = insertelement <2 x double> %12, double %1, i64 1
  %foldExtExtBinop.a = fsub <2 x double> %11, %13
  %14 = fmul <2 x double> %i.ae, %foldExtExtBinop.a ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %16 = load double, ptr %15, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %17 = load double, ptr %i.i, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.ag = fadd double %16, %17
  %18 = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %19 = load double, ptr %18, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %20 = fadd double %i.ag, %19
  %21 = fneg double %16
  %22 = load double, ptr %i.q, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %23 = fsub double %22, %4
  %24 = load double, ptr %i.k, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %25 = fsub double %23, %24
  %26 = load <2 x double>, ptr %5, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %i.ah = extractelement <2 x double> %26, i64 0
  %i.ai = fadd double %25, %i.ah
  %27 = fmul double %i.c, %i.ai                   ; 2 uses
  %i.aj = extractelement <2 x double> %26, i64 1
  %i.ak = fadd double %20, %i.aj
  %i.al = fmul double %i.c, %i.ak                 ; 2 uses
  %28 = fadd double %4, %22
  %29 = fsub double %21, %17
  %30 = insertelement <2 x double> poison, double %28, i64 0
  %31 = insertelement <2 x double> %30, double %29, i64 1
  %32 = insertelement <2 x double> poison, double %24, i64 0
  %33 = insertelement <2 x double> %32, double %19, i64 1
  %i.am = fadd <2 x double> %31, %33
  %i.an = fadd <2 x double> %i.am, %26
  %i.ao = fmul <2 x double> %i.ae, %i.an          ; 3 uses
  %shift = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fsub <2 x double> %shift, %i.v
  %i.ap = extractelement <2 x double> %foldExtExtBinop68, i64 0
  %i.aq = fadd double %i.ap, %1
  %i.ar = fmul double %i.c, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1144
  %i.av = load i64, ptr %i.au, align 8, !tbaa !107 ; 9 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !125, !noalias !195 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125, !noalias !195 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !125, !noalias !195 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1272
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !100 ; 3 uses
  %.idx.i = shl i64 %i.av, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.av, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = ptrtoaddr ptr %i.bd to i64              ; 5 uses
  %i.bf = ptrtoaddr ptr %i.bb to i64              ; 3 uses
  %i.bg = ptrtoaddr ptr %i.az to i64              ; 3 uses
  %i.bh = ptrtoaddr ptr %i.ax to i64              ; 3 uses
  %i.bi = shl i64 %i.av, 3                        ; 2 uses
  %i.bj = add i64 %i.bi, -1
  %diff.check = icmp ult i64 %i.bj, 15
  %i.bk = sub i64 %i.bh, %i.be
  %diff.check31 = icmp ugt i64 %i.bk, -16
  %conflict.rdx32 = or i1 %diff.check, %diff.check31
  %i.bl = sub i64 %i.bg, %i.be
  %diff.check33 = icmp ugt i64 %i.bl, -16
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  %i.bm = sub i64 %i.bf, %i.be
  %diff.check35 = icmp ugt i64 %i.bm, -16
  %conflict.rdx36 = or i1 %conflict.rdx34, %diff.check35
  %i.bn = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bo = sub i64 %i.bh, %i.bn
  %diff.check37 = icmp ugt i64 %i.bo, -16
  %conflict.rdx38 = or i1 %conflict.rdx36, %diff.check37
  %i.bp = sub i64 %i.bg, %i.bn
  %diff.check39 = icmp ugt i64 %i.bp, -16
  %conflict.rdx40 = or i1 %conflict.rdx38, %diff.check39
  %i.bq = sub i64 %i.bf, %i.bn
  %diff.check41 = icmp ugt i64 %i.bq, -16
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %i.br = add i64 %.idx.i, %i.be                  ; 3 uses
  %i.bs = sub i64 %i.bh, %i.br
  %diff.check43 = icmp ugt i64 %i.bs, -16
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check43
  %i.bt = sub i64 %i.bg, %i.br
  %diff.check45 = icmp ugt i64 %i.bt, -16
  %conflict.rdx46 = or i1 %conflict.rdx44, %diff.check45
  %i.bu = sub i64 %i.bf, %i.br
  %diff.check47 = icmp ugt i64 %i.bu, -16
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, -2                      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat50 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat52 = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat54 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat56 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat58 = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert59 = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat60 = shufflevector <2 x double> %broadcast.splatinsert59, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <2 x double> poison, double %27, i64 0
  %broadcast.splat62 = shufflevector <2 x double> %broadcast.splatinsert61, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat64 = shufflevector <2 x double> %broadcast.splatinsert63, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %index
  %wide.load = load <2 x double>, ptr %i.bv, align 8, !tbaa !108, !noalias !195 ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.az, i64 %index
  %wide.load65 = load <2 x double>, ptr %i.bw, align 8, !tbaa !108, !noalias !195 ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %index
  %wide.load66 = load <2 x double>, ptr %i.bx, align 8, !tbaa !108, !noalias !195 ; 3 uses
  %i.by = fmul <2 x double> %broadcast.splat, %wide.load65
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat50, <2 x double> %wide.load, <2 x double> %i.by)
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat52, <2 x double> %wide.load66, <2 x double> %i.bz)
  %i.cb = fmul <2 x double> %broadcast.splat54, %wide.load65
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat56, <2 x double> %wide.load, <2 x double> %i.cb)
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat58, <2 x double> %wide.load66, <2 x double> %i.cc)
  %i.ce = fmul <2 x double> %broadcast.splat60, %wide.load65
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat62, <2 x double> %wide.load, <2 x double> %i.ce)
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat64, <2 x double> %wide.load66, <2 x double> %i.cf)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 3 uses
  store <2 x double> %i.ca, ptr %i.ch, align 8, !tbaa !108
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %i.av
  store <2 x double> %i.cd, ptr %i.ci, align 8, !tbaa !108
  %i.cj = getelementptr i8, ptr %i.ch, i64 %.idx.i
  store <2 x double> %i.cg, ptr %i.cj, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010 = phi i64 [ %i.di, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %.010
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !108, !noalias !195 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.az, i64 %.010
  %i.co = load double, ptr %i.cn, align 8, !tbaa !108, !noalias !195 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.010
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !108, !noalias !195 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %14, %i.cs
  %i.cu = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.cv, <2 x double> %i.ct)
  %i.cx = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.cy, <2 x double> %i.cw) ; 2 uses
  %i.da = fmul double %i.al, %i.co
  %i.db = tail call double @llvm.fmuladd.f64(double %27, double %i.cm, double %i.da)
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.cq, double %i.db)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.010 ; 3 uses
  %i.de = extractelement <2 x double> %i.cz, i64 0
  store double %i.de, ptr %i.dd, align 8, !tbaa !108
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %i.av
  %i.dg = extractelement <2 x double> %i.cz, i64 1
  store double %i.dg, ptr %i.df, align 8, !tbaa !108
  %i.dh = getelementptr i8, ptr %i.dd, i64 %.idx.i
  store double %i.dc, ptr %i.dh, align 8, !tbaa !108
  %i.di = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.av
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !193
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar16orientation_projD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1384
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2312) %i.a) #18, !inline_history !99
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar16orientation_projD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar16orientation_projD0Ev(ptr noundef nonnull align 8 dereferenceable(2312) %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar4tiltD0Ev(ptr noundef nonnull align 8 dereferenceable(2336) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2336) %0) #18, !inline_history !99
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2336) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar4tilt4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2336) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.colvarmodule::rvector", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZN6colvar11orientation4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2312 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !115
  %i.d = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRN12colvarmodule7rvectorERKSB_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.e = load <2 x double>, ptr %i.b, align 8, !tbaa !108 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.e, %i.e
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.g = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.h = call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !115 ; 3 uses
  %i.k = call noundef double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.h) ; 2 uses
  %i.l = fcmp une double %i.k, 1.000000e+00
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef double @sqrt(double noundef %i.k) #18 ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.e, %i.o
  store <2 x double> %i.p, ptr %i.b, align 8, !tbaa !108
  %i.q = fdiv double %i.j, %i.m
  store double %i.q, ptr %i.i, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN12colvarmodule6to_strB5cxx11ERKNS_7rvectorEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef 0)
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 29)
          to label %.noexc unwind label %bb.i     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !110, !alias.scope !200
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !114  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.t, ptr %4, align 8, !tbaa !112, !alias.scope !200
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !113
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !113, !alias.scope !200
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ab = phi i64 [ %i.x, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_0
