Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr:bb.a
  %or.cond2 = or i1 %i.e, %i.f
  br i1 %or.cond2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 5 uses
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  %i.i = lshr i64 %i.g, 1
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, %i.h
  br i1 %i.k, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.g
  %.sroa.03.0 = phi i64 [ %i.n, %bb.g ], [ %i.h, %bb.d ] ; 4 uses
  %.not.i28 = icmp eq i64 %.sroa.03.0, 0
  br i1 %.not.i28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.l = icmp ult i64 %i.g, %.sroa.03.0
  %i.m = sub nuw i64 %i.g, %.sroa.03.0            ; 2 uses
  br i1 %i.l, label %bb.i, label %.lr.ph.split

bb.g:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.g, %i.h
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.sroa.07.030 = phi i64 [ %i.v, %bb.l ], [ 1, %.lr.ph ]
  %.sroa.0.01829 = phi i64 [ %i.o, %bb.l ], [ 1, %.lr.ph ] ; 4 uses
  %i.o = add i64 %.sroa.0.01829, 1
  %i.p = add i64 %.sroa.0.01829, %i.m             ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.r = uitofp i64 %i.v to double
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.f, %._crit_edge.loopexit, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ %i.r, %._crit_edge.loopexit ], [ +inf, %bb.a ], [ +qnan, %bb.b ], [ +inf, %bb.c ], [ 1.000000e+00, %bb.f ], [ +inf, %bb.j ]
  ret double %.sroa.0.0

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph.split
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.030, i64 %i.p) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %.loopexit, label %bb.l, !prof !38

bb.k:                                             ; preds = %.lr.ph.split
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = udiv i64 %i.u, %.sroa.0.01829            ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0.01829, %.sroa.03.0
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3npr(double noundef %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 0.000000e+00
  %i.c = fcmp olt double %1, 0.000000e+00
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = fcmp olt double %0, %1
  %or.cond1.i = or i1 %i.d, %or.cond.i
  br i1 %or.cond1.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ogt double %0, f0x43F0000000000000
  %i.f = fcmp ogt double %1, f0x43F0000000000000
  %or.cond2.i = or i1 %i.e, %i.f
  br i1 %or.cond2.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 5 uses
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  %i.i = lshr i64 %i.g, 1
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, %i.h
  br i1 %i.k, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.n, %bb.g ], [ %i.h, %bb.d ] ; 4 uses
  %.not.i28.i = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %.not.i28.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.l = icmp ult i64 %i.g, %.sroa.03.0.i
  %i.m = sub nuw i64 %i.g, %.sroa.03.0.i          ; 2 uses
  br i1 %i.l, label %bb.i, label %.lr.ph.split.i

bb.g:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.g, %i.h
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.l
  %.sroa.07.030.i = phi i64 [ %i.v, %bb.l ], [ 1, %.lr.ph.i ]
  %.sroa.0.01829.i = phi i64 [ %i.o, %bb.l ], [ 1, %.lr.ph.i ] ; 4 uses
  %i.o = add i64 %.sroa.0.01829.i, 1
  %i.p = add i64 %.sroa.0.01829.i, %i.m           ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %i.r = uitofp i64 %i.v to double
  br label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.030.i, i64 %i.p) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.l, !prof !38

bb.k:                                             ; preds = %.lr.ph.split.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = udiv i64 %i.u, %.sroa.0.01829.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.01829.i, %.sroa.03.0.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.split.i

_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit:      ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.f, %._crit_edge.loopexit.i
  %.sroa.0.0.i = phi double [ %i.r, %._crit_edge.loopexit.i ], [ +inf, %bb.a ], [ +qnan, %bb.b ], [ +inf, %bb.c ], [ 1.000000e+00, %bb.f ], [ +inf, %bb.j ]
  %i.w = fcmp olt double %1, 0.000000e+00
  br i1 %i.w, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %bb.m

bb.m:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit
  %i.x = fcmp ogt double %1, f0x43F0000000000000
  br i1 %i.x, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  switch i64 %i.y, label %.lr.ph [
    i64 0, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit
    i64 1, label %.preheader.i.i._crit_edge
  ]

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.z = extractvalue { i64, i1 } %i.ac, 0        ; 2 uses
  %i.aa = add i64 %i.ab, 1                        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.y
  br i1 %exitcond.not.i.i, label %.preheader.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.preheader.i.i
  %.sroa.01.0.i.i13 = phi i64 [ %i.z, %.preheader.i.i ], [ 1, %bb.n ]
  %i.ab = phi i64 [ %i.aa, %.preheader.i.i ], [ 1, %bb.n ] ; 2 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.i13, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %.preheader.i.i

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %bb.n
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.y, %bb.n ], [ %i.z, %.preheader.i.i ]
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.i.lcssa, i64 %i.y) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = select i1 %i.af, double +inf, double %i.ah
  br label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit

_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit:      ; preds = %.lr.ph, %bb.n, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, %bb.m, %.preheader.i.i._crit_edge
  %.sroa.0.0.i1 = phi double [ +inf, %bb.m ], [ +qnan, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit ], [ 1.000000e+00, %bb.n ], [ %i.ai, %.preheader.i.i._crit_edge ], [ +inf, %.lr.ph ]
  %i.aj = fmul double %.sroa.0.0.i, %.sroa.0.0.i1
  ret double %i.aj
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.h, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi double [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ], [ -inf, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.c = fcmp uno double %.sroa.02.0.i, 0.000000e+00
  br i1 %i.c, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.sroa.02.0.i, %.val.i
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp ogt double %.sroa.02.0.i, %.val.i
  %spec.store.select.i.i = select i1 %i.f, double %.sroa.02.0.i, double %.val.i
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = bitcast double %.sroa.02.0.i to i64
  %.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.i.i, label %bb.f, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

bb.f:                                             ; preds = %bb.e
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %spec.store.select.i.i, %bb.d ], [ %.val.i, %bb.b ], [ %.sroa.02.0.i, %bb.f ], [ %.val.i, %bb.e ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, %bb.a
  %.sroa.0.0.i = phi double [ -inf, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.h, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi double [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ], [ +inf, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.c = fcmp uno double %.sroa.02.0.i, 0.000000e+00
  br i1 %i.c, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.sroa.02.0.i, %.val.i
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp olt double %.sroa.02.0.i, %.val.i
  %spec.store.select.i.i = select i1 %i.f, double %.sroa.02.0.i, double %.val.i
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = bitcast double %.sroa.02.0.i to i64
  %.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.i.i, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i

_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %spec.store.select.i.i, %bb.d ], [ %.val.i, %bb.b ], [ %.sroa.02.0.i, %bb.f ], [ %.val.i, %bb.e ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, %bb.a
  %.sroa.0.0.i = phi double [ +inf, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish8tinyexpr9te_interp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2156
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %1, ptr %i.c, align 8, !noalias !2156
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %2, ptr %i.d, align 8, !noalias !2156
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.e, align 8, !noalias !2156
  store i64 5, ptr %i.a, align 8, !noalias !2156
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2156
  call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a), !noalias !2160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2156
  %i.f = call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !inline_history !2162 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.b, align 8, !range !1717, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 10
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 11
  br i1 %i.j, label %.lr.ph.i.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.0.08.i.i = phi double [ %.sroa.07.0.i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.k = load i8, ptr %i.g, align 8, !range !1409, !alias.scope !2163, !noundef !4 ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.k, 2
  br i1 %switch.i.i, label %bb.b, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread

bb.b:                                             ; preds = %.lr.ph.i.i
  call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !inline_history !2162
  %i.l = call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !inline_history !2162 ; 2 uses
  %i.m = icmp eq i8 %i.k, 0
  %i.n = fneg double %i.l
  %.sroa.07.0.p.i.i = select i1 %i.m, double %i.l, double %i.n
  %.sroa.07.0.i.i = fadd double %.sroa.0.08.i.i, %.sroa.07.0.p.i.i ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !range !1717, !noundef !4 ; 3 uses
  %i.p = icmp ne i64 %i.o, 10
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.o, 11
  br i1 %i.q, label %.lr.ph.i.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit: ; preds = %bb.b, %bb.a
  %i.r = phi i64 [ %i.h, %bb.a ], [ %i.o, %bb.b ]
  %.sroa.0.0.lcssa.i.i = phi double [ %i.f, %bb.a ], [ %.sroa.07.0.i.i, %bb.b ]
  %i.s = icmp eq i64 %i.r, 5
  br i1 %i.s, label %bb.c, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread

bb.c:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit
  store double %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.t, align 8
  br label %bb.d

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread: ; preds = %.lr.ph.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load i8, ptr %i.u, align 8, !range !1724, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.v, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.014.0.copyload = load i64, ptr %i.w, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.617.0..sroa_idx, i64 7, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0 = phi i64 [ %.sroa.014.0.copyload, %bb.e ], [ %i.y, %bb.f ]
  %.sroa.53.0 = phi i64 [ %.sroa.415.0.copyload, %bb.e ], [ 0, %bb.f ]
  %.sroa.66.0 = phi i8 [ %i.v, %bb.e ], [ 3, %bb.f ]
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.53.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.66.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([19 x i8]) align 1 captures(none) dereferenceable(19) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store i64 1, ptr %i.b, align 8, !alias.scope !2168
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2168
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2168
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.e, align 8, !alias.scope !2168
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.f, align 8, !alias.scope !2168
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2s_6option8IntoIterB13_EINtNtB2o_3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0EEE9from_iterB4Z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  invoke void @_RNvNtCs8frGy5WneL6_4fish9text_face27parse_text_face_and_options(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef %i.j, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #48
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !range !2171, !noundef !4
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 -1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -1, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 -1, ptr %i.o, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, i8 0, i64 5, i1 false)
  store i8 5, ptr %.sroa.8.0..sroa_idx, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 0, ptr %i.p, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !2172, !noundef !4
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.g, !prof !2173

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %0, ptr noundef nonnull align 8 dereferenceable(19) %i.t, i64 19, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #53
          to label %bb.k unwind label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

end_hunk_0
