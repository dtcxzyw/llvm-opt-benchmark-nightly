Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.05?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types10UInt32TypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB1T_6option6OptionmEE9from_iterINtNtB1R_8adapters12GenericShuntINtNtB3n_3map3MapINtNtB3n_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B5o_B5m_13iter_to_arrayINtB4D_3VecB5m_EEsg_0EINtNtB1T_6result6ResultNtNtB1T_7convert10InfallibleNtNtB5q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.s = icmp samesign ult i64 %i.r, %.sroa.06.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %bb.f, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i35 = phi i64 [ %.sroa.06.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12775
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i35, i64 noundef 128) #41, !noalias !12775 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.split.i.thread
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i35) #37
          to label %.noexc22 unwind label %bb.t

.noexc22:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.split.i, %.split.i.thread
  %.sroa.4.0.i36 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i35, %.split.i.thread ]
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.i.thread ]
  store i64 128, ptr %i.i, align 16
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.4.0.i36, ptr %.sroa.4.0..sroa_idx29, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.5.0..sroa_idx30, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.g, ptr noundef nonnull align 16 dereferenceable(128) %i.k, i64 128, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr %i.i, ptr %i.w, align 16, !alias.scope !12778, !noalias !12781
  invoke void @_RINvXsh_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB6_6BufferINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB1c_8adapters3map3MapINtB2m_12GenericShuntIB2i_INtNtB2m_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B4q_B4o_13iter_to_arrayINtB3F_3VecB4o_EEsg_0EINtNtB1e_6result6ResultNtNtB1e_7convert10InfallibleNtNtB4s_5error15DataFusionErrorEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7I_14PrimitiveArrayNtNtB7M_5types10UInt32TypeEIB16_INtNtB1e_6option6OptionmEE9from_iterB2J_E0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.g)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.y = load i64, ptr %i.x, align 16, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = load ptr, ptr %.sroa.5.0..sroa_idx30, align 16, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.z, ptr %i.ac, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.aa, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ad = load <2 x i64>, ptr %i.i, align 16
  store <2 x i64> %i.ad, ptr %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12784
  %i.ae = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !12784 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.k, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %bb.p unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ai = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #41 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit25, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.l
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit25: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.an, align 8
  call void @_RNvMNtCs3v6NujDNJcu_10arrow_data4dataNtB2_9ArrayData13new_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef 0, i64 undef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !12787
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #42
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.r, %bb.n, %bb.t, %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.m
  %.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !12796)
  call void @llvm.experimental.noalias.scope.decl(metadata !12799)
  call void @llvm.experimental.noalias.scope.decl(metadata !12802)
  %i.as = load ptr, ptr %i.h, align 8, !alias.scope !12805, !nonnull !9, !noundef !9
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !12805
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #42
          to label %.thread unwind label %bb.o

bb.s:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.thread unwind label %bb.o

.thread:                                          ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.pn17.pn.pn33 = phi { ptr, i32 } [ %i.aw, %bb.t ], [ %i.av, %bb.s ], [ %.pn.ph, %bb.q ], [ %.pn.ph, %bb.r ]
  resume { ptr, i32 } %.pn17.pn.pn33

bb.t:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2O_B2M_13iter_to_arrayINtB23_3VecB2M_EEsg_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB2Q_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.k) #38
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types10UInt32TypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB1T_6option6OptionmEE9from_iterINtNtNtB1R_8adapters3map3MapINtNtNtB1T_3ops5range5RangejENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0EEB4n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [136 x i8], align 8               ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 16               ; 10 uses
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload30 = load i64, ptr %.sroa.4.0..sroa_idx29, align 8, !alias.scope !12806 ; 3 uses
  %.sroa.5.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload33 = load i64, ptr %.sroa.5.0..sroa_idx32, align 8, !alias.scope !12806 ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.5.0.copyload33, i64 %.sroa.4.0.copyload30) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = lshr i64 %spec.select.i.i, 3
  %i.k = and i64 %spec.select.i.i, 7
  %.not = icmp ne i64 %i.k, 0
  %i.l = zext i1 %.not to i64
  %.sroa.06.0 = add nuw nsw i64 %i.j, %i.l        ; 4 uses
  %i.m = and i64 %.sroa.06.0, 63
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub.i = and i64 %.sroa.06.0, 4611686018427387840
  %i.o = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, %.sroa.06.0
  br i1 %i.p, label %bb.c, label %.split.i.thread, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40, !noalias !12810
  unreachable

.split.i:                                         ; preds = %bb.a
  %.not63 = icmp ugt i64 %.sroa.5.0.copyload33, %.sroa.4.0.copyload30
  br i1 %.not63, label %.split.i.thread, label %bb.e

.split.i.thread:                                  ; preds = %bb.b, %.split.i
  %.sroa.4.0.i44.a = phi i64 [ %.sroa.06.0, %.split.i ], [ %i.o, %bb.b ] ; 3 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12810
  %i.q = tail call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i44.a, i64 noundef 128) #41, !noalias !12810 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %.split.i.thread
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i44.a) #37, !noalias !12810
  unreachable

bb.e:                                             ; preds = %.split.i.thread, %.split.i
  %.sroa.4.0.i45 = phi i64 [ 0, %.split.i ], [ %.sroa.4.0.i44.a, %.split.i.thread ]
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.q, %.split.i.thread ]
  store i64 128, ptr %i.i, align 16
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.4.0.i45, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.542.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %2 = load i64, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12813)
  store i64 %2, ptr %i.g, align 8, !alias.scope !12816, !noalias !12818
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.4.0.copyload30, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !12816, !noalias !12818
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.5.0.copyload33, ptr %.sroa.539.0..sroa_idx, align 8, !alias.scope !12816, !noalias !12818
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.i, ptr %i.s, align 8, !alias.scope !12820, !noalias !12821
  invoke void @_RINvXsh_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB6_6BufferINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB1c_8adapters3map3MapIB2i_INtNtNtB1e_3ops5range5RangejENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4U_14PrimitiveArrayNtNtB4Y_5types10UInt32TypeEIB16_INtNtB1e_6option6OptionmEE9from_iterB2J_E0EEB3p_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.u = load i64, ptr %i.t, align 16, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = load ptr, ptr %.sroa.542.0..sroa_idx, align 16, !nonnull !9, !noundef !9 ; 2 uses
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.v, ptr %i.y, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.w, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = load <2 x i64>, ptr %i.i, align 16
  store <2 x i64> %i.z, ptr %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12822
  %i.aa = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !12822 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.j, !prof !10

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %bb.o unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.aa, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ae = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #41 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.k, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit23, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc22 unwind label %bb.l

.noexc22:                                         ; preds = %bb.k
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit23: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.aj, align 8
  call void @_RNvMNtCs3v6NujDNJcu_10arrow_data4dataNtB2_9ArrayData13new_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.u, i64 noundef 0, i64 undef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !12825
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #42
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.q, %bb.m, %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.m, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !12834)
  call void @llvm.experimental.noalias.scope.decl(metadata !12837)
  call void @llvm.experimental.noalias.scope.decl(metadata !12840)
  %i.ao = load ptr, ptr %i.h, align 8, !alias.scope !12843, !nonnull !9, !noundef !9
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !12843
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.r:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.pn17.pn48 = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %.pn.ph, %bb.p ], [ %.pn.ph, %bb.q ]
  resume { ptr, i32 } %.pn17.pn48
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types10UInt64TypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB1T_6option6OptionyEE9from_iterINtNtB1R_8adapters12GenericShuntINtNtB3n_3map3MapINtNtB3n_8peekable8PeekableIB3R_INtNtNtB1T_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB5a_11transaction5stateNtB6c_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB7q_11ScalarValue13iter_to_arrayB4y_Esh_0EINtNtB1T_6result6ResultNtNtB1T_7convert10InfallibleNtNtB7s_5error15DataFusionErrorEEEB5c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [136 x i8], align 8               ; 2 uses
  %i.g = alloca [160 x i8], align 16              ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 16               ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [144 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.k, ptr noundef nonnull readonly align 16 dereferenceable(144) %1, i64 144, i1 false), !alias.scope !12844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.k)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.l, 7
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.06.0 = add nuw nsw i64 %i.m, %i.o        ; 4 uses
  %i.p = and i64 %.sroa.06.0, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.06.0, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.06.0
  br i1 %i.s, label %bb.d, label %.split.i.thread, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %bb.f, label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.c, %.split.i
  %.sroa.4.0.i36 = phi i64 [ %.sroa.06.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12848
  %i.u = call noundef align 128 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i36, i64 noundef 128) #41, !noalias !12848 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.f, !prof !10

end_hunk_0
