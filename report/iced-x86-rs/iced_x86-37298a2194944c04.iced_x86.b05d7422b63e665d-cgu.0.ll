Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB13_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EE3getNvNvXNtNtB2q_3gas12mem_size_tblNtB3v_12MEM_SIZE_TBLNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2s_:bb.a
  %i.ai = icmp ult i64 %i.as, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.as, 162
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i = icmp eq ptr %.sroa.410.0.copyload.i.i.i, null
  %i.ak = inttoptr i64 %i.as to ptr
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = icmp eq i64 %i.as, 0
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.q
  %i.am = shl nuw nsw i64 %i.as, 3
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.sink.split.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.03.0.i39.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i, %bb.o ], [ %i.ak, %bb.p ] ; 2 uses
  %.not25.i.i.i = icmp eq ptr %.sroa.03.0.i39.i.i, null
  br i1 %.not25.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.i.i, label %_RNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB5_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EE3getNvNvXNtNtB1r_3gas12mem_size_tblNtB2w_12MEM_SIZE_TBLNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0B1t_.exit, !prof !33

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.sink.split.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.k
  %.sink.i.i = phi i64 [ %i.am, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.ac, %bb.k ]
  %.sroa.410.0.copyload.i.sink.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.k ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i.sink.i.i, i64 noundef %.sink.i.i, i64 noundef 8) #41, !noalias !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.thread68.sink.split.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.i.i, %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11226) #46
  unreachable

bb.r:                                             ; preds = %bb.s
  unreachable

bb.s:                                             ; preds = %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11227) #46
          to label %bb.r unwind label %.thread.loopexit.split-lp.i.i

switch.lookup:                                    ; preds = %bb.i
  %i.an = zext nneg i8 %i.z to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB13_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EE3getNvNvXNtNtB2q_3gas12mem_size_tblNtB3v_12MEM_SIZE_TBLNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2s_, i64 %i.an
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  %i.ao = load i64, ptr %i.e, align 8, !range !22, !alias.scope !3222, !noalias !3223, !noundef !21
  %i.ap = icmp eq i64 %i.v, %i.ao
  br i1 %i.ap, label %bb.t, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6.i.i

bb.t:                                             ; preds = %switch.lookup
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #44
          to label %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6_crit_edge.i.i unwind label %.thread.loopexit.i.i

._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6_crit_edge.i.i: ; preds = %bb.t
  %.pre63.i.i = load ptr, ptr %i.j, align 8, !alias.scope !3222, !noalias !3223
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6.i.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6.i.i: ; preds = %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6_crit_edge.i.i, %switch.lookup
  %i.aq = phi ptr [ %.pre63.i.i, %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE8push_mutBK_.exit6_crit_edge.i.i ], [ %i.u, %switch.lookup ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.v
  store ptr %switch.load, ptr %i.ar, align 8, !noalias !3224, !captures !36
  %i.as = add i64 %i.v, 1                         ; 10 uses
  store i64 %i.as, ptr %i.k, align 8, !alias.scope !3222, !noalias !3223
  %.not.i3.not.i.i = icmp eq i64 %i.x, 50
  br i1 %.not.i3.not.i.i, label %bb.j, label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1d_.exit.i.i: ; preds = %bb.u, %.thread25.i.i, %.thread22.i.i
  %.pn.i20.i.i = phi { ptr, i32 } [ %i.ah, %.thread22.i.i ], [ %.pn.i21.i.i, %bb.u ], [ %.pn.i21.i.i, %.thread25.i.i ]
  resume { ptr, i32 } %.pn.i20.i.i

.thread25.i.i:                                    ; preds = %.thread.loopexit.split-lp.i.i, %.thread.loopexit.i.i, %.thread25.loopexit.split-lp.i.i, %.thread25.loopexit.i.i
  %.pn.i21.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp56.i.i, %.thread25.loopexit.split-lp.i.i ], [ %lpad.loopexit55.i.i, %.thread25.loopexit.i.i ], [ %lpad.loopexit.i.i, %.thread.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread.loopexit.split-lp.i.i ] ; 2 uses
  %.val.i.i = load i64, ptr %i.e, align 8         ; 2 uses
  %i.at = icmp eq i64 %.val.i.i, 0
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1d_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.thread25.i.i
  %.val1.i.i = load ptr, ptr %i.j, align 8, !nonnull !21, !noundef !21
  %i.au = shl nuw i64 %.val.i.i, 3
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1d_.exit.i.i

_RNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB5_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EE3getNvNvXNtNtB1r_3gas12mem_size_tblNtB2w_12MEM_SIZE_TBLNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0B1t_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringja2_EIBY_SB1x_EEEB1C_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.03.0.i39.i.i, ptr %.val, align 8
  ret void

bb.v:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB13_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EE3getNvNvXNtB2s_14handlers_tableNtB3M_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !25, !noundef !21 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.dv, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8, !nonnull !21, !align !25, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3270
  %i.d = tail call noundef align 8 dereferenceable_or_null(39488) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 39488, i64 noundef range(i64 1, 9) 8) #41, !noalias !3270 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 39488) #46
  unreachable

.body.i.thread291.loopexit.i.i:                   ; preds = %bb.dh
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.i.i

.body.i.thread291.loopexit.split-lp.i.i:          ; preds = %.invoke.i.i, %bb.by
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.i.i

bb.d:                                             ; preds = %bb.b
  store i64 4936, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.g, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3271
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3271 ; 11 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler14InvalidHandlerE3newBK_.exit.i.i.i, !prof !26

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.i.i

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler14InvalidHandlerE3newBK_.exit.i.i.i: ; preds = %bb.d
  store ptr @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handlerNtB2_14InvalidHandler6encode, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 -1, ptr %.sroa.10.0..sroa_idx.i.i, align 4
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 -1, ptr %.sroa.11.0..sroa_idx.i.i, align 8
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i64 0, ptr %.sroa.12.0..sroa_idx.i.i, align 4
  br label %bb.k

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i
  %.sroa.0273.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.4274.0.copyload.i.i = load ptr, ptr %i.f, align 8 ; 5 uses
  %i.k = icmp ugt i64 %.sroa.0273.0.copyload.i.i, 4936
  br i1 %i.k, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EIBY_SB1x_EEEB1E_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4274.0.copyload.i.i) ]
  %i.l = shl nuw i64 %.sroa.0273.0.copyload.i.i, 3 ; 2 uses
  %i.m = tail call noundef align 8 dereferenceable_or_null(39488) ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4274.0.copyload.i.i, i64 noundef %i.l, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 1, 0) 39488) #41, !noalias !3272 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %_RNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB5_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EE3getNvNvXNtB1t_14handlers_tableNtB2N_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0B1v_.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 39488) #46
          to label %bb.j unwind label %.body.i.thread287.i.i, !noalias !3273

bb.j:                                             ; preds = %bb.i
  unreachable

.body.i.thread287.i.i:                            ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4274.0.copyload.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3273
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerEEB1f_.exit.i.i

bb.k:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler14InvalidHandlerE3newBK_.exit.i.i.i
  %i.p = phi ptr [ %i.d, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler14InvalidHandlerE3newBK_.exit.i.i.i ], [ %i.nb, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i ]
  %i.q = phi i64 [ 0, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler14InvalidHandlerE3newBK_.exit.i.i.i ], [ %i.r, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i ] ; 10 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder12encoder_data10ENC_FLAGS1, i64 %i.q
  %i.t = load i32, ptr %i.s, align 4, !noundef !21 ; 17 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder12encoder_data10ENC_FLAGS2, i64 %i.q
  %i.v = load i32, ptr %i.u, align 4, !noundef !21 ; 32 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder12encoder_data10ENC_FLAGS3, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !noundef !21 ; 13 uses
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 7                           ; 2 uses
  %i.aa = icmp samesign ult i8 %i.z, 6
  tail call void @llvm.assume(i1 %i.aa)
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %switch.lookup
    i8 3, label %bb.az
    i8 4, label %bb.bx
    i8 5, label %bb.dg
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EIBY_SB1x_EEEB1E_.exit.i.i: ; preds = %bb.g
  %.not12.i.i.i = icmp eq ptr %.sroa.4274.0.copyload.i.i, null
  br i1 %.not12.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EIBY_SB1x_EEEB1E_.exit.thread481.i.i, label %_RNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB5_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EE3getNvNvXNtB1t_14handlers_tableNtB2N_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0B1v_.exit, !prof !33

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EIBY_SB1x_EEEB1E_.exit.thread481.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EIBY_SB1x_EEEB1E_.exit.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11102) #46
  unreachable

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.q, 0
  br i1 %i.ab, label %bb.dg, label %bb.bz

bb.m:                                             ; preds = %bb.k
  %i.ac = lshr i32 %i.v, 24
  %i.ad = trunc nuw i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 7                         ; 3 uses
  %i.af = icmp ne i8 %i.ae, 7
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = and i32 %i.t, 63                        ; 7 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 10 uses
  %i.ai = lshr i32 %i.t, 6
  %i.aj = and i32 %i.ai, 63                       ; 6 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 8 uses
  %i.al = lshr i32 %i.t, 12
  %i.am = and i32 %i.al, 63                       ; 5 uses
  %i.an = zext nneg i32 %i.am to i64              ; 6 uses
  %i.ao = lshr i32 %i.t, 18
  %i.ap = and i32 %i.ao, 63                       ; 4 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 4 uses
  %i.ar = lshr i32 %i.t, 24
  %i.as = and i32 %i.ar, 63                       ; 3 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = icmp eq i32 %i.as, 0
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = icmp eq i32 %i.ap, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3274
  %i.aw = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3274 ; 8 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.invoke.i.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.o
  %i.ay = icmp samesign ult i32 %i.ag, 39
  br i1 %i.ay, label %bb.am, label %.invoke55.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.az = icmp eq i32 %i.am, 0
  br i1 %i.az, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3274
  %i.ba = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3274 ; 7 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.invoke.i.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit34.i.i.i, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit34.i.i.i: ; preds = %bb.q
  %i.bc = icmp samesign ult i32 %i.ag, 39
  br i1 %i.bc, label %bb.ah, label %.invoke53.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bd = icmp eq i32 %i.aj, 0
  br i1 %i.bd, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3274
  %i.be = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3274 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.invoke.i.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35.i.i.i, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35.i.i.i: ; preds = %bb.s
  %i.bg = icmp samesign ult i32 %i.ag, 39
  br i1 %i.bg, label %bb.ad, label %.invoke51.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bh = icmp eq i32 %i.ag, 0
  br i1 %i.bh, label %bb.di, label %bb.v

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3274
  %i.bi = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3274 ; 5 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.invoke.i.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit36.i.i.i, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit36.i.i.i: ; preds = %bb.u
  %i.bk = icmp samesign ult i32 %i.ag, 39
  br i1 %i.bk, label %bb.aa, label %.invoke.i.i.i

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bl = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.invoke.i.i, label %.noexc33.i.i, !prof !26

.noexc33.i.i:                                     ; preds = %bb.v
  %i.bn = icmp samesign ult i32 %i.ag, 39
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc33.i.i
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables9VEX_TABLE, i64 %i.ah
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !noalias !3274
  store <2 x ptr> %i.bp, ptr %i.bl, align 8, !noalias !3274
  br label %bb.di

bb.x:                                             ; preds = %.noexc33.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #46
          to label %bb.z unwind label %bb.y, !noalias !3274

bb.y:                                             ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 16, i64 noundef 8) #41, !noalias !3274
  br label %.body.i.thread.i.i

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit36.i.i.i
  %i.br = icmp samesign ult i32 %i.aj, 39
  br i1 %i.br, label %bb.ac, label %.invoke.i.i.i

bb.ab:                                            ; preds = %.invoke.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef 32, i64 noundef 8) #41, !noalias !3274
  br label %.body.i.thread.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables9VEX_TABLE, i64 %i.ah
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables9VEX_TABLE, i64 %i.ak
  %i.bv = load <2 x ptr>, ptr %i.bt, align 8, !noalias !3274
  store <2 x ptr> %i.bv, ptr %i.bi, align 8, !noalias !3274
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8, !noalias !3274
  store <2 x ptr> %i.bx, ptr %i.bw, align 8, !noalias !3274
  br label %bb.di

.invoke.i.i.i:                                    ; preds = %bb.aa, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit36.i.i.i
  %i.by = phi i64 [ %i.ak, %bb.aa ], [ %i.ah, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit36.i.i.i ]
  %i.bz = phi ptr [ @311, %bb.aa ], [ @310, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit36.i.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #46
          to label %.cont.i.i.i unwind label %bb.ab, !noalias !3274

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ad:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35.i.i.i
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables9VEX_TABLE, i64 %i.ah
  %i.cb = load <2 x ptr>, ptr %i.ca, align 8, !noalias !3274
  %i.cc = icmp samesign ult i32 %i.aj, 39
  br i1 %i.cc, label %bb.af, label %.invoke51.i.i.i

bb.ae:                                            ; preds = %.invoke51.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 48, i64 noundef 8) #41, !noalias !3274
  br label %.body.i.thread.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ce = icmp samesign ult i32 %i.am, 39
  br i1 %i.ce, label %bb.ag, label %.invoke51.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables9VEX_TABLE, i64 %i.ak
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables9VEX_TABLE, i64 %i.an
  store <2 x ptr> %i.cb, ptr %i.be, align 8, !noalias !3274
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ci = load <2 x ptr>, ptr %i.cf, align 8, !noalias !3274
  store <2 x ptr> %i.ci, ptr %i.ch, align 8, !noalias !3274
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.ck = load <2 x ptr>, ptr %i.cg, align 8, !noalias !3274
  store <2 x ptr> %i.ck, ptr %i.cj, align 8, !noalias !3274
  br label %bb.di

.invoke51.i.i.i:                                  ; preds = %bb.af, %bb.ad, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35.i.i.i
  %i.cl = phi i64 [ %i.ak, %bb.ad ], [ %i.an, %bb.af ], [ %i.ah, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35.i.i.i ]
  %i.cm = phi ptr [ @313, %bb.ad ], [ @314, %bb.af ], [ @312, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit35.i.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #46
          to label %.cont52.i.i.i unwind label %bb.ae, !noalias !3274

.cont52.i.i.i:                                    ; preds = %.invoke51.i.i.i
  unreachable
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB13_4LazyINtNtCsexYYUdYSQU6_5alloc5boxed3BoxARNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerj1348_EE3getNvNvXNtB2s_14handlers_tableNtB3M_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2u_:bb.a
  br i1 %i.ko, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit24.i139.i.i
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jo
  %i.kq = load <2 x ptr>, ptr %i.kp, align 8, !noalias !3279
  store <2 x ptr> %i.kq, ptr %i.km, align 8, !noalias !3279
  br label %bb.db

bb.cj:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit24.i139.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jo, i64 noundef 76, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #46
          to label %bb.cl unwind label %bb.ck, !noalias !3279

bb.ck:                                            ; preds = %bb.cj
  %i.kr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.km, i64 noundef 16, i64 noundef 8) #41, !noalias !3279
  br label %.body.i.thread.i.i

bb.cl:                                            ; preds = %bb.cj
  unreachable

bb.cm:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit23.i136.i.i
  %i.ks = icmp samesign ult i32 %i.jq, 76
  br i1 %i.ks, label %bb.co, label %.invoke.i137.i.i

bb.cn:                                            ; preds = %.invoke.i137.i.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ki, i64 noundef 32, i64 noundef 8) #41, !noalias !3279
  br label %.body.i.thread.i.i

bb.co:                                            ; preds = %bb.cm
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jo
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jr
  %i.kw = load <2 x ptr>, ptr %i.ku, align 8, !noalias !3279
  store <2 x ptr> %i.kw, ptr %i.ki, align 8, !noalias !3279
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.ky = load <2 x ptr>, ptr %i.kv, align 8, !noalias !3279
  store <2 x ptr> %i.ky, ptr %i.kx, align 8, !noalias !3279
  br label %bb.db

.invoke.i137.i.i:                                 ; preds = %bb.cm, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit23.i136.i.i
  %i.kz = phi i64 [ %i.jr, %bb.cm ], [ %i.jo, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit23.i136.i.i ]
  %i.la = phi ptr [ @295, %bb.cm ], [ @294, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit23.i136.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef 76, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.la) #46
          to label %.cont.i138.i.i unwind label %bb.cn, !noalias !3279

.cont.i138.i.i:                                   ; preds = %.invoke.i137.i.i
  unreachable

bb.cp:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit22.i135.i.i
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jo
  %i.lc = load <2 x ptr>, ptr %i.lb, align 8, !noalias !3279
  %i.ld = icmp samesign ult i32 %i.jq, 76
  br i1 %i.ld, label %bb.cr, label %.invoke38.i.i.i

bb.cq:                                            ; preds = %.invoke38.i.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ke, i64 noundef 48, i64 noundef 8) #41, !noalias !3279
  br label %.body.i.thread.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.lf = icmp samesign ult i32 %i.jt, 76
  br i1 %i.lf, label %bb.cs, label %.invoke38.i.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jr
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.ju
  store <2 x ptr> %i.lc, ptr %i.ke, align 8, !noalias !3279
  %i.li = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.lj = load <2 x ptr>, ptr %i.lg, align 8, !noalias !3279
  store <2 x ptr> %i.lj, ptr %i.li, align 8, !noalias !3279
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.ll = load <2 x ptr>, ptr %i.lh, align 8, !noalias !3279
  store <2 x ptr> %i.ll, ptr %i.lk, align 8, !noalias !3279
  br label %bb.db

.invoke38.i.i.i:                                  ; preds = %bb.cr, %bb.cp, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit22.i135.i.i
  %i.lm = phi i64 [ %i.jr, %bb.cp ], [ %i.ju, %bb.cr ], [ %i.jo, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit22.i135.i.i ]
  %i.ln = phi ptr [ @297, %bb.cp ], [ @298, %bb.cr ], [ @296, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit22.i135.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.lm, i64 noundef 76, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ln) #46
          to label %.cont39.i.i.i unwind label %bb.cq, !noalias !3279

.cont39.i.i.i:                                    ; preds = %.invoke38.i.i.i
  unreachable

bb.ct:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i118.i.i
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jo
  %i.lp = load <2 x ptr>, ptr %i.lo, align 8, !noalias !3279
  %i.lq = icmp samesign ult i32 %i.jq, 76
  br i1 %i.lq, label %bb.cv, label %.invoke40.i.i.i

bb.cu:                                            ; preds = %.invoke40.i.i.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ka, i64 noundef 64, i64 noundef 8) #41, !noalias !3279
  br label %.body.i.thread.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jr
  %i.lt = load <2 x ptr>, ptr %i.ls, align 8, !noalias !3279
  %i.lu = icmp samesign ult i32 %i.jt, 76
  br i1 %i.lu, label %bb.cw, label %.invoke40.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.lv = icmp samesign ult i32 %i.jw, 76
  br i1 %i.lv, label %bb.cx, label %.invoke40.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.ju
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867encoder10ops_tables12LEGACY_TABLE, i64 %i.jx
  store <2 x ptr> %i.lp, ptr %i.ka, align 8, !noalias !3279
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <2 x ptr> %i.lt, ptr %i.ly, align 8, !noalias !3279
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.ma = load <2 x ptr>, ptr %i.lw, align 8, !noalias !3279
  store <2 x ptr> %i.ma, ptr %i.lz, align 8, !noalias !3279
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.mc = load <2 x ptr>, ptr %i.lx, align 8, !noalias !3279
  store <2 x ptr> %i.mc, ptr %i.mb, align 8, !noalias !3279
  br label %bb.db

.invoke40.i.i.i:                                  ; preds = %bb.cw, %bb.cv, %bb.ct, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i118.i.i
  %i.md = phi i64 [ %i.ju, %bb.cv ], [ %i.jr, %bb.ct ], [ %i.jx, %bb.cw ], [ %i.jo, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i118.i.i ]
  %i.me = phi ptr [ @301, %bb.cv ], [ @300, %bb.ct ], [ @302, %bb.cw ], [ @299, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i118.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.md, i64 noundef 76, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.me) #46
          to label %.cont41.i.i.i unwind label %bb.cu, !noalias !3279

.cont41.i.i.i:                                    ; preds = %.invoke40.i.i.i
  unreachable

bb.cy:                                            ; preds = %bb.ca
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3280
  %i.mf = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3280 ; 11 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.cz, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler16ZeroBytesHandlerE3newBK_.exit.i.i.i, !prof !26

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc147.i.i unwind label %bb.da

.noexc147.i.i:                                    ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.i.i

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler16ZeroBytesHandlerE3newBK_.exit.i.i.i: ; preds = %bb.cy
  store ptr @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handlerNtB5_16ZeroBytesHandler6encode, ptr %i.mf, align 8
  %.sroa.4182.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr null, ptr %.sroa.4182.0..sroa_idx.i.i, align 8
  %.sroa.5183.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5183.0..sroa_idx.i.i, align 8
  %.sroa.7184.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store i64 0, ptr %.sroa.7184.0..sroa_idx.i.i, align 8
  %.sroa.9185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  store i32 0, ptr %.sroa.9185.0..sroa_idx.i.i, align 8
  %.sroa.10186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 36
  store i32 -1, ptr %.sroa.10186.0..sroa_idx.i.i, align 4
  %.sroa.11187.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  store i32 -1, ptr %.sroa.11187.0..sroa_idx.i.i, align 8
  %.sroa.12188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.12188.0..sroa_idx.i.i, i8 0, i64 7, i1 false)
  %.sroa.13189.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 51
  store i8 1, ptr %.sroa.13189.0..sroa_idx.i.i, align 1
  br label %bb.dg

bb.db:                                            ; preds = %bb.cx, %bb.cs, %bb.co, %bb.ci, %bb.cf
  %i.mi = phi i1 [ false, %bb.cx ], [ false, %bb.ci ], [ false, %bb.co ], [ false, %bb.cs ], [ true, %bb.cf ]
  %.sroa.13.0.i120.i.i = phi i64 [ 4, %bb.cx ], [ 1, %bb.ci ], [ 2, %bb.co ], [ 3, %bb.cs ], [ 0, %bb.cf ] ; 2 uses
  %.sroa.6.0.i121.i.i = phi ptr [ %i.ka, %bb.cx ], [ %i.km, %bb.ci ], [ %i.ki, %bb.co ], [ %i.ke, %bb.cs ], [ inttoptr (i64 8 to ptr), %bb.cf ] ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3281
  %i.mj = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3281 ; 17 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.dc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13LegacyHandlerE3newBK_.exit.i.i.i, !prof !26

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc150.i.i unwind label %bb.dd

.noexc150.i.i:                                    ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.mi, label %.body.i.thread.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i152.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i152.i.i: ; preds = %bb.dd
  %i.mm = shl nuw nsw i64 %.sroa.13.0.i120.i.i, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i121.i.i, i64 noundef %i.mm, i64 noundef 8) #41
  br label %.body.i.thread.i.i

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13LegacyHandlerE3newBK_.exit.i.i.i: ; preds = %bb.db
  %i.mn = lshr i32 %i.v, 16
  %i.mo = trunc i32 %i.mn to i8
  %i.mp = and i8 %i.mo, 1
  %2 = lshr i32 %i.x, 5
  %3 = trunc i32 %2 to i8
  %i.mq = and i8 %3, 3
  %4 = lshr i32 %i.x, 3
  %5 = trunc i32 %4 to i8
  %i.mr = and i8 %5, 3
  %i.ms = and i32 %i.v, 65535
  %i.mt = icmp sgt i32 %i.v, -1
  %i.mu = lshr i32 %i.v, 27
  %i.mv = and i32 %i.mu, 7                        ; 2 uses
  %.sroa.0.0.i123.i.i = select i1 %i.mt, i32 -1, i32 %i.mv
  %i.mw = and i32 %i.x, 8192
  %i.mx = icmp eq i32 %i.mw, 0
  %.sroa.01.0.i122.i.i = select i1 %i.mx, i32 -1, i32 %i.mv
  store ptr @_RNvMs1_NtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handlerNtB5_13LegacyHandler6encode, ptr %i.mj, align 8
  %.sroa.4192.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr null, ptr %.sroa.4192.0..sroa_idx.i.i, align 8
  %.sroa.5193.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store ptr %.sroa.6.0.i121.i.i, ptr %.sroa.5193.0..sroa_idx.i.i, align 8
  %.sroa.7194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  store i64 %.sroa.13.0.i120.i.i, ptr %.sroa.7194.0..sroa_idx.i.i, align 8
  %.sroa.9195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  store i32 %i.ms, ptr %.sroa.9195.0..sroa_idx.i.i, align 8
  %.sroa.10196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 36
  store i32 %.sroa.0.0.i123.i.i, ptr %.sroa.10196.0..sroa_idx.i.i, align 4
  %.sroa.11197.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  store i32 %.sroa.01.0.i122.i.i, ptr %.sroa.11197.0..sroa_idx.i.i, align 8
  %.sroa.12198.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 44
  store i32 %i.x, ptr %.sroa.12198.0..sroa_idx.i.i, align 4
  %.sroa.13199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  store i8 %i.mr, ptr %.sroa.13199.0..sroa_idx.i.i, align 8
  %.sroa.14200.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 49
  store i8 %i.mq, ptr %.sroa.14200.0..sroa_idx.i.i, align 1
  %.sroa.15201.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 50
  store i8 %i.mp, ptr %.sroa.15201.0..sroa_idx.i.i, align 2
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 51
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i, align 1
  %.sroa.17202.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  store i32 %switch.ext191, ptr %.sroa.17202.0..sroa_idx.i.i, align 8
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 60
  store i32 %switch.ext194, ptr %.sroa.18.0..sroa_idx.i.i, align 4
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 64
  store i32 %switch.ext198, ptr %.sroa.19.0..sroa_idx.i.i, align 8
  br label %bb.dg

bb.de:                                            ; preds = %switch.lookup184
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc153.i.i unwind label %bb.df

.noexc153.i.i:                                    ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.de
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.i.i

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler18DeclareDataHandlerE3newBK_.exit.i.i.i: ; preds = %switch.lookup184
  %switch.ext187 = zext i8 %switch.load186 to i32
  store ptr @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handlerNtB4_18DeclareDataHandler6encode, ptr %i.jc, align 8
  %.sroa.4172.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr null, ptr %.sroa.4172.0..sroa_idx.i.i, align 8
  %.sroa.5173.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5173.0..sroa_idx.i.i, align 8
  %.sroa.7174.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store i64 0, ptr %.sroa.7174.0..sroa_idx.i.i, align 8
  %.sroa.9175.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store i32 0, ptr %.sroa.9175.0..sroa_idx.i.i, align 8
  %.sroa.10176.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 36
  store i32 -1, ptr %.sroa.10176.0..sroa_idx.i.i, align 4
  %.sroa.11177.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  store i32 -1, ptr %.sroa.11177.0..sroa_idx.i.i, align 8
  %.sroa.12178.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.12178.0..sroa_idx.i.i, i8 0, i64 7, i1 false)
  %.sroa.13179.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 51
  store i8 1, ptr %.sroa.13179.0..sroa_idx.i.i, align 1
  %.sroa.14180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  store i32 %switch.ext187, ptr %.sroa.14180.0..sroa_idx.i.i, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler12D3nowHandlerE3newBK_.exit.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler10XopHandlerE3newBK_.exit.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler11EvexHandlerE3newBK_.exit.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler10VexHandlerE3newBK_.exit.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler18DeclareDataHandlerE3newBK_.exit.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13LegacyHandlerE3newBK_.exit.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler16ZeroBytesHandlerE3newBK_.exit.i.i.i, %bb.l, %bb.k
  %.sroa.01.0.i.i.i = phi ptr [ %i.h, %bb.k ], [ %i.jc, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler18DeclareDataHandlerE3newBK_.exit.i.i.i ], [ %i.mf, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler16ZeroBytesHandlerE3newBK_.exit.i.i.i ], [ %i.mj, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13LegacyHandlerE3newBK_.exit.i.i.i ], [ %i.ne, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler10VexHandlerE3newBK_.exit.i.i.i ], [ %i.oj, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler11EvexHandlerE3newBK_.exit.i.i.i ], [ %i.pg, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler10XopHandlerE3newBK_.exit.i.i.i ], [ %i.qf, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler12D3nowHandlerE3newBK_.exit.i.i.i ], [ %i.h, %bb.l ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  %i.mz = load i64, ptr %i.a, align 8, !range !22, !alias.scope !3282, !noalias !3283, !noundef !21
  %i.na = icmp eq i64 %i.q, %i.mz
  br i1 %i.na, label %bb.dh, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #44
          to label %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit_crit_edge.i.i unwind label %.body.i.thread291.loopexit.i.i

._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit_crit_edge.i.i: ; preds = %bb.dh
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3282, !noalias !3283
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit.i.i: ; preds = %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit_crit_edge.i.i, %bb.dg
  %i.nb = phi ptr [ %.pre.i.i, %._RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler13OpCodeHandlerE8push_mutBM_.exit_crit_edge.i.i ], [ %i.p, %bb.dg ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.q
  store ptr %.sroa.01.0.i.i.i, ptr %i.nc, align 8, !noalias !3284, !captures !36
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !3282, !noalias !3283
  %exitcond.not.i.i = icmp eq i64 %i.r, 4936
  br i1 %exitcond.not.i.i, label %bb.g, label %bb.k

bb.di:                                            ; preds = %bb.ar, %bb.al, %bb.ag, %bb.ac, %bb.w, %bb.t
  %i.nd = phi i1 [ false, %bb.ar ], [ false, %bb.w ], [ false, %bb.ac ], [ false, %bb.ag ], [ false, %bb.al ], [ true, %bb.t ]
  %.sroa.15.0.i.i.i = phi i64 [ 5, %bb.ar ], [ 1, %bb.w ], [ 2, %bb.ac ], [ 3, %bb.ag ], [ 4, %bb.al ], [ 0, %bb.t ] ; 2 uses
  %.sroa.7.0.i.i.i = phi ptr [ %i.aw, %bb.ar ], [ %i.bl, %bb.w ], [ %i.bi, %bb.ac ], [ %i.be, %bb.ag ], [ %i.ba, %bb.al ], [ inttoptr (i64 8 to ptr), %bb.t ] ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3285
  %i.ne = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3285 ; 19 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.dj, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler10VexHandlerE3newBK_.exit.i.i.i, !prof !26

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #46
          to label %.noexc157.i.i unwind label %bb.dk

.noexc157.i.i:                                    ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.dj
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.nd, label %.body.i.thread.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i159.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i159.i.i: ; preds = %bb.dk
  %i.nh = shl nuw nsw i64 %.sroa.15.0.i.i.i, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i, i64 noundef %i.nh, i64 noundef 8) #41
  br label %.body.i.thread.i.i

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handler10VexHandlerE3newBK_.exit.i.i.i: ; preds = %bb.di
  %i.ni = lshr i32 %i.v, 17
  %i.nj = and i32 %i.ni, 7
  %i.nk = lshr i32 %i.v, 16
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = and i8 %i.nl, 1
  %i.nn = and i32 %i.v, 65535
  %i.no = lshr i32 %i.v, 22
  %i.np = and i32 %i.no, 3                        ; 2 uses
  %.not.i19.i.i = icmp eq i32 %i.np, 1            ; 2 uses
  %i.nq = add nsw i8 %i.ae, -1
  %switch.and.i.i.i = and i8 %i.nq, -5
  %switch.selectcmp.i.i.i = icmp eq i8 %switch.and.i.i.i, 0
  %i.nr = select i1 %switch.selectcmp.i.i.i, i32 4, i32 0 ; 2 uses
  %i.ns = or disjoint i32 %i.nr, 128
  %spec.select.i.i.i = select i1 %.not.i19.i.i, i32 %i.ns, i32 %i.nr
  %i.nt = lshr i32 %i.v, 20
  %i.nu = and i32 %i.nt, 3
  %i.nv = or disjoint i32 %spec.select.i.i.i, %i.nu
  %i.nw = icmp sgt i32 %i.v, -1
  %i.nx = lshr i32 %i.v, 27
  %i.ny = and i32 %i.nx, 7                        ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.nw, i32 -1, i32 %i.ny
  %i.nz = and i32 %i.x, 8192
  %i.oa = icmp eq i32 %i.nz, 0
  %.sroa.01.0.i21.i.i = select i1 %i.oa, i32 -1, i32 %i.ny
  %.sroa.02.0.i20.i.i = sext i1 %.not.i19.i.i to i32
  %i.ob = icmp eq i8 %i.ae, 2                     ; 2 uses
  %.sroa.09.0.i.i.i = select i1 %i.ob, i32 4, i32 0
  %i.oc = icmp eq i32 %i.np, 2
  %.sroa.07.0.i.i.i = select i1 %i.oc, i32 128, i32 0 ; 2 uses
  %i.od = or disjoint i32 %.sroa.07.0.i.i.i, 4
  %.sroa.07.1.i.i.i = select i1 %i.ob, i32 %i.od, i32 %.sroa.07.0.i.i.i
  store ptr @_RNvMs2_NtNtCsf8MNnN4IDbl_8iced_x867encoder15op_code_handlerNtB5_10VexHandler6encode, ptr %i.ne, align 8
  %.sroa.4204.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr null, ptr %.sroa.4204.0..sroa_idx.i.i, align 8
  %.sroa.5205.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store ptr %.sroa.7.0.i.i.i, ptr %.sroa.5205.0..sroa_idx.i.i, align 8
  %.sroa.7206.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.7206.0..sroa_idx.i.i, align 8
  %.sroa.9207.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  store i32 %i.nn, ptr %.sroa.9207.0..sroa_idx.i.i, align 8
  %.sroa.10208.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 36
  store i32 %.sroa.0.0.i.i.i, ptr %.sroa.10208.0..sroa_idx.i.i, align 4
  %.sroa.11209.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  store i32 %.sroa.01.0.i21.i.i, ptr %.sroa.11209.0..sroa_idx.i.i, align 8
  %.sroa.12210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 44
  store i32 %i.x, ptr %.sroa.12210.0..sroa_idx.i.i, align 4
  %.sroa.13211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  store i8 0, ptr %.sroa.13211.0..sroa_idx.i.i, align 8
  %.sroa.14212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 49
  store i8 0, ptr %.sroa.14212.0..sroa_idx.i.i, align 1
  %.sroa.15213.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 50
  store i8 %i.nm, ptr %.sroa.15213.0..sroa_idx.i.i, align 2
  %.sroa.16214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 51
  store i8 0, ptr %.sroa.16214.0..sroa_idx.i.i, align 1
  %.sroa.17216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  store i32 %i.nj, ptr %.sroa.17216.0..sroa_idx.i.i, align 8
  %.sroa.18217.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 60
  store i32 %i.nv, ptr %.sroa.18217.0..sroa_idx.i.i, align 4
  %.sroa.19218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  store i32 %.sroa.07.1.i.i.i, ptr %.sroa.19218.0..sroa_idx.i.i, align 8
  %.sroa.20219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 68
  store i32 %.sroa.09.0.i.i.i, ptr %.sroa.20219.0..sroa_idx.i.i, align 4
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 72
  store i32 %.sroa.02.0.i20.i.i, ptr %.sroa.21.0..sroa_idx.i.i, align 8
  br label %bb.dg

bb.dl:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit16.i.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit15.i.i.i, %bb.aw, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit14.i.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i38.i.i
  %i.oe = phi i1 [ false, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i38.i.i ], [ false, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit16.i.i.i ], [ false, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit15.i.i.i ], [ false, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit14.i.i.i ], [ true, %bb.aw ]
  %.sroa.13.0.i.i.i = phi i64 [ 4, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i38.i.i ], [ 1, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit16.i.i.i ], [ 2, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit15.i.i.i ], [ 3, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit14.i.i.i ], [ 0, %bb.aw ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.es, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i38.i.i ], [ %i.fy, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit16.i.i.i ], [ %i.fr, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit15.i.i.i ], [ %i.fg, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit14.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.aw ] ; 2 uses
  %i.of = lshr i32 %i.x, 7
  %i.og = trunc i32 %i.of to i8
  %i.oh = and i8 %i.og, 31                        ; 2 uses
  %i.oi = icmp samesign ult i8 %i.oh, 19
  tail call void @llvm.assume(i1 %i.oi)
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory20add_implied_accesses:bb.a
  %i.elk = add i64 %i.ekp, 3
  store i64 %i.elk, ptr %i.eko, align 8, !alias.scope !8521
  br label %bb.ait

bb.ait:                                           ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit2207, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit2214
  tail call fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register(i32 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(56) %2, i8 noundef 37, i8 noundef 3)
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory28command_clear_reg_reg_regmem.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory20command_clear_rflags(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !noundef !21 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.d = load i8, ptr %i.c, align 1, !noundef !21
  %i.e = icmp eq i8 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !38
  %i.h = icmp eq i8 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.j = load i8, ptr %i.i, align 1, !range !38
  %i.k = icmp eq i8 %i.j, 0
  %or.cond9 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.m, align 1
  %i.n = and i32 %2, 2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8526)
  %i.q = icmp samesign ugt i32 %2, 3
  br i1 %i.q, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %2, 4
  %i.s = icmp ne i32 %i.r, 0
  %i.t = add i8 %i.b, -37
  %i.u = icmp ult i8 %i.t, 16
  %or.cond3.i = and i1 %i.s, %i.u
  br i1 %or.cond3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = zext i8 %i.b to i32
  %i.w = add nsw i32 %i.v, -77                    ; 2 uses
  %i.x = icmp samesign ugt i32 %2, 7
  %i.y = icmp ult i32 %i.w, 96
  %or.cond5.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond5.i, label %bb.h, label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.z = add nuw nsw i8 %i.b, 16
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.aa = trunc nuw nsw i32 %i.w to i8
  %i.ab = and i8 %i.aa, 31
  %i.ac = add nuw nsw i8 %i.ab, -115
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.h, %bb.f, %bb.d
  %.sroa.0.028.i = phi i8 [ %i.b, %bb.f ], [ %i.b, %bb.d ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8527)
  %i.ad = load i64, ptr %1, align 8, !range !22, !alias.scope !8528, !noundef !21
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

bb.i:                                             ; preds = %.thread.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit: ; preds = %.thread.i, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !8528, !nonnull !21, !noundef !21 ; 2 uses
  store i8 3, ptr %i.ag, align 1, !noalias !8528
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %.sroa.0.028.i, ptr %i.ah, align 1, !noalias !8528
  store i64 1, ptr %i.p, align 8, !alias.scope !8528
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory24command_clear_reg_regmem(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !noundef !21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.d = load i8, ptr %i.c, align 1, !noundef !21
  %i.e = icmp eq i8 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.g = load i8, ptr %i.f, align 1, !range !38
  %i.h = icmp eq i8 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.j, align 1
  %i.k = and i32 %2, 2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8531)
  %i.n = load i64, ptr %1, align 8, !range !22, !alias.scope !8531, !noundef !21
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #44
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !8531, !nonnull !21, !noundef !21 ; 2 uses
  store i8 3, ptr %i.q, align 1, !noalias !8531
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.b, ptr %i.r, align 1, !noalias !8531
  store i64 1, ptr %i.m, align 8, !alias.scope !8531
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !8538
  %i.a = tail call noundef dereferenceable_or_null(20) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #41, !noalias !8538 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #46, !noalias !8539
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !8540
  %i.c = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, 9) 8) #41, !noalias !8540 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %_RNvMs2_NtCsf8MNnN4IDbl_8iced_x864infoNtB5_15InstructionInfo3new.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #46
          to label %bb.e unwind label %bb.f, !noalias !8539

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #41
  resume { ptr, i32 } %i.e

_RNvMs2_NtCsf8MNnN4IDbl_8iced_x864infoNtB5_15InstructionInfo3new.exit: ; preds = %bb.c
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.7.0..sroa_idx, i8 0, i64 5, i1 false)
  store i64 10, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory6create(ptr noalias nofree noundef returned align 8 dereferenceable(56) initializes((16, 24), (40, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i16, ptr %i.c, align 8, !range !28, !noundef !21 ; 2 uses
  %i.e = zext nneg i16 %i.d to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x864info10info_table5TABLE, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !21 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !noundef !21 ; 11 uses
  %i.l = lshr i32 %i.k, 18
  %i.m = trunc i32 %i.l to i8
  %i.n = and i8 %i.m, 3                           ; 4 uses
  %i.o = and i32 %2, 3                            ; 2 uses
  %.off = add nsw i8 %i.n, -1
  %switch = icmp ult i8 %.off, 2
  %i.p = or disjoint i32 %i.o, 4
  %spec.select106 = select i1 %switch, i32 %i.o, i32 %i.p ; 2 uses
  %i.q = and i32 %i.i, 7
  %i.r = icmp eq i32 %i.q, 0
  %i.s = or disjoint i32 %spec.select106, 8
  %spec.select = select i1 %i.r, i32 %spec.select106, i32 %i.s ; 14 uses
  %i.t = trunc i32 %i.g to i8
  %i.u = and i8 %i.t, 15                          ; 4 uses
  %i.v = icmp samesign ult i8 %i.u, 13
  tail call void @llvm.assume(i1 %i.v)
  switch i8 %i.u, label %default.unreachable217 [
    i8 0, label %bb.m
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.k
  ]

default.unreachable217:                           ; preds = %bb.ay, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.w = and i32 %spec.select, 4
  %i.x = icmp eq i32 %i.w, 0
  %. = select i1 %i.x, i8 4, i8 5
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = and i32 %i.k, 229376
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = and i32 %i.k, 268435456
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond = and i1 %i.z, %i.ab
  br i1 %or.cond, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ac = and i32 %i.k, 229376
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = and i32 %i.k, 268435456
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond3 = and i1 %i.ad, %i.af
  br i1 %or.cond3, label %bb.o, label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ag = and i32 %i.k, 229376
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = and i32 %i.k, 268435456
  %i.aj = icmp eq i32 %i.ai, 0
  %or.cond5 = and i1 %i.ah, %i.aj
  %.95 = select i1 %or.cond5, i8 6, i8 5
  br label %bb.m

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !38, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.an = load i8, ptr %i.am, align 1, !range !38, !noundef !21
  %i.ao = or i8 %i.an, %i.al
  %.not = icmp eq i8 %i.ao, 0
  %.96 = select i1 %.not, i8 5, i8 3
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.i, %bb.n, %bb.h, %bb.l, %bb.j, %bb.c, %bb.a, %bb.k, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.046.0 = phi i8 [ 3, %bb.k ], [ 4, %bb.b ], [ %.96, %bb.l ], [ %.95, %bb.j ], [ 7, %bb.d ], [ 1, %bb.e ], [ 6, %bb.f ], [ 5, %bb.g ], [ 3, %bb.h ], [ %.97, %bb.n ], [ %., %bb.c ], [ 3, %bb.i ], [ %.98, %bb.o ], [ %i.u, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 %.sroa.046.0, ptr %i.ap, align 8
  %3 = lshr i32 %i.g, 4
  %4 = trunc i32 %3 to i8
  %i.aq = and i8 %4, 7                            ; 3 uses
  %i.ar = icmp ne i8 %i.aq, 7
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x864info5enums11OP_ACCESS_1, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !range !47, !noundef !21
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = lshr i32 %i.g, 7
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = and i8 %i.ax, 3                         ; 2 uses
  %i.az = icmp ne i8 %i.ay, 3
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext nneg i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x864info5enums11OP_ACCESS_2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !range !47, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %i.bc, ptr %i.bd, align 2
  %i.be = lshr i32 %i.g, 9
  %i.bf = trunc i32 %i.be to i8
  %.sroa.047.0 = and i8 %i.bf, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %.sroa.047.0, ptr %i.bg, align 1
  %i.bh = lshr i32 %i.g, 10
  %i.bi = trunc i32 %i.bh to i8
  %.sroa.048.0 = and i8 %i.bi, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.048.0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8621instruction_op_counts8OP_COUNT, i64 %i.e
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !21 ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %.not200 = icmp eq i8 %i.bl, 0
  br i1 %.not200, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 35
  %.val119 = load i8, ptr %i.bo, align 1          ; 7 uses
  %i.bp = lshr i32 %i.k, 5
  %i.bq = and i32 %i.bp, 7                        ; 2 uses
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = icmp ult i32 %i.br, 6                   ; 2 uses
  %i.bt = trunc nuw nsw i32 %i.bq to i8
  %i.bu = add nuw nsw i8 %i.bt, 70
  %isnotneg.inv = icmp slt i32 %i.g, 0            ; 3 uses
  %i.bv = and i32 %spec.select, 1
  %i.bw = icmp eq i32 %i.bv, 0                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  %i.ca = and i32 %i.k, 67108864
  %.not.i130 = icmp eq i32 %i.ca, 0
  %.sroa.0.0.in.v.i131 = select i1 %.not.i130, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes12SIZES_NORMAL, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes10SIZES_BCST
  %.sroa.0.0.in.i132 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.v.i131, i64 %i.e ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cd = and i32 %spec.select, 2                 ; 2 uses
  %i.ce = icmp ne i32 %i.cd, 0                    ; 2 uses
  %brmerge104 = or i1 %isnotneg.inv, %i.ce        ; 2 uses
  %i.cf = and i32 %spec.select, 4
  %i.cg = icmp ne i32 %i.cf, 0                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ci = and i32 %i.g, 536870912
  %i.cj = icmp eq i32 %i.ci, 0                    ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cl = load i8, ptr %i.ck, align 4             ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 0
  %or.cond22.not209 = or i1 %i.ce, %i.cm
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.co = load i8, ptr %i.cn, align 2, !range !40
  %i.cp = shl nuw nsw i8 1, %i.co
  %i.cq = zext i8 %.val119 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal16REG_TO_ADDR_SIZE, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ct = load i8, ptr %i.cs, align 1             ; 3 uses
  %i.cu = icmp ult i8 %i.ct, 3
  %i.cv = zext nneg i8 %i.ct to i32
  %i.cw = icmp eq i8 %i.ct, 3
  %.105 = select i1 %i.cw, i32 4, i32 8
  %.sroa.068.0 = select i1 %i.cu, i32 %i.cv, i32 %.105 ; 2 uses
  %i.cx = icmp samesign ugt i32 %.sroa.068.0, 1
  %.not.i = icmp eq i8 %.val119, 0                ; 2 uses
  %i.cy = icmp eq i32 %i.cd, 0                    ; 2 uses
  %i.cz = icmp eq i8 %i.u, 12
  %i.da = icmp eq i8 %i.aq, 4
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = add i8 %i.dd, -77
  %or.cond11 = icmp ult i8 %i.de, 96
  %i.df = add i8 %i.dd, 115
  %i.dg = and i8 %i.df, -4                        ; 4 uses
  %i.dh = add i8 %i.dg, -115
  %i.di = load i8, ptr %i.db, align 4             ; 2 uses
  %i.dj = add i8 %i.di, 83                        ; 2 uses
  %or.cond8 = icmp ult i8 %i.dj, 8
  %i.dk = xor i8 %i.dj, 1
  %i.dl = add i8 %i.dk, -83
  %brmerge196 = select i1 %i.cj, i1 true, i1 %or.cond22.not209
  %.mux = select i1 %i.cj, i8 %i.cp, i8 1
  %.mux197 = select i1 %i.cj, i8 %i.cl, i8 0
  %i.dm = add i8 %i.dg, -114
  %i.dn = add i8 %i.dg, -113
  %i.do = add i8 %i.dg, -112
  %switch.tableidx = add i8 %.val119, -26         ; 2 uses
  %i.dp = icmp ult i8 %switch.tableidx, 33
  %i.dq = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.dq
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load i8, ptr %i.dr, align 8, !range !38, !noundef !21
  %.not90 = icmp eq i8 %i.ds, 0
  %.97 = select i1 %.not90, i8 5, i8 4
  br label %bb.m

bb.o:                                             ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !range !38, !noundef !21
  %.not89 = icmp eq i8 %i.du, 0
  %.98 = select i1 %.not89, i8 6, i8 4
  br label %bb.m

._crit_edge:                                      ; preds = %.backedge, %bb.m
  %i.dv = lshr i32 %i.g, 20
  %i.dw = trunc i32 %i.dv to i8                   ; 2 uses
  %i.dx = icmp ult i8 %i.dw, -55
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = and i32 %i.g, 267386880
  %.not91 = icmp eq i32 %i.dy, 0
  br i1 %.not91, label %bb.q, label %bb.r

bb.p:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.079.0193 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %.backedge ] ; 8 uses
  %i.dz = add nuw nsw i64 %.sroa.079.0193, 1      ; 2 uses
  %i.ea = icmp samesign ult i64 %.sroa.079.0193, 5
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.079.0193 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !range !47, !noundef !21 ; 9 uses
  %i.ed = icmp ne i8 %i.ec, 0
  %i.ee = icmp samesign ult i64 %.sroa.079.0193, 4
  %or.cond199 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond199, label %bb.v, label %.backedge

bb.q:                                             ; preds = %bb.r, %._crit_edge
  %i.ef = and i32 %i.k, 229376
  %.not92 = icmp ne i32 %i.ef, 0
  %i.eg = and i32 %spec.select, 2
  %i.eh = icmp eq i32 %i.eg, 0
  %or.cond100 = select i1 %.not92, i1 %i.eh, i1 false
  br i1 %or.cond100, label %bb.t, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  tail call fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory20add_implied_accesses(i8 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i32 noundef %spec.select)
  br label %bb.q

bb.s:                                             ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit, %.split, %bb.q
  ret ptr %0

bb.t:                                             ; preds = %bb.q
  %i.ei = lshr i32 %i.k, 15
  %i.ej = and i32 %i.ei, 7                        ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  %i.el = trunc nuw nsw i32 %i.ej to i8
  %i.em = add nuw nsw i8 %i.el, -83
  %.sroa.077.0 = select i1 %i.ek, i8 0, i8 %i.em  ; 2 uses
  %i.en = and i32 %i.g, 1073741824
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.split84, label %.split

.split84:                                         ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8579)
  %i.ep = load i64, ptr %i.a, align 8, !alias.scope !8580, !noundef !21 ; 3 uses
  %i.eq = load i64, ptr %0, align 8, !range !22, !alias.scope !8580, !noundef !21
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.u, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

bb.u:                                             ; preds = %.split84
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #44
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit: ; preds = %.split84, %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !8580, !nonnull !21, !noundef !21
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.ep ; 2 uses
  store i8 1, ptr %i.eu, align 1, !noalias !8580
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %.sroa.077.0, ptr %i.ev, align 1, !noalias !8580
  %i.ew = add i64 %i.ep, 1
  store i64 %i.ew, ptr %i.a, align 8, !alias.scope !8580
  br label %bb.s

.split:                                           ; preds = %bb.t
  tail call fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register(i32 noundef %spec.select, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i8 noundef %.sroa.077.0, i8 noundef 5)
  br label %bb.s

bb.v:                                             ; preds = %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.079.0193
  %i.ey = load i8, ptr %i.ex, align 1, !range !38, !noundef !21
end_hunk_2
begin_hunk_3_@_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_0_4:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1                      ; 3 uses
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = load i8, ptr %i.g, align 1, !noundef !21 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i8 %i.h, 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.j, ptr %i.k, align 2
  %i.l = lshr i32 %i.i, 3
  %i.m = and i32 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !21
  %i.p = add i32 %i.m, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.r = load i8, ptr %i.q, align 4, !range !44, !noundef !21
  %i.s = icmp eq i8 %i.r, 2                       ; 2 uses
  %. = select i1 %i.s, i8 53, i8 37               ; 2 uses
  %i.t = icmp eq i32 %i.p, 4
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.f, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !noundef !21
  %i.w = or i32 %i.v, 16448
  store i32 %i.w, ptr %i.u, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.x = and i32 %i.i, 7                          ; 2 uses
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.z = trunc i32 %i.p to i8
  %i.aa = add i8 %., %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.aa, ptr %i.ab, align 4
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.ad = trunc i64 %i.f to i8
  store i8 %i.ad, ptr %i.ac, align 4
  %i.ae = add i64 %i.b, 4
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.h, label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !21
  %i.ai = add i32 %i.ah, %i.x
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = add i8 %., %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.b, 5
  %i.ap = inttoptr i64 %i.f to ptr
  %.sroa.03.0.copyload = load i32, ptr %i.ap, align 1 ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  br i1 %i.s, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.c
  ret i1 true

bb.j:                                             ; preds = %bb.h
  %i.as = zext i32 %.sroa.03.0.copyload to i64
  store i64 %i.as, ptr %i.aq, align 8
  store i8 3, ptr %i.ar, align 1
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.at = sext i32 %.sroa.03.0.copyload to i64
  store i64 %i.at, ptr %i.aq, align 8
  store i8 4, ptr %i.ar, align 1
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_0_5(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.d = trunc i64 %i.b to i8
  store i8 %i.d, ptr %i.c, align 4
  %i.e = add i64 %i.b, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = load i64, ptr %i.f, align 8, !noundef !21
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = or i32 %i.j, 16448
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = add i64 %i.b, 4
  %i.m = inttoptr i64 %i.b to ptr
  %.sroa.01.0.copyload = load i32, ptr %i.m, align 1 ; 2 uses
  %i.n = zext i32 %.sroa.01.0.copyload to i64     ; 2 uses
  store i64 %i.l, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i8, ptr %i.o, align 4, !range !44, !noundef !21
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
  ret i1 false

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.s = load i8, ptr %i.r, align 4, !range !27, !noundef !21
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.u = sext i32 %.sroa.01.0.copyload to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !noundef !21
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 4, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 70, ptr %i.aa, align 1
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 3, ptr %i.ac, align 1
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !21
  %i.af = or i32 %i.ae, 2
  store i32 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 3, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 69, ptr %i.ai, align 1
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_1_4(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((37, 38)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.e = trunc i64 %i.c to i8
  %i.f = add i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  %i.g = add i64 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.i = load i64, ptr %i.h, align 8, !noundef !21
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !noundef !21
  %i.m = or i32 %i.l, 16448
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = add i64 %i.c, 2
  %i.o = inttoptr i64 %i.c to ptr
  %.sroa.01.0.copyload = load i16, ptr %i.o, align 1 ; 4 uses
  store i64 %i.n, ptr %i.b, align 8
  %i.p = zext i16 %.sroa.01.0.copyload to i32     ; 3 uses
  %2 = lshr i16 %.sroa.01.0.copyload, 6
  %i.q = trunc i16 %2 to i8
  %3 = and i8 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %3, ptr %i.r, align 2
  %i.s = lshr i32 %i.p, 3
  %i.t = and i32 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 4, !noundef !21
  %i.w = add i32 %i.t, %i.v                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i8, ptr %i.x, align 4, !range !44, !noundef !21
  %i.z = icmp eq i8 %i.y, 2
  %i.aa = icmp eq i32 %i.w, 4                     ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.i, %bb.b
  ret i1 true

bb.e:                                             ; preds = %bb.c
  br i1 %i.aa, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  br i1 %i.aa, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.ab = and i32 %i.p, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !21
  %i.ae = add i32 %i.ad, %i.ab
  %i.af = trunc i32 %i.ae to i8
  %i.ag = add i8 %i.af, 37
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = lshr i16 %.sroa.01.0.copyload, 8
  %i.aj = zext nneg i16 %i.ai to i32
  %sext = shl nuw i32 %i.aj, 24
  %i.ak = ashr exact i32 %sext, 24
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  %i.an = trunc i32 %i.w to i8
  %i.ao = add i8 %i.an, 37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ao, ptr %i.ap, align 4
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.f
  %i.aq = and i32 %i.p, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !noundef !21
  %i.at = add i32 %i.as, %i.aq
  %i.au = trunc i32 %i.at to i8
  %i.av = add i8 %i.au, 53
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = lshr i16 %.sroa.01.0.copyload, 8
  %i.ay = zext nneg i16 %i.ax to i64
  %sext2 = shl nuw i64 %i.ay, 56
  %i.az = ashr exact i64 %sext2, 56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.bb = trunc i32 %i.w to i8
  %i.bc = add i8 %i.bb, 53
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.bc, ptr %i.bd, align 4
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder15read_op_mem_2_4(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1                      ; 3 uses
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = load i8, ptr %i.g, align 1, !noundef !21 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.k = trunc i64 %i.f to i8
  store i8 %i.k, ptr %i.j, align 4
  %i.l = add i64 %i.b, 4
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !noundef !21
  %i.p = or i32 %i.o, 16448
  store i32 %i.p, ptr %i.n, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.b, 5
  %i.r = inttoptr i64 %i.f to ptr
  %.sroa.01.0.copyload = load i32, ptr %i.r, align 1 ; 2 uses
  %i.s = zext i32 %.sroa.01.0.copyload to i64
  store i64 %i.q, ptr %i.a, align 8
  %i.t = sext i32 %.sroa.01.0.copyload to i64
  %i.u = lshr i8 %i.h, 6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.u, ptr %i.v, align 2
  %i.w = lshr i32 %i.i, 3
  %i.x = and i32 %i.w, 7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !noundef !21
  %i.aa = add i32 %i.z, %i.x                      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i8, ptr %i.ab, align 4, !range !44, !noundef !21
  %i.ad = icmp eq i8 %i.ac, 2
  %i.ae = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.j, %bb.c
  ret i1 true

bb.f:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.af = and i32 %i.i, 7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !21
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = add i8 %i.aj, 37
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 3, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.an, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ao = trunc i32 %i.aa to i8
  %i.ap = add i8 %i.ao, 37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ap, ptr %i.aq, align 4
  br label %bb.h

bb.j:                                             ; preds = %bb.k, %bb.g
  %i.ar = and i32 %i.i, 7
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !noundef !21
  %i.au = add i32 %i.at, %i.ar
  %i.av = trunc i32 %i.au to i8
  %i.aw = add i8 %i.av, 53
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 4, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.az, align 8
  br label %bb.e

bb.k:                                             ; preds = %bb.g
  %i.ba = trunc i32 %i.aa to i8
  %i.bb = add i8 %i.ba, 53
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.bb, ptr %i.bc, align 4
  br label %bb.j
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef range(i64 0, 3298534883328) i64 @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder20get_constant_offsets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.b = load i8, ptr %i.a, align 1, !noundef !21 ; 4 uses
  %i.c = icmp ult i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.f = load i8, ptr %i.e, align 4, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.h = load i64, ptr %i.g, align 8, !noundef !21
  %i.i = trunc i64 %i.h to i8
  %i.j = sub i8 %i.f, %i.i                        ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !noundef !21
end_hunk_3
begin_hunk_4_@_RNvNtCsf8MNnN4IDbl_8iced_x867decoder28decoder_read_op_mem_vsib_0_4:bb.a

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aj = load i8, ptr %i.ai, align 4, !range !44, !noundef !21
  %i.ak = icmp eq i8 %i.aj, 2
  %. = select i1 %i.ak, i32 53, i32 37
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8, !noundef !21
  %i.an = add i32 %i.am, %i.ac
  %i.ao = add i32 %i.an, %.
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 0, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.as, align 8
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !noundef !21
  %i.av = or i32 %i.au, 16448
  store i32 %i.av, ptr %i.at, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.aw = add i64 %i.m, 4
  %i.ax = inttoptr i64 %i.m to ptr
  %.sroa.04.0.copyload = load i32, ptr %i.ax, align 1
  %i.ay = zext i32 %.sroa.04.0.copyload to i64
  store i64 %i.aw, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0 = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ba = load i8, ptr %i.az, align 4, !range !44, !noundef !21
  %i.bb = icmp eq i8 %i.ba, 2
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.01.0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 3, ptr %i.bd, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %sext = shl nuw i64 %.sroa.01.0, 32
  %i.be = ashr exact i64 %sext, 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 4, ptr %i.bg, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.i
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvNtCsf8MNnN4IDbl_8iced_x867decoder28decoder_read_op_mem_vsib_0_5(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((8, 16)) %1, i8 %2, i8 range(i8 0, 19) %3, i1 zeroext %4) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.d = trunc i64 %i.b to i8
  store i8 %i.d, ptr %i.c, align 4
  %i.e = add i64 %i.b, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load i64, ptr %i.f, align 8, !noundef !21
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = or i32 %i.j, 16448
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = add i64 %i.b, 4
  %i.m = inttoptr i64 %i.b to ptr
  %.sroa.03.0.copyload = load i32, ptr %i.m, align 1
  %i.n = zext i32 %.sroa.03.0.copyload to i64
  store i64 %i.l, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i8, ptr %i.o, align 4, !range !44, !noundef !21
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.s = load i8, ptr %i.r, align 4, !range !27, !noundef !21
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !noundef !21
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  %sext = shl nuw i64 %.sroa.0.0, 32
  %i.x = ashr exact i64 %sext, 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 4, ptr %i.z, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.0.0, ptr %i.aa, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !21
  %i.ad = or i32 %i.ac, 2
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.0.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 3, ptr %i.af, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sink5 = phi i64 [ 37, %bb.g ], [ 35, %bb.h ], [ 35, %bb.f ]
  %.sink = phi i8 [ 3, %bb.g ], [ 69, %bb.h ], [ 70, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.sink5
  store i8 %.sink, ptr %i.ag, align 1
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvNtCsf8MNnN4IDbl_8iced_x867decoder28decoder_read_op_mem_vsib_1_4(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((8, 16), (34, 36), (37, 38)) %1, i8 noundef %2, i8 noundef range(i8 0, 19) %3, i1 noundef zeroext %4) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.e = trunc i64 %i.c to i8
  %i.f = add i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  %i.g = add i64 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load i64, ptr %i.h, align 8, !noundef !21
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !noundef !21
  %i.m = or i32 %i.l, 16448
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = add i64 %i.c, 2
  %i.o = inttoptr i64 %i.c to ptr
  %.sroa.03.0.copyload = load i16, ptr %i.o, align 1
  store i64 %i.n, ptr %i.b, align 8
  %i.p = zext i16 %.sroa.03.0.copyload to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.q = lshr i32 %.sroa.0.0, 3
  %i.r = and i32 %i.q, 7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !noundef !21
  %i.u = add i32 %i.r, %i.t                       ; 3 uses
  br i1 %4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.g, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4, !noundef !21
  %i.y = add i32 %i.x, %i.u
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink7 = phi i32 [ %i.y, %bb.f ], [ %i.u, %bb.e ]
  %i.z = trunc i32 %.sink7 to i8
  %i.aa = add i8 %2, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 %i.aa, ptr %i.ab, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %5 = lshr i32 %.sroa.0.0, 6
  %i.ac = trunc i32 %5 to i8
  %6 = and i8 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 %6, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i8, ptr %i.ae, align 4, !range !44, !noundef !21
  %i.ag = icmp eq i8 %i.af, 2                     ; 2 uses
  %. = select i1 %i.ag, i32 53, i32 37
  %i.ah = and i32 %.sroa.0.0, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !21
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %.
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = shl nuw i32 %.sroa.0.0, 16
  %i.ap = ashr i32 %i.ao, 24
  %i.aq = zext nneg i8 %3 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !noundef !21
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8614tuple_type_tbl14TUPLE_TYPE_TBL, i64 %i.aq
  %i.au = lshr i32 %i.as, 4
  %.lobit = and i32 %i.au, 1
  %.sroa.02.0.in.in.idx = zext nneg i32 %.lobit to i64
  %.sroa.02.0.in.in = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.02.0.in.in.idx
  %.sroa.02.0.in = load i8, ptr %.sroa.02.0.in.in, align 1, !noundef !21
  %.sroa.02.0 = zext i8 %.sroa.02.0.in to i32
  %i.av = mul nsw i32 %i.ap, %.sroa.02.0          ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = zext i32 %i.av to i64
  %.sink = select i1 %i.ag, i64 %i.aw, i64 %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink, ptr %i.ay, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvNtCsf8MNnN4IDbl_8iced_x867decoder28decoder_read_op_mem_vsib_2_4(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) initializes((460, 461)) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(40) initializes((8, 16), (34, 36), (37, 38)) %1, i8 noundef %2, i8 range(i8 0, 19) %3, i1 noundef zeroext %4) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !noundef !21
  %i.h = or i32 %i.g, 16448
  store i32 %i.h, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = add nuw i64 %i.b, 1                      ; 2 uses
  %i.j = inttoptr i64 %i.b to ptr
  %i.k = load i8, ptr %i.j, align 1, !noundef !21
  store i64 %i.i, ptr %i.a, align 8
  %i.l = zext i8 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %i.i, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.o = trunc i64 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4
  %i.p = lshr i32 %.sroa.0.0, 3
  %i.q = and i32 %i.p, 7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !noundef !21
  %i.t = add i32 %i.s, %i.q                       ; 3 uses
  br i1 %4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.g, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = load i32, ptr %i.v, align 4, !noundef !21
  %i.x = add i32 %i.w, %i.t
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink10 = phi i32 [ %i.x, %bb.f ], [ %i.t, %bb.e ]
  %i.y = trunc i32 %.sink10 to i8
  %i.z = add i8 %2, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 %i.z, ptr %i.aa, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.ab = lshr i32 %.sroa.0.0, 6
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i8, ptr %i.ae, align 4, !range !44, !noundef !21
  %i.ag = icmp eq i8 %i.af, 2                     ; 3 uses
  %. = select i1 %i.ag, i32 53, i32 37
  %i.ah = and i32 %.sroa.0.0, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !21
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %.
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add i64 %i.m, 3
  %i.ap = icmp ult i64 %i.ao, %i.d
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !noundef !21
  %i.as = or i32 %i.ar, 16448
  store i32 %i.as, ptr %i.aq, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.at = add i64 %i.m, 4
  %i.au = inttoptr i64 %i.m to ptr
  %.sroa.03.0.copyload = load i32, ptr %i.au, align 1
  store i64 %i.at, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.02.0 = phi i32 [ %.sroa.03.0.copyload, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.av = sext i32 %.sroa.02.0 to i64
  %i.aw = zext i32 %.sroa.02.0 to i64
  %.sink5 = select i1 %i.ag, i8 4, i8 3
  %.sink = select i1 %i.ag, i64 %i.av, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 %.sink5, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink, ptr %i.ay, align 8
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsf8MNnN4IDbl_8iced_x869formatter8to_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !59, !noundef !21 ; 4 uses
  %.not = icmp eq i64 %i.b, -3
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12708)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12707, !noalias !12709, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12711)
  %i.e = icmp eq i64 %i.b, -2
  br i1 %i.e, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !12712, !noalias !12713, !nonnull !21, !align !25, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !12712, !noalias !12713, !noundef !21 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !12714, !noalias !12715, !nonnull !21, !noundef !21 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !12714, !noalias !12715, !noundef !21 ; 2 uses
  store i64 0, ptr %i.l, align 8, !alias.scope !12714, !noalias !12715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12716)
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBI_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i
  %.sroa.0.013.i.i.i = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.0.013.i.i.i ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.0.013.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.o, align 8, !range !24, !alias.scope !12716, !noalias !12717, !noundef !21 ; 2 uses
  %i.q = icmp sgt i64 %.val8.i.i.i, 0
  br i1 %i.q, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val9.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !12716, !noalias !12717, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !12718
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.s = icmp eq i64 %i.p, %i.m
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBI_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBI_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12719)
  %i.t = load i64, ptr %2, align 8, !range !22, !alias.scope !12720, !noalias !12715, !noundef !21
  %i.u = icmp samesign ugt i64 %i.i, %i.t
  br i1 %i.u, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartE7reserveBK_.exit.i.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartE7reserveBK_.exit.i.i.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartE7reserveBK_.exit.i.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBI_.exit.i.i
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef %i.i, i64 noundef 8, i64 noundef 32), !noalias !12715
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !12721, !noalias !12715
  %.pre.i.i = load ptr, ptr %i.j, align 8, !alias.scope !12721, !noalias !12715
  br label %bb.e

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartE7reserveBK_.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBI_.exit.i.i
end_hunk_4
