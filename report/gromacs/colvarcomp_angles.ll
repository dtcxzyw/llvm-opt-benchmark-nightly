Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_angles?download=true
inline.NumInlined: 608
inline.NumDeleted: 246
begin_hunk_0_@_ZN6colvar11polar_theta14calc_gradientsEv:bb.a
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load double, ptr %i.a, align 8, !tbaa !94 ; 3 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.g = load double, ptr %i.f, align 8, !tbaa !89 ; 3 uses
  %i.h = tail call noundef double @cos(double noundef %i.g) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.j = load double, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.k = tail call noundef double @cos(double noundef %i.j) #19
  %i.l = tail call noundef double @cos(double noundef %i.g) #19
  %i.m = tail call noundef double @sin(double noundef %i.j) #19
  %i.n = tail call noundef double @sin(double noundef %i.g) #19
  %i.o = fmul double %i.n, f0xC04CA5DC1A63C1F8
  %i.p = fdiv double %i.o, %i.b
  %i.q = insertelement <2 x double> poison, double %i.h, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.l, i64 1
  %i.s = fmul <2 x double> %i.r, splat (double f0x404CA5DC1A63C1F8)
  %i.t = insertelement <2 x double> poison, double %i.k, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.m, i64 1
  %i.v = fmul <2 x double> %i.s, %i.u
  %i.w = insertelement <2 x double> poison, double %i.b, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x double> %i.v, %i.x
  store <2 x double> %i.y, ptr %2, align 16, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.p, ptr %i.z, align 16, !tbaa !91
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar11polar_thetaD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1640) dereferenceable(1640) %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar11polar_thetaD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1640) dereferenceable(1640) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1640) %i.a, i64 noundef 1640) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar5angleD0Ev(ptr noundef nonnull align 8 dereferenceable(1745) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1752) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar5angle4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1745) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6colvar3cvc4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr %i.b, ptr %i.c, align 8, !tbaa !96
  %i.d = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i1 noundef zeroext false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store ptr %i.d, ptr %i.e, align 8, !tbaa !97
  %i.f = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %i.f, ptr %i.g, align 8, !tbaa !98
  %i.h = load ptr, ptr %0, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = or i32 %i.k, %i.a
  ret i32 %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar5angle10calc_valueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1745) initializes((600, 608), (1632, 1696)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %5 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 417
  %i.m = load i8, ptr %i.l, align 1, !tbaa !102, !range !103, !noundef !104
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load double, ptr %i.o, align 16, !tbaa !91, !noalias !143
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 16, !tbaa !91, !noalias !143
  %i.s = fsub double %i.p, %i.r
  %i.t = load <2 x double>, ptr %1, align 16, !tbaa !89, !noalias !143
  %i.u = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !143
  %i.v = fsub <2 x double> %i.t, %i.u
  store <2 x double> %i.v, ptr %4, align 16, !tbaa !89, !alias.scope !143
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.s, ptr %i.w, align 16, !tbaa !91, !alias.scope !143
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %i.k, %bb.c ], [ %.pre, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.z = load double, ptr %i.y, align 8, !tbaa !105 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !106 ; 3 uses
  %i.ac = fmul double %i.ab, %i.ab
  %i.ad = call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !91 ; 3 uses
  %i.ag = call noundef double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ad)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.ag) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  store double %sqrt.i, ptr %i.ah, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 417
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !102, !range !103, !noundef !104
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre2 = load double, ptr %i.y, align 8, !tbaa !105
  %.pre3 = load double, ptr %i.aa, align 8, !tbaa !106
  %.pre4 = load double, ptr %i.ae, align 8, !tbaa !91
  %.pre5 = load double, ptr %i.ah, align 8, !tbaa !144
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load double, ptr %i.al, align 16, !tbaa !91, !noalias !145
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load double, ptr %i.an, align 16, !tbaa !91, !noalias !145
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !145
  %i.ar = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !145
  %i.as = fsub <2 x double> %i.aq, %i.ar
  store <2 x double> %i.as, ptr %5, align 16, !tbaa !89, !alias.scope !145
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ap, ptr %i.at, align 16, !tbaa !91, !alias.scope !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi double [ %sqrt.i, %bb.f ], [ %.pre5, %bb.e ]
  %i.av = phi double [ %i.af, %bb.f ], [ %.pre4, %bb.e ]
  %i.aw = phi double [ %i.ab, %bb.f ], [ %.pre3, %bb.e ]
  %i.ax = phi double [ %i.z, %bb.f ], [ %.pre2, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ba = load double, ptr %i.az, align 8, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.bc = load <2 x double>, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.be = insertelement <2 x double> %i.bd, double %i.aw, i64 1
  %i.bf = fmul <2 x double> %i.bd, %i.be
  %i.bg = insertelement <2 x double> %i.bc, double %i.ax, i64 1
  %i.bh = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bf)
  %6 = insertelement <2 x double> poison, double %i.ba, i64 0 ; 2 uses
  %7 = insertelement <2 x double> %6, double %i.av, i64 1
  %8 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %8, <2 x double> %i.bi) ; 2 uses
  %i.bj = extractelement <2 x double> %9, i64 0
  %sqrt.i1 = call noundef double @llvm.sqrt.f64(double %i.bj) ; 2 uses
  store double %sqrt.i1, ptr %i.bb, align 8, !tbaa !146
  %i.bk = fmul double %sqrt.i1, %i.au
  %10 = extractelement <2 x double> %9, i64 1
  %i.bl = fdiv double %10, %i.bk
  %i.bm = call noundef double @acos(double noundef %i.bl) #19
  %i.bn = fmul double %i.bm, f0x404CA5DC1A63C1F8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.bn, ptr %i.bo, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar5angle14calc_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1745) initializes((1696, 1744)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load double, ptr %i.c, align 8, !tbaa !91 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.f = load double, ptr %i.e, align 8, !tbaa !91 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 3 uses
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !89 ; 5 uses
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !89 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 1
  %i.l = extractelement <2 x double> %i.j, i64 0
  %i.m = extractelement <2 x double> %i.i, i64 0
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !89 ; 9 uses
  %i.p = shufflevector <2 x double> %i.i, <2 x double> %i.o, <2 x i32> <i32 1, i32 2>
  %i.q = shufflevector <2 x double> %i.j, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double %i.s)
  %i.u = tail call noundef double @llvm.fmuladd.f64(double %i.d, double %i.f, double %i.t)
  %i.v = extractelement <2 x double> %i.r, i64 1
  %i.w = fdiv double %i.u, %i.v                   ; 2 uses
  %i.x = fneg double %i.w                         ; 4 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double 1.000000e+00)
  %i.z = tail call noundef double @sqrt(double noundef %i.y) #19
  %i.aa = fdiv double -1.000000e+00, %i.z
  %i.ab = fmul double %i.aa, f0x404CA5DC1A63C1F8
  %i.ac = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fdiv <2 x double> %i.j, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.i, %i.af
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.ag, %i.ah
  %i.aj = fadd <2 x double> %i.ad, %i.ai
  %i.ak = fdiv <2 x double> splat (double 1.000000e+00), %i.o
  %i.al = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.ak, %i.am          ; 3 uses
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.aj
  store <2 x double> %i.ap, ptr %i.h, align 8, !tbaa !89
  %i.aq = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.ar = fdiv <2 x double> %i.aq, %i.o
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.d, i64 0
  %i.av = fmul <2 x double> %i.au, %i.af
  %i.aw = fmul double %i.k, %i.x
  %i.ax = fmul double %i.f, %i.x
  %i.ay = fdiv <2 x double> %i.av, %i.o
  %i.az = fadd <2 x double> %i.as, %i.ay
  %i.ba = fmul <2 x double> %i.an, %i.az
  store <2 x double> %i.ba, ptr %.sroa.535.0..sroa_idx, align 8, !tbaa !89
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.bb = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aw, i64 1
  %i.bd = fdiv <2 x double> %i.bc, %i.o
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = insertelement <2 x double> %i.bf, double %i.ax, i64 1
  %i.bh = fdiv <2 x double> %i.bg, %i.o
  %i.bi = fadd <2 x double> %i.be, %i.bh
  %i.bj = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %i.bj, %i.bi
  store <2 x double> %i.bk, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !96
  tail call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.bp = load double, ptr %.sroa.535.0..sroa_idx, align 8, !tbaa !91, !noalias !151
  %i.bq = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !noalias !151
  %i.br = fadd double %i.bp, %i.bq
  %i.bs = fneg double %i.br
  %i.bt = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !151
  %i.bu = load <2 x double>, ptr %i.n, align 8, !tbaa !89, !noalias !151
  %i.bv = fadd <2 x double> %i.bt, %i.bu
  %i.bw = fneg <2 x double> %i.bv
  store <2 x double> %i.bw, ptr %1, align 16, !tbaa !89, !alias.scope !152
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.bs, ptr %i.bx, align 16, !tbaa !91, !alias.scope !152
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar5angle19calc_force_invgradsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1745) initializes((936, 944)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 353
  %i.d = load i8, ptr %i.c, align 1, !tbaa !102, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.g)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.i = load double, ptr %i.h, align 8, !tbaa !105 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.k = load double, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %i.l = fmul double %i.k, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.o = load double, ptr %i.n, align 8, !tbaa !91 ; 3 uses
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.m)
  %i.q = fdiv double 1.000000e+00, %i.p           ; 3 uses
  %i.r = fmul double %i.i, %i.q
  %i.s = fmul double %i.k, %i.q
  %i.t = fmul double %i.o, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !96
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.u)
  %i.v = load double, ptr %1, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !106
  %i.y = fmul double %i.s, %i.x
  %i.z = call double @llvm.fmuladd.f64(double %i.r, double %i.v, double %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !91
  %i.ac = call noundef double @llvm.fmuladd.f64(double %i.t, double %i.ab, double %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1736
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load <2 x double>, ptr %i.af, align 8, !tbaa !89 ; 3 uses
  %i.ap = load <2 x double>, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.aj, align 8, !tbaa !89 ; 3 uses
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1712) %i.al)
  %i.ar = load double, ptr %i.af, align 8, !tbaa !105
  %i.as = load double, ptr %i.ag, align 8, !tbaa !106
  %i.at = load <2 x double>, ptr %2, align 16, !tbaa !89 ; 2 uses
  %i.au = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.as, i64 1
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  %i.ax = fmul <2 x double> %i.av, %i.aw
  %i.ay = insertelement <2 x double> %i.ao, double %i.ar, i64 1
  %i.az = shufflevector <2 x double> %i.ao, <2 x double> %i.at, <2 x i32> <i32 0, i32 2>
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.ax)
  %i.bb = load double, ptr %i.ah, align 8, !tbaa !91
  %i.bc = load double, ptr %i.am, align 16, !tbaa !91
  %i.bd = insertelement <2 x double> %i.ap, double %i.bb, i64 1 ; 2 uses
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.be, <2 x double> %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !98
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1712) %i.bg)
  %i.bh = load double, ptr %i.ai, align 8, !tbaa !105
  %i.bi = load double, ptr %i.aj, align 8, !tbaa !106
  %i.bj = load <2 x double>, ptr %3, align 16, !tbaa !89 ; 2 uses
  %i.bk = insertelement <2 x double> %i.aq, double %i.bi, i64 1
  %i.bl = shufflevector <2 x double> %i.aq, <2 x double> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.bm = fmul <2 x double> %i.bk, %i.bl
  %i.bn = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.bo = insertelement <2 x double> %i.bn, double %i.bh, i64 1
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bp, <2 x double> %i.bm)
  %i.br = load double, ptr %i.ak, align 8, !tbaa !91
  %i.bs = load double, ptr %i.an, align 16, !tbaa !91
end_hunk_0
begin_hunk_1_@_ZN6colvar12dipole_angle10calc_valueEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc20
  store ptr %i.bx, ptr %5, align 8, !tbaa !124, !alias.scope !165
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !126
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !126, !alias.scope !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !125
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !125, !alias.scope !165
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !124
  store i64 0, ptr %i.cf, align 8, !tbaa !125
  store i8 0, ptr %i.by, align 8, !tbaa !126
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !125, !noalias !166
  %i.ck = icmp eq i64 %i.cj, 4611686018427387903
  br i1 %i.ck, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc26 unwind label %bb.x

.noexc26:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %.noexc27 unwind label %bb.x   ; 6 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !123, !alias.scope !166
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !124 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

bb.n:                                             ; preds = %.noexc27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !125 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.noexc27
  store ptr %i.cn, ptr %4, align 8, !tbaa !124, !alias.scope !166
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !126
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !126, !alias.scope !166
  %.phi.trans.insert.i23 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.pre.i24 = load i64, ptr %.phi.trans.insert.i23, align 8, !tbaa !125
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.n
  %i.cv = phi i64 [ %i.cr, %bb.n ], [ %.pre.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !125, !alias.scope !166
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !124
  store i64 0, ptr %i.cw, align 8, !tbaa !125
  store i8 0, ptr %i.co, align 8, !tbaa !126
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 10)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cm
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.p
  %i.da = load i64, ptr %i.cm, align 8, !tbaa !126
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.dc = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !126
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.dh = load ptr, ptr %9, align 8, !tbaa !124   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !126
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.dm = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ad
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.do = load i64, ptr %i.ad, align 8, !tbaa !126
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.dq = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.o
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.ds = load i64, ptr %i.o, align 8, !tbaa !126
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.du = load ptr, ptr %8, align 8, !tbaa !124   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !126
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dz = load double, ptr %i.m, align 8, !tbaa !105 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !106 ; 3 uses
  %i.ec = fmul double %i.eb, %i.eb
  %i.ed = call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !91 ; 3 uses
  %i.eg = call noundef double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.ed)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.eg) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  store double %sqrt.i, ptr %i.eh, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !100
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 417
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !102, !range !103, !noundef !104
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load double, ptr %i.m, align 8, !tbaa !105
  %.pre65 = load double, ptr %i.ea, align 8, !tbaa !106
  %.pre66 = load double, ptr %i.ee, align 8, !tbaa !91
  %.pre67 = load double, ptr %i.eh, align 8, !tbaa !167
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = load double, ptr %i.en, align 16, !tbaa !91, !noalias !168
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load double, ptr %i.ep, align 16, !tbaa !91, !noalias !168
  %i.er = fsub double %i.eo, %i.eq
  %i.es = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !168
  %i.et = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !168
  %i.eu = fsub <2 x double> %i.es, %i.et
  store <2 x double> %i.eu, ptr %10, align 16, !tbaa !89, !alias.scope !168
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.er, ptr %i.ev, align 16, !tbaa !91, !alias.scope !168
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ew = phi double [ %sqrt.i, %bb.r ], [ %.pre67, %bb.q ]
  %i.ex = phi double [ %i.ef, %bb.r ], [ %.pre66, %bb.q ]
  %i.ey = phi double [ %i.eb, %bb.r ], [ %.pre65, %bb.q ]
  %i.ez = phi double [ %i.dz, %bb.r ], [ %.pre, %bb.q ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 16 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !91
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.fe = load <2 x double>, ptr %i.fa, align 8, !tbaa !89 ; 3 uses
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fg = insertelement <2 x double> %i.ff, double %i.ey, i64 1
  %i.fh = fmul <2 x double> %i.ff, %i.fg
  %i.fi = insertelement <2 x double> %i.fe, double %i.ez, i64 1
  %i.fj = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fj, <2 x double> %i.fh)
  %11 = insertelement <2 x double> poison, double %i.fc, i64 0 ; 2 uses
  %12 = insertelement <2 x double> %11, double %i.ex, i64 1
  %13 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %13, <2 x double> %i.fk) ; 2 uses
  %i.fl = extractelement <2 x double> %14, i64 0
  %sqrt.i46 = call noundef double @llvm.sqrt.f64(double %i.fl) ; 2 uses
  store double %sqrt.i46, ptr %i.fd, align 8, !tbaa !169
  %i.fm = fmul double %sqrt.i46, %i.ew
  %15 = extractelement <2 x double> %14, i64 1
  %i.fn = fdiv double %15, %i.fm
  %i.fo = call noundef double @acos(double noundef %i.fn) #19
  %i.fp = fmul double %i.fo, f0x404CA5DC1A63C1F8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.fp, ptr %i.fq, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.t:                                             ; preds = %bb.a
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.v:                                             ; preds = %bb.f
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21, %bb.m
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.y:                                             ; preds = %bb.o
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.cm
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.y
  %i.fz = load i64, ptr %i.cm, align 8, !tbaa !126
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.x
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.x ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.fw, %bb.y ] ; 2 uses
  %i.gb = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !126
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 2 uses
  %i.gg = load ptr, ptr %9, align 8, !tbaa !124   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !126
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.gl = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ad
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.gn = load i64, ptr %i.ad, align 8, !tbaa !126
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 2 uses
  %i.gp = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.o
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.gr = load i64, ptr %i.o, align 8, !tbaa !126
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.t ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.gt = load ptr, ptr %8, align 8, !tbaa !124   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !126
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar12dipole_angle14calc_gradientsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1745) initializes((1696, 1744)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load double, ptr %i.c, align 8, !tbaa !91 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.f = load double, ptr %i.e, align 8, !tbaa !91 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 6 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !89 ; 5 uses
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !89 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 1
  %i.l = extractelement <2 x double> %i.j, i64 0
  %i.m = extractelement <2 x double> %i.i, i64 0
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 10 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !89 ; 9 uses
  %i.p = shufflevector <2 x double> %i.i, <2 x double> %i.o, <2 x i32> <i32 1, i32 2>
  %i.q = shufflevector <2 x double> %i.j, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double %i.s)
  %i.u = tail call noundef double @llvm.fmuladd.f64(double %i.d, double %i.f, double %i.t)
  %i.v = extractelement <2 x double> %i.r, i64 1
  %i.w = fdiv double %i.u, %i.v                   ; 2 uses
  %i.x = fneg double %i.w                         ; 4 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double 1.000000e+00)
  %i.z = tail call noundef double @sqrt(double noundef %i.y) #19
  %i.aa = fdiv double -1.000000e+00, %i.z
  %i.ab = fmul double %i.aa, f0x404CA5DC1A63C1F8
  %i.ac = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fdiv <2 x double> %i.j, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.i, %i.af
  %i.ah = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.ag, %i.ah
  %i.aj = fadd <2 x double> %i.ad, %i.ai
  %i.ak = fdiv <2 x double> splat (double 1.000000e+00), %i.o
  %i.al = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.ak, %i.am          ; 3 uses
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.aj
  store <2 x double> %i.ap, ptr %i.h, align 8, !tbaa !89
  %i.aq = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.ar = fdiv <2 x double> %i.aq, %i.o
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.d, i64 0
  %i.av = fmul <2 x double> %i.au, %i.af
  %i.aw = fmul double %i.k, %i.x
  %i.ax = fmul double %i.f, %i.x
  %i.ay = fdiv <2 x double> %i.av, %i.o
  %i.az = fadd <2 x double> %i.as, %i.ay
  %i.ba = fmul <2 x double> %i.an, %i.az
  store <2 x double> %i.ba, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !89
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 4 uses
  %i.bb = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aw, i64 1
  %i.bd = fdiv <2 x double> %i.bc, %i.o
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = insertelement <2 x double> %i.bf, double %i.ax, i64 1
  %i.bh = fdiv <2 x double> %i.bg, %i.o
  %i.bi = fadd <2 x double> %i.be, %i.bh
  %i.bj = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %i.bj, %i.bi
  store <2 x double> %i.bk, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !120 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1128
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !207
end_hunk_1
begin_hunk_2_@_ZN6colvar12dipole_angle14calc_gradientsEv:bb.a
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !89 ; 3 uses
  %i.hp = load double, ptr %i.n, align 8, !tbaa !105, !noalias !232
  %i.hq = fmul double %i.ho, %i.hp
  %i.hr = load double, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !106, !noalias !232
  %i.hs = fmul double %i.ho, %i.hr
  %i.ht = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !91, !noalias !232
  %i.hu = fmul double %i.ho, %i.ht
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.072 ; 3 uses
  store double %i.hq, ptr %i.hv, align 8, !tbaa !89
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %i.ft
  store double %i.hs, ptr %i.hw, align 8, !tbaa !89
  %i.hx = getelementptr i8, ptr %i.hv, i64 %.idx.i29
  store double %i.hu, ptr %i.hx, align 8, !tbaa !89
  %i.hy = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond77.not = icmp eq i64 %i.hy, %i.ft
  br i1 %exitcond77.not, label %._crit_edge, label %scalar.ph294, !llvm.loop !200
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar12dipole_angleD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar12dipole_angleD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1745) dereferenceable(1745) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1745) %i.a, i64 noundef 1752) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar8dihedralD0Ev(ptr noundef nonnull align 8 dereferenceable(1713) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1713) dereferenceable(1713) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1720) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar8dihedral4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1713) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6colvar3cvc4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr %i.b, ptr %i.c, align 8, !tbaa !128
  %i.d = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i1 noundef zeroext false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %i.f, ptr %i.g, align 8, !tbaa !130
  %i.h = tail call noundef ptr @_ZN6colvar3cvc11parse_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, i1 noundef zeroext false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.h, ptr %i.i, align 8, !tbaa !131
  %i.j = load ptr, ptr %0, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.n = or i32 %i.m, %i.a
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(1713) initializes((600, 608), (1640, 1712)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %5 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %6 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %7 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 417
  %i.p = load i8, ptr %i.o, align 1, !tbaa !102, !range !103, !noundef !104
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !91, !noalias !250
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !91, !noalias !250
  %i.v = fsub double %i.s, %i.u
  %i.w = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !250
  %i.x = load <2 x double>, ptr %1, align 16, !tbaa !89, !noalias !250
  %i.y = fsub <2 x double> %i.w, %i.x
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !89, !alias.scope !250
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.v, ptr %i.z, align 16, !tbaa !91, !alias.scope !250
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.n, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 417
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !102, !range !103, !noundef !104
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre6 = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load double, ptr %i.af, align 16, !tbaa !91, !noalias !251
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !91, !noalias !251
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !251
  %i.al = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !251
  %i.am = fsub <2 x double> %i.ak, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !89, !alias.scope !251
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.aj, ptr %i.an, align 16, !tbaa !91, !alias.scope !251
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %i.aa, %bb.f ], [ %.pre6, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 417
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !102, !range !103, !noundef !104
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 16, !tbaa !91, !noalias !252
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !91, !noalias !252
  %i.ax = fsub double %i.au, %i.aw
  %i.ay = load <2 x double>, ptr %4, align 16, !tbaa !89, !noalias !252
  %i.az = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !252
  %i.ba = fsub <2 x double> %i.ay, %i.az
  store <2 x double> %i.ba, ptr %7, align 16, !tbaa !89, !alias.scope !252
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ax, ptr %i.bb, align 16, !tbaa !91, !alias.scope !252
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !89, !noalias !253 ; 4 uses
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !89, !noalias !104 ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.ab, align 8, !tbaa !89, !noalias !253 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.ap, align 8, !tbaa !89, !noalias !253 ; 7 uses
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bo, <2 x double> %i.bn) ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.br = fneg <2 x double> %i.bq
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %8 = extractelement <2 x double> %i.bk, i64 0   ; 2 uses
  %i.bv = load <2 x double>, ptr %i.bf, align 8, !tbaa !89, !noalias !254 ; 4 uses
  %i.bw = load <2 x double>, ptr %i.bc, align 8, !tbaa !89, !noalias !254 ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bh, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bx, <2 x double> %i.bu) ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = fmul <2 x double> %i.bw, %i.ca
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bv, <2 x double> %i.cb) ; 2 uses
  %i.cd = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <2 x double> %i.by, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.cf = fmul <2 x double> %i.cd, %i.ce
  %i.cg = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = shufflevector <2 x double> %i.cc, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ch, <2 x double> %i.cf)
  %9 = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x double> %i.cc, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3>
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %10, <2 x double> %i.ci) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bk, %i.bk
  %12 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %13 = call double @llvm.fmuladd.f64(double %8, double %8, double %12)
  %i.cj = call noundef double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %13)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.cj)
  %i.ck = extractelement <2 x double> %11, i64 1
  %i.cl = fmul double %sqrt.i, %i.ck
  %14 = extractelement <2 x double> %11, i64 0
  %i.cm = call noundef double @atan2(double noundef %i.cl, double noundef %14) #19
  %i.cn = fmul double %i.cm, f0x404CA5DC1A63C1F8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.cn, ptr %i.cp, align 8, !tbaa !90
  %i.cq = load ptr, ptr %0, align 8, !tbaa !88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 192
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1713) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 5 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load double, ptr %i.a, align 8, !tbaa !105, !noalias !267 ; 3 uses
  %i.g = fneg double %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !89, !noalias !104 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !268 ; 4 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = fneg double %i.k
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = fmul double %i.o, %i.n
  %i.q = extractelement <2 x double> %i.l, i64 1
  %i.r = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.u = load <2 x double>, ptr %i.c, align 8, !tbaa !89, !noalias !267 ; 3 uses
  %i.v = load double, ptr %i.e, align 8, !tbaa !91, !noalias !267 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = load <2 x double>, ptr %i.b, align 8, !tbaa !89, !noalias !267 ; 9 uses
  %i.y = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ac = extractelement <2 x double> %i.x, i64 1
  %i.ad = fneg <2 x double> %i.x                  ; 2 uses
  %i.ae = fneg <2 x double> %i.u
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.ag = fmul <2 x double> %i.x, %i.af
  %i.ah = insertelement <2 x double> %i.ab, double %i.f, i64 0
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ab, <2 x double> %i.ag) ; 4 uses
  %i.aj = insertelement <2 x double> %i.y, double %i.g, i64 0
  %i.ak = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ak, <2 x double> %i.aa) ; 4 uses
  %i.am = shufflevector <2 x double> %i.j, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.an = fmul <2 x double> %i.j, %i.am
  %i.ao = shufflevector <2 x double> %i.ad, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.m, <2 x double> %i.an) ; 5 uses
  %i.aq = extractelement <2 x double> %i.ai, i64 1
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.aq)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ar) ; 2 uses
  %i.as = fmul double %sqrt.i, f0x404CA5DC1A63C1F8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.q, double %i.p) ; 3 uses
  %i.aw = shufflevector <2 x double> %i.ap, <2 x double> %i.al, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ax = fmul <2 x double> %i.aw, %i.aw
  %i.ay = insertelement <2 x double> %i.al, double %i.av, i64 0 ; 2 uses
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ay, <2 x double> %i.ax)
  %i.ba = shufflevector <2 x double> %i.ap, <2 x double> %i.ai, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.ba, <2 x double> %i.az) ; 2 uses
  %i.bc = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = shufflevector <2 x double> %i.l, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = insertelement <2 x double> %i.r, double %i.f, i64 1
  %i.bg = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = insertelement <2 x double> %i.m, double %i.v, i64 1
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.ak, <2 x double> %i.bh)
  %i.bk = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bb
  %i.bn = fdiv <2 x double> %i.bj, %i.bm          ; 4 uses
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x double> %i.al, %i.bo
  %shift = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ai, %shift
  %i.bq = insertelement <2 x double> %i.ap, double %i.av, i64 1
  %i.br = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.bq, %i.br
  %shift46 = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop47 = fmul <2 x double> %shift46, %i.bn
  %i.bt = fadd <2 x double> %i.bp, %i.bs
  %foldExtExtBinop49 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop47
  %i.bu = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %i.bv = fmul <2 x double> %i.bt, splat (double f0x404CA5DC1A63C1F8) ; 2 uses
  %i.bw = fmul double %i.bu, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.bx = insertelement <2 x double> poison, double %i.as, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x double> %i.by, %i.bb          ; 4 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x double> %i.al, %i.ca          ; 2 uses
  %shift51 = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fmul <2 x double> %i.ai, %shift51
  %i.cc = extractelement <2 x double> %foldExtExtBinop52, i64 0 ; 2 uses
  %i.cd = extractelement <2 x double> %i.bz, i64 0
  %i.ce = fmul double %i.av, %i.cd                ; 2 uses
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.ap, %i.cf          ; 3 uses
  store double %i.ce, ptr %1, align 8, !tbaa !105, !alias.scope !269
  store <2 x double> %i.cg, ptr %i.i, align 8, !tbaa !89, !alias.scope !269
  %i.ch = fneg <2 x double> %i.cb
  %i.ci = fneg double %i.cc
  %i.cj = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.cj, ptr %2, align 16, !tbaa !89, !alias.scope !270
  store double %i.ci, ptr %i.at, align 16, !tbaa !91, !alias.scope !270
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ck = load ptr, ptr %i.au, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cl = fadd <2 x double> %i.cb, %i.bv
  %i.cm = fadd double %i.cc, %i.bw
  %i.cn = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.cn, ptr %3, align 16, !tbaa !89, !alias.scope !271
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.cm, ptr %i.co, align 16, !tbaa !91, !alias.scope !271
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cr = extractelement <2 x double> %i.cg, i64 1
  %i.cs = fneg double %i.cr
  %i.ct = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cu = fsub double %i.cs, %i.bw
  %i.cv = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cw = insertelement <2 x double> %i.cv, double %i.ce, i64 0
  %i.cx = fneg <2 x double> %i.cw
  %i.cy = fsub <2 x double> %i.cx, %i.ct
  store <2 x double> %i.cy, ptr %4, align 16, !tbaa !89, !alias.scope !272
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.cu, ptr %i.cz, align 16, !tbaa !91, !alias.scope !272
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !131
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral19calc_force_invgradsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1713) initializes((936, 944)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %3 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = load <6 x double>, ptr %i.a, align 8, !tbaa !89, !noalias !104 ; 4 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !105, !noalias !279
  %i.f = load double, ptr %i.b, align 8, !tbaa !106, !noalias !280
  %i.g = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 1, i32 4> ; 3 uses
  %i.h = fmul <2 x double> %i.g, %i.g
  %i.i = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.i, <2 x double> %i.h)
  %i.k = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 2, i32 5> ; 3 uses
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.k, <2 x double> %i.j) ; 2 uses
  %i.m = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.l) ; 4 uses
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fcmp ogt <2 x double> %i.l, zeroinitializer ; 3 uses
  %i.p = insertelement <2 x double> %i.k, double %i.e, i64 1
  %i.q = fdiv <2 x double> %i.p, %i.m
  %i.r = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.s = fdiv <2 x double> %i.r, %i.m
  %i.t = insertelement <2 x double> %i.g, double %i.f, i64 0
  %i.u = fdiv <2 x double> %i.t, %i.m
  %i.v = select <2 x i1> %i.o, <2 x double> %i.u, <2 x double> zeroinitializer ; 5 uses
  %i.w = select <2 x i1> %i.o, <2 x double> %i.s, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !89, !noalias !281 ; 3 uses
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = fneg double %i.aa                       ; 2 uses
  %i.ac = extractelement <2 x double> %i.v, i64 0
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = extractelement <2 x double> %i.v, i64 1 ; 3 uses
  %i.af = load double, ptr %i.x, align 8, !tbaa !105, !noalias !281
  %i.ag = select <2 x i1> %i.o, <2 x double> %i.q, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 6 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = fneg double %i.ah                       ; 2 uses
end_hunk_2
