inline.NumInlined: 8496
inline.NumDeleted: 3150
begin_hunk_0_@_RNvMNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB2_9BufWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE13with_capacityCs14kWLkQVSKO_14deltalake_core:bb.a

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE13with_capacityB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !38, !noundef !27
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !66, !noundef !27 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e, !prof !67

bb.b:                                             ; preds = %.noexc
  %i.h = load i64, ptr %i.g, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #56
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !14674
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %i.m = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB2_9BufWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !38, !noundef !27
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !66, !noundef !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #56
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.718 = alloca [16 x i8], align 8          ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [96 x i8], align 16               ; 7 uses
  %i.q = alloca [16 x i8], align 16               ; 11 uses
  %i.r = alloca [112 x i8], align 16              ; 9 uses
  %i.s = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !27, !align !106, !noundef !27 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 664
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.w, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = invoke noundef align 8 ptr @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType5fieldRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.ay, %bb.az, %.body109, %bb.ac, %bb.x, %.thread133, %bb.ba, %bb.e
  %.pn99.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ba ], [ %lpad.thr_comm, %.thread133 ], [ %i.af, %bb.e ], [ %i.bp, %bb.x ], [ %.pn97, %.body109 ], [ %.pn97, %bb.ac ], [ %.pn.ph, %bb.az ], [ %.pn.ph, %bb.ay ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14681)
  call void @llvm.experimental.noalias.scope.decl(metadata !14684)
  %i.ac = load ptr, ptr %i.s, align 8, !alias.scope !14687, !nonnull !27, !noundef !27
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !14687
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.av

bb.e:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, %.loopexit, %bb.g, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ah = invoke fastcc noundef zeroext i1 @_RNvXs1F_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @152)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.i, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114
  call void @llvm.experimental.noalias.scope.decl(metadata !14688)
  call void @llvm.experimental.noalias.scope.decl(metadata !14691)
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !14694, !nonnull !27, !noundef !27
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !14694
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit102.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit102

bb.i:                                             ; preds = %bb.g
  br i1 %i.ah, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.ao = load i64, ptr %i.an, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14698)
  %.idx.i = mul nuw nsw i64 %i.ao, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14700)
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %.lr.ph.i.i

..loopexit_crit_edge:                             ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre149 = load i64, ptr %.phi.trans.insert148, align 8
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !14703, !noalias !14704, !noundef !27 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val2.i.i.i = load ptr, ptr %3, align 8, !alias.scope !14703, !noalias !14704, !nonnull !27 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
  %i.ar = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.as, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val4.i.i = load i64, ptr %i.at, align 8, !alias.scope !14698, !noalias !14706, !noundef !27
  %i.au = icmp eq i64 %.val4.i.i, %.val3.i.i.i
  br i1 %i.au, label %bb.l, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %.val3.i.i = load ptr, ptr %i.av, align 8, !alias.scope !14698, !noalias !14706, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !14707
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.l, %bb.k
  %.not8.i.i = icmp eq ptr %i.as, %i.ap
  br i1 %.not8.i.i, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %..loopexit_crit_edge
  %i.ax = phi i64 [ %.pre149, %..loopexit_crit_edge ], [ %.val3.i.i.i, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ]
  %i.ay = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %.val2.i.i.i, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @153, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 12, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %2, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 9, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ay, ptr %.sroa.971.0..sroa_idx, align 8
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.ax, ptr %.sroa.1072.0..sroa_idx, align 8
  invoke void @_RINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1s_5array4iter8IntoIterB2j_Kj3_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.m unwind label %bb.e

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @154, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 22, ptr %.sroa.642.0..sroa_idx, align 8
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.val2.i.i.i, ptr %.sroa.743.0..sroa_idx, align 8
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.val3.i.i.i, ptr %.sroa.844.0..sroa_idx, align 8
  invoke void @_RINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1s_5array4iter8IntoIterB2j_Kj2_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.p unwind label %bb.e

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 1, ptr %i.r, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ba = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc103 unwind label %bb.ba

.noexc103:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %i.r, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

.thread133:                                       ; preds = %bb.au, %bb.ai, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc103, %bb.n
  %i.bd = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !27, !noundef !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref()
          to label %bb.q unwind label %bb.ba

bb.q:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.bh = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bg, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bj, ptr noundef nonnull align 16 dereferenceable(112) %i.r, i64 112, i1 false)
  store i64 1, ptr %i.c, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bk, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !14708
  %i.bl = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 128, i64 noundef range(i64 8, 17) 16) #60, !noalias !14708 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.s, label %bb.w, !prof !67

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #56
          to label %.noexc104 unwind label %bb.t

.noexc104:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.bj)
          to label %bb.ay unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.v:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bl, ptr noundef nonnull align 16 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.bl, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.y unwind label %bb.aw

bb.x:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bq = load i64, ptr %i.p, align 16, !range !107, !noundef !27
  %.not87.not = icmp eq i64 %i.bq, -9223372036854775743
  br i1 %.not87.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_ENtNtB1D_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread133

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_ENtNtB1D_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit114

bb.ab:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bs = load <2 x ptr>, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store <2 x ptr> %i.bs, ptr %i.q, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bt = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !27
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.bt, ptr %i.j, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bw, ptr %i.bx, align 8
end_hunk_0
begin_hunk_1_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions:bb.a
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #59
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_4sync3ArcNtNtB8_5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31record_batch_without_partitions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27 ; 6 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.g, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15854)
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !15857, !nonnull !27, !noundef !27
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !15857
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #57
          to label %common.resume unwind label %bb.aa

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.a, align 8, !range !38, !noundef !27
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !66, !noundef !27 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h, !prof !67

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #56
          to label %bb.ab unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !27, !noundef !27
  %i.x = icmp ule i64 %i.l, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store i64 0, ptr %i.z, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15861)
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !15864, !nonnull !27, !noundef !27
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !15864
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit20

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit20 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22: ; preds = %bb.n, %bb.o, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %.us-phi, %bb.o ], [ %.us-phi, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #59
          to label %common.resume unwind label %bb.aa

bb.j:                                             ; preds = %bb.r, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ae = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit20
  store ptr %i.g, ptr %i.c, align 8
  %i.ag = load ptr, ptr %i.j, align 8, !nonnull !27, !noundef !27
  %i.ah = load i64, ptr %i.k, align 8, !noundef !27 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %.idx = shl nuw nsw i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 2 uses
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %.idx.i = mul nuw nsw i64 %3, 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.i.i

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i64, ptr %i.z, align 8, !alias.scope !15865
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us
  %i.am = phi i64 [ %i.at, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us ], [ %.pre, %.lr.ph.split.us.preheader ] ; 3 uses
  %.sroa.0.036.us = phi ptr [ %i.an, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us ], [ %i.ai, %.lr.ph.split.us.preheader ]
  %.sroa.7.035.us = phi i64 [ %i.ao, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.036.us, i64 8 ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.7.035.us, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !15868)
  call void @llvm.experimental.noalias.scope.decl(metadata !15871)
  call void @llvm.experimental.noalias.scope.decl(metadata !15873)
  %i.ap = load i64, ptr %i.e, align 8, !range !74, !alias.scope !15865, !noundef !27
  %i.aq = icmp eq i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.l, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us

bb.l:                                             ; preds = %.lr.ph.split.us
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs9sM1NMKkC3_8petgraph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us unwind label %.split.us

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us: ; preds = %bb.l, %.lr.ph.split.us
  %i.ar = load ptr, ptr %i.y, align 8, !alias.scope !15865, !nonnull !27, !noundef !27
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.am
  store i64 %.sroa.7.035.us, ptr %i.as, align 8
  %i.at = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.at, ptr %i.z, align 8, !alias.scope !15865
  %i.au = icmp eq ptr %i.an, %i.aj
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit20
  call void @llvm.trap()
  unreachable

.split:                                           ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.aw, %.split ], [ %i.av, %.split.us ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15876)
  call void @llvm.experimental.noalias.scope.decl(metadata !15879)
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !15882, !nonnull !27, !noundef !27
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !15882
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22 unwind label %bb.aa

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.036 = phi ptr [ %i.ba, %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.sroa.7.035 = phi i64 [ %i.bb, %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 8 ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.7.035, 1
  %i.bc = load ptr, ptr %.sroa.0.036, align 8, !nonnull !27, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15868)
  call void @llvm.experimental.noalias.scope.decl(metadata !15871)
  call void @llvm.experimental.noalias.scope.decl(metadata !15873)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.val3.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !15883, !noalias !15884, !noundef !27 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.val2.i.i.i = load ptr, ptr %4, align 8, !alias.scope !15883, !noalias !15884, !nonnull !27
  br label %bb.p

bb.p:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
  %i.be = phi ptr [ %2, %.lr.ph.i.i ], [ %i.bf, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val4.i.i = load i64, ptr %i.bg, align 8, !alias.scope !15871, !noalias !15886, !noundef !27
  %i.bh = icmp eq i64 %.val4.i.i, %.val3.i.i.i
  br i1 %i.bh, label %bb.q, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %i.be, i64 8
  %.val3.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !15871, !noalias !15886, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !15887
  %i.bj = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.q, %bb.p
  %.not8.i.i = icmp eq ptr %i.bf, %i.al
  br i1 %.not8.i.i, label %.loopexit, label %bb.p

._crit_edge:                                      ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.us, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !15888)
  call void @llvm.experimental.noalias.scope.decl(metadata !15891)
  %i.bk = load ptr, ptr %i.c, align 8, !alias.scope !15894, !nonnull !27, !noundef !27
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !15894
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24

bb.r:                                             ; preds = %._crit_edge
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24: ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bn = load ptr, ptr %i.y, align 8, !nonnull !27, !noundef !27
  %i.bo = load i64, ptr %i.z, align 8, !noundef !27
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch7project(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bn, i64 noundef %i.bo)
          to label %bb.s unwind label %bb.j

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24
  %i.bp = load i64, ptr %i.b, align 8, !range !66, !noundef !27 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  store i64 -9223372036854775703, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22, %bb.e, %bb.d, %bb.x, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %i.bs, %bb.u ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22 ], [ %i.m, %bb.e ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.s
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.29.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.bu, align 8
  store i64 -9223372036854775700, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %bb.t
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
  %i.bx = load i64, ptr %i.z, align 8, !alias.scope !15865, !noundef !27 ; 3 uses
  %i.by = load i64, ptr %i.e, align 8, !range !74, !alias.scope !15865, !noundef !27
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.z, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %.loopexit
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs9sM1NMKkC3_8petgraph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit unwind label %.split

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.z, %.loopexit
  %i.ca = load ptr, ptr %i.y, align 8, !alias.scope !15865, !nonnull !27, !noundef !27
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bx
  store i64 %.sroa.7.035, ptr %i.cb, align 8
  %i.cc = add i64 %i.bx, 1
  store i64 %i.cc, ptr %i.z, align 8, !alias.scope !15865
  br label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.q, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjE8push_mutCs14kWLkQVSKO_14deltalake_core.exit
  %i.cd = icmp eq ptr %i.ba, %i.aj
  br i1 %i.cd, label %._crit_edge, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.o, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit22
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ab:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier9get_count(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 8 uses
  %i.c = tail call noundef align 8 ptr @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 24) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8
  store i64 20, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15895
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !15895
  %i.f = load i64, ptr %i.a, align 8, !range !38, !noalias !15895, !noundef !27
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !66, !noalias !15895, !noundef !27 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e, !prof !67

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !noalias !15895
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #56, !noalias !15895
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !noalias !15895, !nonnull !27, !noundef !27 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.i, 35
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15895
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.l, ptr noundef nonnull align 1 dereferenceable(36) @106, i64 36, i1 false), !noalias !15895
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.n, align 8, !noalias !15895
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i, align 16, !noalias !15895
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 36, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15895
  store i64 -9223372036854775722, ptr %i.b, align 16, !noalias !15895
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !15898
  %i.o = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #60, !noalias !15898 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier9get_counts_0B9_.exit, !prof !67

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #56
          to label %.noexc.i unwind label %bb.g, !noalias !15895

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.b) #59
          to label %bb.i unwind label %bb.h, !noalias !15895

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters:bb.a
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.bu, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !16801
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterINtNtB2y_6option6OptionB11_EEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(256) %i.a)
          to label %bb.ae unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.z, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.bx, %bb.z ], [ %i.cg, %bb.ag ] ; 2 uses
  %i.by = load i64, ptr %i.p, align 16, !range !1006, !alias.scope !16803, !noundef !27
  %i.bz = icmp eq i64 %i.by, 37
  br i1 %i.bz, label %.noexc53, label %bb.aa

bb.aa:                                            ; preds = %.body
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.p)
          to label %.noexc53 unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit
  %.sroa.013.0 = phi ptr [ %i.ce, %bb.ai ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss2_0EBU_.exit ]
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false)
  store ptr %.sroa.013.0, ptr %0, align 16
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %.noexc53, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.ac ], [ %.pn62, %.noexc53 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ab
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.ae:                                            ; preds = %bb.y
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i8 0, ptr %.sroa.419.0..sroa_idx.i, align 16, !alias.scope !16798, !noalias !16806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.bw, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 1, ptr %i.l, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 13, ptr %i.cd, align 16
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !16807
  %i.ce = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 128, i64 noundef range(i64 8, 17) 16) #60, !noalias !16807 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.af, label %bb.ai, !prof !67

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #56
          to label %.noexc54 unwind label %bb.ag

.noexc54:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cd)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ce, ptr noundef nonnull align 16 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.aj:                                            ; preds = %bb.aa, %.thread, %.noexc53
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

.noexc53:                                         ; preds = %bb.aa, %.body, %.thread
  %.pn62 = phi { ptr, i32 } [ %eh.lpad-body48, %.thread ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t) #59
          to label %common.resume unwind label %bb.aj

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.q
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.bk, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit64, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #59
          to label %.noexc53 unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.c unwind label %.loopexit.split-lp69

.loopexit68:                                      ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp69:                             ; preds = %bb.a, %bb.c
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp69, %.loopexit68
  %lpad.phi72 = phi { ptr, i32 } [ %lpad.loopexit70, %.loopexit68 ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp69 ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !16810)
  %i.k = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc unwind label %.loopexit.split-lp69

.noexc:                                           ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not11.not.i = icmp eq ptr %i.l, null
  br i1 %.not11.not.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !16810, !noalias !16813, !nonnull !27, !noundef !27 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !16810, !noalias !16813, !noundef !27 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.p, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0           ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.i.i.i.i.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16815)
  call void @llvm.experimental.noalias.scope.decl(metadata !16818)
  call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  br label %.loopexit67

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i: ; preds = %bb.e
  %i.r = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc18 unwind label %.loopexit68

.noexc18:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not.not.i = icmp eq ptr %i.s, null
  br i1 %.not.not.i, label %.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %.noexc18
  %i.t = phi ptr [ %i.s, %.noexc18 ], [ %i.l, %.lr.ph.i ]
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !16810, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16815)
  call void @llvm.experimental.noalias.scope.decl(metadata !16818)
  call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 72
  %.val3.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !16823, !noalias !16824, !noundef !27 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 64
  %.val2.i.i.i.i.i.i = load ptr, ptr %6, align 8, !alias.scope !16823, !noalias !16824, !nonnull !27
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.w, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !16818, !noalias !16826, !noundef !27
  %i.y = icmp eq i64 %.val4.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.y, label %bb.e, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.v, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !16818, !noalias !16826, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i), !noalias !16827
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.not8.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not8.i.i.i.i.i, label %.loopexit67, label %bb.d

.thread:                                          ; preds = %.noexc18, %.noexc
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.i

.loopexit67:                                      ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i, %.lr.ph.split.us.i
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
          to label %bb.f unwind label %.loopexit.split-lp57.loopexit.split-lp

.loopexit56:                                      ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp57

.loopexit.split-lp57.loopexit:                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp57

.loopexit.split-lp57.loopexit.split-lp:           ; preds = %bb.f, %.loopexit67
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp57

.loopexit.split-lp57:                             ; preds = %.loopexit.split-lp57.loopexit, %.loopexit.split-lp57.loopexit.split-lp, %.loopexit56
  %lpad.phi60 = phi { ptr, i32 } [ %lpad.loopexit58, %.loopexit56 ], [ %lpad.loopexit63, %.loopexit.split-lp57.loopexit ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp57.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.f:                                             ; preds = %.loopexit67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.noexc36 unwind label %.loopexit.split-lp57.loopexit.split-lp

.noexc36:                                         ; preds = %bb.f
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %.not11.not.i21 = icmp eq ptr %i.ac, null
  br i1 %.not11.not.i21, label %.loopexit61, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.noexc36
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i, label %.lr.ph.i.i.i.i.i25

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i: ; preds = %.lr.ph.i22, %.noexc37
  call void @llvm.experimental.noalias.scope.decl(metadata !16828)
  call void @llvm.experimental.noalias.scope.decl(metadata !16831)
  call void @llvm.experimental.noalias.scope.decl(metadata !16833)
  %i.ad = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.noexc37 unwind label %.loopexit56

.noexc37:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %.not.us.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.us.not.i, label %.loopexit61, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.us.i

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i22, %.noexc38
  %i.af = phi ptr [ %i.ao, %.noexc38 ], [ %i.ac, %.lr.ph.i22 ]
  %.val6.i26 = load ptr, ptr %i.af, align 8, !noalias !16836, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16828)
  call void @llvm.experimental.noalias.scope.decl(metadata !16831)
  call void @llvm.experimental.noalias.scope.decl(metadata !16833)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6.i26, i64 72
  %.val3.i.i.i.i.i.i27 = load i64, ptr %i.ag, align 8, !alias.scope !16839, !noalias !16840, !noundef !27 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i26, i64 64
  %.val2.i.i.i.i.i.i28 = load ptr, ptr %7, align 8, !alias.scope !16839, !noalias !16840, !nonnull !27
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30, %.lr.ph.i.i.i.i.i25
  %i.ah = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i25 ], [ %i.ai, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val4.i.i.i.i.i29 = load i64, ptr %i.aj, align 8, !alias.scope !16831, !noalias !16842, !noundef !27
  %i.ak = icmp eq i64 %.val4.i.i.i.i.i29, %.val3.i.i.i.i.i.i27
  br i1 %i.ak, label %bb.h, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ah, i64 8
  %.val3.i.i.i.i.i34 = load ptr, ptr %i.al, align 8, !alias.scope !16831, !noalias !16842, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i.i35 = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i.i.i34, ptr nonnull readonly %.val2.i.i.i.i.i.i28, i64 %.val3.i.i.i.i.i.i27), !noalias !16843
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i35, 0
  br i1 %i.am, label %.loopexit61, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30: ; preds = %bb.h, %bb.g
  %.not8.i.i.i.i.i31 = icmp eq ptr %i.ai, %i.q
  br i1 %.not8.i.i.i.i.i31, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i, label %bb.g

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i: ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30
  %i.an = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.noexc38 unwind label %.loopexit.split-lp57.loopexit

.noexc38:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates_0E0B2g_.exit.loopexit.i
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not.not.i32 = icmp eq ptr %i.ao, null
  br i1 %.not.not.i32, label %.loopexit61, label %.lr.ph.i.i.i.i.i25

.loopexit61:                                      ; preds = %.noexc38, %bb.h, %.noexc37, %.noexc36
  %.not10.i33 = phi i1 [ true, %bb.h ], [ false, %.noexc36 ], [ false, %.noexc37 ], [ false, %.noexc38 ]
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.loopexit61
  %i.ap = phi i1 [ false, %.loopexit61 ], [ true, %.thread ] ; 2 uses
  %.sroa.0.0 = phi i1 [ %.not10.i33, %.loopexit61 ], [ true, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.l unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.k, %.loopexit.split-lp57, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %.loopexit.split-lp57, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.phi60, %.loopexit.split-lp57 ], [ %lpad.phi72, %bb.b ], [ %lpad.phi, %bb.k ]
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.i, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.l
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not7.not.i = icmp eq ptr %i.as, null
  br i1 %.not7.not.i, label %.loopexit55, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.noexc44, %.noexc45
  %i.at = phi ptr [ %i.bb, %.noexc45 ], [ %i.as, %.noexc44 ]
  %.val6.i42 = load ptr, ptr %i.at, align 8, !noalias !16844, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val6.i42, i64 72
  %i.av = load i64, ptr %i.au, align 8, !noalias !16844, !noundef !27
  %i.aw = icmp eq i64 %4, %i.av
  br i1 %i.aw, label %bb.m, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i

bb.m:                                             ; preds = %.lr.ph.i41
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6.i42, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !16844, !nonnull !27, !noundef !27
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %3, ptr nonnull %i.ay, i64 %4), !noalias !16844
  %i.az = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.az, label %bb.n, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i: ; preds = %bb.m, %.lr.ph.i41
  %i.ba = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc45 unwind label %.loopexit

.noexc45:                                         ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicates0_0E0B2g_.exit.backedge.i
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %.not.not.i43 = icmp eq ptr %i.bb, null
  br i1 %.not.not.i43, label %.loopexit55, label %.lr.ph.i41

.loopexit55:                                      ; preds = %.noexc45, %.noexc44
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel18to_delta_predicate(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  %i.bd = load i64, ptr %i.d, align 16, !range !16415, !noundef !27
  %i.be = icmp eq i64 %i.bd, 16
  br i1 %i.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.bf, align 8
  store i64 16, ptr %0, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.bg, align 16
  br label %bb.r

bb.o:                                             ; preds = %.loopexit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.bh = xor i1 %5, true
  %i.bi = or i1 %.sroa.0.0, %i.bh
  %.sroa.09.0 = select i1 %i.ap, i8 2, i8 1
  %i.bj = or i1 %i.ap, %i.bi
  %.sroa.03.1 = select i1 %i.bj, ptr null, ptr %1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.09.0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.03.1, ptr %i.bl, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47: ; preds = %.loopexit55
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.0.0, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47
  %.12 = select i1 %5, ptr %1, ptr null
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.bn, align 8
  store i64 16, ptr %0, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.12, ptr %i.bo, align 16
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.bp, align 8
  store i64 16, ptr %0, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.bq, align 16
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i64, ptr %4, align 8, !range !66, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !27
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.i = load i8, ptr %i.h, align 1, !range !1786, !noundef !27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259)
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i8 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.not = icmp eq i64 %i.c, -9223372036854775808  ; 2 uses
  %.sroa.0.0 = select i1 %.not, ptr @257, ptr %i.e
  %.sroa.3.0 = select i1 %.not, i64 20, i64 %i.g
  store i8 %storemerge, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.q, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.0.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2X_5slice4iter4IterRNtNtB17_4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0EE9from_iterB4B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentRBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #16 {
bb.a:
  %.val4 = load ptr, ptr %1, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr i8, ptr %.val4, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val4, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr i8, ptr %.val1, i64 16
  %.val3.i = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val1, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %.val1.i)
  %i.f = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownReINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %.val.a = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %.val2 = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2, ptr nonnull readonly %.val.a, i64 %.val1), !alias.scope !16847
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !16851
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !16855
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = load i64, ptr %1, align 16, !range !3608, !noundef !27
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 -9223372036854775744)
  switch i64 %i.f, label %bb.b [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 14, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !16859
  %i.g = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #60, !noalias !16859 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.m, !prof !67

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #56
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #59
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  invoke void @_RNvXs6_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjyY8HP3IvQ6_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c)
          to label %bb.j unwind label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  invoke void @_RNvXs5_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.j unwind label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 3, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i
  %i.q = load i64, ptr %1, align 16, !range !3608, !noundef !27
  %i.r = call i64 @llvm.usub.sat.i64(i64 %i.q, i64 -9223372036854775744)
  switch i64 %i.r, label %bb.k [
    i64 1, label %bb.l
    i64 2, label %bb.l
    i64 3, label %bb.l
    i64 14, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.j, %bb.j, %bb.j
  ret void

bb.m:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @108, ptr %i.t, align 8
  store i64 13, ptr %0, align 8
  br label %bb.l

.body:                                            ; preds = %bb.d, %bb.o, %bb.n, %bb.n, %bb.n, %bb.n
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.u, %bb.o ], [ %i.u, %bb.n ], [ %i.u, %bb.n ], [ %i.u, %bb.n ], [ %i.u, %bb.n ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body4

bb.n:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.v = load i64, ptr %1, align 16, !range !3608, !noundef !27
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 -9223372036854775744)
  switch i64 %i.w, label %bb.o [
    i64 1, label %.body
    i64 2, label %.body
    i64 3, label %.body
    i64 14, label %.body
  ]

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %1) #59
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtB4_6string6StringNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16867
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1), !noalias !16862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16867
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !16862

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #59
          to label %bb.g unwind label %bb.f, !noalias !16862

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array7to_dataCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array8is_emptyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = icmp ult i64 %i.b, 16
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array9data_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array9into_dataCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array21get_array_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !27 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !27
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !27 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !27
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = lshr i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @521, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6offsetCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array8is_emptyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array9data_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #18 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6232, !noundef !27 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
    i64 6, label %bb.e
    i64 7, label %bb.e
    i64 8, label %bb.c
    i64 9, label %bb.d
    i64 10, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !27, !align !106, !noundef !27
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !27, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !27, !align !106, !noundef !27
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c
  %.sroa.12.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.12.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  %.val2 = load ptr, ptr %1, align 8, !nonnull !27, !align !106, !noundef !27
  %i.c = load ptr, ptr %.val2, align 8, !nonnull !27, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18275)
  %.idx.i.i = mul nuw nsw i64 %.val1, 24
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18277)
  %.not.i.i.i = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0B7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val3.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !18280, !noalias !18281, !noundef !27 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val2.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !18280, !noalias !18281, !nonnull !27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i, %.lr.ph.i.i.i
  %i.f = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.g, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val4.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !18275, !noalias !18283, !noundef !27
  %i.i = icmp eq i64 %.val4.i.i.i, %.val3.i.i.i.i
  br i1 %i.i, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %.val3.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !18275, !noalias !18283, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !18284
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0B7_.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i: ; preds = %bb.c, %bb.b
  %.not8.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not8.i.i.i, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0B7_.exit, label %bb.b

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0B7_.exit: ; preds = %bb.c, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i, %bb.a
  %i.l = phi i1 [ true, %bb.a ], [ true, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i ], [ false, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3H_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter00ENCB3B_0ENtNtB56_8iterator8Iterator10advance_byB3N_(ptr noalias noundef align 8 dereferenceable(144) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i64, ptr %0, align 8, !range !66, !alias.scope !18285, !noundef !27
  %.not.i.i = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2g_14LogDataHandlerNtNtBa_7collect12IntoIterator9into_iter00ENtB4_13SpecAdvanceBy15spec_advance_byB2m_(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3k_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB3e_00EENtNtB4J_8iterator8Iterator10advance_byB3q_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pr.i.i = load i64, ptr %0, align 8, !alias.scope !18290
  %i.d = icmp eq i64 %.pr.i.i, -9223372036854775808
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18285
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.038.i.i = phi i64 [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ %1, %bb.a ] ; 2 uses
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18285
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !18293, !noalias !18296, !noundef !27
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i, label %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.i.i

_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i
  %i.h = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2Q_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0ENtNtB4f_8iterator8Iterator8try_foldjNCINvNvMsg_NtB8_7flattenINtB5K_13FlattenCompatppE13iter_try_fold7flattenIBO_INtNtNtBc_3ops5range5RangejENCNCB2K_00EjINtNtB6S_12control_flow11ControlFlowujEINvNvXsi_B5K_B5X_B4Z_10advance_by7advanceB6J_EE0B7r_EB2W_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %.sroa.0.038.i.i, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(144) %0) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3k_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB3e_00EENtNtB4J_8iterator8Iterator10advance_byB3q_.exit, label %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.thread.i.i

_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.thread.i.i: ; preds = %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.i.i
  %i.k = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %.pre.i.i = load i64, ptr %0, align 8, !range !66, !alias.scope !18299
  %i.l = icmp eq i64 %.pre.i.i, -9223372036854775808
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.thread.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18285
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i: ; preds = %bb.f, %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.thread.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i
  %.3.i294249.i.i = phi i64 [ %i.k, %bb.f ], [ %i.k, %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.thread.i.i ], [ %.sroa.0.038.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i.i ] ; 2 uses
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18285
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !range !66, !alias.scope !18285, !noundef !27
  %.not27.i.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not27.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i
  %i.p = call noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2g_14LogDataHandlerNtNtBa_7collect12IntoIterator9into_iter00ENtB4_13SpecAdvanceBy15spec_advance_byB2m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %.3.i294249.i.i) ; 3 uses
  %.not.i.i32.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i32.i.i, label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3k_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB3e_00EENtNtB4J_8iterator8Iterator10advance_byB3q_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.pr43.i.i = load i64, ptr %i.n, align 8, !alias.scope !18302
  %i.q = icmp eq i64 %.pr43.i.i, -9223372036854775808
  br i1 %i.q, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.n, align 8, !alias.scope !18285
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.k ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %.pn.i.i

bb.m:                                             ; preds = %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i
  %.sroa.0.146.i.i = phi i64 [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %.3.i294249.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit31.i.i ]
  store i64 -9223372036854775808, ptr %i.n, align 8, !alias.scope !18285
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3k_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB3e_00EENtNtB4J_8iterator8Iterator10advance_byB3q_.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3k_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter0EIB1c_INtNtNtBb_3ops5range5RangejENCNCB3e_00EENtNtB4J_8iterator8Iterator10advance_byB3q_.exit: ; preds = %bb.b, %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.i.i, %bb.h, %bb.m
  %.sroa.0.0.i = phi i64 [ %.sroa.0.146.i.i, %bb.m ], [ 0, %_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB38_14LogDataHandlerNtNtNtBa_6traits7collect12IntoIterator9into_iter0EEINtB6_8FuseImplBZ_E8try_foldjNCINvNvMsg_NtB8_7flattenINtB5W_13FlattenCompatppE13iter_try_fold7flattenIB10_INtNtNtBc_3ops5range5RangejENCNCB32_00EjINtNtB75_12control_flow11ControlFlowujEINvNvXsi_B5W_B69_NtNtB4x_8iterator8Iterator10advance_by7advanceB6V_EE0B7E_EB3e_.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.h ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3H_14LogDataHandlerNtNtNtB9_6traits7collect12IntoIterator9into_iter00ENCB3B_0ENtNtB56_8iterator8Iterator4nextB3N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.642.i = alloca [16 x i8], align 8        ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.635.i = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.522.i = alloca [24 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18308)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.635.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.522.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %1, align 8, !range !66, !alias.scope !18310, !noalias !18313
  %i.l = icmp eq i64 %.pre.i, -9223372036854775808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18315)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.i)
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEEB1a_.exit.i, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2c_14LogDataHandlerNtNtNtB19_6traits7collect12IntoIterator9into_iter00EEEB2i_.exit.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18316)
  call void @llvm.experimental.noalias.scope.decl(metadata !18319)
  call void @llvm.experimental.noalias.scope.decl(metadata !18322)
  call void @llvm.experimental.noalias.scope.decl(metadata !18325)
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !18327, !noalias !18332, !noundef !27 ; 3 uses
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !18335, !noalias !18336, !noundef !27
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %i.m, 1
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !18337, !noalias !18338
  call void @llvm.experimental.noalias.scope.decl(metadata !18339)
  call void @llvm.experimental.noalias.scope.decl(metadata !18342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18345
  %i.q = load ptr, ptr %i.g, align 8, !alias.scope !18348, !noalias !18349, !nonnull !27, !noundef !27 ; 4 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !18350
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.d, align 8, !noalias !18345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18345
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1)
          to label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1v_14LogDataHandlerNtNtNtBc_6traits7collect12IntoIterator9into_iter00ENtNtB2U_8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1B_.exit.i.i unwind label %bb.f, !noalias !18349

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !18351
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %common.resume.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #57
          to label %common.resume.i unwind label %bb.h, !noalias !18349

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !18349
end_hunk_3
begin_hunk_4_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.f, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @476, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @673)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.e, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @675, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 20, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.b, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @679, i64 noundef 26)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @680, i64 noundef 24)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @681, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @501)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.bg, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4199, !noundef !27 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !4199, !noundef !27
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.p, %bb.w, %bb.a, %bb.o, %bb.n, %bb.m, %bb.an, %bb.am, %bb.ak, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.k, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.x, %bb.b, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.ak ], [ %i.ds, %bb.y ], [ %.mux, %bb.w ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bo, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.x ], [ %i.dv, %bb.z ], [ true, %bb.h ], [ %i.dy, %bb.aa ], [ false, %bb.j ], [ %i.eg, %bb.ac ], [ true, %bb.i ], [ true, %bb.ab ], [ %i.ej, %bb.ad ], [ true, %bb.k ], [ %i.em, %bb.ae ], [ true, %bb.an ], [ %i.er, %bb.af ], [ true, %bb.l ], [ false, %bb.o ], [ false, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.fd, %bb.ag ], [ false, %bb.m ], [ %i.fi, %bb.ah ], [ false, %bb.q ], [ %i.fn, %bb.ai ], [ false, %bb.r ], [ %i.fs, %bb.aj ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ga, %bb.al ], [ false, %bb.t ], [ false, %bb.am ], [ %i.gl, %bb.ao ], [ false, %bb.p ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ew, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr2969 = phi ptr [ %i.ev, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr68 = phi ptr [ %i.et, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.p
    i8 35, label %bb.q
    i8 36, label %bb.r
    i8 37, label %bb.s
    i8 38, label %bb.t
    i8 39, label %bb.u
    i8 40, label %bb.v
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !6731, !noundef !27
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !6731, !noundef !27
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !6731, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !6731, !noundef !27
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !6731, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !6731, !noundef !27
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !6731, !noundef !27
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !6731, !noundef !27
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !2090, !noundef !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !2090, !noundef !27
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !27
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !27
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !27
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !27
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !27
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val.a = load ptr, ptr %i.bk, align 8, !nonnull !27, !noundef !27
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val21 = load ptr, ptr %i.bl, align 8, !nonnull !27, !noundef !27
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.a, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !27 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !27
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val23.a = load ptr, ptr %i.bs, align 8, !nonnull !27, !noundef !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val25 = load ptr, ptr %i.bt, align 8, !nonnull !27, !noundef !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.val23.a, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !27, !noundef !27
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !27, !noundef !27
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #62
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !27
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !27
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !27
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !27
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !27
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !27
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !1786, !noundef !27
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !1786, !noundef !27
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !27 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !27 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !27 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !27
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !1786, !noundef !27
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !1786, !noundef !27
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !4199, !noundef !27 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !4199, !noundef !27
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !27
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !27
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !27
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !27
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !27
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !27
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !27
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !27
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4jsonINtB4_18DefaultJsonHandlerNtNtNtB6_8executor5tokio24TokioMultiThreadExecutorENtBa_11JsonHandler15write_json_fileCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10max_values(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @890)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10min_values(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @891)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !27
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2C_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB1A_5array5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2I_6errors15DeltaTableErrorENCINvXso_B6p_IB6n_INtNtB5u_3vec3VecB5p_EB79_EINtNtNtB4_6traits7collect12FromIteratorIB6n_B5p_B79_EE9from_iterBQ_E0B7Y_EB2I_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h)
  %i.i = load i64, ptr %i.c, align 16, !range !2336, !noundef !27
  %.not = icmp eq i64 %i.i, -9223372036854775711
  br i1 %.not, label %bb.b, label %.thread21

.thread21:                                        ; preds = %bb.a
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.04.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.45.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not13 = icmp eq i64 %.sroa.04.0.copyload, -9223372036854775808
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 %.sroa.04.0.copyload, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !27
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterINtNtB8_4sync3ArcB14_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB45_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EE9from_iterB4b_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.n)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %.thread21, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.d ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.p

.body:                                            ; preds = %bb.k, %bb.f, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.q, %bb.f ], [ %i.ab, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #59
          to label %common.resume unwind label %bb.p

bb.f:                                             ; preds = %bb.l, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !27, !noundef !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !27
  invoke void @_RNvNtCsa7Blp2W9WhU_12arrow_select6concat6concat(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.u)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #59
          to label %.body unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.b, align 8, !range !436, !noundef !27
  %.not14 = icmp eq i64 %i.w, -9223372036854775788 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !27, !align !106
  %.sroa.4.1 = select i1 %.not14, ptr %i.aa, ptr undef
  %.sroa.0.1 = select i1 %.not14, ptr %i.y, ptr null
  br i1 %.not14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.m:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.e

bb.p:                                             ; preds = %bb.h, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 12 uses
  %i.k = alloca [16 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.s = load i64, ptr %i.r, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22931)
  %.idx.i = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22933)
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %.loopexit59, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !22936, !noalias !22937, !noundef !27 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val2.i.i.i = load ptr, ptr %2, align 8, !alias.scope !22936, !noalias !22937, !nonnull !27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
  %i.v = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.w, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val4.i.i = load i64, ptr %i.x, align 8, !alias.scope !22931, !noalias !22939, !noundef !27
  %i.y = icmp eq i64 %.val4.i.i, %.val3.i.i.i
  br i1 %i.y, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.v, i64 8
  %.val3.i.i = load ptr, ptr %i.z, align 8, !alias.scope !22931, !noalias !22939, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !22940
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.c, %bb.b
  %.not8.i.i = icmp eq ptr %i.w, %i.t
  br i1 %.not8.i.i, label %.loopexit59, label %bb.b

.loopexit59:                                      ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ab = tail call fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @892) ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 4 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37, label %bb.d

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ad = tail call fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @894) ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %.not29 = icmp eq ptr %i.ae, null
  br i1 %.not29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40, label %bb.l

bb.d:                                             ; preds = %.loopexit59
  %i.af = extractvalue { ptr, ptr } %i.ab, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.ac, ptr %i.m, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !475, !invariant.load !27
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  invoke void @_RNvNtCsb7CrJTM47Nd_10arrow_cast4cast4cast(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @893)
          to label %bb.g unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit, %.loopexit59
  %.sroa.8.0 = phi ptr [ undef, %.loopexit59 ], [ %.sroa.8.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.8.1, %bb.i ]
  %.sroa.0.0 = phi ptr [ null, %.loopexit59 ], [ %.sroa.0.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0.1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.j

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22941)
  call void @llvm.experimental.noalias.scope.decl(metadata !22944)
  %i.ao = load ptr, ptr %i.m, align 8, !alias.scope !22947, !nonnull !27, !noundef !27
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !22947
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %i.l, align 8, !range !436, !noundef !27
  %.not27 = icmp eq i64 %i.ar, -9223372036854775788 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !27, !align !106
  %.sroa.8.1 = select i1 %.not27, ptr %i.av, ptr undef ; 2 uses
  %.sroa.0.1 = select i1 %.not27, ptr %i.at, ptr null ; 2 uses
  br i1 %.not27, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge unwind label %bb.e

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge: ; preds = %bb.h
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !22948
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge, %bb.g
  %i.aw = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit_crit_edge ], [ %i.ac, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !22953)
  call void @llvm.experimental.noalias.scope.decl(metadata !22954)
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !22948
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37
  %.sroa.8.2 = phi ptr [ @895, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49 ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40 ], [ %.sroa.8.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37 ]
  %.sroa.0.2 = phi ptr [ %i.cv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49 ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40 ], [ %.sroa.0.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit37 ]
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.2, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.8.2, 1
  ret { ptr, ptr } %i.ba

bb.k:                                             ; preds = %bb.r, %bb.m, %bb.f, %bb.ap
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42, %bb.m, %bb.e, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.e ], [ %i.an, %bb.f ], [ %.pn.pn, %bb.m ], [ %.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42 ]
  resume { ptr, i32 } %.pn.pn.pn

bb.l:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  %i.bc = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  store ptr %i.ae, ptr %i.k, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.be = invoke { ptr, ptr } @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison)
          to label %bb.o unwind label %bb.n       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit44, %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42: ; preds = %.body.thread, %bb.r, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %.pn, %bb.r ], [ %.pn, %.body.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22955)
  call void @llvm.experimental.noalias.scope.decl(metadata !22958)
  %i.bf = load ptr, ptr %i.k, align 8, !alias.scope !22961, !nonnull !27, !noundef !27
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !22961
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.n:                                             ; preds = %bb.ai, %bb.w, %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42

bb.o:                                             ; preds = %bb.l
  %i.bj = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not30 = icmp eq ptr %i.bj, null
  br i1 %.not30, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bj, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = invoke { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.t unwind label %bb.s       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit44: ; preds = %bb.v, %bb.w, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !22962)
  call void @llvm.experimental.noalias.scope.decl(metadata !22965)
  %i.bn = load ptr, ptr %i.k, align 8, !alias.scope !22968, !nonnull !27, !noundef !27
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !22968
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit44
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40

.body.thread:                                     ; preds = %bb.af, %.body, %bb.ap, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %lpad.phi, %bb.ap ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.cx, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22969)
  call void @llvm.experimental.noalias.scope.decl(metadata !22972)
  %i.bq = load ptr, ptr %i.j, align 8, !alias.scope !22975, !nonnull !27, !noundef !27
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !22975
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42

bb.r:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit42 unwind label %bb.k

bb.s:                                             ; preds = %bb.aa, %bb.y, %bb.x, %bb.t, %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !22993)
  call void @llvm.experimental.noalias.scope.decl(metadata !22996)
  %i.dc = load ptr, ptr %i.k, align 8, !alias.scope !22999, !nonnull !27, !noundef !27
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !22999
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.j

bb.ak:                                            ; preds = %bb.ac
  br i1 %i.cs, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.val = load ptr, ptr %i.cp, align 8
  %.val34 = load i64, ptr %i.cq, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.022.060, ptr %i.c, align 8
  %i.df = lshr i64 %.val34, 3                     ; 2 uses
  %i.dg = icmp ult i64 %.sroa.022.060, %i.df
  br i1 %i.dg, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.am, !prof !119

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.df, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dh, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @178, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #61
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.am
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.al
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.022.060
  %i.dj = load i64, ptr %i.di, align 8, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, %bb.ak
  %.sroa.020.0 = phi i64 [ 0, %bb.ak ], [ %i.dj, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dk = load i64, ptr %i.cn, align 8, !alias.scope !23000, !noundef !27 ; 3 uses
  %i.dl = load i64, ptr %i.i, align 8, !range !74, !alias.scope !23000, !noundef !27
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ao, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs82rWpVkwJ6_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ao, %bb.an
  %i.dn = load ptr, ptr %i.cm, align 8, !alias.scope !23000, !nonnull !27, !noundef !27
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dk
  store i64 %.sroa.020.0, ptr %i.do, align 8
  %i.dp = add i64 %i.dk, 1
  store i64 %i.dp, ptr %i.cn, align 8, !alias.scope !23000
  %exitcond.not = icmp eq i64 %i.cr, %i.co
  br i1 %exitcond.not, label %._crit_edge, label %bb.ac

.loopexit:                                        ; preds = %bb.ac, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #59
          to label %.body.thread unwind label %bb.k

bb.aq:                                            ; preds = %bb.aa
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !27 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.c, 4
  br i1 %i.e, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.r, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.g, align 8, !noundef !27
  %i.h = add i64 %.val.i, %.sroa.02.0.i
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !27
  %i.k = add i64 %.val.i.1, %i.h
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.m = getelementptr i8, ptr %i.l, i64 112
  %.val.i.2 = load i64, ptr %i.m, align 8, !noundef !27
  %i.n = add i64 %.val.i.2, %i.k
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 152
  %.val.i.3 = load i64, ptr %i.p, align 8, !noundef !27
  %i.q = add i64 %.val.i.3, %i.n                  ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.v, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.u, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i.epil
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val.i.epil = load i64, ptr %i.t, align 8, !noundef !27
  %i.u = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.v = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit, label %.preheader.epil, !llvm.loop !23003

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa ], [ %i.u, %.preheader.epil ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics9contained(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [96 x i8], align 16               ; 6 uses
  %i.i = alloca [96 x i8], align 16               ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !27
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.s = load i64, ptr %i.r, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23007)
  %.idx.i = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23009)
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val3.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !23012, !noalias !23013, !noundef !27 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val2.i.i.i = load ptr, ptr %4, align 8, !alias.scope !23012, !noalias !23013, !nonnull !27
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
  %i.v = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.w, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val4.i.i = load i64, ptr %i.x, align 8, !alias.scope !23007, !noalias !23015, !noundef !27
  %i.y = icmp eq i64 %.val4.i.i, %.val3.i.i.i
  br i1 %i.y, label %bb.d, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.v, i64 8
  %.val3.i.i = load ptr, ptr %i.z, align 8, !alias.scope !23007, !noalias !23015, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !23016
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.d, %bb.c
  %.not8.i.i = icmp eq ptr %i.w, %i.t
  br i1 %.not8.i.i, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %bb.b, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.e

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ab = tail call fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @894) ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20, %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread
  ret void

bb.f:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ac, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.af = invoke { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  store ptr null, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.u, %bb.t, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

bb.h:                                             ; preds = %.thread32, %bb.al, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %lpad.phi31, %bb.al ], [ %lpad.thr_comm.split-lp33, %.thread32 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23017)
  call void @llvm.experimental.noalias.scope.decl(metadata !23020)
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !23023, !nonnull !27, !noundef !27
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !23023
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.am

bb.j:                                             ; preds = %bb.r, %bb.w, %bb.s, %bb.q, %bb.n, %bb.m, %bb.k, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.f
  %i.ak = extractvalue { ptr, ptr } %i.af, 0      ; 3 uses
  %i.al = extractvalue { ptr, ptr } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !27, !nonnull !27
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef %i.ak)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.ao = load i128, ptr %i.c, align 16, !noundef !27
  %i.ap = icmp eq i128 %i.ao, 41615882080583030659327284372293995949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @896, i64 noundef 48)
          to label %bb.o unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @896, i64 noundef 48)
          to label %bb.q unwind label %bb.j

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.h, i64 96, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aq = load i64, ptr %i.i, align 16, !range !2336, !noundef !27
  %.not14.not = icmp eq i64 %i.aq, -9223372036854775711
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !27, !align !106 ; 3 uses
  br i1 %.not14.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ak, ptr %i.at, align 8
  store i64 -9223372036854775711, ptr %i.i, align 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.h)
          to label %bb.p unwind label %bb.j

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.i)
          to label %bb.t unwind label %bb.j

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.av = load i64, ptr %i.au, align 8, !noundef !27
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ax, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.j

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr null, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !23024)
  call void @llvm.experimental.noalias.scope.decl(metadata !23027)
  %i.ay = load ptr, ptr %i.j, align 8, !alias.scope !23030, !nonnull !27, !noundef !27
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !23030
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20

bb.v:                                             ; preds = %bb.s
  %i.bb = load i64, ptr %i.b, align 8, !range !38, !noundef !27
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !66, !noundef !27 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !67

bb.w:                                             ; preds = %bb.v
  %i.bg = load i64, ptr %i.bf, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #56
          to label %bb.an unwind label %bb.j

bb.x:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr %i.bf, align 8, !nonnull !27, !noundef !27
  %i.bi = icmp ule i64 %i.ax, %i.be
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.be, ptr %i.g, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 0, ptr %i.bk, align 8
  %.not35 = icmp eq i64 %i.ax, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ak, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEE4from(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.y unwind label %.thread32

.thread32:                                        ; preds = %._crit_edge
  %lpad.thr_comm.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.lr.ph:                                           ; preds = %bb.x, %bb.ak
  %.sroa.010.034 = phi i64 [ %i.bl, %bb.ak ], [ 0, %bb.x ] ; 3 uses
  %i.bl = add nuw i64 %.sroa.010.034, 1           ; 2 uses
  %i.bm = invoke noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, i64 noundef %.sroa.010.034)
          to label %bb.aa unwind label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ab, %.lr.ph
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.ag, %.noexc24
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

end_hunk_6
begin_hunk_7_@_RNvXsf_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.t, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @953, i64 noundef 10, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1026, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1027)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.s, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 12, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1028)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.r, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 11, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1029)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.q, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 7, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @673)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.p, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1031, i64 noundef 3, ptr noundef nonnull %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1030, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1027)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.o, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @840, i64 noundef 14, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.n, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1032, i64 noundef 8, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.m, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1033, i64 noundef 4, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.l, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1034, i64 noundef 13, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aq, ptr %i.k, align 8
  %i.ar = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @666, i64 noundef 11, ptr noundef nonnull %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1035, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1036)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.j, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1037, i64 noundef 9, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.i, align 8
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1039, i64 noundef 13, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1038)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.h, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1040, i64 noundef 18, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.g, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @955, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @645)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.f, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1042, i64 noundef 7, ptr noundef nonnull %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @476, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1041)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.e, align 8
  %i.be = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1043, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bg, ptr %i.d, align 8
  %i.bh = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1045, i64 noundef 10, ptr noundef nonnull %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1044, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1041)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.c, align 8
  %i.bj = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1047, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1046)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.b, align 8
  %i.bl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1049, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.a, align 8
  %i.bn = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1050, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.b ], [ %i.z, %bb.c ], [ %i.ab, %bb.d ], [ %i.ad, %bb.e ], [ %i.ag, %bb.f ], [ %i.ai, %bb.g ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ], [ %i.ao, %bb.j ], [ %i.ar, %bb.k ], [ %i.at, %bb.l ], [ %i.av, %bb.m ], [ %i.ax, %bb.n ], [ %i.az, %bb.o ], [ %i.bc, %bb.p ], [ %i.be, %bb.q ], [ %i.bh, %bb.r ], [ %i.bj, %bb.s ], [ %i.bl, %bb.t ], [ %i.bn, %bb.u ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23589)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !23589, !noalias !23592, !noundef !27 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %3, align 8, !alias.scope !23589, !noalias !23592, !nonnull !27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i, %.lr.ph.i
  %i.c = phi ptr [ %1, %.lr.ph.i ], [ %i.d, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val4.i = load i64, ptr %i.e, align 8, !noalias !23594, !noundef !27
  %i.f = icmp eq i64 %.val4.i, %.val3.i.i
  br i1 %i.f, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val3.i = load ptr, ptr %i.g, align 8, !noalias !23594, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !23594
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i: ; preds = %bb.c, %bb.b
  %.not8.i = icmp eq ptr %i.d, %i.a
  br i1 %.not8.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i ], [ true, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXsg4_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_28JsonTableColumnErrorHandlingNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23595, !noundef !27 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 1          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !23595, !noundef !27 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775786
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, 9223372036854775787
  %i.i = icmp ugt i64 %i.f, -9223372036854775788
  %i.j = select i1 %i.i, i64 %i.h, i64 1          ; 2 uses
  %i.k = icmp eq i64 %i.e, 1
  %i.l = icmp eq i64 %i.j, 1
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsgA_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19UpdateTableFromKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !38, !noundef !27 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !38, !noundef !27 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  %i.d = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = sub nsw i64 %i.a, %i.b
  %i.f = trunc nsw i64 %i.e to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !27 ; 2 uses
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 14411518807585588) %i.n, i64 range(i64 0, 14411518807585588) %i.j) ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.i9, 0
  br i1 %.not, label %._crit_edge53, label %.lr.ph52

._crit_edge53:                                    ; preds = %.backedge48, %bb.e
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.j, i64 %i.n)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph52:                                         ; preds = %bb.e, %.backedge48
  %.sroa.01.0.i50 = phi i64 [ %i.p, %.backedge48 ], [ 0, %bb.e ] ; 3 uses
  %i.p = add nuw i64 %.sroa.01.0.i50, 1           ; 2 uses
  %i.q = getelementptr inbounds nuw [640 x i8], ptr %i.h, i64 %.sroa.01.0.i50 ; 3 uses
  %i.r = getelementptr inbounds nuw [640 x i8], ptr %i.l, i64 %.sroa.01.0.i50 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23604)
  %i.s = tail call fastcc noundef i8 @_RNvXs74_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.r) #62, !inline_history !23567 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %.lr.ph52
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 624
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !23606, !noalias !23607, !nonnull !27, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 632
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !23606, !noalias !23607, !noundef !27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 624
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !23607, !noalias !23606, !nonnull !27, !noundef !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 632
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !23607, !noalias !23606, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23611)
  %.sroa.0.0.i.i14 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 7205759403792794) %i.ab, i64 range(i64 0, 7205759403792794) %i.x) ; 2 uses
  %.not62 = icmp eq i64 %.sroa.0.0.i.i14, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge46, %bb.f
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.x, i64 %i.ab)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.f, %.backedge46
  %.sroa.01.0.i1749 = phi i64 [ %i.ad, %.backedge46 ], [ 0, %bb.f ] ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i1749, 1        ; 2 uses
  %i.ae = getelementptr inbounds nuw [1280 x i8], ptr %i.v, i64 %.sroa.01.0.i1749 ; 3 uses
  %i.af = getelementptr inbounds nuw [1280 x i8], ptr %i.z, i64 %.sroa.01.0.i1749 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23616)
  %i.ag = tail call fastcc noundef i8 @_RNvXs74_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %i.af) #62, !inline_history !23580 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.g:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1272
  %i.aj = load i8, ptr %i.ai, align 8, !range !1786, !alias.scope !23618, !noalias !23619, !noundef !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1272
  %i.al = load i8, ptr %i.ak, align 8, !range !1786, !alias.scope !23619, !noalias !23618, !noundef !27
  %i.am = sub nsw i8 %i.aj, %i.al                 ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.h, label %_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 616
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 616
  %i.aq = tail call fastcc noundef i8 @_RNvXsaM_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12JoinOperatorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.ap) #62, !inline_history !23580
  br label %_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %bb.h, %bb.g, %.lr.ph
  %.sroa.0.0.i16.i = phi i8 [ %i.ag, %.lr.ph ], [ %i.aq, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %cond84 = icmp eq i8 %.sroa.0.0.i16.i, 0
  br i1 %cond84, label %.backedge46, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

.backedge46:                                      ; preds = %_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i
  %exitcond.not = icmp eq i64 %i.ad, %.sroa.0.0.i.i14
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %._crit_edge, %.lr.ph52
  %.sroa.0.0.i.i = phi i8 [ %i.s, %.lr.ph52 ], [ %i.ac, %._crit_edge ], [ %.sroa.0.0.i16.i, %_RNvXsaC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ] ; 2 uses
  %cond83 = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond83, label %.backedge48, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.backedge48:                                      ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond70.not = icmp eq i64 %i.p, %.sroa.0.0.i9
  br i1 %exitcond70.not, label %._crit_edge53, label %.lr.ph52

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit12, %._crit_edge61, %._crit_edge53, %bb.d
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.i.i10, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit12 ], [ %i.f, %bb.d ], [ %i.o, %._crit_edge53 ], [ %i.az, %._crit_edge61 ], [ %.sroa.0.0.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !27, !noundef !27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !noundef !27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !27, !noundef !27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !27 ; 2 uses
  %.sroa.0.0.i13 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 14411518807585588) %i.ay, i64 range(i64 0, 14411518807585588) %i.au) ; 2 uses
  %.not63 = icmp eq i64 %.sroa.0.0.i13, 0
  br i1 %.not63, label %._crit_edge61, label %.lr.ph60

._crit_edge61:                                    ; preds = %.backedge45, %bb.i
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.au, i64 %i.ay)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph60:                                         ; preds = %bb.i, %.backedge45
  %.sroa.01.0.i358 = phi i64 [ %i.ba, %.backedge45 ], [ 0, %bb.i ] ; 3 uses
  %i.ba = add nuw i64 %.sroa.01.0.i358, 1         ; 2 uses
  %i.bb = getelementptr inbounds nuw [640 x i8], ptr %i.as, i64 %.sroa.01.0.i358 ; 3 uses
  %i.bc = getelementptr inbounds nuw [640 x i8], ptr %i.aw, i64 %.sroa.01.0.i358 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23623)
end_hunk_7
