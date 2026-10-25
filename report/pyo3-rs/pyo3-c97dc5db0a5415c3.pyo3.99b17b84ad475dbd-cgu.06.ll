Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.06?download=true
inline.NumInlined: 184
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB4_16GetSetDefBuilder14as_get_set_def:bb.a

bb.e:                                             ; preds = %bb.c
  br i1 %.not9, label %bb.h, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !47
  %i.g = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 24, i64 noundef 8) #21, !noalias !47 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24, !noalias !47
  unreachable

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 213 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable

bb.i:                                             ; preds = %bb.f
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %._RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def13getset_getter.i = select i1 %.not, ptr null, ptr @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def13getset_getter
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.i
  %.sroa.0.025 = phi i64 [ 2, %bb.i ], [ 1, %bb.d ], [ 0, %bb.b ]
  %.sroa.8.024 = phi ptr [ %i.g, %bb.i ], [ %i.d, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def13getset_setter, %bb.i ], [ @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def6setter, %bb.d ], [ null, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %._RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def13getset_getter.i, %bb.i ], [ null, %bb.d ], [ @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def6getter, %bb.b ]
  %i.i = load ptr, ptr %1, align 8, !noundef !4
  store ptr %2, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.01.0.i, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.8.024, ptr %.sroa.7.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.025, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.8.024, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent14unindent_bytes(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent26get_minimum_leading_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !alias.scope !56, !noundef !4
  switch i8 %i.f, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread41 [
    i8 10, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread41, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !56, !noundef !4
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread41

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread41: ; preds = %bb.d, %bb.c, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  br label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.split.i, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread41
  %.sroa.07.0.i83 = phi i64 [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread41 ], [ %i.l, %.preheader.split.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.0.i83
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !57, !noundef !4
  %i.l = add nuw nsw i64 %.sroa.07.0.i83, 1       ; 4 uses
  %i.m = icmp ne i8 %i.k, 10
  %i.n = icmp samesign ult i64 %i.l, %1
  %or.cond.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i, label %.preheader.split.i, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread: ; preds = %.preheader.split.i, %bb.c, %bb.b, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit
  %.sroa.013.0 = phi i64 [ 1, %bb.c ], [ 2, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit ], [ 0, %bb.b ], [ %i.l, %.preheader.split.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit ], [ 0, %bb.b ], [ %i.l, %.preheader.split.i ] ; 2 uses
  %i.o = icmp ult i64 %.sroa.013.0, %1
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36
  %.sroa.0.162 = phi i64 [ %.sroa.07.1.i28, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36 ], [ %.sroa.0.0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ] ; 4 uses
  %.sroa.013.161 = phi i64 [ %.sroa.0.1.i29, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36 ], [ %.sroa.013.0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ] ; 3 uses
  br label %bb.f

.loopexit:                                        ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread, %bb.a
  %.sroa.0.2 = phi i64 [ %1, %bb.a ], [ %.sroa.0.0, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread ], [ %.sroa.07.1.i28, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36 ]
  ret i64 %.sroa.0.2

bb.e:                                             ; preds = %bb.f, %bb.g
  %.sroa.07.0.lcssa = phi i64 [ %.sroa.07.060, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.07.0.lcssa, %i.c
  br i1 %i.p, label %bb.i, label %bb.h

bb.f:                                             ; preds = %.preheader, %bb.g
  %.sroa.07.060 = phi i64 [ 0, %.preheader ], [ %i.t, %bb.g ] ; 2 uses
  %.sroa.010.059 = phi i64 [ %.sroa.013.161, %.preheader ], [ %i.u, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.010.059
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i64 %.sroa.07.060, 1             ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.010.059, 1        ; 2 uses
  %i.v = icmp ult i64 %i.u, %1
  br i1 %i.v, label %bb.f, label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.w = add i64 %.sroa.013.161, %i.c
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread

bb.i:                                             ; preds = %bb.e
  %i.x = add i64 %.sroa.07.0.lcssa, %.sroa.013.161 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.y = icmp eq i64 %1, %i.x
  br i1 %i.y, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = icmp ugt i64 %1, %i.x
  br i1 %i.z, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !58, !noundef !4
  switch i8 %i.ab, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread47 [
    i8 10, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread
    i8 13, label %bb.l
  ]

.critedge.i:                                      ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !58
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ac = add nuw nsw i64 %i.x, 1                 ; 2 uses
  %i.ad = icmp samesign ugt i64 %1, %i.ac
  br i1 %i.ad, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread47

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26: ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !58, !noundef !4
  %i.ag = icmp eq i8 %i.af, 10
  br i1 %i.ag, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread47, !prof !59

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread: ; preds = %bb.k, %bb.i, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26, %bb.h
  %.sroa.013.2 = phi i64 [ %i.x, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26 ], [ %i.w, %bb.h ], [ %1, %bb.i ], [ %i.x, %bb.k ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %.not.i = icmp ult i64 %.sroa.013.2, %.sroa.0.162
  br i1 %.not.i, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20, !noalias !60
  unreachable

bb.n:                                             ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread
  %.old1.i27 = icmp ult i64 %.sroa.013.2, %1
  br i1 %.old1.i27, label %.preheader.split.i31.preheader, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36

.preheader.split.i31.preheader:                   ; preds = %bb.n
  %exitcond.not.i3484 = icmp eq i64 %.sroa.0.162, %1
  br i1 %exitcond.not.i3484, label %.preheader.split.i31.preheader._crit_edge, label %.lr.ph87

.preheader.split.i31:                             ; preds = %.lr.ph87
  %exitcond.not.i34 = icmp eq i64 %i.al, %1
  br i1 %exitcond.not.i34, label %.preheader.split.i31.preheader._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader.split.i31.preheader, %.preheader.split.i31
  %.sroa.0.0.i3386 = phi i64 [ %i.ak, %.preheader.split.i31 ], [ %.sroa.013.2, %.preheader.split.i31.preheader ] ; 2 uses
  %.sroa.07.0.i3285 = phi i64 [ %i.al, %.preheader.split.i31 ], [ %.sroa.0.162, %.preheader.split.i31.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.i3386
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !60, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.0.i3285
  store i8 %i.ai, ptr %i.aj, align 1, !alias.scope !60
  %i.ak = add nuw nsw i64 %.sroa.0.0.i3386, 1     ; 3 uses
  %i.al = add i64 %.sroa.07.0.i3285, 1            ; 3 uses
  %i.am = icmp ne i8 %i.ai, 10
  %i.an = icmp ult i64 %i.ak, %1
  %or.cond.i35 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i35, label %.preheader.split.i31, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36

.preheader.split.i31.preheader._crit_edge:        ; preds = %.preheader.split.i31.preheader, %.preheader.split.i31
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !noalias !60
  unreachable

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol.exit36: ; preds = %.lr.ph87, %bb.n
  %.sroa.07.1.i28 = phi i64 [ %.sroa.0.162, %bb.n ], [ %i.al, %.lr.ph87 ] ; 2 uses
  %.sroa.0.1.i29 = phi i64 [ %.sroa.013.2, %bb.n ], [ %i.ak, %.lr.ph87 ] ; 2 uses
  %i.ao = icmp ult i64 %.sroa.0.1.i29, %1
  br i1 %i.ao, label %.preheader, label %.loopexit

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26.thread47: ; preds = %bb.l, %bb.k, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit26
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
  br i1 %.old1, label %.preheader.split.preheader, label %.loopexit

.preheader.split.preheader:                       ; preds = %bb.c
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not26.not = icmp ult i64 %3, %1
  br i1 %exitcond.not26.not, label %.lr.ph, label %.preheader.split._crit_edge

.preheader.split:                                 ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.g, %umax
  br i1 %exitcond.not, label %.preheader.split._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  %.sroa.07.1 = phi i64 [ %3, %bb.c ], [ %i.g, %.lr.ph ]
  %.sroa.0.1 = phi i64 [ %2, %bb.c ], [ %i.f, %.lr.ph ]
  %i.a = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %.sroa.07.1, 1
  ret { i64, i64 } %i.b

.lr.ph:                                           ; preds = %.preheader.split.preheader, %.preheader.split
  %.sroa.0.028 = phi i64 [ %i.f, %.preheader.split ], [ %2, %.preheader.split.preheader ] ; 2 uses
  %.sroa.07.027 = phi i64 [ %i.g, %.preheader.split ], [ %3, %.preheader.split.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.028
  %i.d = load i8, ptr %i.c, align 1, !noundef !4  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.027
  store i8 %i.d, ptr %i.e, align 1
  %i.f = add nuw nsw i64 %.sroa.0.028, 1          ; 3 uses
  %i.g = add i64 %.sroa.07.027, 1                 ; 3 uses
  %i.h = icmp ne i8 %i.d, 10
  %i.i = icmp ult i64 %i.f, %1
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %.preheader.split, label %.loopexit

.preheader.split._crit_edge:                      ; preds = %.preheader.split, %.preheader.split.preheader
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %1, i64 %2, i1 false)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEENtNtNtBW_3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 3) i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #8

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItermEENvMNtNtBc_4char7methodsc8from_u32ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB2k_8try_folduNCINvMNtNtBc_3ops9try_traitINtB4h_17NeverShortCircuituE10wrap_mut_2ucNCINvNvB2k_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5R_6StringINtNtB2o_7collect6ExtendcE6extendB3b_E0E0E0B4C_E0INtNtB4j_12control_flow11ControlFlowB4C_EECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errReNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtBS_8adapters12GenericShuntINtNtB20_3map3MapINtNtB20_6copied6CopiedINtNtNtBU_5slice4iter4ItermEENvMNtNtBU_4char7methodsc8from_u32EINtNtBU_6option6OptionzEEECsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsdc6yCHiM2ZJ_4pyo33errNtB5_5PyErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyCode_NewEmpty(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @Py_CompileStringExFlags(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10pyfunction20create_py_c_function(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB1K_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1y_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterRNtNtNtB2w_3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENCNvMB4u_NtB4u_13PyTypeBuilder31finalize_methods_and_properties0EE9from_iterB4y_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyObject_GenericGetDict(ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyObject_GenericSetDict(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass30get_sequence_item_from_mapping(ptr noundef, i64 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef i32 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass33assign_sequence_item_from_mapping(ptr noundef, i64 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyType_FromSpec(ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14insert_no_growB1A_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNvMs_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsk_NtNtCsdc6yCHiM2ZJ_4pyo33err5implsNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyWeakref_NewProxy(ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_Dealloc(ptr noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types3any5PyAnyEE6importB9_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noinline noreturn }
attributes #21 = { nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn }
attributes #25 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", i32 4000000, i32 4001}
!6 = !{i64 0, i64 2}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{!"branch_weights", i32 1073206245, i32 1071158, i32 1073206245}
!13 = !{!"branch_weights", i32 1073407024, i32 669599, i32 1073407024}
!14 = !{i64 8}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{!19, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_"}
!20 = distinct !{!20, !19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state10PyErrStateEBH_: argument 0"}
!21 = distinct !{!21, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEEEB1s_"}
!22 = distinct !{!22, !21, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEEEB1s_: argument 0"}
!23 = distinct !{!23, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEEB13_"}
!24 = distinct !{!24, !23, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdc6yCHiM2ZJ_4pyo33err9err_state15PyErrStateInnerEEB13_: argument 0"}
!25 = !{!20}
!26 = !{!22}
!27 = !{!24}
!28 = !{!24, !22, !20}
!29 = !{i64 1, i64 536870913}
!30 = distinct !{!30, i1 true, !"_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsdc6yCHiM2ZJ_4pyo3"}
!31 = distinct !{!31, !30, !"_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!32 = !{!31}
!33 = distinct !{!33, i1 true, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions11PyTypeErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_"}
!34 = distinct !{!34, !33, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions11PyTypeErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, i1 true, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions16PyAttributeErrorReE0B9_"}
!37 = distinct !{!37, !36, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions16PyAttributeErrorReE0B9_: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE3newCsdc6yCHiM2ZJ_4pyo3"}
!40 = distinct !{!40, !39, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE3newCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!41 = !{!40}
!42 = distinct !{!42, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE3newCsdc6yCHiM2ZJ_4pyo3"}
!43 = distinct !{!43, !42, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE3newCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!44 = !{!43}
!45 = distinct !{!45, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object23GetSetDeleteCombinationE3newBK_"}
!46 = distinct !{!46, !45, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object23GetSetDeleteCombinationE3newBK_: argument 0"}
!47 = !{!46}
!48 = distinct !{!48, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol"}
!49 = distinct !{!49, !48, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol: argument 0"}
!50 = distinct !{!50, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol"}
!51 = distinct !{!51, !50, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol"}
!53 = distinct !{!53, !52, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol: argument 0"}
!54 = distinct !{!54, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol"}
!55 = distinct !{!55, !54, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent22copy_forward_until_eol: argument 0"}
!56 = !{!49}
!57 = !{!51}
!58 = !{!53}
!59 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!60 = !{!55}
!61 = distinct !{!61, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol"}
!62 = distinct !{!62, !61, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol: argument 0"}
!63 = !{!62}
!64 = distinct !{!64, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line"}
!65 = distinct !{!65, !64, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol"}
!67 = distinct !{!67, !66, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol: argument 0"}
!68 = distinct !{!68, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol"}
!69 = distinct !{!69, !68, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol: argument 0"}
!70 = distinct !{!70, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line"}
!71 = distinct !{!71, !70, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line: argument 0"}
!72 = distinct !{!72, i1 true, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol"}
!73 = distinct !{!73, !72, !"_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol: argument 0"}
!74 = !{!67, !65}
!75 = !{!69}
!76 = !{!73, !71}
!77 = distinct !{!77, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8"}
!78 = distinct !{!78, !77, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!79 = distinct !{!79, !77, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!80 = distinct !{!80, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3"}
!81 = distinct !{!81, !80, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!82 = distinct !{!82, !80, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3: argument 1"}
!83 = !{!78}
!84 = !{!79}
!85 = !{!78, !79}
!86 = !{!81}
!87 = !{!82}
!88 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!89 = !{!81, !82}
!90 = distinct !{!90, i1 true, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def13getset_getter0ONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_"}
!91 = distinct !{!91, !90, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def13getset_getter0ONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_: argument 0"}
!92 = distinct !{!92, !90, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def13getset_getter0ONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_: argument 1"}
!93 = distinct !{null}
!94 = distinct !{!94, i1 true, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline33panic_result_into_callback_outputONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_"}
!95 = distinct !{!95, !94, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline33panic_result_into_callback_outputONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_: argument 0"}
!96 = !{!91}
!97 = !{!91, !92}
!98 = !{!95}
!99 = distinct !{!99, i1 true, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def13getset_setter0lEB6_"}
!100 = distinct !{!100, !99, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def13getset_setter0lEB6_: argument 0"}
!101 = distinct !{!101, i1 true, !"_RNCINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB8_7pyclass18create_type_objectNtB15_13GetSetDefType21create_py_get_set_def13getset_setter0lE0B8_"}
!102 = distinct !{!102, !101, !"_RNCINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB8_7pyclass18create_type_objectNtB15_13GetSetDefType21create_py_get_set_def13getset_setter0lE0B8_: argument 1"}
!103 = distinct !{!103, !101, !"_RNCINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB8_7pyclass18create_type_objectNtB15_13GetSetDefType21create_py_get_set_def13getset_setter0lE0B8_: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNCNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB9_13GetSetDefType21create_py_get_set_def13getset_setter0Bd_"}
!105 = distinct !{!105, !104, !"_RNCNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB9_13GetSetDefType21create_py_get_set_def13getset_setter0Bd_: argument 1"}
!106 = distinct !{!106, !104, !"_RNCNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB9_13GetSetDefType21create_py_get_set_def13getset_setter0Bd_: argument 0"}
!107 = distinct !{null}
!108 = distinct !{!108, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions16PyAttributeErrorReE0E3newBO_"}
!109 = distinct !{!109, !108, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions16PyAttributeErrorReE0E3newBO_: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions16PyAttributeErrorReE0E3newBO_"}
!111 = distinct !{!111, !110, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions16PyAttributeErrorReE0E3newBO_: argument 0"}
!112 = !{!100}
!113 = !{!106, !105, !103, !102, !100}
!114 = !{!109, !106, !105, !103, !102, !100}
!115 = !{!111, !106, !105, !103, !102, !100}
!116 = distinct !{!116, i1 true, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def6getter0ONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_"}
!117 = distinct !{!117, !116, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def6getter0ONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_: argument 1"}
!118 = distinct !{!118, !116, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def6getter0ONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_: argument 0"}
!119 = distinct !{null}
!120 = distinct !{!120, i1 true, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline33panic_result_into_callback_outputONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_"}
!121 = distinct !{!121, !120, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline33panic_result_into_callback_outputONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEB6_: argument 0"}
!122 = !{!118, !117}
!123 = !{!121}
!124 = distinct !{!124, i1 true, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def6setter0lEB6_"}
!125 = distinct !{!125, !124, !"_RINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB6_7pyclass18create_type_objectNtB13_13GetSetDefType21create_py_get_set_def6setter0lEB6_: argument 0"}
!126 = distinct !{null}
!127 = distinct !{!127, i1 true, !"_RNCINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB8_7pyclass18create_type_objectNtB15_13GetSetDefType21create_py_get_set_def6setter0lE0B8_"}
!128 = distinct !{!128, !127, !"_RNCINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB8_7pyclass18create_type_objectNtB15_13GetSetDefType21create_py_get_set_def6setter0lE0B8_: argument 1"}
!129 = distinct !{!129, !127, !"_RNCINvNtNtCsdc6yCHiM2ZJ_4pyo35impl_10trampoline10trampolineNCNvNvMs0_NtNtB8_7pyclass18create_type_objectNtB15_13GetSetDefType21create_py_get_set_def6setter0lE0B8_: argument 0"}
!130 = distinct !{!130, i1 true, !"_RNCNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB9_13GetSetDefType21create_py_get_set_def6setter0Bd_"}
!131 = distinct !{!131, !130, !"_RNCNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB9_13GetSetDefType21create_py_get_set_def6setter0Bd_: argument 1"}
!132 = distinct !{!132, !130, !"_RNCNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB9_13GetSetDefType21create_py_get_set_def6setter0Bd_: argument 0"}
!133 = distinct !{!133, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions16PyAttributeErrorReE0E3newBO_"}
!134 = distinct !{!134, !133, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions16PyAttributeErrorReE0E3newBO_: argument 0"}
!135 = !{!125}
!136 = !{!134, !132, !131, !129, !128, !125}
!137 = !{!132, !131, !129, !128, !125}
!138 = distinct !{!138, i1 true, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1L_11RandomState3new0B24_ECsdc6yCHiM2ZJ_4pyo3"}
!139 = distinct !{!139, !138, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1L_11RandomState3new0B24_ECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!140 = distinct !{!140, i1 true, !"_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsdc6yCHiM2ZJ_4pyo3"}
!141 = distinct !{!141, !140, !"_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!142 = distinct !{!142, i1 true, !"_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csdc6yCHiM2ZJ_4pyo3"}
!143 = distinct !{!143, !142, !"_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csdc6yCHiM2ZJ_4pyo3: argument 0"}
!144 = distinct !{!144, i1 true, !"_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2c_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdc6yCHiM2ZJ_4pyo3"}
!145 = distinct !{!145, !144, !"_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2c_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!146 = distinct !{!146, i1 true, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder8type_doc"}
!147 = distinct !{!147, !146, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder8type_doc: argument 0"}
!148 = distinct !{!148, !146, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder8type_doc: argument 1"}
!149 = distinct !{!149, !146, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder8type_doc: argument 2"}
!150 = distinct !{!150, i1 true, !"_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotaEB7_"}
!151 = distinct !{!151, !150, !"_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotaEB7_: argument 0"}
!152 = distinct !{!152, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8push_mutCsdc6yCHiM2ZJ_4pyo3"}
!153 = distinct !{!153, !152, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8push_mutCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!154 = distinct !{!154, i1 true, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder7offsets"}
!155 = distinct !{!155, !154, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder7offsets: argument 0"}
!156 = distinct !{!156, !154, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder7offsets: argument 1"}
!157 = distinct !{!157, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8push_mutCsdc6yCHiM2ZJ_4pyo3"}
!158 = distinct !{!158, !157, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8push_mutCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!159 = distinct !{!159, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8push_mutCsdc6yCHiM2ZJ_4pyo3"}
!160 = distinct !{!160, !159, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8push_mutCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items"}
!162 = distinct !{!162, !161, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items: argument 0"}
!163 = distinct !{!163, !161, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items: argument 1"}
!164 = distinct !{!164, !161, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items: argument 2"}
!165 = distinct !{!165, i1 true, !"_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_"}
!166 = distinct !{!166, !165, !"_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_: argument 0"}
!167 = distinct !{!167, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8push_mutCsdc6yCHiM2ZJ_4pyo3"}
!168 = distinct !{!168, !167, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8push_mutCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!169 = distinct !{!169, i1 true, !"_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def"}
end_hunk_1
