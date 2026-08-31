Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBI_IB1f_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEECs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1E_5error15DataFusionErrorEEBH_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1s_5error15DataFusionErrorEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1s_5error15DataFusionErrorEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #43
          to label %common.resume unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit2 unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1s_5error15DataFusionErrorEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1s_5error15DataFusionErrorEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !56, !alias.scope !3325, !noundef !4
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !56, !alias.scope !3328, !noundef !4
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit1, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsECs14kWLkQVSKO_14deltalake_core.exit
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsECs14kWLkQVSKO_14deltalake_core.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3331)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3331, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !3331, !inline_history !2637

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #42, !noalias !3331
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #42, !noalias !3331
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10max_stringlE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array10null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.e = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 3 uses
  %.not12 = icmp eq i64 %i.h, 0
  br i1 %.not12, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.i = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef 0), !noalias !3334 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %.not13 = icmp eq i64 %i.h, 1
  br i1 %.not13, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.6.018.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.0.01317.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.l = add i64 %.sroa.0.01317.i.i.i, 1          ; 2 uses
  %i.m = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.01317.i.i.i), !noalias !3339 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i.i, i64 %i.o)
  %i.p = call i32 @memcmp(ptr nonnull readonly %.sroa.0.019.i.i.i, ptr nonnull readonly %i.n, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3347, !noalias !3351 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.sroa.6.018.i.i.i, %i.o
  %spec.select.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp slt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = select i1 %i.t, i64 %i.o, i64 %.sroa.6.018.i.i.i ; 2 uses
  %.sroa.0.0.i.i11.i.i.i = select i1 %i.t, ptr %i.n, ptr %.sroa.0.019.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.u = call noundef align 8 ptr @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.f, !prof !1168

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13valid_indices(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3355, !noalias !3358, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3355, !noalias !3358
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.lr.ph.i.i
  %i.ad = load i64, ptr %i.y, align 8, !range !74, !alias.scope !3360, !noalias !3358, !noundef !4 ; 2 uses
  switch i64 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.z, align 8, !alias.scope !3363, !noalias !3358
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ad, 1       ; 2 uses
  %spec.store.select.i.i.i.i.i.i9 = select i1 %.not3.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i9, ptr %i.y, align 8, !alias.scope !3374, !noalias !3358
  br i1 %.not3.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.g
  %i.af = load ptr, ptr %i.aa, align 8, !alias.scope !3375, !noalias !3358, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  %i.ag = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa), !noalias !3358 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %.not4.i.i.i = icmp eq i64 %i.ah, 1
  br i1 %.not4.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  store i64 3, ptr %i.y, align 8, !alias.scope !3360, !noalias !3358
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, %bb.g
  %i.aj = load i64, ptr %i.b, align 8, !range !53, !alias.scope !3380, !noalias !3358, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, 2
  br i1 %.not.i.i.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  %i.ak = load i64, ptr %i.ab, align 8, !alias.scope !3385, !noalias !3358
  store i64 0, ptr %i.b, align 8, !alias.scope !3385, !noalias !3358
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.pn3.i17.i.i = phi i64 [ %i.ak, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ae, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i, ptr %i.v, align 8, !alias.scope !3355, !noalias !3358
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !3355, !noalias !3358, !noundef !4
  %i.an = add i64 %i.am, 64                       ; 2 uses
  store i64 %i.an, ptr %i.ac, align 8, !alias.scope !3355, !noalias !3358
  %i.ao = icmp eq i64 %.pn3.i17.i.i, 0
  br i1 %i.ao, label %bb.g, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.._crit_edge_crit_edge.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.an, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.lcssa.i.i = phi i64 [ %i.w, %.._crit_edge_crit_edge.i.i ], [ %.pn3.i17.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ] ; 2 uses
  %i.aq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true) ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, %.lcssa.i.i
  store i64 %i.as, ptr %i.v, align 8, !alias.scope !3355, !noalias !3358
  %i.at = add i64 %i.aq, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !3358
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.loopexit.i
  %.sroa.0.0.i8.i = phi i64 [ %i.at, %.loopexit.i ], [ %.sroa.0.0.i6.i.i, %.loopexit.i.i ] ; 3 uses
  %i.az = load i64, ptr %i.au, align 8, !alias.scope !3389, !noalias !3394, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i6, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3389, !noalias !3394
  br label %.loopexit.i.i

.lr.ph.i.i.i6:                                    ; preds = %bb.h, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.bb = load i64, ptr %i.av, align 8, !range !74, !alias.scope !3396, !noalias !3394, !noundef !4 ; 2 uses
  switch i64 %i.bb, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !3399, !noalias !3394
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 1     ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !3410, !noalias !3394
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %.lr.ph.i.i.i6
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !3411, !noalias !3394, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  %i.be = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %.not4.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %.not4.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  store i64 3, ptr %i.av, align 8, !alias.scope !3396, !noalias !3394
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, %.lr.ph.i.i.i6
  %i.bh = load i64, ptr %i.a, align 8, !range !53, !alias.scope !3416, !noalias !3394, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  %i.bi = load i64, ptr %i.ay, align 8, !alias.scope !3421, !noalias !3394
  store i64 0, ptr %i.a, align 8, !alias.scope !3421, !noalias !3394
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.pn3.i17.i.i.i = phi i64 [ %i.bi, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bg, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.bc, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i.i, ptr %i.au, align 8, !alias.scope !3389, !noalias !3394
  %i.bk = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3389, !noalias !3394, !noundef !4
  %i.bl = add i64 %i.bk, 64                       ; 2 uses
  store i64 %i.bl, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3389, !noalias !3394
  %i.bm = icmp eq i64 %.pn3.i17.i.i.i, 0
  br i1 %i.bm, label %.lr.ph.i.i.i6, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.bn = phi i64 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.bl, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.az, %.._crit_edge_crit_edge.i.i.i ], [ %.pn3.i17.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ] ; 2 uses
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i, i1 true) ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, %.lcssa.i.i.i
  store i64 %i.bq, ptr %i.au, align 8, !alias.scope !3389, !noalias !3394
  %i.br = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bs = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bv = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %i.br) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bx)
  %i.by = call i32 @memcmp(ptr nonnull readonly %i.bt, ptr nonnull readonly %i.bw, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bu, %i.bx
  %spec.select.i.i.i.i = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = icmp slt i64 %spec.select.i.i.i.i, 0
  %.sroa.0.0.i6.i.i = select i1 %i.cc, i64 %i.br, i64 %.sroa.0.0.i8.i
  br label %bb.h

_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #47
  unreachable

bb.j:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.a, %bb.j
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ undef, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cf, %bb.j ], [ undef, %bb.c ], [ undef, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.k, %bb.d ], [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ce, %bb.j ], [ null, %bb.c ], [ null, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.j, %bb.d ], [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ]
  %i.cg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ch = insertvalue { ptr, i64 } %i.cg, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.ch
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10min_stringlE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array10null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.e = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 3 uses
  %.not12 = icmp eq i64 %i.h, 0
  br i1 %.not12, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.i = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef 0), !noalias !3424 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %.not13 = icmp eq i64 %i.h, 1
  br i1 %.not13, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.6.018.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.0.01317.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.l = add i64 %.sroa.0.01317.i.i.i, 1          ; 2 uses
  %i.m = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.01317.i.i.i), !noalias !3429 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i.i, i64 %i.o)
  %i.p = call i32 @memcmp(ptr nonnull readonly %.sroa.0.019.i.i.i, ptr nonnull readonly %i.n, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3437, !noalias !3441 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.sroa.6.018.i.i.i, %i.o
  %spec.select.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp sgt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = select i1 %i.t, i64 %i.o, i64 %.sroa.6.018.i.i.i ; 2 uses
  %.sroa.0.0.i.i11.i.i.i = select i1 %i.t, ptr %i.n, ptr %.sroa.0.019.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.u = call noundef align 8 ptr @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.f, !prof !1168

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13valid_indices(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3445, !noalias !3448, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3445, !noalias !3448
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.lr.ph.i.i
  %i.ad = load i64, ptr %i.y, align 8, !range !74, !alias.scope !3450, !noalias !3448, !noundef !4 ; 2 uses
  switch i64 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.z, align 8, !alias.scope !3453, !noalias !3448
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ad, 1       ; 2 uses
  %spec.store.select.i.i.i.i.i.i9 = select i1 %.not3.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i9, ptr %i.y, align 8, !alias.scope !3464, !noalias !3448
  br i1 %.not3.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.g
  %i.af = load ptr, ptr %i.aa, align 8, !alias.scope !3465, !noalias !3448, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  %i.ag = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa), !noalias !3448 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %.not4.i.i.i = icmp eq i64 %i.ah, 1
  br i1 %.not4.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  store i64 3, ptr %i.y, align 8, !alias.scope !3450, !noalias !3448
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, %bb.g
  %i.aj = load i64, ptr %i.b, align 8, !range !53, !alias.scope !3470, !noalias !3448, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, 2
  br i1 %.not.i.i.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  %i.ak = load i64, ptr %i.ab, align 8, !alias.scope !3475, !noalias !3448
  store i64 0, ptr %i.b, align 8, !alias.scope !3475, !noalias !3448
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.pn3.i17.i.i = phi i64 [ %i.ak, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ae, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i, ptr %i.v, align 8, !alias.scope !3445, !noalias !3448
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !3445, !noalias !3448, !noundef !4
  %i.an = add i64 %i.am, 64                       ; 2 uses
  store i64 %i.an, ptr %i.ac, align 8, !alias.scope !3445, !noalias !3448
  %i.ao = icmp eq i64 %.pn3.i17.i.i, 0
  br i1 %i.ao, label %bb.g, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.._crit_edge_crit_edge.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.an, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.lcssa.i.i = phi i64 [ %i.w, %.._crit_edge_crit_edge.i.i ], [ %.pn3.i17.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ] ; 2 uses
  %i.aq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true) ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, %.lcssa.i.i
  store i64 %i.as, ptr %i.v, align 8, !alias.scope !3445, !noalias !3448
  %i.at = add i64 %i.aq, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !3448
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.loopexit.i
  %.sroa.0.0.i8.i = phi i64 [ %i.at, %.loopexit.i ], [ %.sroa.0.0.i6.i.i, %.loopexit.i.i ] ; 3 uses
  %i.az = load i64, ptr %i.au, align 8, !alias.scope !3479, !noalias !3484, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i6, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3479, !noalias !3484
  br label %.loopexit.i.i

.lr.ph.i.i.i6:                                    ; preds = %bb.h, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.bb = load i64, ptr %i.av, align 8, !range !74, !alias.scope !3486, !noalias !3484, !noundef !4 ; 2 uses
  switch i64 %i.bb, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !3489, !noalias !3484
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 1     ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !3500, !noalias !3484
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %.lr.ph.i.i.i6
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !3501, !noalias !3484, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  %i.be = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %.not4.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %.not4.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  store i64 3, ptr %i.av, align 8, !alias.scope !3486, !noalias !3484
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, %.lr.ph.i.i.i6
  %i.bh = load i64, ptr %i.a, align 8, !range !53, !alias.scope !3506, !noalias !3484, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  %i.bi = load i64, ptr %i.ay, align 8, !alias.scope !3511, !noalias !3484
  store i64 0, ptr %i.a, align 8, !alias.scope !3511, !noalias !3484
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.pn3.i17.i.i.i = phi i64 [ %i.bi, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bg, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.bc, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i.i, ptr %i.au, align 8, !alias.scope !3479, !noalias !3484
  %i.bk = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3479, !noalias !3484, !noundef !4
  %i.bl = add i64 %i.bk, 64                       ; 2 uses
  store i64 %i.bl, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3479, !noalias !3484
  %i.bm = icmp eq i64 %.pn3.i17.i.i.i, 0
  br i1 %i.bm, label %.lr.ph.i.i.i6, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.bn = phi i64 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.bl, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.az, %.._crit_edge_crit_edge.i.i.i ], [ %.pn3.i17.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ] ; 2 uses
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i, i1 true) ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, %.lcssa.i.i.i
  store i64 %i.bq, ptr %i.au, align 8, !alias.scope !3479, !noalias !3484
  %i.br = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bs = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bv = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %i.br) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bx)
  %i.by = call i32 @memcmp(ptr nonnull readonly %i.bt, ptr nonnull readonly %i.bw, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bu, %i.bx
  %spec.select.i.i.i.i = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = icmp sgt i64 %spec.select.i.i.i.i, 0
  %.sroa.0.0.i6.i.i = select i1 %i.cc, i64 %i.br, i64 %.sroa.0.0.i8.i
  br label %bb.h

_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_0
