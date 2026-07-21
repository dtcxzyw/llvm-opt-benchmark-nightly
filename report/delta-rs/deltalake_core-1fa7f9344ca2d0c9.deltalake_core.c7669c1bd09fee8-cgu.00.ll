inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1k_3map3MapINtNtNtB1o_5slice4iter4IterNtNtB6_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_values0EINtNtB1o_6result6ResultNtNtB1o_7convert10InfallibleNtB3j_16DeltaWriterErrorEEE9from_iterB3l_:bb.a

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtB1B_5slice4iter4IterNtNtB6_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_values0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtB3w_16DeltaWriterErrorEEE9from_iterB3y_.exit: ; preds = %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtB1j_5slice4iter4IterNtNtB6_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_values0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtB3e_16DeltaWriterErrorEEE11spec_extendB3g_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23649
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1k_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1o_6result6ResultNtNtB1o_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23666)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23669
  %i.f = invoke { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3c_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b, !noalias !23666 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.f, 0
  %i.i = extractvalue { i64, i64 } %i.f, 1
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23669
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %bb.g unwind label %bb.f, !noalias !23666

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !23666, !noalias !23671
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !23666, !noalias !23671
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !23666, !noalias !23671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23669
  tail call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !23666
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4C_.exit

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !noalias !23669, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23669
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23669
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %bb.f, !noalias !23666

.noexc.i:                                         ; preds = %bb.g
  %i.p = load i64, ptr %i.b, align 8, !range !79, !noalias !23669, !noundef !8
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !107, !noalias !23669, !noundef !8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !23669
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #27
          to label %.noexc8.i unwind label %bb.f, !noalias !23666

.noexc8.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !23669, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23669
  store i64 %i.i, ptr %i.v, align 8, !noalias !23666
  store i64 %i.s, ptr %i.e, align 8, !noalias !23669
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !23669
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !23666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23675)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  %i.x = invoke { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3c_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !23666 ; 2 uses

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.y, %bb.l ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %.body.i unwind label %bb.s, !noalias !23666

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.z = extractvalue { i64, i64 } %i.x, 0
  %i.aa = extractvalue { i64, i64 } %i.x, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %bb.n, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23678, !noalias !23679, !noundef !8 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.e, align 8, !range !83, !alias.scope !23678, !noalias !23679, !noundef !8
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.o, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23682
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
          to label %bb.q unwind label %bb.p, !noalias !23666

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.n
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !23678, !noalias !23679, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  store i64 %i.aa, ptr %i.ah, align 8, !noalias !23666
  %i.ai = add nuw nsw i64 %i.ac, 1
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23678, !noalias !23679
  br label %bb.j

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.q:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.a, align 8, !noalias !23682, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23682
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 1) ; 2 uses
  %i.am = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23683, !noalias !23679, !noundef !8 ; 2 uses
  %i.an = load i64, ptr %i.e, align 8, !range !83, !alias.scope !23683, !noalias !23679, !noundef !8
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.r, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.am, i64 noundef %i.al, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.p, !noalias !23666

bb.s:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23666
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE11spec_extendB4k_.exit.i unwind label %bb.t, !noalias !23666

bb.t:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %.pn.i.i.i, %bb.k ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB3x_.exit.i unwind label %bb.u, !noalias !23666

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE11spec_extendB4k_.exit.i: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !23671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23669
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4C_.exit

bb.u:                                             ; preds = %bb.v, %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23666
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB3x_.exit.i: ; preds = %bb.v, %.body.i
  %.pn14.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %.pn14.i

bb.v:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.m, %bb.f ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB3x_.exit.i unwind label %bb.u, !noalias !23666

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4C_.exit: ; preds = %bb.e, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE11spec_extendB4k_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23692)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23698)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23704
  store ptr %i.f, ptr %i.c, align 8, !noalias !23707
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !noalias !23707
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !23710, !noalias !23713, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !23710, !noalias !23713
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.l, %bb.c ], [ %.promoted.i.i.i.i.i, %bb.a ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.not.not.not.i.not.not.not.i.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !23710, !noalias !23713
  call void @llvm.experimental.noalias.scope.decl(metadata !23714)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !23714, !noalias !23717, !nonnull !8, !align !1754, !noundef !8
  %i.n = load i64, ptr %i.m, align 8, !noalias !23719, !noundef !8
  %i.o = call { i64, i64 } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0INtB7_5FnMutTTjRINtNtB23_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k), !noalias !23720 ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !alias.scope !23714, !noalias !23717, !nonnull !8, !align !1754, !noundef !8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !23720, !noundef !8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !noalias !23720
  %i.s = extractvalue { i64, i64 } %i.o, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23691
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !23686
  %i.u = load i64, ptr %i.b, align 8, !range !79, !noalias !23691, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !107, !noalias !23691, !noundef !8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.v, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.y, align 8, !noalias !23691
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #27, !noalias !23686
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.aa = extractvalue { i64, i64 } %i.o, 1
  %i.ab = load ptr, ptr %i.y, align 8, !noalias !23691, !nonnull !8, !noundef !8 ; 2 uses
  %i.ac = icmp ugt i64 %i.x, 3
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23691
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !23686
  store i64 %i.x, ptr %i.e, align 8, !noalias !23691
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !23691
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !23686
  call void @llvm.experimental.noalias.scope.decl(metadata !23721)
  call void @llvm.experimental.noalias.scope.decl(metadata !23724)
  call void @llvm.experimental.noalias.scope.decl(metadata !23726)
  call void @llvm.experimental.noalias.scope.decl(metadata !23729)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc9.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23731)
  call void @llvm.experimental.noalias.scope.decl(metadata !23734)
  call void @llvm.experimental.noalias.scope.decl(metadata !23737)
  call void @llvm.experimental.noalias.scope.decl(metadata !23740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23743
  store ptr %i.ad, ptr %i.a, align 8, !noalias !23746
  store ptr %i.ae, ptr %i.af, align 8, !noalias !23746
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !23749, !noalias !23752, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !23749, !noalias !23752
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.f
  %i.ai = phi ptr [ %i.aj, %.noexc.i ], [ %.promoted.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.d, align 8, !alias.scope !23749, !noalias !23752
  call void @llvm.experimental.noalias.scope.decl(metadata !23753)
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !23753, !noalias !23756, !nonnull !8, !align !1754, !noundef !8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !23758, !noundef !8
  %i.am = invoke { i64, i64 } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0INtB7_5FnMutTTjRINtNtB23_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !23686 ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  %i.an = load ptr, ptr %i.af, align 8, !alias.scope !23753, !noalias !23756, !nonnull !8, !align !1754, !noundef !8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !23759, !noundef !8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !noalias !23759
  %i.aq = extractvalue { i64, i64 } %i.am, 0
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc.i
  %i.as = extractvalue { i64, i64 } %i.am, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23743
  %i.at = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23760, !noalias !23761, !noundef !8 ; 5 uses
  %i.au = icmp ult i64 %i.at, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.e, align 8, !range !83, !alias.scope !23760, !noalias !23761, !noundef !8
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.at, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !23686

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !23760, !noalias !23761, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.at
  store i64 %i.as, ptr %i.ay, align 8, !noalias !23686
  %i.az = add nuw nsw i64 %i.at, 1
  store i64 %i.az, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23760, !noalias !23761
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23704
  store i64 0, ptr %0, align 8, !alias.scope !23686, !noalias !23689
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8, !alias.scope !23686, !noalias !23689
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bb, align 8, !alias.scope !23686, !noalias !23689
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4Q_.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.m, !noalias !23686

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !23689
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4Q_.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23686
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4Q_.exit: ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23691
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5t_14PrimitiveArrayNtNtB5x_5types9Int32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionlEE9from_iterB25_E0EE9from_iterB3Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23765
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !23762, !noalias !23767, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !23762, !noalias !23767, !nonnull !8, !noundef !8
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23765
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !23765
  %i.i = load i64, ptr %i.b, align 8, !range !79, !noalias !23765, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !23765, !noundef !8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !23765
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !23765
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !23765, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23765
  store i64 %i.l, ptr %i.c, align 8, !noalias !23765
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !23765
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !23765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23768
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !23768
  store ptr %i.r, ptr %i.a, align 8, !noalias !23768
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !23768
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4j_14PrimitiveArrayNtNtB4n_5types9Int32TypeEINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionlEE9from_iterBX_E0ENtNtB62_8iterator8Iterator4folduNCINvNvB7f_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8k_3VeclE14extend_trustedBN_E0E0EB2G_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5I_14PrimitiveArrayNtNtB5M_5types9Int32TypeEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB45_.exit unwind label %bb.c, !noalias !23767

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d, !noalias !23765

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23765
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5I_14PrimitiveArrayNtNtB5M_5types9Int32TypeEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB45_.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !23762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23765
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5t_14PrimitiveArrayNtNtB5x_5types10Date32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionlEE9from_iterB25_E0EE9from_iterB3Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23778
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !23775, !noalias !23780, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !23775, !noalias !23780, !nonnull !8, !noundef !8
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23778
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !23778
  %i.i = load i64, ptr %i.b, align 8, !range !79, !noalias !23778, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !23778, !noundef !8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types10Date32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !23778
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !23778
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types10Date32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !23778, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23778
  store i64 %i.l, ptr %i.c, align 8, !noalias !23778
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !23778
end_hunk_0
