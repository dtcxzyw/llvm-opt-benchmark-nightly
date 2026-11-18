Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.06?download=true
inline.NumInlined: 6907
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !15852 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15853, !nonnull !13, !noundef !13
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !15854
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !15852 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !15853, !nonnull !13, !noundef !13
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !15855
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringRINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1p_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15866 {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !15867 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15868, !nonnull !13, !noundef !13
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !15869
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !15867 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !15868, !nonnull !13, !noundef !13
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !15870
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15873 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15874)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !15874, !nonnull !13, !noundef !13 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !15874, !inline_history !71

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #50, !noalias !15874
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #50, !noalias !15874
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15885 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !26, !alias.scope !15886, !noundef !13
  %i.c = icmp eq i64 %i.b, 20
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !15887 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i = load ptr, ptr %i.g, align 8, !alias.scope !15888, !nonnull !13, !noundef !13
  %i.h = mul nuw i64 %.val2.i.i, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15889
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !15887 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !15888, !nonnull !13, !noundef !13
  %i.k = mul nuw i64 %.val.i.i, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15890
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

bb.g:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsjhHCjzi9uUI_17datafusion_common5error15field_not_foundNtNtB4_15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15910 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [104 x i8], align 8               ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !15911
  %i.j = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15911 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE3newCs7p2uQeJxui2_9deltalake.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #47
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e) #48
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.e, %.body7, %.body16, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %.pn, %.body7 ], [ %i.as, %.body16 ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE3newCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false)
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema7columns(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %4)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE3newCs7p2uQeJxui2_9deltalake.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #48
          to label %common.resume unwind label %bb.y

bb.f:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE3newCs7p2uQeJxui2_9deltalake.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15912
  %i.s = mul nuw nsw i64 %i.r, 104                ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.thread.i, label %bb.g

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.f
  store i64 0, ptr %i.b, align 8, !noalias !15912
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !noalias !15912
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !15913
  %i.w = call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15913 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.s) #47
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %bb.h
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.g
  store i64 %i.r, ptr %i.b, align 8, !noalias !15912
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !15912
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.ab, %bb.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.022.i = phi i64 [ %i.aa, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %5, %bb.i ], [ %i.r, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15912
  invoke fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.012.023.i)
          to label %bb.i unwind label %bb.k, !noalias !15914

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 104
  %5 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !15914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15912
  %i.ad = icmp eq i64 %5, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15914
  unreachable

bb.k:                                             ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.z, align 8, !noalias !15912
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %.body10 unwind label %bb.j, !noalias !15914

bb.l:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body10

.body10:                                          ; preds = %bb.k, %bb.l
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.af, %bb.l ], [ %lpad.loopexit.i, %bb.k ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #48
          to label %.body7 unwind label %bb.y

.loopexit:                                        ; preds = %bb.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.thread.i
  %6 = phi ptr [ %i.v, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.thread.i ], [ %i.z, %bb.i ]
  store i64 %i.r, ptr %6, align 8, !noalias !15912
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15912
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.ah, align 8
  store i64 3, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !15915
  %i.ai = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15915 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.m, label %bb.p, !prof !11

bb.m:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #47
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g) #48
          to label %.body7 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body7:                                           ; preds = %bb.n, %.body, %.body10
  %.pn = phi { ptr, i32 } [ %i.ao, %.body ], [ %eh.lpad-body11, %.body10 ], [ %i.ak, %bb.n ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #48
          to label %common.resume unwind label %bb.y

.body:                                            ; preds = %bb.r
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #48
          to label %.body7 unwind label %bb.y

bb.p:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  store ptr %i.ai, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !15916
  %i.am = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15916 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %bb.t, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #47
          to label %.noexc14 unwind label %bb.r

.noexc14:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #48
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ai, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.am, ptr %i.ar, align 8
  store i64 9, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !15917 ; 2 uses
  %i.at = icmp eq i64 %.val2.i, 0
  br i1 %i.at, label %.body16, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !15918, !nonnull !13, !noundef !13
  %i.au = mul nuw i64 %.val2.i, 104
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15919
  br label %.body16

bb.w:                                             ; preds = %bb.t
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !15917 ; 2 uses
  %i.av = icmp eq i64 %.val.i, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !15918, !nonnull !13, !noundef !13
  %i.aw = mul nuw i64 %.val.i, 104
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !15920
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit

.body16:                                          ; preds = %bb.u, %bb.v
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i) #48
          to label %common.resume unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.y:                                             ; preds = %.body16, %.body, %.body7, %.body10, %bb.e
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB19_9enumerate9EnumerateINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15921 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3f_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1L_13in_place_drop11InPlaceDropINtNtB1N_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtB1L_16in_place_collect24write_in_place_with_dropB90_E0IB5W_B8p_zEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.c, 3
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtB4_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEIB2H_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15922 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
end_hunk_0
