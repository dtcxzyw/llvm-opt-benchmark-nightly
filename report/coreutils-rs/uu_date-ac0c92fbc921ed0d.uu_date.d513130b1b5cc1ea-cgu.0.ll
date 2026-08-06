inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockReE10initializeNCINvB1a_11get_or_initNCNvNtCsiibOIv6tv3q_7uu_date6locale25get_locale_default_format0E0zE0E0B2n_:bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.p, i64 noundef 0, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #34, !noalias !496
  unreachable

bb.t:                                             ; preds = %bb.r, %.split.i34.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit32.i.i.i.i
  %i.bm = sub nuw nsw i64 %i.p, %i.ab             ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.bo = load i64, ptr %i.b, align 8, !range !98, !alias.scope !517, !noalias !489, !noundef !10 ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bh
  %i.bq = icmp ugt i64 %i.bm, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i38.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i, !prof !215

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i38.i.i.i.i: ; preds = %bb.t
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bh, i64 noundef %i.bm, i64 noundef 1, i64 noundef 1) #33, !noalias !496
  %i.br = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !514, !noalias !489, !noundef !10 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.pre83.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !514, !noalias !489
  br label %bb.u

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i: ; preds = %bb.t
  %i.bt = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bt)
  %.not.i37.i.i.i.i = icmp eq i64 %i.p, %i.ab
  br i1 %.not.i37.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i38.i.i.i.i
  %i.bu = phi ptr [ %.pre83.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i38.i.i.i.i ], [ %i.be, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i ]
  %i.bv = phi i64 [ %i.br, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i38.i.i.i.i ], [ %i.bh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull readonly align 1 %i.bn, i64 %i.bm, i1 false), !noalias !520
  %.sroa.05.0.copyload7.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !482
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i: ; preds = %bb.u, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i
  %.sroa.05.0.copyload7.i.i.i = phi i64 [ %.sroa.05.0.copyload7.pre.i.i.i, %bb.u ], [ %i.bo, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i ]
  %i.bx = phi i64 [ %i.bv, %bb.u ], [ %i.bh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i36.i.i.i.i ]
  %i.by = add nuw i64 %i.bx, %i.bm
  %.sroa.6.0.copyload11.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !489
  br label %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i

bb.v:                                             ; preds = %bb.r, %.split.i34.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.p, i64 noundef %i.ab, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #34, !noalias !496
  unreachable

bb.w:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i25.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.p) #37, !noalias !496
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i25.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %i.r, i64 %i.p, i1 false), !noalias !496
  store i64 %i.p, ptr %i.a, align 8, !noalias !489
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ai, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !noalias !489
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.p, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !489
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.p, i64 noundef 3, i64 noundef 1, i64 noundef 1) #33, !noalias !529
  %i.bz = load i64, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !alias.scope !530, !noalias !531, !noundef !10 ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load ptr, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !alias.scope !530, !noalias !531, !nonnull !10, !noundef !10 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cc, ptr noundef nonnull readonly align 1 dereferenceable(3) @198, i64 3, i1 false), !noalias !532
  %i.cd = add nuw i64 %i.bz, 3
  %.sroa.05.0.copyload6.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !533, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !489
  br label %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i

bb.x:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i2.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.p) #37, !noalias !496
  unreachable

_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.r, i64 %i.p, i1 false), !noalias !496
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i
  %.sroa.05.0.i.i.i = phi i64 [ %.sroa.05.0.copyload6.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i ], [ %.sroa.05.0.copyload7.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i ] ; 3 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.cb, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i ], [ %.sroa.6.0.copyload11.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i ] ; 4 uses
  %.sroa.712.0.i.i.i = phi i64 [ %i.cd, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i ], [ %i.by, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i ] ; 6 uses
  %i.ce = icmp ugt i64 %.sroa.05.0.i.i.i, %.sroa.712.0.i.i.i
  br i1 %i.ce, label %bb.y, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

bb.y:                                             ; preds = %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  %i.cf = icmp eq i64 %.sroa.712.0.i.i.i, 0
  br i1 %i.cf, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %bb.z

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.y
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.05.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !534
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.05.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.712.0.i.i.i) #33, !noalias !534 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.712.0.i.i.i) #37, !noalias !541
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i: ; preds = %bb.z, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i
  %.sroa.712.034.i.i.i = phi i64 [ %.sroa.712.0.i.i.i, %bb.z ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %i.p, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i ], [ %.sroa.712.0.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i ] ; 2 uses
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %i.cg, %bb.z ], [ inttoptr (i64 1 to ptr), %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %i.ad, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i ], [ %.sroa.6.0.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i ]
  %i.ci = icmp sgt i64 %.sroa.712.034.i.i.i, -1
  call void @llvm.assume(i1 %i.ci)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !542
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockReE10initializeNCINvB4_11get_or_initNCNvNtCsiibOIv6tv3q_7uu_date6locale25get_locale_default_format0E0zE0B1B_.exit

_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockReE10initializeNCINvB4_11get_or_initNCNvNtCsiibOIv6tv3q_7uu_date6locale25get_locale_default_format0E0zE0B1B_.exit: ; preds = %bb.b, %bb.d, %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i
  %.sroa.3.0.i.i.i = phi i64 [ %.sroa.712.034.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ 17, %bb.d ], [ 17, %bb.b ], [ 17, %bb.e ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ @44, %bb.d ], [ @44, %bb.b ], [ @44, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  store ptr %.sroa.0.0.i.i.i, ptr %i.e, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.i.i.i, ptr %i.cj, align 8
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b) #36
  ret ptr %i.c
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b) #36
  ret ptr %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [100 x i8], align 1               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [100 x i8], align 1               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [1 x i8], align 1                ; 3 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [9 x i8], align 1                ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 12 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [24 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [24 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 7 uses
  %i.bx = alloca [24 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 7 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 7 uses
  %i.cf = alloca [24 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [24 x i8], align 8               ; 5 uses
  %i.cr = alloca [24 x i8], align 8               ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [24 x i8], align 8               ; 8 uses
  %i.cu = alloca [24 x i8], align 8               ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 7 uses
  %i.cx = alloca [24 x i8], align 8               ; 7 uses
  %i.cy = alloca [24 x i8], align 8               ; 7 uses
  %i.cz = alloca [24 x i8], align 8               ; 7 uses
  %i.da = alloca [24 x i8], align 8               ; 5 uses
  %i.db = alloca [24 x i8], align 8               ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 4 uses
  %i.dd = alloca [24 x i8], align 8               ; 8 uses
  %i.de = alloca [24 x i8], align 8               ; 8 uses
  %i.df = alloca [24 x i8], align 8               ; 137 uses
  %i.dg = alloca [4 x i8], align 4                ; 8 uses
  store i32 %1, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.val36 = load ptr, ptr %i.dh, align 8          ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.val37 = load i64, ptr %i.di, align 8, !noundef !10 ; 2 uses
  %.not.i93 = icmp eq i64 %.val37, 0
  %i.dj = lshr i32 %1, 24
  %i.dk = trunc nuw i32 %i.dj to i8               ; 2 uses
  %i.dl = lshr i32 %1, 16
  %i.dm = trunc i32 %i.dl to i8                   ; 4 uses
  %i.dn = lshr i32 %1, 8                          ; 3 uses
  %i.do = trunc i32 %i.dn to i8                   ; 2 uses
  br i1 %.not.i93, label %bb.b, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #34
  unreachable

_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  %i.dp = load i8, ptr %.val36, align 1, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !545
  switch i8 %i.dp, label %bb.c [
    i8 37, label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit367
    i8 65, label %bb.d
    i8 97, label %bb.k
    i8 66, label %bb.r
    i8 98, label %bb.x
    i8 67, label %bb.y
    i8 99, label %bb.ad
    i8 68, label %bb.ai
    i8 100, label %bb.ce
    i8 101, label %bb.cj
    i8 70, label %bb.co
    i8 102, label %bb.el
    i8 71, label %bb.es
    i8 103, label %bb.ey
    i8 72, label %bb.fe
    i8 104, label %bb.ff
    i8 73, label %bb.fg
    i8 106, label %bb.fh
    i8 107, label %bb.fo
    i8 108, label %bb.fp
    i8 77, label %bb.fq
    i8 109, label %bb.fr
    i8 78, label %bb.fw
    i8 110, label %.thread2680
    i8 80, label %bb.gd
    i8 112, label %bb.gh
    i8 81, label %bb.gr
    i8 113, label %bb.gs
    i8 82, label %bb.hb
    i8 114, label %bb.hv
    i8 83, label %bb.ia
    i8 115, label %bb.ib
    i8 84, label %bb.if
    i8 116, label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit463
    i8 85, label %bb.jk
    i8 117, label %bb.kd
    i8 86, label %bb.kk
    i8 87, label %bb.kp
    i8 119, label %bb.li
    i8 88, label %bb.lp
    i8 120, label %bb.lv
    i8 89, label %bb.mb
    i8 121, label %bb.mg
    i8 90, label %bb.ml
    i8 122, label %bb.na
    i8 46, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE8bump_fmtCsiibOIv6tv3q_7uu_date.exit
  ]

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !545
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !noalias !545
  store i8 34, ptr %i.cr, align 8, !noalias !545
  %i.dr = call noundef ptr @_RNvXs0_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs6JMX4GRUq9U_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cr) #36, !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !545
  br label %bb.oo

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val38 = load ptr, ptr %i.ds, align 8, !nonnull !10, !align !315, !noundef !10 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val38, i64 109
  %i.du = load i8, ptr %i.dt, align 1, !range !550, !noalias !551, !noundef !10 ; 2 uses
  %.not.i.i95 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i95, label %bb.e, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs3JjgEOiFeOI_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_11PosixCustomE16fmt_weekday_full0ECsiibOIv6tv3q_7uu_date.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !554
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val38) #35, !noalias !551
  %i.dv = load i16, ptr %i.aq, align 8, !range !559, !noalias !554, !noundef !10
  %i.dw = trunc nuw i16 %i.dv to i1
  br i1 %i.dw, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.dx, align 2, !noalias !554 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !554
  %i.dy = shl i32 %.sroa.03.0.copyload.i.i.i, 8
  %i.dz = ashr i32 %i.dy, 24                      ; 3 uses
  %i.ea = icmp ult i32 %i.dz, 3                   ; 2 uses
  %i.eb = or disjoint i32 %i.dz, 12
  %.sroa.02.0.i.i.i.i.i = select i1 %i.ea, i32 %i.eb, i32 %i.dz
  %sext.i.i.i.i.i = shl i32 %.sroa.03.0.copyload.i.i.i, 16
  %i.ec = ashr exact i32 %sext.i.i.i.i.i, 16
  %i.ed = add nsw i32 %i.ec, 32800
  %.neg.i.i.i.i.i = sext i1 %i.ea to i32
  %i.ee = add nsw i32 %i.ed, %.neg.i.i.i.i.i      ; 3 uses
  %i.ef = ashr i32 %.sroa.03.0.copyload.i.i.i, 24
  %i.eg = udiv i32 %i.ee, 100
  %i.eh = mul nuw nsw i32 %i.ee, 1461
  %i.ei = lshr i32 %i.eh, 2
  %i.ej = udiv i32 %i.ee, 400
  %i.ek = mul nsw i32 %.sroa.02.0.i.i.i.i.i, 979
  %i.el = add nsw i32 %i.ek, -2919
  %i.em = lshr i32 %i.el, 5
  %i.en = add nsw i32 %i.ef, -12699423
  %i.eo = sub nuw nsw i32 %i.en, %i.eg
  %i.ep = add nuw nsw i32 %i.eo, %i.ej
  %i.eq = add nsw i32 %i.ep, %i.ei
  %i.er = add nsw i32 %i.eq, %i.em
  %i.es = mul i32 %i.er, 613566757
  %i.et = add i32 %i.es, -1879048192
  %i.eu = lshr i32 %i.et, 29                      ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.g, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i, !prof !560

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @148, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #34, !noalias !551
  unreachable

_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i: ; preds = %bb.f
  %i.ew = trunc nuw nsw i32 %i.eu to i8
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs3JjgEOiFeOI_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_11PosixCustomE16fmt_weekday_full0ECsiibOIv6tv3q_7uu_date.exit.i

end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date:bb.a

bb.rr:                                            ; preds = %bb.ro
  %i.bob = icmp ult i64 %.sroa.014.0.i.i, 10000
  br i1 %i.bob, label %bb.ru, label %.thread2467

bb.rs:                                            ; preds = %bb.rq
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  %i.boc = load ptr, ptr %i.bky, align 8, !alias.scope !2461, !noalias !2439, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 16
  %i.boe = load i16, ptr %i.bod, align 8, !noalias !2464, !noundef !10 ; 2 uses
  %i.bof = zext i16 %i.boe to i64                 ; 2 uses
  %i.bog = add nuw nsw i64 %i.bof, 2
  %i.boh = getelementptr inbounds nuw i8, ptr %i.boc, i64 8
  %i.boi = load i64, ptr %i.boh, align 8, !noalias !2464, !noundef !10 ; 2 uses
  %i.boj = icmp ugt i64 %i.bog, %i.boi
  br i1 %i.boj, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i: ; preds = %bb.rs
  %i.bok = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bky) #36, !noalias !2439 ; 2 uses
  %i.bol = extractvalue { i64, ptr } %i.bok, 0
  %i.bom = trunc nuw i64 %i.bol to i1
  br i1 %i.bom, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i
  %.pre2329 = load ptr, ptr %i.bky, align 8, !alias.scope !2458, !noalias !2439 ; 3 uses
  %.phi.trans.insert2330 = getelementptr inbounds nuw i8, ptr %.pre2329, i64 8
  %.pre2331 = load i64, ptr %.phi.trans.insert2330, align 8, !alias.scope !2465, !noalias !2439
  %.phi.trans.insert2332 = getelementptr inbounds nuw i8, ptr %.pre2329, i64 16
  %.pre2333 = load i16, ptr %.phi.trans.insert2332, align 8, !alias.scope !2465, !noalias !2439 ; 2 uses
  %.pre2336 = zext i16 %.pre2333 to i64
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge, %bb.rs
  %.pre-phi2337 = phi i64 [ %.pre2336, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge ], [ %i.bof, %bb.rs ] ; 2 uses
  %i.bon = phi i16 [ %.pre2333, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge ], [ %i.boe, %bb.rs ]
  %i.boo = phi i64 [ %.pre2331, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge ], [ %i.boi, %bb.rs ]
  %i.bop = phi ptr [ %.pre2329, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread_crit_edge ], [ %i.boc, %bb.rs ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2465), !noalias !2428
  %i.boq = sub nuw i64 %i.boo, %.pre-phi2337
  %i.bor = icmp ugt i64 %i.boq, 1
  br i1 %i.bor, label %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2yECsiibOIv6tv3q_7uu_date.exit.i.i, label %bb.rt, !prof !187

bb.rt:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34, !noalias !2468
  unreachable

_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2yECsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i.thread
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bop, i64 16
  %i.bot = load ptr, ptr %i.bop, align 8, !alias.scope !2465, !noalias !2439, !nonnull !10, !noundef !10
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 %.pre-phi2337 ; 2 uses
  %i.bov = shl nuw nsw i64 %.sroa.014.0.i.i, 1
  %i.bow = getelementptr inbounds nuw i8, ptr @18, i64 %i.bov ; 2 uses
  %i.box = load i8, ptr %i.bow, align 1, !noalias !2469, !noundef !10
  store i8 %i.box, ptr %i.bou, align 1, !noalias !2468
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bou, i64 1
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bow, i64 1
  %i.bpa = load i8, ptr %i.boz, align 1, !noalias !2469, !noundef !10
  store i8 %i.bpa, ptr %i.boy, align 1, !noalias !2468
  %i.bpb = add i16 %i.bon, 2
  store i16 %i.bpb, ptr %i.bos, align 8, !alias.scope !2465, !noalias !2439
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.ru:                                            ; preds = %bb.rr
  call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %i.bpc = load ptr, ptr %i.bky, align 8, !alias.scope !2473, !noalias !2439, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 16
  %i.bpe = load i16, ptr %i.bpd, align 8, !noalias !2476, !noundef !10 ; 2 uses
  %i.bpf = zext i16 %i.bpe to i64                 ; 2 uses
  %i.bpg = add nuw nsw i64 %i.bpf, 4
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8
  %i.bpi = load i64, ptr %i.bph, align 8, !noalias !2476, !noundef !10 ; 2 uses
  %i.bpj = icmp ugt i64 %i.bpg, %i.bpi
  br i1 %i.bpj, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i: ; preds = %bb.ru
  %i.bpk = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bky) #36, !noalias !2439 ; 2 uses
  %i.bpl = extractvalue { i64, ptr } %i.bpk, 0
  %i.bpm = trunc nuw i64 %i.bpl to i1
  br i1 %i.bpm, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i
  %.pre2324 = load ptr, ptr %i.bky, align 8, !alias.scope !2470, !noalias !2439 ; 3 uses
  %.phi.trans.insert2325 = getelementptr inbounds nuw i8, ptr %.pre2324, i64 8
  %.pre2326 = load i64, ptr %.phi.trans.insert2325, align 8, !alias.scope !2477, !noalias !2439
  %.phi.trans.insert2327 = getelementptr inbounds nuw i8, ptr %.pre2324, i64 16
  %.pre2328 = load i16, ptr %.phi.trans.insert2327, align 8, !alias.scope !2477, !noalias !2439 ; 2 uses
  %.pre2338 = zext i16 %.pre2328 to i64
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge, %bb.ru
  %.pre-phi2339 = phi i64 [ %.pre2338, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge ], [ %i.bpf, %bb.ru ] ; 2 uses
  %i.bpn = phi i16 [ %.pre2328, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge ], [ %i.bpe, %bb.ru ]
  %i.bpo = phi i64 [ %.pre2326, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge ], [ %i.bpi, %bb.ru ]
  %i.bpp = phi ptr [ %.pre2324, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread_crit_edge ], [ %i.bpc, %bb.ru ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2477), !noalias !2428
  %i.bpq = sub nuw i64 %i.bpo, %.pre-phi2339
  %i.bpr = icmp ugt i64 %i.bpq, 3
  br i1 %i.bpr, label %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4yECsiibOIv6tv3q_7uu_date.exit.i.i, label %bb.rv, !prof !187

bb.rv:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34, !noalias !2480
  unreachable

_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4yECsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i.thread
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpp, i64 16
  %i.bpt = load ptr, ptr %i.bpp, align 8, !alias.scope !2477, !noalias !2439, !nonnull !10, !noundef !10
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 %.pre-phi2339 ; 4 uses
  %.lhs.trunc = trunc nuw nsw i64 %.sroa.014.0.i.i to i16 ; 2 uses
  %i.bpv = urem i16 %.lhs.trunc, 100
  %i.bpw = shl nuw nsw i16 %i.bpv, 1
  %i.bpx = zext nneg i16 %i.bpw to i64
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpu, i64 2
  %i.bpz = getelementptr inbounds nuw i8, ptr @18, i64 %i.bpx ; 2 uses
  %i.bqa = load i8, ptr %i.bpz, align 1, !noalias !2481, !noundef !10
  store i8 %i.bqa, ptr %i.bpy, align 1, !noalias !2480
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpu, i64 3
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpz, i64 1
  %i.bqd = load i8, ptr %i.bqc, align 1, !noalias !2481, !noundef !10
  store i8 %i.bqd, ptr %i.bqb, align 1, !noalias !2480
  %i.bqe = udiv i16 %.lhs.trunc, 100
  %i.bqf = shl nuw nsw i16 %i.bqe, 1
  %i.bqg = zext nneg i16 %i.bqf to i64
  %i.bqh = getelementptr inbounds nuw i8, ptr @18, i64 %i.bqg ; 2 uses
  %i.bqi = load i8, ptr %i.bqh, align 1, !noalias !2481, !noundef !10
  store i8 %i.bqi, ptr %i.bpu, align 1, !noalias !2480
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bpu, i64 1
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqh, i64 1
  %i.bql = load i8, ptr %i.bqk, align 1, !noalias !2481, !noundef !10
  store i8 %i.bql, ptr %i.bqj, align 1, !noalias !2480
  %i.bqm = add i16 %i.bpn, 4
  store i16 %i.bqm, ptr %i.bps, align 8, !alias.scope !2477, !noalias !2439
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.rw:                                            ; preds = %bb.rp
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  %i.bqn = load ptr, ptr %i.bky, align 8, !alias.scope !2485, !noalias !2439, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 16
  %i.bqp = load i16, ptr %i.bqo, align 8, !noalias !2488, !noundef !10 ; 2 uses
  %i.bqq = zext i16 %i.bqp to i64                 ; 2 uses
  %i.bqr = add nuw nsw i64 %i.bqq, 2
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqn, i64 8
  %i.bqt = load i64, ptr %i.bqs, align 8, !noalias !2488, !noundef !10 ; 2 uses
  %i.bqu = icmp ugt i64 %i.bqr, %i.bqt
  br i1 %i.bqu, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i: ; preds = %bb.rw
  %i.bqv = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bky) #36, !noalias !2439 ; 2 uses
  %i.bqw = extractvalue { i64, ptr } %i.bqv, 0
  %i.bqx = trunc nuw i64 %i.bqw to i1
  br i1 %i.bqx, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i
  %.pre2319 = load ptr, ptr %i.bky, align 8, !alias.scope !2482, !noalias !2439 ; 3 uses
  %.phi.trans.insert2320 = getelementptr inbounds nuw i8, ptr %.pre2319, i64 8
  %.pre2321 = load i64, ptr %.phi.trans.insert2320, align 8, !alias.scope !2489, !noalias !2439
  %.phi.trans.insert2322 = getelementptr inbounds nuw i8, ptr %.pre2319, i64 16
  %.pre2323 = load i16, ptr %.phi.trans.insert2322, align 8, !alias.scope !2489, !noalias !2439 ; 2 uses
  %.pre2340 = zext i16 %.pre2323 to i64
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge, %bb.rw
  %.pre-phi2341 = phi i64 [ %.pre2340, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge ], [ %i.bqq, %bb.rw ] ; 2 uses
  %i.bqy = phi i16 [ %.pre2323, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge ], [ %i.bqp, %bb.rw ]
  %i.bqz = phi i64 [ %.pre2321, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge ], [ %i.bqt, %bb.rw ]
  %i.bra = phi ptr [ %.pre2319, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread_crit_edge ], [ %i.bqn, %bb.rw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2489), !noalias !2428
  %i.brb = sub nuw i64 %i.bqz, %.pre-phi2341
  %i.brc = icmp ugt i64 %i.brb, 1
  br i1 %i.brc, label %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer20write_int_pad2_spaceyECsiibOIv6tv3q_7uu_date.exit.i.i, label %bb.rx, !prof !187

bb.rx:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34, !noalias !2492
  unreachable

_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer20write_int_pad2_spaceyECsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i.thread
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bra, i64 16
  %i.bre = load ptr, ptr %i.bra, align 8, !alias.scope !2489, !noalias !2439, !nonnull !10, !noundef !10
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 %.pre-phi2341 ; 2 uses
  %i.brg = shl nuw nsw i64 %.sroa.014.0.i.i, 1
  %i.brh = getelementptr inbounds nuw i8, ptr @24, i64 %i.brg ; 2 uses
  %i.bri = load i8, ptr %i.brh, align 1, !noalias !2493, !noundef !10
  store i8 %i.bri, ptr %i.brf, align 1, !noalias !2492
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brf, i64 1
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brh, i64 1
  %i.brl = load i8, ptr %i.brk, align 1, !noalias !2493, !noundef !10
  store i8 %i.brl, ptr %i.brj, align 1, !noalias !2492
  %i.brm = add i16 %i.bqy, 2
  store i16 %i.brm, ptr %i.brd, align 8, !alias.scope !2489, !noalias !2439
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.ry:                                            ; preds = %bb.qt
  %i.brn = and i64 %i.bkv, 4294967296
  %.not2197 = icmp eq i64 %i.brn, 0
  %.sroa.0544.5.extract.shift552 = lshr i64 %i.bkv, 40
  %.sroa.0544.5.extract.trunc553 = trunc i64 %.sroa.0544.5.extract.shift552 to i8
  %i.bro = and i64 %i.bkv, 281474976710656
  %.not2198 = icmp eq i64 %i.bro, 0
  %.sroa.0544.0.extract.trunc547 = trunc i64 %i.bkv to i32 ; 8 uses
  %.phi.trans.insert2310 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2311 = load ptr, ptr %.phi.trans.insert2310, align 8, !alias.scope !2421, !noalias !2426 ; 6 uses
  br i1 %.not2198, label %._crit_edge2309, label %bb.tm

.thread2695:                                      ; preds = %bb.qs, %.thread2680, %bb.qt
  %.sroa.013.0.i267726862700 = phi i8 [ %.sroa.013.0.i, %bb.qt ], [ %i.dp, %.thread2680 ], [ %.sroa.013.0.i, %bb.qs ] ; 3 uses
  %i.brp = phi ptr [ %i.bda, %bb.qt ], [ %.sink2705, %.thread2680 ], [ %i.bda, %bb.qs ] ; 3 uses
  %i.brq = phi i8 [ %.fr, %bb.qt ], [ 0, %.thread2680 ], [ %.fr, %bb.qs ] ; 2 uses
  %.sroa.440.0.copyload.i26892698 = phi i64 [ %.sroa.440.0.copyload.i, %bb.qt ], [ 1, %.thread2680 ], [ %.sroa.440.0.copyload.i, %bb.qs ] ; 6 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.brs = load ptr, ptr %i.brr, align 8, !alias.scope !2421, !noalias !2426, !nonnull !10, !align !315, !noundef !10 ; 6 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.bru = load i8, ptr %i.brt, align 2, !range !2431, !alias.scope !2424, !noalias !2494, !noundef !10
  %.not.i = icmp eq i8 %i.bru, -1
  %i.brv = icmp eq i8 %i.brq, 0
  %or.cond.i = and i1 %i.brv, %.not.i
  br i1 %or.cond.i, label %bb.tr, label %bb.tq, !prof !1239

bb.rz:                                            ; preds = %bb.qt
  %.sroa.0544.0.extract.trunc = trunc i64 %i.bkv to i32 ; 4 uses
  %i.brw = and i64 %i.bkv, 4294967296
  %.not2192 = icmp eq i64 %i.brw, 0               ; 2 uses
  %i.brx = and i64 %i.bkv, 1099511627776
  %i.bry = icmp ne i64 %i.brx, 0
  %i.brz = and i64 %i.bkv, 281474976710656
  %i.bsa = icmp ne i64 %i.brz, 0
  %i.bsb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bsc = load ptr, ptr %i.bsb, align 8, !alias.scope !2421, !noalias !2426, !nonnull !10, !align !315, !noundef !10 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  %i.bsd = icmp slt i32 %.sroa.0544.0.extract.trunc, 0
  br i1 %i.bsd, label %.split.i, label %.split57.i

.split57.i:                                       ; preds = %bb.rz
  call void @llvm.experimental.noalias.scope.decl(metadata !2498), !noalias !2501
  %i.bse = load ptr, ptr %i.bsc, align 8, !alias.scope !2502, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 8
  %i.bsg = load i64, ptr %i.bsf, align 8, !noalias !2503, !noundef !10
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bse, i64 16
  %i.bsi = load i16, ptr %i.bsh, align 8, !noalias !2503, !noundef !10 ; 2 uses
  %i.bsj = zext i16 %i.bsi to i64                 ; 2 uses
  %i.bsk = icmp eq i64 %i.bsg, %i.bsj
  br i1 %i.bsk, label %bb.sa, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, !prof !215

bb.sa:                                            ; preds = %.split57.i
  %i.bsl = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.bsm = extractvalue { i64, ptr } %i.bsl, 0
  %i.bsn = trunc nuw i64 %i.bsm to i1
  br i1 %i.bsn, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %.pre2269 = load ptr, ptr %i.bsc, align 8, !alias.scope !2502, !noalias !2501 ; 3 uses
  %.phi.trans.insert2270 = getelementptr inbounds nuw i8, ptr %.pre2269, i64 8
  %.pre2271 = load i64, ptr %.phi.trans.insert2270, align 8, !alias.scope !2504, !noalias !2501
  %.phi.trans.insert2272 = getelementptr inbounds nuw i8, ptr %.pre2269, i64 16
  %.pre2273 = load i16, ptr %.phi.trans.insert2272, align 8, !alias.scope !2504, !noalias !2501 ; 2 uses
  %.pre2356 = zext i16 %.pre2273 to i64           ; 2 uses
  %i.bso = icmp eq i64 %.pre2271, %.pre2356
  call void @llvm.experimental.noalias.scope.decl(metadata !2504), !noalias !2501
  br i1 %i.bso, label %bb.sc, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, !prof !436

bb.sc:                                            ; preds = %bb.sb
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #34, !noalias !2507
  unreachable

.split.i:                                         ; preds = %bb.rz
  %i.bsp = sub i32 0, %.sroa.0544.0.extract.trunc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2508), !noalias !2501
  %i.bsq = load ptr, ptr %i.bsc, align 8, !alias.scope !2511, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 8
  %i.bss = load i64, ptr %i.bsr, align 8, !noalias !2512, !noundef !10
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsq, i64 16
  %i.bsu = load i16, ptr %i.bst, align 8, !noalias !2512, !noundef !10 ; 2 uses
  %i.bsv = zext i16 %i.bsu to i64                 ; 2 uses
  %i.bsw = icmp eq i64 %i.bss, %i.bsv
  br i1 %i.bsw, label %bb.sd, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, !prof !215

bb.sd:                                            ; preds = %.split.i
  %i.bsx = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.bsy = extractvalue { i64, ptr } %i.bsx, 0
  %i.bsz = trunc nuw i64 %i.bsy to i1
  br i1 %i.bsz, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %.pre2275 = load ptr, ptr %i.bsc, align 8, !alias.scope !2511, !noalias !2501 ; 3 uses
  %.phi.trans.insert2276 = getelementptr inbounds nuw i8, ptr %.pre2275, i64 8
  %.pre2277 = load i64, ptr %.phi.trans.insert2276, align 8, !alias.scope !2513, !noalias !2501
  %.phi.trans.insert2278 = getelementptr inbounds nuw i8, ptr %.pre2275, i64 16
  %.pre2279 = load i16, ptr %.phi.trans.insert2278, align 8, !alias.scope !2513, !noalias !2501 ; 2 uses
  %.pre2354 = zext i16 %.pre2279 to i64           ; 2 uses
  %i.bta = icmp eq i64 %.pre2277, %.pre2354
  call void @llvm.experimental.noalias.scope.decl(metadata !2513), !noalias !2501
  br i1 %i.bta, label %bb.sf, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, !prof !436

bb.sf:                                            ; preds = %bb.se
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #34, !noalias !2516
  unreachable

_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i: ; preds = %.split.i, %.split57.i, %bb.se, %bb.sb
  %.sink2551 = phi ptr [ %.pre2269, %bb.sb ], [ %.pre2275, %bb.se ], [ %i.bse, %.split57.i ], [ %i.bsq, %.split.i ] ; 2 uses
  %.pre-phi23572473.sink = phi i64 [ %.pre2356, %bb.sb ], [ %.pre2354, %bb.se ], [ %i.bsj, %.split57.i ], [ %i.bsv, %.split.i ]
  %.sink2547 = phi i8 [ 43, %bb.sb ], [ 45, %bb.se ], [ 43, %.split57.i ], [ 45, %.split.i ]
  %.sink2546 = phi i16 [ %.pre2273, %bb.sb ], [ %.pre2279, %bb.se ], [ %i.bsi, %.split57.i ], [ %i.bsu, %.split.i ]
  %.sroa.021.0.in.in.i = phi i32 [ %.sroa.0544.0.extract.trunc, %bb.sb ], [ %i.bsp, %bb.se ], [ %.sroa.0544.0.extract.trunc, %.split57.i ], [ %i.bsp, %.split.i ] ; 3 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %.sink2551, i64 16
  %i.btc = load ptr, ptr %.sink2551, align 8, !noalias !2501, !nonnull !10, !noundef !10
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 %.pre-phi23572473.sink
  store i8 %.sink2547, ptr %i.btd, align 1, !noalias !2501
  %i.bte = add i16 %.sink2546, 1
  store i16 %i.bte, ptr %i.btb, align 8, !noalias !2501
  %.sroa.015.0.in.in.i = udiv i32 %.sroa.021.0.in.in.i, 60
  %.sroa.015.0.in.i = urem i32 %.sroa.015.0.in.in.i, 60 ; 2 uses
  %.sroa.021.0.in.i = urem i32 %.sroa.021.0.in.in.i, 60 ; 3 uses
  %.sroa.012.0.in.i = udiv i32 %.sroa.021.0.in.in.i, 3600
  call void @llvm.experimental.noalias.scope.decl(metadata !2517), !noalias !2501
  call void @llvm.experimental.noalias.scope.decl(metadata !2520), !noalias !2501
  %i.btf = load ptr, ptr %i.bsc, align 8, !alias.scope !2523, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 16
  %i.bth = load i16, ptr %i.btg, align 8, !noalias !2524, !noundef !10
  %i.bti = zext i16 %i.bth to i64
  %i.btj = add nuw nsw i64 %i.bti, 2
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btf, i64 8
  %i.btl = load i64, ptr %i.btk, align 8, !noalias !2524, !noundef !10
  %i.btm = icmp ugt i64 %i.btj, %i.btl
  br i1 %i.btm, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28: ; preds = %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i
  %i.btn = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.bto = extractvalue { i64, ptr } %i.btn, 0
  %i.btp = trunc nuw i64 %i.bto to i1
  br i1 %i.btp, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread_crit_edge

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28
  %.pre2280 = load ptr, ptr %i.bsc, align 8, !alias.scope !2525, !noalias !2501
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread_crit_edge, %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i
  %i.btq = phi ptr [ %.pre2280, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread_crit_edge ], [ %i.btf, %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2526), !noalias !2501
  %i.btr = and i32 %.sroa.012.0.in.i, 255         ; 2 uses
  %i.bts = icmp samesign ult i32 %i.btr, 100
  br i1 %i.bts, label %bb.sh, label %bb.sg, !prof !187

bb.sg:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34, !noalias !2529
  unreachable

bb.sh:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28.thread
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btq, i64 8
  %i.btu = load i64, ptr %i.btt, align 8, !alias.scope !2526, !noalias !2501, !noundef !10
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btq, i64 16 ; 2 uses
  %i.btw = load i16, ptr %i.btv, align 8, !alias.scope !2526, !noalias !2501, !noundef !10 ; 2 uses
  %i.btx = zext i16 %i.btw to i64                 ; 2 uses
  %i.bty = sub nuw i64 %i.btu, %i.btx
  %i.btz = icmp ugt i64 %i.bty, 1
  br i1 %i.btz, label %bb.sj, label %bb.si, !prof !187

bb.si:                                            ; preds = %bb.sh
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34, !noalias !2529
  unreachable

bb.sj:                                            ; preds = %bb.sh
  %i.bua = load ptr, ptr %i.btq, align 8, !alias.scope !2526, !noalias !2501, !nonnull !10, !noundef !10
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 %i.btx ; 2 uses
  %i.buc = shl nuw nsw i32 %i.btr, 1
  %i.bud = zext nneg i32 %i.buc to i64
  %i.bue = getelementptr inbounds nuw i8, ptr @18, i64 %i.bud ; 2 uses
  %i.buf = load i8, ptr %i.bue, align 1, !noalias !2530, !noundef !10
  store i8 %i.buf, ptr %i.bub, align 1, !noalias !2529
  %i.bug = getelementptr inbounds nuw i8, ptr %i.bub, i64 1
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bue, i64 1
  %i.bui = load i8, ptr %i.buh, align 1, !noalias !2530, !noundef !10
  store i8 %i.bui, ptr %i.bug, align 1, !noalias !2529
  %i.buj = add i16 %i.btw, 2
  store i16 %i.buj, ptr %i.btv, align 8, !alias.scope !2526, !noalias !2501
  %i.buk = icmp ne i32 %.sroa.021.0.in.i, 0
  %i.bul = or i32 %.sroa.015.0.in.i, %.sroa.021.0.in.i
  %i.bum = icmp ne i32 %i.bul, 0
  %or.cond3.i = or i1 %i.bry, %i.bum
  br i1 %or.cond3.i, label %bb.sk, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.sk:                                            ; preds = %bb.sj
  br i1 %.not2192, label %bb.sl, label %bb.sn

bb.sl:                                            ; preds = %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit94.i, %bb.sk
  call void @llvm.experimental.noalias.scope.decl(metadata !2531), !noalias !2501
  call void @llvm.experimental.noalias.scope.decl(metadata !2534), !noalias !2501
  %i.bun = load ptr, ptr %i.bsc, align 8, !alias.scope !2537, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %i.bup = load i16, ptr %i.buo, align 8, !noalias !2538, !noundef !10 ; 2 uses
  %i.buq = zext i16 %i.bup to i64                 ; 2 uses
  %i.bur = add nuw nsw i64 %i.buq, 2
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bun, i64 8
  %i.but = load i64, ptr %i.bus, align 8, !noalias !2538, !noundef !10 ; 2 uses
  %i.buu = icmp ugt i64 %i.bur, %i.but
  br i1 %i.buu, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i: ; preds = %bb.sl
  %i.buv = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.buw = extractvalue { i64, ptr } %i.buv, 0
  %i.bux = trunc nuw i64 %i.buw to i1
end_hunk_1
begin_hunk_2_@_RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date:bb.a
  %i.bvj = icmp eq i64 %i.bvf, %i.bvi
  br i1 %i.bvj, label %bb.so, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit94.i, !prof !215

bb.so:                                            ; preds = %bb.sn
  %i.bvk = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.bvl = extractvalue { i64, ptr } %i.bvk, 0
  %i.bvm = trunc nuw i64 %i.bvl to i1
  br i1 %i.bvm, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %.pre2282 = load ptr, ptr %i.bsc, align 8, !alias.scope !2547, !noalias !2501 ; 3 uses
  %.phi.trans.insert2283 = getelementptr inbounds nuw i8, ptr %.pre2282, i64 8
  %.pre2284 = load i64, ptr %.phi.trans.insert2283, align 8, !alias.scope !2549, !noalias !2501
  %.phi.trans.insert2285 = getelementptr inbounds nuw i8, ptr %.pre2282, i64 16
  %.pre2286 = load i16, ptr %.phi.trans.insert2285, align 8, !alias.scope !2549, !noalias !2501 ; 2 uses
  %.pre2352 = zext i16 %.pre2286 to i64           ; 2 uses
  %i.bvn = icmp eq i64 %.pre2284, %.pre2352
  call void @llvm.experimental.noalias.scope.decl(metadata !2549), !noalias !2501
  br i1 %i.bvn, label %bb.sq, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit94.i, !prof !436

bb.sq:                                            ; preds = %bb.sp
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #34, !noalias !2552
  unreachable

_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit94.i: ; preds = %bb.sn, %bb.sp
  %i.bvo = phi ptr [ %.pre2282, %bb.sp ], [ %i.bvd, %bb.sn ] ; 2 uses
  %i.bvp = phi i16 [ %.pre2286, %bb.sp ], [ %i.bvh, %bb.sn ]
  %.pre-phi23532487 = phi i64 [ %.pre2352, %bb.sp ], [ %i.bvi, %bb.sn ]
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvo, i64 16
  %i.bvr = load ptr, ptr %i.bvo, align 8, !alias.scope !2549, !noalias !2501, !nonnull !10, !noundef !10
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 %.pre-phi23532487
  store i8 58, ptr %i.bvs, align 1, !noalias !2552
  %i.bvt = add i16 %i.bvp, 1
  store i16 %i.bvt, ptr %i.bvq, align 8, !alias.scope !2549, !noalias !2501
  br label %bb.sl

bb.sr:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i.thread
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bva, i64 16
  %i.bvv = load ptr, ptr %i.bva, align 8, !alias.scope !2540, !noalias !2501, !nonnull !10, !noundef !10
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 %.pre-phi2347 ; 2 uses
  %i.bvx = shl nuw nsw i32 %.sroa.015.0.in.i, 1
  %i.bvy = zext nneg i32 %i.bvx to i64
  %i.bvz = getelementptr inbounds nuw i8, ptr @18, i64 %i.bvy ; 2 uses
  %i.bwa = load i8, ptr %i.bvz, align 1, !noalias !2553, !noundef !10
  store i8 %i.bwa, ptr %i.bvw, align 1, !noalias !2543
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvw, i64 1
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvz, i64 1
  %i.bwd = load i8, ptr %i.bwc, align 1, !noalias !2553, !noundef !10
  store i8 %i.bwd, ptr %i.bwb, align 1, !noalias !2543
  %i.bwe = add i16 %i.buy, 2
  store i16 %i.bwe, ptr %i.bvu, align 8, !alias.scope !2540, !noalias !2501
  %or.cond5.i = or i1 %i.bsa, %i.buk
  br i1 %or.cond5.i, label %bb.ss, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.ss:                                            ; preds = %bb.sr
  br i1 %.not2192, label %bb.st, label %bb.sv

bb.st:                                            ; preds = %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i, %bb.ss
  call void @llvm.experimental.noalias.scope.decl(metadata !2554), !noalias !2501
  call void @llvm.experimental.noalias.scope.decl(metadata !2557), !noalias !2501
  %i.bwf = load ptr, ptr %i.bsc, align 8, !alias.scope !2560, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16
  %i.bwh = load i16, ptr %i.bwg, align 8, !noalias !2561, !noundef !10 ; 2 uses
  %i.bwi = zext i16 %i.bwh to i64                 ; 2 uses
  %i.bwj = add nuw nsw i64 %i.bwi, 2
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwf, i64 8
  %i.bwl = load i64, ptr %i.bwk, align 8, !noalias !2561, !noundef !10 ; 2 uses
  %i.bwm = icmp ugt i64 %i.bwj, %i.bwl
  br i1 %i.bwm, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i: ; preds = %bb.st
  %i.bwn = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.bwo = extractvalue { i64, ptr } %i.bwn, 0
  %i.bwp = trunc nuw i64 %i.bwo to i1
  br i1 %i.bwp, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i
  %.pre2298 = load ptr, ptr %i.bsc, align 8, !alias.scope !2562, !noalias !2501 ; 3 uses
  %.phi.trans.insert2299 = getelementptr inbounds nuw i8, ptr %.pre2298, i64 8
  %.pre2300 = load i64, ptr %.phi.trans.insert2299, align 8, !alias.scope !2563, !noalias !2501
  %.phi.trans.insert2301 = getelementptr inbounds nuw i8, ptr %.pre2298, i64 16
  %.pre2302 = load i16, ptr %.phi.trans.insert2301, align 8, !alias.scope !2563, !noalias !2501 ; 2 uses
  %.pre2348 = zext i16 %.pre2302 to i64
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge, %bb.st
  %.pre-phi2349 = phi i64 [ %.pre2348, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge ], [ %i.bwi, %bb.st ] ; 2 uses
  %i.bwq = phi i16 [ %.pre2302, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge ], [ %i.bwh, %bb.st ]
  %i.bwr = phi i64 [ %.pre2300, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge ], [ %i.bwl, %bb.st ]
  %i.bws = phi ptr [ %.pre2298, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread_crit_edge ], [ %i.bwf, %bb.st ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2563), !noalias !2501
  %i.bwt = sub nuw i64 %i.bwr, %.pre-phi2349
  %i.bwu = icmp ugt i64 %i.bwt, 1
  br i1 %i.bwu, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hECsiibOIv6tv3q_7uu_date.exit.i, label %bb.su, !prof !187

bb.su:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34, !noalias !2566
  unreachable

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hECsiibOIv6tv3q_7uu_date.exit.i: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i.thread
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bws, i64 16
  %i.bww = load ptr, ptr %i.bws, align 8, !alias.scope !2563, !noalias !2501, !nonnull !10, !noundef !10
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bww, i64 %.pre-phi2349 ; 2 uses
  %i.bwy = shl nuw nsw i32 %.sroa.021.0.in.i, 1
  %i.bwz = zext nneg i32 %i.bwy to i64
  %i.bxa = getelementptr inbounds nuw i8, ptr @18, i64 %i.bwz ; 2 uses
  %i.bxb = load i8, ptr %i.bxa, align 1, !noalias !2567, !noundef !10
  store i8 %i.bxb, ptr %i.bwx, align 1, !noalias !2566
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwx, i64 1
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxa, i64 1
  %i.bxe = load i8, ptr %i.bxd, align 1, !noalias !2567, !noundef !10
  store i8 %i.bxe, ptr %i.bxc, align 1, !noalias !2566
  %i.bxf = add i16 %i.bwq, 2
  store i16 %i.bxf, ptr %i.bwv, align 8, !alias.scope !2563, !noalias !2501
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.sv:                                            ; preds = %bb.ss
  call void @llvm.experimental.noalias.scope.decl(metadata !2568), !noalias !2501
  %i.bxg = load ptr, ptr %i.bsc, align 8, !alias.scope !2571, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 8
  %i.bxi = load i64, ptr %i.bxh, align 8, !noalias !2572, !noundef !10
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxg, i64 16
  %i.bxk = load i16, ptr %i.bxj, align 8, !noalias !2572, !noundef !10 ; 2 uses
  %i.bxl = zext i16 %i.bxk to i64                 ; 2 uses
  %i.bxm = icmp eq i64 %i.bxi, %i.bxl
  br i1 %i.bxm, label %bb.sw, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i, !prof !215

bb.sw:                                            ; preds = %bb.sv
  %i.bxn = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bsc) #36, !noalias !2501 ; 2 uses
  %i.bxo = extractvalue { i64, ptr } %i.bxn, 0
  %i.bxp = trunc nuw i64 %i.bxo to i1
  br i1 %i.bxp, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %.pre2293 = load ptr, ptr %i.bsc, align 8, !alias.scope !2571, !noalias !2501 ; 3 uses
  %.phi.trans.insert2294 = getelementptr inbounds nuw i8, ptr %.pre2293, i64 8
  %.pre2295 = load i64, ptr %.phi.trans.insert2294, align 8, !alias.scope !2573, !noalias !2501
  %.phi.trans.insert2296 = getelementptr inbounds nuw i8, ptr %.pre2293, i64 16
  %.pre2297 = load i16, ptr %.phi.trans.insert2296, align 8, !alias.scope !2573, !noalias !2501 ; 2 uses
  %.pre2350 = zext i16 %.pre2297 to i64           ; 2 uses
  %i.bxq = icmp eq i64 %.pre2295, %.pre2350
  call void @llvm.experimental.noalias.scope.decl(metadata !2573), !noalias !2501
  br i1 %i.bxq, label %bb.sy, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i, !prof !436

bb.sy:                                            ; preds = %bb.sx
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #34, !noalias !2576
  unreachable

_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i: ; preds = %bb.sv, %bb.sx
  %i.bxr = phi ptr [ %.pre2293, %bb.sx ], [ %i.bxg, %bb.sv ] ; 2 uses
  %i.bxs = phi i16 [ %.pre2297, %bb.sx ], [ %i.bxk, %bb.sv ]
  %.pre-phi23512491 = phi i64 [ %.pre2350, %bb.sx ], [ %i.bxl, %bb.sv ]
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxr, i64 16
  %i.bxu = load ptr, ptr %i.bxr, align 8, !alias.scope !2573, !noalias !2501, !nonnull !10, !noundef !10
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %.pre-phi23512491
  store i8 58, ptr %i.bxv, align 1, !noalias !2576
  %i.bxw = add i16 %i.bxs, 1
  store i16 %i.bxw, ptr %i.bxt, align 8, !alias.scope !2573, !noalias !2501
  br label %bb.st

._crit_edge2309:                                  ; preds = %bb.ry, %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15
  call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  call void @llvm.experimental.noalias.scope.decl(metadata !2580), !noalias !2501
  %i.bxx = load ptr, ptr %.pre2311, align 8, !alias.scope !2583, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 16
  %i.bxz = load i16, ptr %i.bxy, align 8, !noalias !2584, !noundef !10
  %i.bya = zext i16 %i.bxz to i64
  %i.byb = add nuw nsw i64 %i.bya, 9
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bxx, i64 8
  %i.byd = load i64, ptr %i.byc, align 8, !noalias !2584, !noundef !10
  %i.bye = icmp ugt i64 %i.byb, %i.byd
  br i1 %i.bye, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread, !prof !215

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1: ; preds = %._crit_edge2309
  %i.byf = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.pre2311) #36, !noalias !2501 ; 2 uses
  %i.byg = extractvalue { i64, ptr } %i.byf, 0
  %i.byh = trunc nuw i64 %i.byg to i1
  br i1 %i.byh, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread_crit_edge

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1
  %.pre2312 = load ptr, ptr %.pre2311, align 8, !alias.scope !2577, !noalias !2501
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread_crit_edge, %._crit_edge2309
  %i.byi = phi ptr [ %.pre2312, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread_crit_edge ], [ %i.bxx, %._crit_edge2309 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2585), !noalias !2501
  %i.byj = icmp ult i32 %.sroa.0544.0.extract.trunc547, 1000000000
  br i1 %i.byj, label %bb.ta, label %bb.sz, !prof !187

bb.sz:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #34, !noalias !2588
  unreachable

bb.ta:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.byk = urem i32 %.sroa.0544.0.extract.trunc547, 10 ; 2 uses
  %i.byl = trunc nuw nsw i32 %i.byk to i8
  %i.bym = or disjoint i8 %i.byl, 48
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i8 %i.bym, ptr %.8..8..8..8..8..sroa_idx, align 1, !noalias !2589
  %2 = insertelement <4 x i32> poison, i32 %.sroa.0544.0.extract.trunc547, i64 0
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> zeroinitializer
  %4 = udiv <4 x i32> %3, <i32 10000, i32 1000, i32 100, i32 10>
  %5 = urem <4 x i32> %4, splat (i32 10)          ; 5 uses
  %6 = trunc nuw nsw <4 x i32> %5 to <4 x i8>
  %7 = or disjoint <4 x i8> %6, splat (i8 48)
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store <4 x i8> %7, ptr %.4..4..4..4..4..sroa_idx, align 1, !noalias !2589
  %i.byn = udiv i32 %.sroa.0544.0.extract.trunc547, 100000
  %.lhs.trunc2507 = trunc nuw nsw i32 %i.byn to i16
  %i.byo = urem i16 %.lhs.trunc2507, 10           ; 2 uses
  %i.byp = trunc nuw nsw i16 %i.byo to i8
  %i.byq = or disjoint i8 %i.byp, 48
  %.3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  store i8 %i.byq, ptr %.3..3..3..3..3..sroa_idx, align 1, !noalias !2589
  %i.byr = udiv i32 %.sroa.0544.0.extract.trunc547, 1000000
  %.lhs.trunc2508 = trunc nuw nsw i32 %i.byr to i16
  %i.bys = urem i16 %.lhs.trunc2508, 10           ; 2 uses
  %i.byt = trunc nuw nsw i16 %i.bys to i8
  %i.byu = or disjoint i8 %i.byt, 48
  %.2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.byu, ptr %.2..2..2..2..2..sroa_idx, align 1, !noalias !2589
  %i.byv = udiv i32 %.sroa.0544.0.extract.trunc547, 10000000
  %.lhs.trunc2510 = trunc nuw nsw i32 %i.byv to i8
  %i.byw = urem i8 %.lhs.trunc2510, 10            ; 2 uses
  %i.byx = or disjoint i8 %i.byw, 48
  %.1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.byx, ptr %.1..1..1..1..1..sroa_idx, align 1, !noalias !2589
  %i.byy = udiv i32 %.sroa.0544.0.extract.trunc547, 100000000
  %i.byz = trunc nuw nsw i32 %i.byy to i8
  %i.bza = or disjoint i8 %i.byz, 48
  store i8 %i.bza, ptr %i.au, align 1, !noalias !2589
  br i1 %.not2197, label %.split, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %..i517 = call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.0544.5.extract.trunc553, i8 9)
  br label %bb.tk

.split:                                           ; preds = %bb.ta
  %i.bzb = icmp eq i32 %i.byk, 0
  br i1 %i.bzb, label %bb.tc, label %bb.tk

bb.tc:                                            ; preds = %.split
  %8 = extractelement <4 x i32> %5, i64 3
  %i.bzc = icmp eq i32 %8, 0
  br i1 %i.bzc, label %bb.td, label %bb.tk

bb.td:                                            ; preds = %bb.tc
  %9 = extractelement <4 x i32> %5, i64 2
  %i.bzd = icmp eq i32 %9, 0
  br i1 %i.bzd, label %bb.te, label %bb.tk

bb.te:                                            ; preds = %bb.td
  %10 = extractelement <4 x i32> %5, i64 1
  %i.bze = icmp eq i32 %10, 0
  br i1 %i.bze, label %bb.tf, label %bb.tk

bb.tf:                                            ; preds = %bb.te
  %11 = extractelement <4 x i32> %5, i64 0
  %i.bzf = icmp eq i32 %11, 0
  br i1 %i.bzf, label %bb.tg, label %bb.tk

bb.tg:                                            ; preds = %bb.tf
  %i.bzg = icmp eq i16 %i.byo, 0
  br i1 %i.bzg, label %bb.th, label %bb.tk

bb.th:                                            ; preds = %bb.tg
  %i.bzh = icmp eq i16 %i.bys, 0
  br i1 %i.bzh, label %bb.ti, label %bb.tk

bb.ti:                                            ; preds = %bb.th
  %i.bzi = icmp eq i8 %i.byw, 0
  br i1 %i.bzi, label %bb.tj, label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  %i.bzj = icmp samesign ugt i32 %.sroa.0544.0.extract.trunc547, 99999999
  %spec.select = zext i1 %i.bzj to i8
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %.split, %bb.tc, %bb.td, %bb.te, %bb.tf, %bb.tg, %bb.th, %bb.ti, %bb.tb
  %.sroa.06.1.i.i = phi i8 [ %..i517, %bb.tb ], [ 9, %.split ], [ 3, %bb.th ], [ 8, %bb.tc ], [ %spec.select, %bb.tj ], [ 7, %bb.td ], [ 4, %bb.tg ], [ 6, %bb.te ], [ 2, %bb.ti ], [ 5, %bb.tf ] ; 2 uses
  %i.bzk = zext nneg i8 %.sroa.06.1.i.i to i64    ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.byi, i64 8
  %i.bzm = load i64, ptr %i.bzl, align 8, !alias.scope !2585, !noalias !2501, !noundef !10
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.byi, i64 16 ; 2 uses
  %i.bzo = load i16, ptr %i.bzn, align 8, !alias.scope !2585, !noalias !2501, !noundef !10 ; 2 uses
  %i.bzp = zext i16 %i.bzo to i64                 ; 2 uses
  %i.bzq = sub nuw i64 %i.bzm, %i.bzp
  %.not20.i.i = icmp ult i64 %i.bzq, %i.bzk
  br i1 %.not20.i.i, label %bb.tl, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i, !prof !215

bb.tl:                                            ; preds = %bb.tk
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #34, !noalias !2588
  unreachable

_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i: ; preds = %bb.tk
  %i.bzr = load ptr, ptr %i.byi, align 8, !alias.scope !2585, !noalias !2501, !nonnull !10, !noundef !10
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzr, i64 %i.bzp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bzs, ptr nonnull readonly align 1 %i.au, i64 range(i64 0, -9223372036854775808) %i.bzk, i1 false), !alias.scope !2590, !noalias !2594
  %i.bzt = zext nneg i8 %.sroa.06.1.i.i to i16
  %i.bzu = add i16 %i.bzo, %i.bzt
  store i16 %i.bzu, ptr %i.bzn, align 8, !alias.scope !2585, !noalias !2501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.tm:                                            ; preds = %bb.ry
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  %i.bzv = load ptr, ptr %.pre2311, align 8, !alias.scope !2596, !noalias !2501, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzv, i64 8
  %i.bzx = load i64, ptr %i.bzw, align 8, !noalias !2599, !noundef !10
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzv, i64 16
  %i.bzz = load i16, ptr %i.bzy, align 8, !noalias !2599, !noundef !10 ; 2 uses
  %i.caa = zext i16 %i.bzz to i64                 ; 2 uses
  %i.cab = icmp eq i64 %i.bzx, %i.caa
  br i1 %i.cab, label %bb.tn, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15, !prof !215

bb.tn:                                            ; preds = %bb.tm
  %i.cac = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.pre2311) #36, !noalias !2501 ; 2 uses
  %i.cad = extractvalue { i64, ptr } %i.cac, 0
  %i.cae = trunc nuw i64 %i.cad to i1
  br i1 %i.cae, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %.pre2304 = load ptr, ptr %.pre2311, align 8, !alias.scope !2596, !noalias !2501 ; 3 uses
  %.phi.trans.insert2305 = getelementptr inbounds nuw i8, ptr %.pre2304, i64 8
  %.pre2306 = load i64, ptr %.phi.trans.insert2305, align 8, !alias.scope !2600, !noalias !2501
  %.phi.trans.insert2307 = getelementptr inbounds nuw i8, ptr %.pre2304, i64 16
  %.pre2308 = load i16, ptr %.phi.trans.insert2307, align 8, !alias.scope !2600, !noalias !2501 ; 2 uses
  %.pre2342 = zext i16 %.pre2308 to i64           ; 2 uses
  %i.caf = icmp eq i64 %.pre2306, %.pre2342
  call void @llvm.experimental.noalias.scope.decl(metadata !2600), !noalias !2501
  br i1 %i.caf, label %bb.tp, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15, !prof !436

bb.tp:                                            ; preds = %bb.to
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #34, !noalias !2603
  unreachable

_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15: ; preds = %bb.tm, %bb.to
  %i.cag = phi ptr [ %.pre2304, %bb.to ], [ %i.bzv, %bb.tm ] ; 2 uses
  %i.cah = phi i16 [ %.pre2308, %bb.to ], [ %i.bzz, %bb.tm ]
  %.pre-phi23432495 = phi i64 [ %.pre2342, %bb.to ], [ %i.caa, %bb.tm ]
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cag, i64 16
  %i.caj = load ptr, ptr %i.cag, align 8, !alias.scope !2600, !noalias !2501, !nonnull !10, !noundef !10
  %i.cak = getelementptr inbounds nuw i8, ptr %i.caj, i64 %.pre-phi23432495
  store i8 46, ptr %i.cak, align 1, !noalias !2603
  %i.cal = add i16 %i.cah, 1
  store i16 %i.cal, ptr %i.cai, align 8, !alias.scope !2600, !noalias !2501
  br label %._crit_edge2309

bb.tq:                                            ; preds = %.thread2695
  %i.cam = call { i64, ptr } @_RNvMs2_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerNtB7_9Extension14write_str_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.dg, i8 noundef %i.brq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.brp, i64 noundef %.sroa.440.0.copyload.i26892698, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.brs) #36, !noalias !2494
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit

bb.tr:                                            ; preds = %.thread2695
  call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  %i.can = load ptr, ptr %i.brs, align 8, !alias.scope !2604, !noalias !2607, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 8
  %i.cap = load i64, ptr %i.cao, align 8, !noalias !2609, !noundef !10
  %i.caq = getelementptr inbounds nuw i8, ptr %i.can, i64 16
  %i.car = load i16, ptr %i.caq, align 8, !noalias !2609, !noundef !10 ; 2 uses
  %i.cas = zext i16 %i.car to i64                 ; 2 uses
  %i.cat = sub i64 %i.cap, %i.cas
  %i.cau = icmp ugt i64 %.sroa.440.0.copyload.i26892698, %i.cat
  br i1 %i.cau, label %bb.ts, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !215

bb.ts:                                            ; preds = %bb.tr
  %i.cav = call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.brs) #36, !noalias !2607 ; 2 uses
  %i.caw = extractvalue { i64, ptr } %i.cav, 0
  %i.cax = trunc nuw i64 %i.caw to i1
  br i1 %i.cax, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, label %bb.tt

_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.tr, %bb.tt
  %.pre-phi2344 = phi i64 [ %i.cbk, %bb.tt ], [ %i.cas, %bb.tr ]
  %i.cay = phi i16 [ %i.cbj, %bb.tt ], [ %i.car, %bb.tr ]
  %i.caz = phi ptr [ %i.cbf, %bb.tt ], [ %i.can, %bb.tr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2610), !noalias !2501
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 16
  %i.cbb = load ptr, ptr %i.caz, align 8, !alias.scope !2610, !noalias !2613, !nonnull !10, !noundef !10
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cbb, i64 %.pre-phi2344
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cbc, ptr nonnull readonly align 1 %i.brp, i64 range(i64 0, -9223372036854775808) %.sroa.440.0.copyload.i26892698, i1 false), !alias.scope !2615, !noalias !2619
  %i.cbd = trunc i64 %.sroa.440.0.copyload.i26892698 to i16
  %i.cbe = add i16 %i.cay, %i.cbd
  store i16 %i.cbe, ptr %i.cba, align 8, !alias.scope !2610, !noalias !2621
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502

bb.tt:                                            ; preds = %bb.ts
  %i.cbf = load ptr, ptr %i.brs, align 8, !alias.scope !2604, !noalias !2607, !nonnull !10, !align !315, !noundef !10 ; 3 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 8
  %i.cbh = load i64, ptr %i.cbg, align 8, !noalias !2607, !noundef !10
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbf, i64 16
  %i.cbj = load i16, ptr %i.cbi, align 8, !noalias !2607, !noundef !10 ; 2 uses
  %i.cbk = zext i16 %i.cbj to i64                 ; 2 uses
  %i.cbl = sub i64 %i.cbh, %i.cbk
  %i.cbm = icmp ugt i64 %.sroa.440.0.copyload.i26892698, %i.cbl
  br i1 %i.cbm, label %bb.tu, label %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i

bb.tu:                                            ; preds = %bb.tt
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.brs, i64 8
  %i.cbo = load ptr, ptr %i.cbn, align 8, !alias.scope !2604, !noalias !2607, !nonnull !10, !noundef !10
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.brs, i64 16
  %i.cbq = load ptr, ptr %i.cbp, align 8, !alias.scope !2604, !noalias !2607, !nonnull !10, !align !315, !noundef !10
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 24
  %i.cbs = load ptr, ptr %i.cbr, align 8, !invariant.load !10, !noalias !2607, !nonnull !10
  %i.cbt = call { i64, ptr } %i.cbs(ptr noundef nonnull %i.cbo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.brp, i64 noundef %.sroa.440.0.copyload.i26892698) #35, !noalias !2501, !inline_history !2622
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit

_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread: ; preds = %bb.ts, %bb.tn, %bb.sw, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i, %bb.so, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28, %bb.sd, %bb.sa, %bb.ra, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhECsiibOIv6tv3q_7uu_date.exit.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i
  %.sroa.013.0.i2678 = phi i8 [ %.sroa.013.0.i, %bb.tn ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28 ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i ], [ %.sroa.013.0.i, %bb.sd ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhECsiibOIv6tv3q_7uu_date.exit.i ], [ %.sroa.013.0.i, %bb.ra ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i ], [ %.sroa.013.0.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1 ], [ %.sroa.013.0.i, %bb.so ], [ %.sroa.013.0.i, %bb.sw ], [ %.sroa.013.0.i, %bb.sa ], [ %.sroa.013.0.i267726862700, %bb.ts ]
  %.pn2554 = phi { i64, ptr } [ %i.cac, %bb.tn ], [ %i.btn, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i28 ], [ %i.buv, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit72.i ], [ %i.bsx, %bb.sd ], [ %i.bqv, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i ], [ %i.bwn, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i ], [ %i.bok, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit27.i ], [ %i.bmt, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhECsiibOIv6tv3q_7uu_date.exit.i ], [ %i.blo, %bb.ra ], [ %i.bpk, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit22.i ], [ %i.byf, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit.i1 ], [ %i.bvk, %bb.so ], [ %i.bxn, %bb.sw ], [ %i.bsl, %bb.sa ], [ %i.cav, %bb.ts ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2623
  store i8 1, ptr %i.av, align 8, !noalias !545
  %.sroa.41301.0..sroa_idx2498 = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %.sroa.013.0.i2678, ptr %.sroa.41301.0..sroa_idx2498, align 1, !noalias !545
  %.sroa.51302.0..sroa_idx2499 = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 0, ptr %.sroa.51302.0..sroa_idx2499, align 2, !noalias !545
  br label %bb.tv

_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502: ; preds = %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4yECsiibOIv6tv3q_7uu_date.exit.i.i, %bb.qt, %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer20write_int_pad2_spaceyECsiibOIv6tv3q_7uu_date.exit.i.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hECsiibOIv6tv3q_7uu_date.exit.i, %bb.sj, %bb.sr, %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, %_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i, %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyECsiibOIv6tv3q_7uu_date.exit.i.i, %_RINvMs0_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2yECsiibOIv6tv3q_7uu_date.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2623
  br label %bb.tw

_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.tu, %bb.rd, %bb.tq
  %.sroa.013.0.i267726862699 = phi i8 [ %.sroa.013.0.i267726862700, %bb.tu ], [ %.sroa.013.0.i, %bb.rd ], [ %.sroa.013.0.i267726862700, %bb.tq ]
  %.sink2553 = phi { i64, ptr } [ %i.cbt, %bb.tu ], [ %i.blt, %bb.rd ], [ %i.cam, %bb.tq ] ; 2 uses
  %i.cbu = extractvalue { i64, ptr } %.sink2553, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2623
  store i8 1, ptr %i.av, align 8, !noalias !545
  %.sroa.41301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %.sroa.013.0.i267726862699, ptr %.sroa.41301.0..sroa_idx, align 1, !noalias !545
  %.sroa.51302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 0, ptr %.sroa.51302.0..sroa_idx, align 2, !noalias !545
  %i.cbv = trunc nuw i64 %i.cbu to i1
  br i1 %i.cbv, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread, %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit
  %.pn2554.pn = phi { i64, ptr } [ %.pn2554, %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread ], [ %.sink2553, %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit ]
  %.sroa.8.0.i2500 = extractvalue { i64, ptr } %.pn2554.pn, 1
  %i.cbw = call fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.av, ptr noundef %.sroa.8.0.i2500) #35, !noalias !2626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2623
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10format_oneCsiibOIv6tv3q_7uu_date.exit

bb.tw:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit.thread2502, %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10write_itemCsiibOIv6tv3q_7uu_date.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2623
  call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  %i.cbx = load i64, ptr %i.di, align 8, !alias.scope !2627, !noundef !10 ; 2 uses
  %i.cby = icmp eq i64 %i.cbx, 0
  br i1 %i.cby, label %bb.tx, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE8bump_fmtCsiibOIv6tv3q_7uu_date.exit524, !prof !215

bb.tx:                                            ; preds = %bb.tw
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #34, !noalias !2627
  unreachable

_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE8bump_fmtCsiibOIv6tv3q_7uu_date.exit524: ; preds = %bb.tw
  %i.cbz = load ptr, ptr %i.dh, align 8, !alias.scope !2627, !nonnull !10, !noundef !10
  %i.cca = add i64 %i.cbx, -1
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbz, i64 1
  store ptr %i.ccb, ptr %i.dh, align 8, !alias.scope !2627, !captures !1794
  store i64 %i.cca, ptr %i.di, align 8, !alias.scope !2627
  br label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE10format_oneCsiibOIv6tv3q_7uu_date.exit

end_hunk_2
