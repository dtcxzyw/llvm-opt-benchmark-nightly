Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.04?download=true
inline.NumInlined: 619
inline.NumDeleted: 301
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !317, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !317
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !320
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %.body2 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body2 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

.body2:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.i) #27
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body2, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1h_5ErrorENCINvMB6_SBT_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2M_31LocalFileSystemWithSortedListOpNtB1h_11ObjectStore16list_with_offsets_0E0EB2O_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !343, !noalias !344, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = load i64, ptr %0, align 8, !range !10, !alias.scope !344, !noalias !343, !noundef !4
  %.not = icmp eq i64 %i.e, -1                    ; 2 uses
  br i1 %i.d, label %.split13, label %bb.c

.split13:                                         ; preds = %bb.b
  br i1 %.not, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader, label %.preheader

.preheader:                                       ; preds = %.split, %.split13
  %.not35 = icmp eq i64 %1, 2
  br i1 %.not35, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader, label %.split

.split:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !343, !noalias !344, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !343, !noalias !344, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !344, !noalias !343, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !344, !noalias !343, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.m)
  %i.n = tail call i32 @memcmp(ptr nonnull %i.g, ptr nonnull %i.k, i64 %spec.store.select.i.i), !noalias !345 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %i.i, %i.m
  %spec.select.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.r, label %.preheader, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader: ; preds = %.split, %.split13, %bb.c
  %.not36 = icmp eq i64 %1, 2
  br i1 %.not36, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread
  %i.s = phi i64 [ %i.v, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread ], [ %i.c, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader ]
  %.sroa.01.0.i30 = phi i64 [ %i.ak, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread ], [ 2, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.0.i30 ; 3 uses
  %i.u = getelementptr [96 x i8], ptr %0, i64 %.sroa.01.0.i30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.v = load i64, ptr %i.t, align 8, !range !10, !alias.scope !350, !noalias !351, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  %.not22 = icmp eq i64 %i.s, -1                  ; 2 uses
  br i1 %i.w, label %.split15, label %bb.d

.split15:                                         ; preds = %.lr.ph31
  br i1 %.not22, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit

bb.d:                                             ; preds = %.lr.ph31
  br i1 %.not22, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !350, !noalias !351, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !350, !noalias !351, !noundef !4 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 -88
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !351, !noalias !350, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.u, i64 -80
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !351, !noalias !350, !noundef !4 ; 2 uses
  %spec.store.select.i.i3 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i3), !noalias !352 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i4 = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i4, 0
  br i1 %i.aj, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread: ; preds = %bb.d, %.split15, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6
  %i.ak = add nuw nsw i64 %.sroa.01.0.i30, 1      ; 2 uses
  %exitcond40.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond40.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph31

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.al = phi i64 [ %i.ao, %bb.f ], [ %i.c, %.preheader ]
  %.sroa.01.1.i25 = phi i64 [ %i.bd, %bb.f ], [ 2, %.preheader ] ; 6 uses
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.1.i25 ; 3 uses
  %i.an = getelementptr [96 x i8], ptr %0, i64 %.sroa.01.1.i25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ao = load i64, ptr %i.am, align 8, !range !10, !alias.scope !357, !noalias !358, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %.not23 = icmp eq i64 %i.al, -1                 ; 2 uses
  br i1 %i.ap, label %.split17, label %bb.e

.split17:                                         ; preds = %.lr.ph
  br i1 %.not23, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not23, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit10

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit10: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !357, !noalias !358, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !357, !noalias !358, !noundef !4 ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 -88
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !358, !noalias !357, !nonnull !4, !noundef !4
  %i.aw = getelementptr i8, ptr %i.an, i64 -80
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !358, !noalias !357, !noundef !4 ; 2 uses
  %spec.store.select.i.i7 = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax)
  %i.ay = tail call i32 @memcmp(ptr nonnull %i.ar, ptr nonnull %i.av, i64 %spec.store.select.i.i7), !noalias !359 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %i.at, %i.ax
  %spec.select.i.i8 = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = icmp slt i64 %spec.select.i.i8, 0
  br i1 %i.bc, label %bb.f, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit

bb.f:                                             ; preds = %.split17, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit10
  %i.bd = add nuw nsw i64 %.sroa.01.1.i25, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not, label %.lr.ph.preheader.i.i, label %.lr.ph

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit10, %.split17, %bb.e, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6, %.split15, %.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader
  %.sroa.3.0.i = phi i1 [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader ], [ true, %.preheader ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6 ], [ false, %.split15 ], [ true, %bb.e ], [ true, %.split17 ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit10 ]
  %.sroa.0.0.i = phi i64 [ 2, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit.preheader ], [ 2, %.preheader ], [ %.sroa.01.0.i30, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6 ], [ %.sroa.01.0.i30, %.split15 ], [ %.sroa.01.1.i25, %bb.e ], [ %.sroa.01.1.i25, %.split17 ], [ %.sroa.01.1.i25, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit10 ] ; 2 uses
  %i.be = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.h:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore16list_with_offsets_0E0EB2Y_.exit
  %i.bg = or i64 %1, 1
  %i.bh = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = xor i32 %i.bj, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1v_5ErrorENCINvMB8_SB17_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB31_31LocalFileSystemWithSortedListOpNtB1v_11ObjectStore16list_with_offsets_0E0EB33_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, i32 noundef %i.bk, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore16list_with_offsets_0E0B2e_.exit6.thread, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.a, %bb.g, %bb.h
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.f, %bb.g
  %i.bl = lshr i64 %1, 1
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.br, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bn = xor i64 %.sroa.0.017.i.i, -1
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.bp = getelementptr [96 x i8], ptr %i.bm, i64 %i.bn
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.br = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.bl
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1h_5ErrorENCINvMB6_SBT_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2M_31LocalFileSystemWithSortedListOpNtB1h_11ObjectStore4lists_0E0EB2O_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !382, !noalias !383, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = load i64, ptr %0, align 8, !range !10, !alias.scope !383, !noalias !382, !noundef !4
  %.not = icmp eq i64 %i.e, -1                    ; 2 uses
  br i1 %i.d, label %.split13, label %bb.c

.split13:                                         ; preds = %bb.b
  br i1 %.not, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader, label %.preheader

.preheader:                                       ; preds = %.split, %.split13
  %.not35 = icmp eq i64 %1, 2
  br i1 %.not35, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader, label %.split

.split:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !382, !noalias !383, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !382, !noalias !383, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !383, !noalias !382, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !383, !noalias !382, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.m)
  %i.n = tail call i32 @memcmp(ptr nonnull %i.g, ptr nonnull %i.k, i64 %spec.store.select.i.i), !noalias !384 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %i.i, %i.m
  %spec.select.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.r, label %.preheader, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader: ; preds = %.split, %.split13, %bb.c
  %.not36 = icmp eq i64 %1, 2
  br i1 %.not36, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread
  %i.s = phi i64 [ %i.v, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread ], [ %i.c, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader ]
  %.sroa.01.0.i30 = phi i64 [ %i.ak, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread ], [ 2, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.0.i30 ; 3 uses
  %i.u = getelementptr [96 x i8], ptr %0, i64 %.sroa.01.0.i30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.v = load i64, ptr %i.t, align 8, !range !10, !alias.scope !389, !noalias !390, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  %.not22 = icmp eq i64 %i.s, -1                  ; 2 uses
  br i1 %i.w, label %.split15, label %bb.d

.split15:                                         ; preds = %.lr.ph31
  br i1 %.not22, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit

bb.d:                                             ; preds = %.lr.ph31
  br i1 %.not22, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !389, !noalias !390, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !389, !noalias !390, !noundef !4 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 -88
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !390, !noalias !389, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.u, i64 -80
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !390, !noalias !389, !noundef !4 ; 2 uses
  %spec.store.select.i.i3 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i3), !noalias !391 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i4 = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i4, 0
  br i1 %i.aj, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread: ; preds = %bb.d, %.split15, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6
  %i.ak = add nuw nsw i64 %.sroa.01.0.i30, 1      ; 2 uses
  %exitcond40.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond40.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph31

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.al = phi i64 [ %i.ao, %bb.f ], [ %i.c, %.preheader ]
  %.sroa.01.1.i25 = phi i64 [ %i.bd, %bb.f ], [ 2, %.preheader ] ; 6 uses
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.1.i25 ; 3 uses
  %i.an = getelementptr [96 x i8], ptr %0, i64 %.sroa.01.1.i25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.ao = load i64, ptr %i.am, align 8, !range !10, !alias.scope !396, !noalias !397, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %.not23 = icmp eq i64 %i.al, -1                 ; 2 uses
  br i1 %i.ap, label %.split17, label %bb.e

.split17:                                         ; preds = %.lr.ph
  br i1 %.not23, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not23, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit10

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit10: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !396, !noalias !397, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !396, !noalias !397, !noundef !4 ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 -88
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !397, !noalias !396, !nonnull !4, !noundef !4
  %i.aw = getelementptr i8, ptr %i.an, i64 -80
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !397, !noalias !396, !noundef !4 ; 2 uses
  %spec.store.select.i.i7 = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax)
  %i.ay = tail call i32 @memcmp(ptr nonnull %i.ar, ptr nonnull %i.av, i64 %spec.store.select.i.i7), !noalias !398 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %i.at, %i.ax
  %spec.select.i.i8 = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = icmp slt i64 %spec.select.i.i8, 0
  br i1 %i.bc, label %bb.f, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit

bb.f:                                             ; preds = %.split17, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit10
  %i.bd = add nuw nsw i64 %.sroa.01.1.i25, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not, label %.lr.ph.preheader.i.i, label %.lr.ph

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit10, %.split17, %bb.e, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6, %.split15, %.preheader, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader
  %.sroa.3.0.i = phi i1 [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader ], [ true, %.preheader ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6 ], [ false, %.split15 ], [ true, %bb.e ], [ true, %.split17 ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit10 ]
  %.sroa.0.0.i = phi i64 [ 2, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit.preheader ], [ 2, %.preheader ], [ %.sroa.01.0.i30, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6 ], [ %.sroa.01.0.i30, %.split15 ], [ %.sroa.01.1.i25, %bb.e ], [ %.sroa.01.1.i25, %.split17 ], [ %.sroa.01.1.i25, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit10 ] ; 2 uses
  %i.be = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.h:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1q_5ErrorENCINvMB6_SB12_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2W_31LocalFileSystemWithSortedListOpNtB1q_11ObjectStore4lists_0E0EB2Y_.exit
  %i.bg = or i64 %1, 1
  %i.bh = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = xor i32 %i.bj, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1v_5ErrorENCINvMB8_SB17_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB31_31LocalFileSystemWithSortedListOpNtB1v_11ObjectStore4lists_0E0EB33_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, i32 noundef %i.bk, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB7_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBV_5ErrorE16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2c_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore4lists_0E0B2e_.exit6.thread, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.a, %bb.g, %bb.h
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.f, %bb.g
  %i.bl = lshr i64 %1, 1
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.br, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bn = xor i64 %.sroa.0.017.i.i, -1
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.bp = getelementptr [96 x i8], ptr %i.bm, i64 %i.bn
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1o_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.br = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.bl
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBS_5ErrorE7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SBT_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2f_31LocalFileSystemWithSortedListOpNtBV_11ObjectStore19list_with_delimiter00E0EB2h_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 104
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 112
  %.val11 = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val10, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  %i.j = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not32 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not32, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit, label %.lr.ph28

.lr.ph:                                           ; preds = %.preheader22, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader22 ] ; 2 uses
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader22 ]
  %.sroa.01.0.i24 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader22 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.0.i24 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val7 = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %spec.store.select.i.i14 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val9)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val8, i64 %spec.store.select.i.i14) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val7, %.val9
  %spec.select.i.i15 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i15, 0
  br i1 %i.r, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i24, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit.thread, label %.lr.ph

.lr.ph28:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ] ; 2 uses
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i27 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.1.i27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val3 = load i64, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %spec.store.select.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val5)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val4, i64 %spec.store.select.i.i16) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val3, %.val5
  %spec.select.i.i17 = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp slt i64 %spec.select.i.i17, 0
  br i1 %i.aa, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit

bb.d:                                             ; preds = %.lr.ph28
  %i.ab = add nuw nsw i64 %.sroa.01.1.i27, 1      ; 2 uses
  %exitcond35.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond35.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit.thread, label %.lr.ph28

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2u_31LocalFileSystemWithSortedListOpNtB19_11ObjectStore19list_with_delimiter00E0EB2w_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, i32 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCs1LivM9IBWqb_12object_store10ObjectMetaECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SB12_16sort_unstable_byNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2p_31LocalFileSystemWithSortedListOpNtB14_11ObjectStore19list_with_delimiter00E0EB2r_.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCs1LivM9IBWqb_12object_store10ObjectMetaECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCs1LivM9IBWqb_12object_store10ObjectMetaECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [96 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCs1LivM9IBWqb_12object_store10ObjectMetaECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCs1LivM9IBWqb_12object_store10ObjectMetaECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1v_5ErrorENCINvMB8_SB17_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB31_31LocalFileSystemWithSortedListOpNtB1v_11ObjectStore16list_with_offsets_0E0EB33_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(96) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %i.c = icmp samesign ult i64 %1, 17
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph156

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.g, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph156

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %i.f = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.f, label %bb.b, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtNtBe_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1n_5ErrorENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB3G_31LocalFileSystemWithSortedListOpNtB1n_11ObjectStore16list_with_offsets_0E0EB3I_.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1K_5ErrorENCINvMB8_SB1m_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB3g_31LocalFileSystemWithSortedListOpNtB1K_11ObjectStore16list_with_offsets_0E0EB3i_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 17) %.sroa.15.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtNtBe_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1n_5ErrorENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB3G_31LocalFileSystemWithSortedListOpNtB1n_11ObjectStore16list_with_offsets_0E0EB3I_.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.095.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.094.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1t_5ErrorENCINvMB8_SB15_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2Z_31LocalFileSystemWithSortedListOpNtB1t_11ObjectStore16list_with_offsets_0E0EB31_(ptr noalias noundef nonnull align 8 %.sroa.0.095.lcssa, i64 noundef %.sroa.15.094.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtNtBe_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1n_5ErrorENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB3G_31LocalFileSystemWithSortedListOpNtB1n_11ObjectStore16list_with_offsets_0E0EB3I_.exit

.lr.ph156:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.092155 = phi i32 [ %i.g, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.093154 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.sroa.15.094153 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 14 uses
  %.sroa.0.095148 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 31 uses
  %i.g = add nsw i32 %.sroa.026.092155, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.h = lshr i64 %.sroa.15.094153, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.h, 384
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.095148, i64 %.idx.i ; 7 uses
  %.idx2.i = mul nuw nsw i64 %i.h, 672
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.095148, i64 %.idx2.i ; 9 uses
  %i.k = icmp samesign ult i64 %.sroa.15.094153, 64
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph156
  %i.l = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1s_5ErrorENCINvMB8_SB14_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2Y_31LocalFileSystemWithSortedListOpNtB1s_11ObjectStore16list_with_offsets_0E0EB30_(ptr noundef nonnull readonly align 8 %.sroa.0.095148, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1t_5ErrorENCINvMB8_SB15_16sort_unstable_byNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2Z_31LocalFileSystemWithSortedListOpNtB1t_11ObjectStore16list_with_offsets_0E0EB31_.exit

bb.d:                                             ; preds = %.lr.ph156
end_hunk_0
