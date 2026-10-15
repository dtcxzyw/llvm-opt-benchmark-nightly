Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/FunctionScheduler?download=true
inline.NumInlined: 1357
inline.NumDeleted: 654
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE:bb.a
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %.01422.i.i93, double %.01521.i.i94) ; 2 uses
  %i.cw = fpext double %.01422.i.i93 to x86_fp80
  %i.cx = fmul x86_fp80 %i.cw, f0x401DFFFFFFFC00000000
  %i.cy = fptrunc x86_fp80 %i.cx to double        ; 2 uses
  %i.cz = add i64 %.023.i.i92, -1                 ; 2 uses
  %.not.i.i95 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i95, label %bb.m, label %select.unfold.i.i91, !llvm.loop !4

bb.n:                                             ; preds = %bb.m
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97: ; preds = %bb.m, %bb.n
  %.016.i.i96 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.n ], [ %i.co, %bb.m ]
  %i.da = fsub double 1.000000e+00, %.016.i.i96
  %i.db = tail call double @log(double noundef %i.da) #33
  %i.dc = fneg double %i.db
  %i.dd = load double, ptr %i.x, align 8, !tbaa !95 ; 3 uses
  %i.de = fmul double %i.aa, %i.dc
  %i.df = fdiv double %i.de, %i.dd
  %i.dg = fadd double %i.dd, %i.df                ; 2 uses
  %i.dh = tail call double @llvm.ceil.f64(double %i.dg)
  %i.di = fneg double %i.dd
  %i.dj = load double, ptr %i.ak, align 8, !tbaa !97
  %i.dk = fmul double %i.dj, %i.di
  %i.dl = fmul double %i.dg, 5.000000e-01
  %i.dm = fadd double %i.dl, 1.000000e+00
  %i.dn = fmul double %i.dk, %i.dm
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97, %bb.g
  %.076 = phi double [ %i.bx, %bb.g ], [ %i.ci, %bb.i ], [ %i.dn, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97 ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ f0x3F8A41A41A41A41A, %bb.l ]
  %.073 = phi double [ %i.bu, %bb.g ], [ %i.ce, %bb.i ], [ %i.dh, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97 ], [ -1.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.do = fadd double %i.bn, %.076
  %i.dp = load double, ptr %i.al, align 8, !tbaa !92
  %i.dq = fneg double %.073
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dp, double %i.do)
  %i.ds = load double, ptr %i.am, align 8, !tbaa !93
  %i.dt = fadd double %i.k, %.073                 ; 3 uses
  %i.du = fadd double %i.dt, 1.000000e+00
  %i.dv = tail call double @lgamma(double noundef %i.du) #33
  %i.dw = fsub double %i.ds, %i.dv
  %i.dx = fcmp ogt double %i.dr, %i.dw
  %i.dy = fcmp oge double %i.dt, f0x43E0000000000000
  %i.dz = or i1 %i.dy, %i.dx
  br i1 %i.dz, label %.backedge.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ea = fadd double %i.dt, f0x3FDFFFFFFFFFFFFE
  %i.eb = fptosi double %i.ea to i64
  br label %bb.t

bb.q:                                             ; preds = %.preheader, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106
  %.lcssa111121 = phi i64 [ %i.eg, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106 ], [ %.promoted, %.preheader ]
  %.071 = phi i64 [ %i.ep, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106 ], [ 0, %.preheader ] ; 2 uses
  %.0 = phi double [ %i.eo, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106 ], [ 1.000000e+00, %.preheader ]
  br label %select.unfold.i.i100

bb.r:                                             ; preds = %select.unfold.i.i100
  %i.ec = fdiv double %i.ej, %i.em                ; 2 uses
  %i.ed = fcmp ult double %i.ec, 1.000000e+00
  br i1 %i.ed, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106, label %bb.s, !prof !101

select.unfold.i.i100:                             ; preds = %select.unfold.i.i100, %bb.q
  %.023.i.i101 = phi i64 [ %spec.select.i.i98, %bb.q ], [ %i.en, %select.unfold.i.i100 ]
  %.01422.i.i102 = phi double [ 1.000000e+00, %bb.q ], [ %i.em, %select.unfold.i.i100 ] ; 2 uses
  %.01521.i.i103 = phi double [ 0.000000e+00, %bb.q ], [ %i.ej, %select.unfold.i.i100 ]
  %i.ee = phi i64 [ %.lcssa111121, %bb.q ], [ %i.eg, %select.unfold.i.i100 ]
  %i.ef = mul i64 %i.ee, 16807
  %i.eg = urem i64 %i.ef, 2147483647              ; 4 uses
  %i.eh = add nsw i64 %i.eg, -1
  %i.ei = uitofp i64 %i.eh to double
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double %.01422.i.i102, double %.01521.i.i103) ; 2 uses
  %i.ek = fpext double %.01422.i.i102 to x86_fp80
  %i.el = fmul x86_fp80 %i.ek, f0x401DFFFFFFFC00000000
  %i.em = fptrunc x86_fp80 %i.el to double        ; 2 uses
  %i.en = add i64 %.023.i.i101, -1                ; 2 uses
  %.not.i.i104 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i104, label %bb.r, label %select.unfold.i.i100, !llvm.loop !4

bb.s:                                             ; preds = %bb.r
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106: ; preds = %bb.r, %bb.s
  %.016.i.i105 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.s ], [ %i.ec, %bb.r ]
  %i.eo = fmul double %.0, %.016.i.i105           ; 2 uses
  %i.ep = add nuw nsw i64 %.071, 1
  %i.eq = fcmp ogt double %i.eo, %i.j
  br i1 %i.eq, label %bb.q, label %.loopexit, !llvm.loop !171

.loopexit:                                        ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106
  store i64 %i.eg, ptr %1, align 8, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.p
  %.072 = phi i64 [ %i.eb, %bb.p ], [ %.071, %.loopexit ]
  ret i64 %.072
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !90, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %.promoted = load i64, ptr %1, align 8, !tbaa !83
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !89
  br label %bb.h

bb.c:                                             ; preds = %select.unfold.i.i
  %i.l = fdiv double %i.s, %i.v                   ; 2 uses
  %i.m = fcmp ult double %i.l, 1.000000e+00
  br i1 %i.m, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit, label %bb.d, !prof !101

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.n = phi i64 [ %.promoted, %.preheader ], [ %.be, %select.unfold.i.i.backedge ]
  %i.o = mul i64 %i.n, 16807
  %i.p = urem i64 %i.o, 2147483647                ; 3 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = uitofp i64 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.t = fpext double %.01422.i.i to x86_fp80
  %i.u = fmul x86_fp80 %i.t, f0x401DFFFFFFFC00000000
  %i.v = fptrunc x86_fp80 %i.u to double          ; 2 uses
  %i.w = add i64 %.023.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %select.unfold.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27
  %.023.i.i.be = phi i64 [ %i.w, %select.unfold.i.i ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.01422.i.i.be = phi double [ %i.v, %select.unfold.i.i ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.01521.i.i.be = phi double [ %i.s, %select.unfold.i.i ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.be = phi i64 [ %i.p, %select.unfold.i.i ], [ %i.ac, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  br label %select.unfold.i.i, !llvm.loop !172

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.l, %bb.c ]
  br label %select.unfold.i.i21

bb.e:                                             ; preds = %select.unfold.i.i21
  %i.x = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.y = fdiv double %i.af, %i.ai                 ; 2 uses
  %i.z = fcmp ult double %i.y, 1.000000e+00
  br i1 %i.z, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27, label %bb.f, !prof !101

select.unfold.i.i21:                              ; preds = %select.unfold.i.i21, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %.023.i.i22 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.aj, %select.unfold.i.i21 ]
  %.01422.i.i23 = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ai, %select.unfold.i.i21 ] ; 2 uses
  %.01521.i.i24 = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.af, %select.unfold.i.i21 ]
  %i.aa = phi i64 [ %i.p, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ac, %select.unfold.i.i21 ]
  %i.ab = mul nuw nsw i64 %i.aa, 16807
  %i.ac = urem i64 %i.ab, 2147483647              ; 4 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = uitofp i64 %i.ad to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %.01422.i.i23, double %.01521.i.i24) ; 2 uses
  %i.ag = fpext double %.01422.i.i23 to x86_fp80
  %i.ah = fmul x86_fp80 %i.ag, f0x401DFFFFFFFC00000000
  %i.ai = fptrunc x86_fp80 %i.ah to double        ; 2 uses
  %i.aj = add i64 %.023.i.i22, -1                 ; 2 uses
  %.not.i.i25 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i25, label %bb.e, label %select.unfold.i.i21, !llvm.loop !4

bb.f:                                             ; preds = %bb.e
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27: ; preds = %bb.e, %bb.f
  %.016.i.i26 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.f ], [ %i.y, %bb.e ]
  %i.ak = tail call double @llvm.fmuladd.f64(double %.016.i.i26, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.al) ; 4 uses
  %i.an = fcmp ogt double %i.am, 1.000000e+00
  %i.ao = fcmp oeq double %i.am, 0.000000e+00
  %i.ap = or i1 %i.an, %i.ao
  br i1 %i.ap, label %select.unfold.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27
  store i64 %i.ac, ptr %1, align 8, !tbaa !83
  %i.aq = tail call ninf double @llvm.log.f64(double %i.am)
  %i.ar = fmul double %i.aq, -2.000000e+00
  %i.as = fdiv double %i.ar, %i.am
  %i.at = tail call double @sqrt(double noundef %i.as) #33 ; 2 uses
  %i.au = fmul double %i.x, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.au, ptr %i.av, align 8, !tbaa !89
  store i8 1, ptr %i.a, align 8, !tbaa !90
  %i.aw = fmul double %i.ak, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi double [ %i.k, %bb.b ], [ %i.aw, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !173
  %i.az = load double, ptr %2, align 8, !tbaa !174
  %i.ba = tail call double @llvm.fmuladd.f64(double %.0, double %i.ay, double %i.az)
  ret double %i.ba
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJlA18_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !78
  %i.b = load i64, ptr %0, align 8, !tbaa !61     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIlA18_cJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @llvm.abs.i64(i64 %i.b, i1 false) ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = sub nuw nsw i64 64, %i.d
  %i.f = mul nuw nsw i64 %i.e, 39
  %i.g = lshr i64 %i.f, 7                         ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61
  %i.j = icmp uge i64 %i.c, %i.i
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  br label %_ZN5folly6detail15reserveInTargetIlA18_cJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIlA18_cJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i = lshr i64 %i.b, 63
  %i.m = or disjoint i64 %.lobit.i.i.i, 18
  %i.n = add nuw nsw i64 %i.m, %.0.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.n)
  %i.o = load ptr, ptr %2, align 8, !tbaa !78     ; 6 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !61
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.p, ptr noundef %i.o)
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %1) #33 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.q
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN5folly6detail15reserveInTargetIlA18_cJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #35
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZN5folly6detail15reserveInTargetIlA18_cJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit
  %i.v = add i64 %i.s, %i.q                       ; 3 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.z = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.v, %i.ab
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN5folly8toAppendIJlA18_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.q, 1
  br i1 %cond.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %1, align 1, !tbaa !36
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !36
  br label %_ZN5folly8toAppendIJlA18_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 dereferenceable(18) %1, i64 %i.q, i1 false)
  br label %_ZN5folly8toAppendIJlA18_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(18) %1, i64 noundef %i.q)
  br label %_ZN5folly8toAppendIJlA18_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

_ZN5folly8toAppendIJlA18_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.v, ptr %i.r, align 8, !tbaa !35
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  store i8 0, ptr %i.af, align 1, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler15addFunctionOnceEONS_8FunctionIFvvEEENS_5RangeIPKcEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.folly::Function.12", align 16 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store i64 0, ptr %5, align 16, !tbaa !61
  store ptr @_ZN5folly6detail8function5call_INS_12_GLOBAL__N_120ConstIntervalFunctorELb1ELb0ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEJEEET2_DpT3_RNS1_4DataE, ptr %i.a, align 16, !tbaa !74
  store ptr @_ZN5folly6detail8function13DispatchSmall4execINS_12_GLOBAL__N_120ConstIntervalFunctorEEEmNS1_2OpEPNS1_4DataES8_, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.c = ptrtoint ptr %3 to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !33, !alias.scope !179
  %i.g = icmp eq ptr %2, null
  %i.h = icmp ne ptr %3, null
  %or.cond.i.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.e, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #35
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.e, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !76

.noexc9.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #37
          to label %.noexc11 unwind label %bb.h   ; 2 uses

.noexc11:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.m, ptr %6, align 8, !tbaa !56, !alias.scope !179
  store i64 %i.e, ptr %i.f, align 8, !tbaa !36, !alias.scope !179
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc11, %bb.b
  %i.n = phi ptr [ %i.m, %.noexc11 ], [ %i.f, %bb.b ] ; 3 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %._crit_edge.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %2, align 1, !tbaa !36
  store i8 %i.o, ptr %i.n, align 1, !tbaa !36
  br label %._crit_edge.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %2, i64 %i.e, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.p, align 8, !tbaa !35, !alias.scope !179
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
end_hunk_0
