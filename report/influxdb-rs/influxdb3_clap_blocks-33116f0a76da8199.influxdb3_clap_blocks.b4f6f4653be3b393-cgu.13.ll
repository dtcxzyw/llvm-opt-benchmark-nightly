Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.13?download=true
inline.NumInlined: 705
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1w_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0INtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtB32_10ObjectMetaNtB32_5ErrorEEEB1y_:bb.a
bb.k:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1539
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0Ba_.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1539
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ab = load i8, ptr %i.i, align 1, !range !16, !noundef !9
  %i.ac = call { i1, i8 } @_RNvNtNtCseCDlJsl44RV_5tokio4task4coop4stop() ; 2 uses
  %i.ad = extractvalue { i1, i8 } %i.ac, 0
  %i.ae = extractvalue { i1, i8 } %i.ac, 1
  store i8 %i.ab, ptr %i.g, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ag = zext i1 %i.ad to i8
  store i8 %i.ag, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.ae, ptr %i.ah, align 1
  %.val10 = load ptr, ptr %1, align 8             ; 2 uses
  %.val11 = load ptr, ptr %2, align 8
  %i.ai = invoke noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE4withNCINvNtBW_10runtime_mt12exit_runtimeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB2x_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0INtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtB43_10ObjectMetaNtB43_5ErrorEEE0NtNtBW_7runtime12EnterRuntimeEB2z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1541
  store i8 %i.ai, ptr %i.c, align 1, !noalias !1541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1542
  %i.aj = invoke { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc.i unwind label %bb.t, !noalias !1541 ; 2 uses

.noexc.i:                                         ; preds = %.noexc
  %i.ak = extractvalue { i64, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 2 uses
  store i64 %i.ak, ptr %i.b, align 8, !noalias !1542
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.al, ptr %i.am, align 8, !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1542
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  store ptr %.val10, ptr %i.a, align 8, !noalias !1542
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val11, ptr %i.an, align 8, !noalias !1542
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.ao, align 8, !noalias !1542
  invoke void @_RINvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB3_6Handle8block_onNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1c_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list00EB1e_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.noexc.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(16) %i.b) #26
          to label %.body.i unwind label %bb.s, !noalias !1542

bb.n:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1542
  %i.aq = icmp eq i64 %i.ak, 0
  %i.ar = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !1543
  %i.as = icmp eq i64 %i.ar, 1                    ; 2 uses
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.as, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.u unwind label %bb.t, !noalias !1541

bb.q:                                             ; preds = %bb.n
  br i1 %i.as, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.u unwind label %bb.t, !noalias !1541

bb.s:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1542
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.p, %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.t ], [ %i.ap, %bb.m ]
  invoke void @_RNvXNvNtNtNtCseCDlJsl44RV_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.c)
          to label %.body unwind label %bb.v, !noalias !1541

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1542
  invoke void @_RNvXNvNtNtNtCseCDlJsl44RV_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.c)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %.body.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1541
  unreachable

bb.w:                                             ; preds = %_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore4list0Ba_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.x:                                             ; preds = %bb.u, %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.x ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @_RNvXNvNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.g)
          to label %common.resume unwind label %bb.z

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1541
  call void @_RNvXNvNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.z:                                             ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1546 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !10, !alias.scope !1547, !noundef !9 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1547
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1547
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1547
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !1547, !noundef !9
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !30, !noalias !1547, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1547
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1547, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1547
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1547
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !1547
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1550 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read4readCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 3 uses
  %2 = ptrtoint ptr %i.d to i64                   ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %3 = phi i64 [ %5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !prof !12

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %bb.a
  %.lcssa34 = phi ptr [ %i.d, %bb.a ], [ %i.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 4 uses
  %i.g = icmp ult ptr %.lcssa34, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !prof !1551

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1552, !noundef !9 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.j)
  %.not.i = icmp eq ptr %.lcssa34, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1552, !nonnull !9, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false)
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !1552
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ]
  %i.o = add i64 %i.n, %.lcssa
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !1552
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa34, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1
  ret { i64, ptr } %i.r

.split:                                           ; preds = %.lr.ph
  %.mask = and i64 %3, -4294967296
  %i.s = icmp eq i64 %.mask, 17179869184
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.loopexit

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !13, !noundef !9
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.loopexit

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15
  %i.x = load i8, ptr %i.w, align 8, !range !13, !noundef !9
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.z = lshr i64 %3, 32
  %i.aa = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.z to i8
  %spec.select.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %4)
  %i.ad = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read4readCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %5 = ptrtoint ptr %i.af to i64                  ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs2AWtUsOyxgP_3std3env7set_varReNtNtCscdodAO9FK5_5alloc6string6StringE0CsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !1553 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.46.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %.val) #26
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB7_21AwsCredentialReloader24spawn_background_updates0B9_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !1629 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.i.i = alloca [95 x i8], align 1        ; 11 uses
  %i.h = alloca [88 x i8], align 8                ; 7 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.844.i.i = alloca [95 x i8], align 1      ; 7 uses
  %.sroa.641.sroa.0.i.i = alloca [64 x i8], align 8 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [104 x i8], align 8               ; 12 uses
  %.sroa.10.i.i = alloca [31 x i8], align 1       ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 16 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [104 x i8], align 8              ; 10 uses
  %.sroa.3.i = alloca [95 x i8], align 1          ; 10 uses
  %.sroa.7.i = alloca [95 x i8], align 1          ; 11 uses
  %i.ab = alloca [88 x i8], align 8               ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !24, !noundef !9
  switch i8 %i.ad, label %bb.b [
    i8 0, label %.thread
    i8 2, label %bb.c
    i8 3, label %bb.l
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.d:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val11 = load ptr, ptr %i.ag, align 8
  %i.af = getelementptr i8, ptr %0, i64 80
  %.val12 = load ptr, ptr %i.af, align 8, !nonnull !9, !align !14, !noundef !9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr %.val11, ptr nonnull %.val12) #26
          to label %.body unwind label %bb.fu

bb.e:                                             ; preds = %bb.ft, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = invoke noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1u_4pollCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  br i1 %i.ah, label %common.ret, label %bb.g

common.ret:                                       ; preds = %bb.fk, %bb.f
  %storemerge = phi i8 [ 4, %bb.f ], [ 3, %bb.fk ]
  store i8 %storemerge, ptr %i.ac, align 8
  ret void

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = getelementptr i8, ptr %0, i64 80
  %.val10 = load ptr, ptr %i.ai, align 8, !nonnull !9, !align !14, !noundef !9 ; 5 uses
  %i.aj = load ptr, ptr %.val10, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.aj(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !15, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) %i.ao) #27
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.body, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !15, !invariant.load !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) %i.au) #27
  br label %.body

.thread:                                          ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.i, %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 162
  br label %.thread.i

bb.k:                                             ; preds = %bb.n, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader20get_file_credentials0EBL_.exit.i, %bb.k
  %i.ay = phi ptr [ %i.az, %bb.k ], [ %i.is, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader20get_file_credentials0EBL_.exit.i ]
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %.pn55.pn.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader20get_file_credentials0EBL_.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader16check_and_update0EBL_(ptr noundef nonnull align 8 %i.ay) #26
          to label %.body unwind label %bb.fu

bb.l:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 162
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !23, !noalias !1630
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 21 uses
  switch i8 %.pre, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.q
    i8 4, label %bb.cu
    i8 5, label %bb.ec
  ]

default.unreachable:                              ; preds = %bb.ef, %bb.ec, %bb.cx, %bb.cu, %bb.z, %bb.u, %bb.q, %bb.l
  unreachable

.thread.i:                                        ; preds = %.thread, %bb.l
end_hunk_0
