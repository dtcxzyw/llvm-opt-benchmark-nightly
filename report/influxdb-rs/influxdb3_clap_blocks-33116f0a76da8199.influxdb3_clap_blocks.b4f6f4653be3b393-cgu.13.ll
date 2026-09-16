Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.13?download=true
inline.NumInlined: 705
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCscdodAO9FK5_5alloc3vec3VecBZ_EECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %.sroa.0.0.i8, 170 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E13with_capacityCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.l, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 170, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBW_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias noundef nonnull %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.k, %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !range !9, !alias.scope !1343, !noundef !8 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !1344, !nonnull !8, !noundef !8
  %i.o = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !1345
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.a, align 8, !range !9, !alias.scope !1343, !noundef !8 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !1344, !nonnull !8, !noundef !8
  %i.r = mul nuw i64 %.val.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !1346
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

common.resume:                                    ; preds = %bb.c, %bb.l, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.s, %bb.l ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.thread, %bb.c
  %i.s = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef initializes((72, 73)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.c = load i64, ptr %i.b, align 8, !range !27, !alias.scope !1372, !noundef !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !1376, !nonnull !8, !noundef !8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1376
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !1379, !nonnull !8, !noundef !8
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1379
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBW_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !1386, !noalias !1387, !nonnull !8, !noundef !8 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !1386, !noalias !1387, !noundef !8 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !1386, !noalias !1387, !nonnull !8, !noundef !8
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !1386, !noalias !1387, !noundef !8
  %i.t = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1388 ; 2 uses
  %.not.i.i41 = icmp eq i8 %i.t, -2
  %i.u = icmp sgt i8 %i.t, -1
  %.sroa.0.0.i.i42.not108 = or i1 %.not.i.i41, %i.u ; 2 uses
  %.not70 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i42.not108, label %.preheader51, label %.preheader

.preheader51:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader51
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %.preheader
  %smax73 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.lr.ph.preheader ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.aa, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i.i53 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val10.i = load ptr, ptr %i.w, align 8, !alias.scope !1386, !noalias !1387, !nonnull !8, !noundef !8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val11.i = load i64, ptr %i.x, align 8, !alias.scope !1386, !noalias !1387, !noundef !8 ; 2 uses
  %i.y = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1388 ; 2 uses
  %.not.i.i39 = icmp ne i8 %i.y, -2
  %i.z = icmp slt i8 %i.y, 0
  %.sroa.0.0.i.i40 = and i1 %.not.i.i39, %i.z
  br i1 %.sroa.0.0.i.i40, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = add nuw nsw i64 %.sroa.01.0.i.i53, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.lr.ph57.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.lr.ph57.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.ag, %bb.m ], [ 2, %.lr.ph57.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i.i56 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !1386, !noalias !1387, !nonnull !8, !noundef !8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val7.i = load i64, ptr %i.ad, align 8, !alias.scope !1386, !noalias !1387, !noundef !8 ; 2 uses
  %i.ae = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1388 ; 2 uses
  %.not.i.i37 = icmp ne i8 %i.ae, -2
  %i.af = icmp slt i8 %i.ae, 0
  %.sroa.0.0.i.i38 = and i1 %.not.i.i37, %i.af
  br i1 %.sroa.0.0.i.i38, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.ag = add nuw nsw i64 %.sroa.01.1.i.i56, 1    ; 2 uses
  %exitcond73.not = icmp eq i64 %i.ag, %smax73
  br i1 %exitcond73.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %.lr.ph57

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.m, %.lr.ph57, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i53, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %smax73, %bb.m ] ; 5 uses
  %i.ah = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ah)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i92, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  %or.cond = or i1 %.sroa.0.0.i.i42.not108, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i36, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i35, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1384
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i35, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4750 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4750, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95
  %i.ao = phi i64 [ %i.ai, %bb.n ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95 ]
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i.i93100104
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.au, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.017.i.i, -1
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.as = getelementptr [24 x i8], ptr %i.ap, i64 %i.aq
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.q, !noalias !1387

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !1387
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ao
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.0.0.i34 = phi i64 [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.al, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw nsw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph63:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.02.162 = phi i64 [ %i.be, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !8
  %.not29 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %.lr.ph63, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %.lr.ph63 ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph63
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !8 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.161, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp samesign ugt i64 %i.bn, %3
  %i.br = trunc i64 %.sroa.023.161 to i1
  %i.bs = or i64 %i.bk, %.sroa.023.161
  %i.bt = trunc i64 %i.bs to i1
  %or.cond3.i = or i1 %i.bq, %i.bt
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = trunc i64 %i.bk to i1
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 384307168202282326) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBX_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bl, ptr noalias noundef nonnull %5)
  %i.cb = shl nuw nsw i64 %i.bn, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.x:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl
  %i.ce = or i64 %i.bm, 1
  %i.cf = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cc, %bb.w ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph63, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cn, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.de, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.cp, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.j, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph104, i64 16
  %i.e = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph101, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph101, i64 16
  %i.h = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph227

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.i = icmp eq i32 %i.j, 0
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2O_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0INtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtB4k_10ObjectMetaNtB4k_5ErrorEEE00ENtNtB17_8schedule16BlockingScheduleEB2Q_
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2O_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0INtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtB4k_10ObjectMetaNtB4k_5ErrorEEE00ENtNtB17_8schedule16BlockingScheduleEB2Q_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2E_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0INtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtB4a_10ObjectMetaNtB4a_5ErrorEEE00ENtNtBX_8schedule16BlockingScheduleEB2G_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1A_9GetResult5bytes00ENtNtBT_8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1D_9GetResult5bytes00ENtNtBW_8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1S_9GetResult5bytes00ENtNtB1b_8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1O_9GetResult5bytes00ENtNtB17_8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1E_9GetResult5bytes00ENtNtBX_8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw4pollNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBW_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBY_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw7deallocNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBZ_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB11_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw15try_read_outputNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB18_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1a_(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw21drop_join_handle_slowNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1e_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1g_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw17drop_abort_handleNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1a_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1c_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB10_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB12_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw4pollNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBW_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBY_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw7deallocNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBZ_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB11_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw15try_read_outputNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB18_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1a_(ptr noundef nonnull, ptr noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw21drop_join_handle_slowNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1e_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1g_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw17drop_abort_handleNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1a_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1c_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime4task3raw8shutdownNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB10_21AwsCredentialReloader24spawn_background_updates0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB12_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedmmECs2AWtUsOyxgP_3std(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterINtNtNtB1w_3ops5range5RangeyEEEENCNCNvYNtNtCs1LivM9IBWqb_12object_store3aws8AmazonS3NtB3p_11ObjectStore10get_ranges00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterINtNtNtB1w_3ops5range5RangeyEEEENCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB3p_11ObjectStore10get_ranges00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterINtNtNtB1w_3ops5range5RangeyEEEENCNCNvYNtNtCs1LivM9IBWqb_12object_store5azure14MicrosoftAzureNtB3p_11ObjectStore10get_ranges00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterINtNtNtB1w_3ops5range5RangeyEEEENCNCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore10get_ranges00ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextB3p_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3r_5ErrorENtNtB1a_6marker4SendEL_EENCNvYINtNtB3r_8throttle14ThrottledStoreNtNtB3r_6memory8InMemoryENtB3r_11ObjectStore13delete_stream0EB2a_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3r_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3r_3gcp18GoogleCloudStorageNtB3r_11ObjectStore13delete_stream0EB2a_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3r_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3r_5local15LocalFileSystemNtB3r_11ObjectStore13delete_stream0EB2a_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3r_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3r_6memory8InMemoryNtB3r_11ObjectStore13delete_stream0EB2a_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3r_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_store20ReauthingObjectStoreNtB3r_11ObjectStore13delete_stream0EB2a_9poll_nextB4O_(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCs4NRVxsYgnAr_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB4_9SemaphoreNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCsd8SWzN2b7xo_7tracker(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync6rwlock6RwLockIBw_NtNtNtCs1LivM9IBWqb_12object_store3aws10credential13AwsCredentialEEE9drop_slowCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs1LivM9IBWqb_12object_store3aws10credential13AwsCredentialE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs1LivM9IBWqb_12object_store3aws10credential13AwsCredentialENtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCs4NRVxsYgnAr_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtBa_4time8DurationINtNtNtBa_5slice4iter4IterB14_EECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn }
attributes #26 = { cold }
attributes #27 = { nounwind }
attributes #28 = { cold noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphore7AcquireECsfxgMthLVlAZ_21influxdb3_clap_blocks, null, null, null, null, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, !"RtLibUseGOT", i32 1}
!6 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 0, i64 2}
!11 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!12 = !{i8 0, i8 42}
!13 = !{i64 8}
!14 = !{i64 1, i64 536870913}
!15 = !{i8 0, i8 2}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{i64 -2, i64 -9223372036854775790}
!18 = !{i64 -2, i64 -9223372036854775808}
!19 = !{i32 0, i32 3}
!20 = !{i32 0, i32 -1}
!21 = !{i8 0, i8 4}
!22 = !{i8 0, i8 6}
!23 = !{i8 0, i8 5}
!24 = !{i8 0, i8 3}
!25 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{i64 0, i64 3}
!28 = !{i64 1, i64 0}
!29 = !{i64 0, i64 -9223372036854775807}
!30 = !{!"branch_weights", i32 2002, i32 2000}
!31 = distinct !{!31, !"_RNvMs0_NtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtB7_6handle6HandleEE16push_back_finishCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!32 = distinct !{!32, !31, !"_RNvMs0_NtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtB7_6handle6HandleEE16push_back_finishCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!33 = !{!32}
!34 = distinct !{!34, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!35 = distinct !{!35, !34, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!36 = distinct !{!36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!37 = distinct !{!37, !36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!38 = distinct !{!38, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!39 = distinct !{!39, !38, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!40 = distinct !{!40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!41 = distinct !{!41, !40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!42 = distinct !{!42, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!43 = distinct !{!43, !42, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!44 = distinct !{!44, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!45 = distinct !{!45, !44, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!46 = distinct !{!46, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!47 = distinct !{!47, !46, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!48 = !{!43, !41, !39, !37, !35}
!49 = !{!41, !39, !37, !35}
!50 = !{!45}
!51 = !{!47}
!52 = distinct !{!52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!53 = distinct !{!53, !52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!54 = !{!53}
!55 = distinct !{!55, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!56 = distinct !{!56, !55, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!57 = distinct !{!57, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!58 = distinct !{!58, !57, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!59 = !{!56}
!60 = !{!58}
!61 = !{!58, !56}
!62 = distinct !{!62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!63 = distinct !{!63, !62, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!64 = distinct !{!64, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!65 = distinct !{!65, !64, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!66 = distinct !{!66, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!67 = distinct !{!67, !66, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!68 = distinct !{!68, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!69 = distinct !{!69, !68, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!70 = distinct !{!70, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!71 = distinct !{!71, !70, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!72 = !{!67, !65, !63}
!73 = !{!65, !63}
!74 = !{!69}
!75 = !{!71}
!76 = distinct !{!76, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!77 = distinct !{!77, !76, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!78 = distinct !{!78, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!79 = distinct !{!79, !78, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!80 = distinct !{!80, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!81 = distinct !{!81, !80, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!82 = distinct !{!82, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!83 = distinct !{!83, !82, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!84 = distinct !{!84, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!85 = distinct !{!85, !84, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!86 = !{!81, !79, !77}
!87 = !{!79, !77}
!88 = !{!83}
!89 = !{!85}
!90 = distinct !{!90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!91 = distinct !{!91, !90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!92 = distinct !{!92, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!93 = distinct !{!93, !92, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!94 = distinct !{!94, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!95 = distinct !{!95, !94, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!96 = distinct !{!96, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!97 = distinct !{!97, !96, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!98 = distinct !{!98, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!99 = distinct !{!99, !98, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!100 = distinct !{!100, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!101 = distinct !{!101, !100, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!102 = !{!91}
!103 = !{!97, !95, !93, !91}
!104 = !{!95, !93, !91}
!105 = !{!99}
!106 = !{!101}
!107 = distinct !{!107, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!108 = distinct !{!108, !107, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!109 = distinct !{!109, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!110 = distinct !{!110, !109, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!111 = distinct !{!111, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!112 = distinct !{!112, !111, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!113 = !{!108}
!114 = !{!110}
!115 = !{!112}
!116 = !{!112, !110, !108}
!117 = distinct !{!117, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!118 = distinct !{!118, !117, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!119 = distinct !{!119, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!120 = distinct !{!120, !119, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!121 = distinct !{!121, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!122 = distinct !{!122, !121, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!123 = !{!118}
!124 = !{!120}
!125 = !{!122}
!126 = distinct !{!126, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!127 = distinct !{!127, !126, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!128 = distinct !{!128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!129 = distinct !{!129, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!130 = distinct !{!130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!131 = distinct !{!131, !130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!132 = distinct !{!132, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!133 = distinct !{!133, !132, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!134 = distinct !{!134, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!135 = distinct !{!135, !134, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!136 = distinct !{!136, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!137 = distinct !{!137, !136, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!138 = !{!127}
!139 = !{!133, !131, !129, !127}
!140 = !{!131, !129, !127}
!141 = !{!135}
!142 = !{!137}
!143 = distinct !{!143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!144 = distinct !{!144, !143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!145 = distinct !{!145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!146 = distinct !{!146, !145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!147 = distinct !{!147, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!148 = distinct !{!148, !147, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!149 = !{!144}
!150 = !{!146}
!151 = !{!148}
!152 = !{!148, !146, !144}
!153 = distinct !{!153, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2n_21AwsCredentialReloader24spawn_background_updates0EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEB2p_"}
!154 = distinct !{!154, !153, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2n_21AwsCredentialReloader24spawn_background_updates0EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEEB2p_: argument 0"}
!155 = distinct !{!155, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!156 = distinct !{!156, !155, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!157 = distinct !{!157, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!158 = distinct !{!158, !157, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!159 = distinct !{!159, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!160 = distinct !{!160, !159, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!161 = distinct !{!161, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!162 = distinct !{!162, !161, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!163 = distinct !{!163, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!164 = distinct !{!164, !163, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
!165 = distinct !{!165, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_ENtNtBO_4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks"}
!166 = distinct !{!166, !165, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_ENtNtBO_4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks: argument 0"}
end_hunk_1
