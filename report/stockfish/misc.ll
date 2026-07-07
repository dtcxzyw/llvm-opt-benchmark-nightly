inline.NumInlined: 685
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9Stockfish15dbg_extremes_ofEli:bb.a
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.j = icmp sge i64 %i.i, %0
  %or.cond.not = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond.not, label %_ZNSt5arrayIN9Stockfish12_GLOBAL__N_113DebugExtremesELm32EE2atEm.exit20, label %.preheader46, !llvm.loop !108

_ZNSt5arrayIN9Stockfish12_GLOBAL__N_113DebugExtremesELm32EE2atEm.exit20: ; preds = %.preheader46, %_ZNSt5arrayIN9Stockfish12_GLOBAL__N_113DebugExtremesELm32EE2atEm.exit18
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8 ; 2 uses
  %.old14 = icmp sgt i64 %i.l, %0
  br i1 %.old14, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %_ZNSt5arrayIN9Stockfish12_GLOBAL__N_113DebugExtremesELm32EE2atEm.exit20, %.preheader
  %.0 = phi i64 [ %i.o, %.preheader ], [ %i.l, %_ZNSt5arrayIN9Stockfish12_GLOBAL__N_113DebugExtremesELm32EE2atEm.exit20 ]
  %i.m = cmpxchg weak ptr %i.k, i64 %.0, i64 %0 seq_cst seq_cst, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = icmp sle i64 %i.o, %0
  %or.cond45.not = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond45.not, label %.critedge2, label %.preheader, !llvm.loop !110

.critedge2:                                       ; preds = %.preheader, %_ZNSt5arrayIN9Stockfish12_GLOBAL__N_113DebugExtremesELm32EE2atEm.exit20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish13dbg_correl_ofElli(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp ugt i32 %2, 31
  br i1 %i.b, label %bb.b, label %_ZNSt5arrayIN9Stockfish12_GLOBAL__N_19DebugInfoILm6EEELm32EE2atEm.exit18

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.42, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 32) #24
  unreachable

_ZNSt5arrayIN9Stockfish12_GLOBAL__N_19DebugInfoILm6EEELm32EE2atEm.exit18: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [48 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 %i.a ; 6 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 %0 seq_cst, align 8 ; 0 uses
  %i.g = mul nsw i64 %0, %0
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = atomicrmw add ptr %i.h, i64 %i.g seq_cst, align 8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = atomicrmw add ptr %i.j, i64 %1 seq_cst, align 8 ; 0 uses
  %i.l = mul nsw i64 %1, %1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = atomicrmw add ptr %i.m, i64 %i.l seq_cst, align 8 ; 0 uses
  %i.o = mul nsw i64 %1, %0
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = atomicrmw add ptr %i.p, i64 %i.o seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9dbg_printEv() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_13hitE, i64 %indvars.iv ; 2 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8 ; 3 uses
  %.not42 = icmp eq i64 %i.b, 0
  br i1 %.not42, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 5) #23 ; 0 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.d) #23 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.25, i64 noundef 8) #23 ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.b) #23 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.26, i64 noundef 6) #23 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.j) #23 ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.27, i64 noundef 14) #23 ; 0 uses
  %i.m = load atomic i64, ptr %i.i seq_cst, align 8
  %i.n = sitofp i64 %i.m to double
  %i.o = sitofp i64 %i.b to double
  %i.p = fdiv double %i.n, %i.o
  %i.q = fmul double %i.p, 1.000000e+02
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, double noundef %i.q) #23 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !84
  %.not.i1.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x) #23
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 10) #23, !inline_history !111
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.ab, %bb.e ], [ %i.af, %bb.f ]
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i) #23
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader91, label %bb.b, !llvm.loop !112

.preheader91:                                     ; preds = %bb.g, %bb.l
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_14meanE, i64 %indvars.iv98 ; 2 uses
  %i.aj = load atomic i64, ptr %i.ai seq_cst, align 8 ; 3 uses
  %.not41 = icmp eq i64 %i.aj, 0
  br i1 %.not41, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.preheader91
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.28, i64 noundef 6) #23 ; 0 uses
  %i.al = trunc nuw nsw i64 %indvars.iv98 to i32
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.al) #23 ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.25, i64 noundef 8) #23 ; 0 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %i.aj) #23 ; 2 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.29, i64 noundef 6) #23 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ar = load atomic i64, ptr %i.aq seq_cst, align 8
  %i.as = sitofp i64 %i.ar to double
  %i.at = sitofp i64 %i.aj to double
  %i.au = fdiv double %i.as, %i.at
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, double noundef %i.au) #23 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i53 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i53, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54: ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !84
  %.not.i1.i.i55 = icmp eq i8 %i.bd, 0
  br i1 %.not.i1.i.i55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 67
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bb) #23
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef signext i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(570) %i.bb, i8 noundef signext 10) #23, !inline_history !111
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57: ; preds = %bb.j, %bb.k
  %.0.i.i.i56 = phi i8 [ %i.bf, %bb.j ], [ %i.bj, %bb.k ]
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %.0.i.i.i56) #23
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #23 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader91, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, 32
  br i1 %exitcond101.not, label %.preheader90, label %.preheader91, !llvm.loop !113

.preheader90:                                     ; preds = %bb.l, %bb.q
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.q ], [ 0, %bb.l ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 %indvars.iv102 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm seq_cst, align 8 ; 3 uses
  %.not40 = icmp eq i64 %i.bn, 0
  br i1 %.not40, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.preheader90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load atomic i64, ptr %i.bo seq_cst, align 8
  %i.bq = sitofp i64 %i.bp to double
  %0 = sitofp i64 %i.bn to double                 ; 2 uses
  %1 = fdiv double %i.bq, %0
  %2 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %3 = load atomic i64, ptr %2 seq_cst, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double %4, %0                         ; 2 uses
  %6 = fmul double %5, %5
  %7 = fsub double %1, %6
  %i.br = tail call double @sqrt(double noundef %7) #23
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.30, i64 noundef 7) #23 ; 0 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv102 to i32
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.bt) #23 ; 2 uses
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.25, i64 noundef 8) #23 ; 0 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.bn) #23 ; 2 uses
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.31, i64 noundef 7) #23 ; 0 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, double noundef %i.br) #23 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i58 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i58, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59: ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !84
  %.not.i1.i.i60 = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce) #23
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10) #23, !inline_history !111
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62: ; preds = %bb.o, %bb.p
  %.0.i.i.i61 = phi i8 [ %i.ci, %bb.o ], [ %i.cm, %bb.p ]
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef signext %.0.i.i.i61) #23
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #23 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader90, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, 32
  br i1 %exitcond105.not, label %.preheader89, label %.preheader90, !llvm.loop !114

.preheader89:                                     ; preds = %bb.q, %bb.v
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %bb.v ], [ 0, %bb.q ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18extremesE, i64 %indvars.iv106 ; 3 uses
  %i.cq = load atomic i64, ptr %i.cp seq_cst, align 8 ; 2 uses
  %.not39 = icmp eq i64 %i.cq, 0
  br i1 %.not39, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.preheader89
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.32, i64 noundef 11) #23 ; 0 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.cs) #23 ; 2 uses
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.25, i64 noundef 8) #23 ; 0 uses
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i64 noundef %i.cq) #23 ; 2 uses
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.33, i64 noundef 5) #23 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cy = load atomic i64, ptr %i.cx seq_cst, align 8
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i64 noundef %i.cy) #23 ; 2 uses
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.34, i64 noundef 5) #23 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dc = load atomic i64, ptr %i.db seq_cst, align 8
  %i.dd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i64 noundef %i.dc) #23 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i63 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i63, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64: ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !84
  %.not.i1.i.i65 = icmp eq i8 %i.dl, 0
  br i1 %.not.i1.i.i65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 67
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dj) #23
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = tail call noundef signext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(570) %i.dj, i8 noundef signext 10) #23, !inline_history !111
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67: ; preds = %bb.t, %bb.u
  %.0.i.i.i66 = phi i8 [ %i.dn, %bb.t ], [ %i.dr, %bb.u ]
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i8 noundef signext %.0.i.i.i66) #23
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #23 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader89, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, 32
  br i1 %exitcond109.not, label %.preheader, label %.preheader89, !llvm.loop !115

bb.w:                                             ; preds = %bb.ab
  ret void

.preheader:                                       ; preds = %bb.v, %bb.ab
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.ab ], [ 0, %bb.v ] ; 3 uses
  %i.du = getelementptr inbounds nuw [48 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 %indvars.iv110 ; 6 uses
  %i.dv = load atomic i64, ptr %i.du seq_cst, align 8 ; 3 uses
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dx = load atomic i64, ptr %i.dw seq_cst, align 8
  %8 = sitofp i64 %i.dx to double
  %i.dy = sitofp i64 %i.dv to double              ; 7 uses
  %9 = fdiv double %8, %i.dy
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ea = load atomic i64, ptr %i.dz seq_cst, align 8
  %i.eb = sitofp i64 %i.ea to double
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  %i.ed = load atomic i64, ptr %i.ec seq_cst, align 8
  %10 = sitofp i64 %i.ed to double
  %11 = fdiv double %10, %i.dy
  %i.ee = fneg double %i.eb
  %i.ef = fdiv double %i.ee, %i.dy
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %11, double %9)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ei = load atomic i64, ptr %i.eh seq_cst, align 8
  %12 = sitofp i64 %i.ei to double
  %13 = fdiv double %12, %i.dy
  %14 = load atomic i64, ptr %i.dz seq_cst, align 8
  %15 = sitofp i64 %14 to double
  %16 = fdiv double %15, %i.dy                    ; 2 uses
  %17 = fmul double %16, %16
  %18 = fsub double %13, %17
  %i.ej = tail call double @sqrt(double noundef %18) #23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.el = load atomic i64, ptr %i.ek seq_cst, align 8
  %19 = sitofp i64 %i.el to double
  %20 = fdiv double %19, %i.dy
  %21 = load atomic i64, ptr %i.ec seq_cst, align 8
  %22 = sitofp i64 %21 to double
  %23 = fdiv double %22, %i.dy                    ; 2 uses
  %24 = fmul double %23, %23
  %25 = fsub double %20, %24
  %i.em = tail call double @sqrt(double noundef %25) #23
  %i.en = fmul double %i.ej, %i.em
  %i.eo = fdiv double %i.eg, %i.en
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.35, i64 noundef 9) #23 ; 0 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.eq) #23 ; 2 uses
  %i.es = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull @.str.25, i64 noundef 8) #23 ; 0 uses
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i64 noundef %i.dv) #23 ; 2 uses
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.36, i64 noundef 13) #23 ; 0 uses
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.et, double noundef %i.eo) #23 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 240
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i68 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i68, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69: ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !84
  %.not.i1.i.i70 = icmp eq i8 %i.fd, 0
  br i1 %.not.i1.i.i70, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 67
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fb) #23
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !47
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef signext i8 %i.fi(ptr noundef nonnull align 8 dereferenceable(570) %i.fb, i8 noundef signext 10) #23, !inline_history !111
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72: ; preds = %bb.z, %bb.aa
  %.0.i.i.i71 = phi i8 [ %i.ff, %bb.z ], [ %i.fj, %bb.aa ]
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i8 noundef signext %.0.i.i.i71) #23
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk) #23 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 32
  br i1 %exitcond113.not, label %bb.w, label %.preheader, !llvm.loop !116
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local void @_ZN9Stockfish9dbg_clearEv() local_unnamed_addr #6 {
_ZNSt5arrayIN9Stockfish12_GLOBAL__N_19DebugInfoILm6EEELm32EE4fillERKS3_.exit:
  %0 = alloca %"struct.Stockfish::(anonymous namespace)::DebugInfo.2", align 8 ; 4 uses
  %1 = alloca %"struct.Stockfish::(anonymous namespace)::DebugInfo.2", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call fastcc void @_ZNSt5arrayIN9Stockfish12_GLOBAL__N_19DebugInfoILm2EEELm32EE4fillERKS3_(ptr noundef nonnull align 8 dereferenceable(512) @_ZN9Stockfish12_GLOBAL__N_13hitE, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call fastcc void @_ZNSt5arrayIN9Stockfish12_GLOBAL__N_19DebugInfoILm2EEELm32EE4fillERKS3_(ptr noundef nonnull align 8 dereferenceable(512) @_ZN9Stockfish12_GLOBAL__N_14meanE, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  store atomic i64 0, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 8) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 16) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 24) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 32) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 40) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 48) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 56) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 64) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 72) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 80) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 88) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 96) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 104) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 112) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 120) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 128) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 136) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 144) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 152) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 160) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 168) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 176) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 184) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 192) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 200) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 208) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 216) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 224) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 232) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 240) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 248) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 256) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 264) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 272) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 280) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 288) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 296) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 304) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 312) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 320) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 328) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 336) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 344) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 352) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 360) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 368) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 376) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 384) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 392) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 400) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 408) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 416) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 424) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 432) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 440) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 448) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 456) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 464) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 472) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 480) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 488) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 496) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 504) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 512) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 520) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 528) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 536) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 544) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 552) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 560) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 568) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 576) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 584) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 592) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 600) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 608) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 616) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 624) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 632) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 640) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 648) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 656) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 664) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 672) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 680) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 688) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 696) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 704) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 712) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 720) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 728) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 736) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 744) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 752) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_15stdevE, i64 760) seq_cst, align 8
  store atomic i64 0, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 8) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 16) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 24) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 32) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 40) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 48) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 56) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 64) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 72) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 80) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 88) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 96) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 104) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 112) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 120) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 128) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 136) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 144) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 152) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 160) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 168) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 176) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 184) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 192) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 200) seq_cst, align 8
  store atomic i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16correlE, i64 208) seq_cst, align 8
end_hunk_0
