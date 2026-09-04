Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.06?download=true
inline.NumInlined: 184
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent14unindent_bytes:bb.a

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !56, !noundef !4
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread40

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread40: ; preds = %bb.d, %bb.c, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread40
  %.sroa.07.0.i82 = phi i64 [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread40 ], [ %i.l, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.0.i82
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !57, !noundef !4
  %i.l = add nuw nsw i64 %.sroa.07.0.i82, 1       ; 4 uses
  %i.m = icmp ne i8 %i.k, 10
  %i.n = icmp samesign ult i64 %i.l, %1
  %or.cond.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.e, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread: ; preds = %bb.e, %bb.c, %bb.b, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  %.sroa.013.0 = phi i64 [ 1, %bb.c ], [ 2, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit ], [ 0, %bb.b ], [ %i.l, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit ], [ 0, %bb.b ], [ %i.l, %bb.e ] ; 2 uses
  %i.o = icmp ult i64 %.sroa.013.0, %1
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35
  %.sroa.0.161 = phi i64 [ %.sroa.07.1.i28, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35 ], [ %.sroa.0.0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ] ; 4 uses
  %.sroa.013.160 = phi i64 [ %.sroa.0.1.i29, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35 ], [ %.sroa.013.0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ] ; 3 uses
  br label %bb.g

.loopexit:                                        ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, %bb.a
  %.sroa.0.2 = phi i64 [ %1, %bb.a ], [ %.sroa.0.0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ], [ %.sroa.07.1.i28, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35 ]
  ret i64 %.sroa.0.2

bb.f:                                             ; preds = %bb.g, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %.sroa.07.059, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.07.0.lcssa, %i.c
  br i1 %i.p, label %bb.j, label %bb.i

bb.g:                                             ; preds = %.preheader, %bb.h
  %.sroa.07.059 = phi i64 [ 0, %.preheader ], [ %i.t, %bb.h ] ; 2 uses
  %.sroa.010.058 = phi i64 [ %.sroa.013.160, %.preheader ], [ %i.u, %bb.h ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.010.058
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i64 %.sroa.07.059, 1             ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.010.058, 1        ; 2 uses
  %i.v = icmp ult i64 %i.u, %1
  br i1 %i.v, label %bb.g, label %bb.f

bb.i:                                             ; preds = %bb.f
  %i.w = add i64 %.sroa.013.160, %i.c
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread

bb.j:                                             ; preds = %bb.f
  %i.x = add i64 %.sroa.07.0.lcssa, %.sroa.013.160 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.y = icmp eq i64 %1, %i.x
  br i1 %i.y, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp ugt i64 %1, %i.x
  br i1 %i.z, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !58, !noundef !4
  switch i8 %i.ab, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread46 [
    i8 10, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread
    i8 13, label %bb.m
  ]

.critedge.i:                                      ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !58
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ac = add nuw nsw i64 %i.x, 1                 ; 2 uses
  %i.ad = icmp samesign ugt i64 %1, %i.ac
  br i1 %i.ad, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread46

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !58, !noundef !4
  %i.ag = icmp eq i8 %i.af, 10
  br i1 %i.ag, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread46, !prof !59

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread: ; preds = %bb.l, %bb.j, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26, %bb.i
  %.sroa.013.2 = phi i64 [ %i.x, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26 ], [ %i.w, %bb.i ], [ %1, %bb.j ], [ %i.x, %bb.l ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %.not.i = icmp ult i64 %.sroa.013.2, %.sroa.0.161
  br i1 %.not.i, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20, !noalias !60
  unreachable

bb.o:                                             ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread
  %.old1.i27 = icmp ult i64 %.sroa.013.2, %1
  br i1 %.old1.i27, label %.preheader.preheader.i30.preheader, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35

.preheader.preheader.i30.preheader:               ; preds = %bb.o
  %exitcond.not.i3383 = icmp eq i64 %.sroa.0.161, %1
  br i1 %exitcond.not.i3383, label %.preheader.preheader.i30.preheader._crit_edge, label %.lr.ph86

.preheader.preheader.i30:                         ; preds = %.lr.ph86
  %exitcond.not.i33 = icmp eq i64 %i.al, %1
  br i1 %exitcond.not.i33, label %.preheader.preheader.i30.preheader._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %.preheader.preheader.i30.preheader, %.preheader.preheader.i30
  %.sroa.0.0.i3285 = phi i64 [ %i.ak, %.preheader.preheader.i30 ], [ %.sroa.013.2, %.preheader.preheader.i30.preheader ] ; 2 uses
  %.sroa.07.0.i3184 = phi i64 [ %i.al, %.preheader.preheader.i30 ], [ %.sroa.0.161, %.preheader.preheader.i30.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.i3285
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !60, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.0.i3184
  store i8 %i.ai, ptr %i.aj, align 1, !alias.scope !60
  %i.ak = add nuw nsw i64 %.sroa.0.0.i3285, 1     ; 3 uses
  %i.al = add i64 %.sroa.07.0.i3184, 1            ; 3 uses
  %i.am = icmp ne i8 %i.ai, 10
  %i.an = icmp ult i64 %i.ak, %1
  %or.cond.i34 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i34, label %.preheader.preheader.i30, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35

.preheader.preheader.i30.preheader._crit_edge:    ; preds = %.preheader.preheader.i30.preheader, %.preheader.preheader.i30
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !noalias !60
  unreachable

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit35: ; preds = %.lr.ph86, %bb.o
  %.sroa.07.1.i28 = phi i64 [ %.sroa.0.161, %bb.o ], [ %i.al, %.lr.ph86 ] ; 2 uses
  %.sroa.0.1.i29 = phi i64 [ %.sroa.013.2, %bb.o ], [ %i.ak, %.lr.ph86 ] ; 2 uses
  %i.ao = icmp ult i64 %.sroa.0.1.i29, %1
  br i1 %i.ao, label %.preheader, label %.loopexit

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread46: ; preds = %bb.m, %bb.l, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef i64 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread
  %.sroa.0.017 = phi i64 [ %.pre, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017
  %i.c = load i8, ptr %i.b, align 1, !alias.scope !63, !noundef !4
  %.pre = add i64 %.sroa.0.017, 1                 ; 5 uses
  switch i8 %i.c, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread [
    i8 10, label %.loopexit
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp samesign ugt i64 %1, %.pre
  br i1 %i.d, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.pre
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !63, !noundef !4
  %i.g = icmp eq i8 %i.f, 10
  br i1 %i.g, label %.loopexit.split.loop.exit14, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread

.loopexit.split.loop.exit14:                      ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  %i.h = add nuw nsw i64 %.sroa.0.017, 2
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, %.lr.ph, %.loopexit.split.loop.exit14, %bb.a
  %.sroa.04.0 = phi i64 [ %2, %bb.a ], [ %i.h, %.loopexit.split.loop.exit14 ], [ %1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ], [ %.pre, %.lr.ph ]
  ret i64 %.sroa.04.0

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread: ; preds = %.lr.ph, %bb.b, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  %exitcond.not = icmp eq i64 %.pre, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp ult i64 %2, %3
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %.old1 = icmp ult i64 %2, %1
  br i1 %.old1, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not29.not = icmp ult i64 %3, %1
  br i1 %exitcond.not29.not, label %.lr.ph, label %._crit_edge

.preheader.split:                                 ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.g, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  %.sroa.07.1 = phi i64 [ %3, %bb.c ], [ %i.g, %.lr.ph ]
  %.sroa.0.1 = phi i64 [ %2, %bb.c ], [ %i.f, %.lr.ph ]
  %i.a = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %.sroa.07.1, 1
  ret { i64, i64 } %i.b

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader.split
  %.sroa.0.031 = phi i64 [ %i.f, %.preheader.split ], [ %2, %.preheader.preheader ] ; 2 uses
  %.sroa.07.030 = phi i64 [ %i.g, %.preheader.split ], [ %3, %.preheader.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.031
  %i.d = load i8, ptr %i.c, align 1, !noundef !4  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.030
  store i8 %i.d, ptr %i.e, align 1
  %i.f = add nuw nsw i64 %.sroa.0.031, 1          ; 3 uses
  %i.g = add i64 %.sroa.07.030, 1                 ; 3 uses
  %i.h = icmp ne i8 %i.d, 10
  %i.i = icmp ult i64 %i.f, %1
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader.split, label %.loopexit

._crit_edge:                                      ; preds = %.preheader.split, %.preheader.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent26get_minimum_leading_spaces(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i
  %.sroa.0.017.i = phi i64 [ %.pre.i, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !74, !noundef !4
  %.pre.i = add nuw nsw i64 %.sroa.0.017.i, 1     ; 5 uses
  switch i8 %i.b, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i [
    i8 10, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = icmp samesign ugt i64 %1, %.pre.i
  br i1 %i.c, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.pre.i
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !74, !noundef !4
  %i.f = icmp eq i8 %i.e, 10
  br i1 %i.f, label %.loopexit.split.loop.exit14.i, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i

.loopexit.split.loop.exit14.i:                    ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i
  %i.g = add nuw nsw i64 %.sroa.0.017.i, 2
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i: ; preds = %.lr.ph.i, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i, %bb.b
  %exitcond.not.i = icmp eq i64 %.pre.i, %1
  br i1 %exitcond.not.i, label %.outer._crit_edge, label %.lr.ph.i

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit: ; preds = %.lr.ph.i, %bb.a, %.loopexit.split.loop.exit14.i
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %.loopexit.split.loop.exit14.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.h = icmp ult i64 %.sroa.04.0.i, %1
  br i1 %i.h, label %.preheader.lr.ph, label %.outer._crit_edge

.preheader.lr.ph:                                 ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32
  %.sroa.0.0.ph56 = phi i64 [ 1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32 ], [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit ] ; 3 uses
  %.sroa.5.0.ph55 = phi i64 [ %.sroa.5.1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32 ], [ undef, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit ] ; 3 uses
  %.sroa.015.0.ph54 = phi i64 [ %.sroa.04.0.i21, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32 ], [ %.sroa.04.0.i, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread
  %.sroa.015.050 = phi i64 [ %.sroa.015.0.ph54, %.preheader.lr.ph ], [ %.sroa.5.0.i35, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ] ; 2 uses
  br label %bb.h

.outer._crit_edge:                                ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32, %bb.c, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit
  %.sroa.5.0.ph.lcssa45 = phi i64 [ %.sroa.5.1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24 ], [ undef, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit ], [ %.sroa.5.0.ph55, %bb.c ], [ %.sroa.5.1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32 ], [ %.sroa.5.0.ph55, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ], [ undef, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i ]
  %.sroa.0.0.ph.lcssa44 = phi i64 [ 1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24 ], [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit ], [ %.sroa.0.0.ph56, %bb.c ], [ 1, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32 ], [ %.sroa.0.0.ph56, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ], [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.ph.lcssa44, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0.ph.lcssa45, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.h, %bb.i
  %.sroa.04.0.lcssa = phi i64 [ %.sroa.04.049, %bb.h ], [ %i.z, %bb.i ] ; 3 uses
  %i.k = add i64 %.sroa.04.0.lcssa, %.sroa.015.050 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.l = icmp eq i64 %1, %i.k
  br i1 %i.l, label %.outer._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %1, %i.k
  br i1 %i.m, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !75, !noundef !4
  switch i8 %i.o, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread37 [
    i8 10, label %bb.f
    i8 13, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %i.k, 1
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread

.critedge.i:                                      ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !75
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.r = icmp samesign ugt i64 %1, %i.q
  br i1 %i.r, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread37

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !75, !noundef !4
  %i.u = icmp eq i8 %i.t, 10
  %i.v = add nuw nsw i64 %i.k, 2
  br i1 %i.u, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread37

bb.h:                                             ; preds = %.preheader, %bb.i
  %.sroa.04.049 = phi i64 [ 0, %.preheader ], [ %i.z, %bb.i ] ; 2 uses
  %.sroa.09.048 = phi i64 [ %.sroa.015.050, %.preheader ], [ %i.aa, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.048
  %i.x = load i8, ptr %i.w, align 1, !noundef !4
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %bb.i, label %bb.c

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw i64 %.sroa.04.049, 1             ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.09.048, 1        ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %1
  br i1 %i.ab, label %bb.h, label %bb.c

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread: ; preds = %bb.f, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  %.sroa.5.0.i35 = phi i64 [ %i.v, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit ], [ %i.p, %bb.f ] ; 2 uses
  %i.ac = icmp ult i64 %.sroa.5.0.i35, %1
  br i1 %i.ac, label %.preheader, label %.outer._crit_edge

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread37: ; preds = %bb.g, %bb.e, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  %i.ad = trunc nuw i64 %.sroa.0.0.ph56 to i1
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.sroa.04.0.lcssa, i64 %.sroa.5.0.ph55)
  %.sroa.5.1 = select i1 %i.ad, i64 %spec.select, i64 %.sroa.04.0.lcssa ; 3 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread37, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24
  %.sroa.0.017.i23 = phi i64 [ %.pre.i31, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24 ], [ %i.k, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread37 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i23
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !76, !noundef !4
  %.pre.i31 = add i64 %.sroa.0.017.i23, 1         ; 5 uses
  switch i8 %i.af, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24 [
    i8 10, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i22
  %i.ag = icmp samesign ugt i64 %1, %.pre.i31
  br i1 %i.ag, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.pre.i31
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !76, !noundef !4
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.loopexit.split.loop.exit14.i28, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24

.loopexit.split.loop.exit14.i28:                  ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27
  %i.ak = add nuw nsw i64 %.sroa.0.017.i23, 2
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24: ; preds = %.lr.ph.i22, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27, %bb.j
  %exitcond.not.i26 = icmp eq i64 %.pre.i31, %1
  br i1 %exitcond.not.i26, label %.outer._crit_edge, label %.lr.ph.i22

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32: ; preds = %.lr.ph.i22, %.loopexit.split.loop.exit14.i28
  %.sroa.04.0.i21 = phi i64 [ %i.ak, %.loopexit.split.loop.exit14.i28 ], [ %.pre.i31, %.lr.ph.i22 ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.04.0.i21, %1
  br i1 %i.al, label %.preheader.lr.ph, label %.outer._crit_edge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent8unindent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = invoke noundef i64 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent14unindent_bytes(ptr noalias nofree noundef nonnull %i.l, i64 noundef %2)
          to label %bb.f unwind label %bb.q

bb.e:                                             ; preds = %bb.c
end_hunk_0
